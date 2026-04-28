# Flash Emulated EEPROM Design Guide

This document is a build-ready design spec for implementing a flash-emulated EEPROM module in MCU projects.

It is written so that a coding agent or engineer can read it and produce a complete implementation with:

- a flash driver abstraction
- a logical NVS/tag layer
- a power-loss-tolerant emulated EEPROM layer
- optional bootloader/app shared metadata storage

The design below incorporates lessons learned from the current project and folds in the recommended improvements.

## 1. Goals

Implement a reusable flash-emulated EEPROM module with the following properties:

- supports byte-range logical read and write
- avoids in-place overwrite of flash
- spreads erase wear across multiple sectors
- survives reset/power loss during write
- supports different write-frequency classes
- allows different logical areas to use different record sizes
- is simple enough for bare-metal MCU projects

Target use cases:

- device parameters written occasionally or frequently
- factory/product information written rarely
- system flags such as first-boot flag or OTA/IAP metadata

## 2. Flash Assumptions

Assume the internal flash has these characteristics:

- erase granularity: sector
- program granularity: word or phrase
- bits can usually change only from `1 -> 0` during program
- `0 -> 1` requires sector erase
- erase lifetime is limited per sector

Therefore the implementation must never treat flash like RAM.

## 3. Recommended Layering

```text
app/business layer
    |
    | save/read by logical tag + offset
    v
nvs layer
    |
    | maps tags to flash-backed regions
    v
emulated eeprom layer
    |
    | append records, scan valid data, GC, wear leveling
    v
flash driver
```

Recommended modules:

- `flash_driver.[ch]`
- `ee_flash.[ch]` or `emulated_eeprom.[ch]`
- `nvs_data.[ch]`

## 4. Logical Partitioning

Do not use one single policy for all data.

Split data into 3 logical classes:

1. `SYS_PARAM`
   - very small
   - written rarely
   - examples: first-work flag, OTA flag, firmware length, checksum

2. `PRODUCT_INFO`
   - large
   - written almost never
   - examples: vendor, model, factory configuration, static tables

3. `DEVICE_PARAM`
   - small to medium
   - written often
   - examples: brightness, CCT, DMX address, label, runtime counters

Each logical class should have its own flash region and its own record size.

## 5. Main Improvement Over the Old Design

The old project used:

- `sector_size = 512`
- `entry_len = 512`

That means one entry occupied one whole sector. As a result:

- every save migrated the whole snapshot
- every save erased one sector
- there was no real "append inside one sector"

For new projects, do not repeat that design for frequently written parameters.

Recommended new design:

- `SYS_PARAM`: one small record or small snapshot, entry length 32 to 64 bytes
- `DEVICE_PARAM`: snapshot record, entry length 64 to 128 bytes
- `PRODUCT_INFO`: larger snapshot or dedicated full-sector record

This lets one sector hold multiple records for `DEVICE_PARAM`, which greatly improves lifetime.

## 6. Data Model Recommendation

Use snapshot records for most logical areas, not per-key mini records at first.

Why:

- simpler recovery logic
- easier validation
- easy to map to a struct or packed byte buffer
- enough for most MCU products

Recommended approach:

- `DEVICE_PARAM` is maintained in RAM as a packed byte array
- each save writes a new full snapshot record
- reader always uses the newest valid snapshot

If later needed, a more advanced key-value delta log can be added, but the first implementation should stay snapshot-based.

## 7. Record Layout

Each record should have a small header and payload.

Recommended layout:

```c
typedef struct
{
    uint32_t magic;        // identifies record type and valid state
    uint16_t version;      // layout version
    uint16_t payload_len;  // bytes of payload
    uint32_t seq;          // monotonically increasing sequence number
    uint32_t crc32;        // CRC of payload or header+payload
} ee_record_hdr_t;
```

Payload follows immediately after the header.

Notes:

- `magic` must not be written as "valid" until the record body is fully programmed.
- `seq` is used to find the latest record.
- `payload_len` allows different logical areas to use different payload sizes safely.
- `crc32` is strongly recommended. A plain additive checksum is weak.

## 8. Valid-State Strategy

To improve power-loss tolerance, use a two-phase record commit:

1. write header with state `WRITING`
2. write payload
3. verify if desired
4. write final header word or status word to mark `VALID`

