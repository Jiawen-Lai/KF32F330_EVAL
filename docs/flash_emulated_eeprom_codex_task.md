# Codex Task Spec: Implement Flash Emulated EEPROM

This document is a direct implementation task spec for a coding agent.

Goal: generate a complete, reusable flash-emulated EEPROM module for a bare-metal MCU project.

Use this document together with `docs/flash_emulated_eeprom_design.md`.

---

## 1. Deliverables

Implement these modules:

1. `flash_driver.h`
2. `flash_driver.c`
3. `emulated_eeprom.h`
4. `emulated_eeprom.c`
5. `nvs_data.h`
6. `nvs_data.c`

Optional if useful:

7. `emulated_eeprom_cfg.h`
8. `emulated_eeprom_test.c`

Do not depend on dynamic allocation.

Do not depend on an RTOS.

Keep the implementation suitable for small MCU projects.

---

## 2. Required Architecture

Layering must be:

```text
business/user data
    ->
nvs layer
    ->
emulated_eeprom layer
    ->
flash driver
```

Responsibilities:

- `flash_driver`: raw erase/read/program
- `emulated_eeprom`: append records, scan, recover, GC
- `nvs_data`: logical tags, shadows, read/write API

---

## 3. Required Features

The implementation must support:

- flash-backed persistent storage
- multiple logical regions
- different record sizes for different regions
- scan and recovery on boot
- write by logical region + offset + length
- read by logical region + offset + length
- snapshot-style update for frequent parameter blocks
- append within a sector until full
- erase old sectors only after safe rollover
- power-loss-safe commit behavior
- CRC-based record integrity check

---

## 4. Required Logical Regions

Create 3 logical regions:

1. `SYS_PARAM`
2. `PRODUCT_INFO`
3. `DEVICE_PARAM`

Expected usage:

- `SYS_PARAM`: small, rare writes
- `PRODUCT_INFO`: large, almost never changes
- `DEVICE_PARAM`: frequent writes

Do not use one global record length for all 3 regions.

---

## 5. Required Data Model

Use snapshot records, not per-key delta records, for the first version.

Meaning:

- each logical region has a RAM shadow buffer
- writes modify the RAM shadow
- commit writes a full new snapshot record
- latest valid record is authoritative

Reason:

- simpler than a per-key log
- good enough for most MCU projects
- easier to verify and maintain

---

## 6. Required Record Header

Use a record header equivalent to:

```c
typedef struct
{
    uint32_t magic;
    uint16_t version;
    uint16_t payload_len;
    uint32_t seq;
    uint32_t crc32;
} ee_record_hdr_t;
```

Requirements:

- header layout must be fixed-size
- header must be flash-programming aligned
- payload follows header directly
- record size must be fixed per region

You may add reserved bytes if needed for alignment.

---

## 7. Required Record States

Use explicit states:

```c
#define EE_MAGIC_EMPTY
#define EE_MAGIC_WRITING
#define EE_MAGIC_VALID
```

Commit rules:

1. empty slot is erased flash
2. record starts as `WRITING`
3. payload is programmed
4. crc is finalized
5. record is marked `VALID`

Boot scan rules:

- ignore empty slots
- ignore incomplete writing slots
- accept valid slots only if CRC matches

Do not mark a record valid before payload is fully written.

---

## 8. Required Region Configuration

Implement region config similar to:

```c
typedef struct
{
    uint32_t start_addr;
    uint32_t total_size;
    uint16_t sector_size;
    uint16_t record_size;
    uint16_t payload_size;
} ee_region_cfg_t;
```

And runtime state similar to:

```c
typedef struct
{
    uint32_t latest_addr;
    uint32_t latest_seq;
    uint32_t next_write_addr;
    uint8_t  initialized;
} ee_region_state_t;
```

Provide one config entry per logical region.

---

## 9. Required Write Behavior

Write flow must be:

1. load or use RAM shadow
2. modify bytes at `offset..offset+len-1`
3. build new record with incremented sequence number
4. find next writable slot
5. write into that slot
6. mark valid
7. update region state
8. erase only sectors that are now obsolete

Critical rule:

- if the next record slot is still inside the current sector, do not erase that sector

This is mandatory.

Do not repeat the old design where every save erased a sector.

---

## 10. Required Read Behavior

Read flow must be:

1. locate latest valid record for the region
2. verify CRC
3. copy requested bytes from payload

If no valid record exists:

- return failure or "not initialized"
- caller can apply defaults

---

## 11. Required Init Behavior

At startup, per region:

1. scan all record slots
2. parse headers
3. CRC-check valid records
4. select newest valid record by sequence number
5. determine next write slot
6. prepare runtime state

Must tolerate:

- erased flash
- broken records
- partially written records
- multiple valid historical records

---

## 12. Required Garbage Collection Behavior

GC behavior:

- historical records may coexist
- newest valid snapshot wins
- once writing rolls into a new sector, older fully obsolete sectors may be erased

Do not erase a sector until the latest valid data is safely present elsewhere.

---

## 13. Required NVS Public API

Expose a public API close to:

```c
bool NVS_Init(void);
bool NVS_Read(uint8_t tag, uint16_t offset, void *buf, uint16_t len);
bool NVS_Write(uint8_t tag, uint16_t offset, const void *buf, uint16_t len);
bool NVS_ReadAll(uint8_t tag, void *buf, uint16_t len);
bool NVS_WriteAll(uint8_t tag, const void *buf, uint16_t len);
bool NVS_Clear(uint8_t tag);
```