Example status values:

```c
#define EE_MAGIC_EMPTY    0xFFFFFFFFu
#define EE_MAGIC_WRITING  0xA55A1234u
#define EE_MAGIC_VALID    0x5AA54BCCu
```

On init:

- ignore `EMPTY`
- ignore incomplete `WRITING`
- accept `VALID` only if CRC passes

This is better than the old design where a record was effectively marked valid too early.

## 9. Region Descriptor

Each logical region should have a descriptor like:

```c
typedef struct
{
    uint32_t start_addr;
    uint32_t total_size;
    uint16_t sector_size;
    uint16_t record_size;
    uint16_t payload_size;
    uint16_t sector_count;
} ee_region_cfg_t;
```

And runtime state:

```c
typedef struct
{
    uint32_t latest_addr;
    uint32_t latest_seq;
    uint32_t next_write_addr;
} ee_region_state_t;
```

## 10. Recommended Record Size Selection

Use different record sizes per region.

Example:

```text
SYS_PARAM     payload 16..32B   record 32..64B
DEVICE_PARAM  payload 40..96B   record 64..128B
PRODUCT_INFO  payload large     record 256B / 512B / full sector
```

Rules:

- `record_size` must align with flash program requirements
- `record_size` must divide `sector_size`
- `payload_size + header_size <= record_size`

Do not hardcode one global `ENTRY_LEN` for all regions.

## 11. Write Algorithm

For snapshot-style regions, the write algorithm should be:

1. load latest valid snapshot into RAM if needed
2. modify RAM copy
3. build new record with `seq = latest_seq + 1`
4. find next free record slot
5. write new record
6. mark it valid
7. update runtime state
8. if write crossed into a new sector and previous sector no longer contains the newest record, erase the old sector

Important behavior:

- if the next slot is in the same sector, do not erase that sector
- only erase a sector after the newest valid snapshot has safely moved beyond it

This is the key improvement over the old code.

## 12. Read Algorithm

Read flow:

1. locate latest valid record for the region
2. verify CRC
3. copy payload into destination buffer

If no valid record exists:

- return "not initialized"
- caller applies defaults

## 13. Init / Scan Algorithm

At boot, for each region:

1. scan all record slots from start to end
2. parse header state
3. CRC-check all `VALID` records
4. keep the valid record with highest `seq`
5. compute next write slot
6. if the region is inconsistent, repair lazily:
   - ignore broken records
   - erase fully obsolete sectors only when safe

Do not assume only one valid record exists.

## 14. Garbage Collection Rule

For circular append:

- allow multiple historical valid snapshots
- newest valid snapshot wins
- when a sector is entirely obsolete, erase it

For `DEVICE_PARAM` with `record_size = 128` and `sector_size = 512`:

- one sector holds 4 records
- sector A can hold seq 1..4
- then write seq 5 into sector B
- after seq 5 is valid, sector A can eventually be erased once no newer write needs its slots

## 15. NVS API Recommendation

Expose a small API:

```c
void NVS_Init(void);
bool NVS_Read(uint8_t tag, uint16_t offset, void *buf, uint16_t len);
bool NVS_Write(uint8_t tag, uint16_t offset, const void *buf, uint16_t len);
bool NVS_ReadAll(uint8_t tag, void *buf, uint16_t len);
bool NVS_WriteAll(uint8_t tag, const void *buf, uint16_t len);
bool NVS_Clear(uint8_t tag);
```

For snapshot regions:

- `Write(offset, len)` should update the RAM shadow, then commit a new full snapshot
- `Read(offset, len)` reads from the latest snapshot

This keeps the app-layer API small and simple.

## 16. RAM Shadow Recommendation

For frequently written logical areas, keep a RAM shadow:

```c
typedef struct
{
    uint8_t buf[DEVICE_PARAM_PAYLOAD_SIZE];
    bool dirty;
} nvs_shadow_t;
```

Flow:

- load once at boot
- business code edits shadow
- delayed commit task writes flash

This matches the old project's good practice of delaying many writes by several seconds.

## 17. Delayed Save Policy

For frequently changing values such as brightness, CCT, UI state, DMX runtime state:

- do not save every change immediately
- debounce or delay saves
- commit only after the value stabilizes

Example:

- save 3 seconds after the last user change
- coalesce multiple changes into one flash write

For runtime counters:

- save at a fixed interval, for example every 10 minutes of lamp-on time

## 18. Lifetime Estimation Formula

If:

- erase life per sector = `E`
- region has `S` sectors
- each sector stores `R` records
- each logical save consumes one record

Then approximate logical save lifetime is:

```text
logical_save_count ~= E * S * R
```

Example:

- `DEVICE_PARAM`
- 12 sectors
- 512B sector
- 128B record
- 100000 erase cycles

Then:

```text
R = 512 / 128 = 4
lifetime ~= 100000 * 12 * 4 = 4,800,000 saves
```

## 19. Known Problems in the Old Project That Must Not Be Repeated

1. One global `ENTRY_LEN` for all data classes
2. `ENTRY_LEN == sector_size` for frequently written data
3. Save path erases too aggressively
4. Product info payload length close to or larger than real usable entry payload
5. Missing `offset + len <= payload_size` bound check
6. No strong per-record integrity check
7. Record validity marker written too early
8. OTA/app side can write backup area out of bounds if packet index validation is weak

## 20. OTA / Bootloader Shared Metadata Recommendation

If OTA is required:

- store OTA metadata in a tiny `SYS_PARAM` region
- metadata should include:
  - OTA flag
  - image length
  - image checksum or CRC
  - image version if useful

Bootloader flow:

1. read OTA metadata
2. validate flag
3. validate backup image
4. copy backup image to active app region
5. verify copied image if possible
6. clear OTA flag
7. jump to app

Do not rely only on a raw flag without length and integrity data.

## 21. Minimum Safety Checks

The implementation must check:

- `offset + len <= payload_size`
- region address range is flash-valid
- record size divides sector size
- payload size fits in record
- sequence number wrap behavior is defined
- OTA image length is within backup partition
- app jump vector is sane before jumping

## 22. Recommended Test Cases

Must test:

1. first boot, empty flash
2. single write, single read
3. repeated writes within same sector
4. write crossing to next sector
5. wrap from last sector back to first
6. power loss between header write and payload write
7. power loss after payload write but before valid mark
8. corrupted CRC
9. erase life estimation sanity
10. OTA metadata read/write

## 23. Suggested File Responsibilities

### `flash_driver.[ch]`

- erase sector
- read bytes
- program aligned words/phrases

### `emulated_eeprom.[ch]`

- region config
- scan/init
- find latest valid record
- write new record
- garbage collection

### `nvs_data.[ch]`

- tag definitions
- tag-to-region mapping
- shadow buffers
- public read/write API

### business modules

- pack/unpack app structs into byte arrays
- define delayed-save policy

## 24. Implementation Direction for a New Project

For a new project, implement this first version:

- snapshot-based storage
- per-region record size
- CRC32
- delayed save for hot parameters
- sector append for `DEVICE_PARAM`
- full-sector or larger record for `PRODUCT_INFO`
- tiny record for `SYS_PARAM`

This version is much safer and longer-lived than the old project while still remaining easy to maintain.

## 25. Codex Implementation Checklist

When generating code from this document, implement the following:

1. region config table with per-region sizes
2. record header with magic, version, payload_len, seq, crc
3. init scan function for each region
4. read latest valid snapshot
5. write new snapshot into next free record slot
6. only erase obsolete sectors after safe rollover
7. RAM shadow for frequently written areas
8. delayed save helper for app-layer hot parameters
9. complete boundary checks
10. unit-test-style self-check helpers if practical

## 26. Recommended Default Numbers

A practical starting point for a small MCU project:

```text
flash sector size:        512B
SYS_PARAM region:         2 sectors, 64B record
DEVICE_PARAM region:      8 to 12 sectors, 128B record
PRODUCT_INFO region:      2 sectors, 512B record or dedicated full-sector storage
record integrity:         CRC32
hot-parameter save delay: 2 to 5 seconds
runtime counter interval: 10 minutes
```

## 27. Final Summary

The recommended design is:

- partition by write frequency
- keep snapshot semantics
- use smaller records for frequently written data
- append within a sector
- erase only after rollover makes a sector obsolete
- use CRC and late valid-marking for power-loss safety

This is the design that should be implemented in future projects instead of the old one-entry-per-sector approach for hot parameters.