Also provide helpers if useful:

```c
bool NVS_LoadShadow(uint8_t tag);
bool NVS_Commit(uint8_t tag);
```

---

## 14. Required Boundary Checks

Implementation must check:

- `tag` is valid
- `offset < payload_size`
- `offset + len <= payload_size`
- region address range is valid
- record size divides sector size
- payload fits in record
- flash writes are alignment-safe

Do not allow silent overflow.

---

## 15. Required Hot-Data Policy

For frequently changing values such as brightness, color temperature, live control state:

- support delayed commit
- use a RAM dirty flag
- allow business layer to batch writes

Expected pattern:

```c
NVS_Write(tag, offset, data, len);   // update shadow only or mark dirty
NVS_Commit(tag);                     // write flash later
```

If you choose immediate flash commit in `NVS_Write`, still structure the code so delayed commit can be added without redesign.

---

## 16. Required Default Configuration

Use practical defaults unless project input says otherwise:

```text
sector_size = 512 bytes

SYS_PARAM:
  total sectors = 2
  record_size   = 64

DEVICE_PARAM:
  total sectors = 8 or 12
  record_size   = 128

PRODUCT_INFO:
  total sectors = 2
  record_size   = 512 or full-sector snapshot
```

If `PRODUCT_INFO` payload is too large for one record, explicitly design it as a dedicated full-region snapshot rather than pretending a smaller record can hold it.

---

## 17. Required CRC Behavior

Use CRC32 unless the project has a strong reason not to.

CRC coverage must include at least:

- payload

Recommended:

- header fields except `magic` state word, or
- a stable subset of header + payload

Be consistent and document what is covered.

---

## 18. Required Sequence Number Behavior

Use monotonically increasing `seq`.

Requirements:

- new record uses `latest_seq + 1`
- boot scan chooses highest valid `seq`
- define behavior for wraparound

Acceptable first version:

- 32-bit sequence
- wraparound ignored for practical product lifetime

---

## 19. Flash Driver Requirements

`flash_driver` must provide:

- sector erase
- aligned program
- raw byte/word read

API may look like:

```c
bool FLASH_EraseSector(uint32_t addr);
bool FLASH_Program(uint32_t addr, const uint8_t *buf, uint16_t len);
bool FLASH_Read(uint32_t addr, uint8_t *buf, uint16_t len);
```

Keep MCU-specific register operations isolated in this layer.

---

## 20. Error Handling Requirements

Provide clear status/error codes for:

- invalid argument
- out of range
- no valid record
- CRC mismatch
- flash erase failure
- flash write failure
- region misconfiguration
- no writable slot

Do not hide flash failures.

---

## 21. Code Style Requirements

The generated code should:

- use ASCII only
- avoid dynamic memory
- keep comments short and useful
- prefer fixed-width integers
- be easy to port to another MCU
- keep policy separate from hardware access

Avoid over-abstracting.

---

## 22. Must-Not Rules

Do not:

1. use one global record size for all regions
2. erase a sector before trying to append inside the same sector
3. mark a record valid before payload write finishes
4. skip CRC on valid records
5. allow `offset + len` overflow
6. assume only one valid historical record exists
7. assume flash behaves like RAM

---

## 23. Acceptance Criteria

The implementation is acceptable only if all are true:

1. empty flash boots successfully
2. defaults can be written and read back
3. repeated writes to `DEVICE_PARAM` append multiple records inside one sector before erase
4. rollover to next sector works
5. newest valid record is selected after reset
6. interrupted/partial records are ignored
7. bounds checks reject invalid offset/length
8. `PRODUCT_INFO` does not overflow record payload
9. flash driver is isolated from NVS logic

---

## 24. Suggested Minimal Self-Test Cases

Include test helpers or at least test-oriented functions for:

- fresh init
- one write / one read
- repeated writes in same sector
- write across sector boundary
- CRC failure handling
- clear region
- scan after simulated reset

If a full test framework is unavailable, provide internal helper routines that can be called from a debug harness.

---

## 25. Suggested Business-Layer Example

Business layer pattern should look like:

```c
typedef struct
{
    uint8_t  switch_state;
    uint16_t brightness;
    uint16_t cct;
    uint32_t runtime_10min;
} device_param_t;
```

Pack/unpack this into a fixed byte buffer.

Then:

```c
NVS_Write(DEVICE_PARAM_TAG, OFFSET_BRIGHTNESS, &brightness, sizeof(brightness));
// later
NVS_Commit(DEVICE_PARAM_TAG);
```

---

## 26. If Asked to Port the Old Project

If migrating from the old implementation:

- preserve app-facing tag semantics
- replace one-entry-per-sector behavior for hot regions
- keep `PRODUCT_INFO` separate
- keep OTA metadata in `SYS_PARAM`
- add stronger bounds checking and CRC

Do not carry over the old `ENTRY_LEN == SECTOR_SIZE` pattern for frequently written data.

---

## 27. Final Instruction to Codex

When implementing:

- prefer correctness and recoverability over cleverness
- keep the first version snapshot-based
- make `DEVICE_PARAM` append within a sector
- erase only when a sector is obsolete
- keep the code ready for reuse in future MCU projects

The output should be production-oriented embedded C, not a prototype.
