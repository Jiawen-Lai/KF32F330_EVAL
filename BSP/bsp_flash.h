#ifndef BSP_FLASH_H_
#define BSP_FLASH_H_
#include "KF32F_BASIC.h"


#define Flash_OK                 1
#define Flash_FAIL               0

/*
flash 划分：
*****************  __      IAP_FLASH_START_ADDR
*      boot     *    |     IAP_FLASH_SIZE - FLASH_PAGE_SIZE
*               *  __|
*****************  __      APP1_FLASH_FLAG_ADDR
*               *    |
*               *    |
*      app1     *    |     APP1_FLASH_SIZE
*               *    |
*               *    |
*****************  __|     APP2_FLASH_BCAKUP_ADDR
*               *    |
*               *    |
*  app2 backup  *    |     APP2_FLASH_BACKUP_SIZE
*               *    |
*               *    |
*****************  __|
*   eeprom      *
*               *
*****************
*/
#define FLASH_1K_SIZE               ((uint32_t)0x0400U)              // 1KB
#define FLASH_START_ADDR            ((uint32_t)0x00000000U)          // Flash起始地址
#define FLASH_TOTAL_SIZE            ((uint32_t)FLASH_1K_SIZE * 128U) // Flash总大小: 128KB, 范围 0x0000 0000 - 0x0001 FFFF

#define SRAM_START_ADDR             ((uint32_t)0x10000000U)          // SRAM起始地址
#define SRAM_TOTAL_SIZE             ((uint32_t)FLASH_1K_SIZE * 96U)  // SRAM总大小: 96KB, 范围 0x1000 0000 - 0x1001 8000
#define SRAM_END_ADDR               ((uint32_t)SRAM_START_ADDR + SRAM_TOTAL_SIZE) // SRAM结束地址: 0x1001 8000

#define FLASH_PAGE_SIZE             ((uint32_t)FLASH_1K_SIZE * 1U)   // Flash页大小: 1KB, 也是一次页擦除的大小

#define IAP_FLASH_START_ADDR        FLASH_START_ADDR                // Boot区起始偏移地址: 0x00000000
#define IAP_FLASH_SIZE              ((uint32_t)FLASH_1K_SIZE * 16U) // Boot区大小: 16KB, 范围 0x00000000 - 0x00003FFF
#define IAP_FLASH_FLAG_ADDR         ((uint32_t)IAP_FLASH_START_ADDR + IAP_FLASH_SIZE - FLASH_PAGE_SIZE) // Boot标志页起始地址: 0x00003C00, 标志页范围 0x00003C00 - 0x00003FFF

#define APP1_FLASH_START_ADDR       ((uint32_t)IAP_FLASH_START_ADDR + IAP_FLASH_SIZE)    // APP1起始偏移地址: 0x0000 4000
#define APP1_FLASH_SIZE             ((uint32_t)FLASH_1K_SIZE * 48U)                      // APP1大小: 48KB, 范围 0x0000 4000 - 0x0000 FFFF

#define APP2_FLASH_START_ADDR       ((uint32_t)APP1_FLASH_START_ADDR + APP1_FLASH_SIZE)  // APP2起始偏移地址: 0x0001 0000
#define APP2_FLASH_SIZE             ((uint32_t)FLASH_1K_SIZE * 48U)                      // APP2大小: 48KB, 范围 0x0001 0000 - 0x0001 BFFF

#define EEPROM_FLASH_ADDR           ((uint32_t)APP2_FLASH_START_ADDR + APP2_FLASH_SIZE)  // EEPROM区起始偏移地址: 0x0001 C000
#define EEPROM_FLASH_SIZE           ((uint32_t)FLASH_1K_SIZE * 16U)                      // EEPROM区大小: 16KB, 范围 0x0001 C000 - 0x0001 FFFF

//#if ((EEPROM_FLASH_ADDR+EEPROM_FLASH_SIZE)>(FLASH_START_ADDR+FLASH_TOTAL_SIZE))
//    #error this flash regional division is wrong!!!!
//#endif

#define BOOT_VERSION                            (0x100) /*!< bootloader版本号 0x100 = V1.0.0 */

#define IAP_FLG 						    0x56AB56AB

#define MAX_PACKET_NUM                      384     //384*128 = 48K
#define FLASH_BLOCK_SIZE                    128

void flash_erase_page(uint32_t address);
void flash_erase_range(uint32_t start_addr, uint32_t end_addr);

//地址必须为被8整除
uint32_t flash_read_byte(uint32_t address,uint8_t *p_FlashBuffer);//读byte
uint32_t flash_read_halfword(uint32_t address,uint16_t *p_FlashBuffer);//读HalfWord
uint32_t flash_read_word(uint32_t address,uint32_t *p_FlashBuffer);//读Word
void flash_read_nbyte(uint32_t Address, uint8_t *Buffers, uint32_t Length);//读多byte
void flash_read_multiple_word(uint32_t address,uint32_t *p_FlashBuffer,uint32_t length);//读多个Word

void flash_write_byte(uint32_t address,uint8_t p_FlashBuffer);//写byte
void flash_write_nbyte(uint32_t address,uint8_t *p_FlashBuffer,uint32_t length);//写多byte
void flash_write_halfword(uint32_t address,uint16_t p_FlashBuffer);//写HalfWord
void flash_write_word(uint32_t address,uint32_t p_FlashBuffer);//写Word
void flash_write_doubleword(uint32_t address,uint32_t *p_FlashBuffer);//写DoubleWord
void flash_write_half_page(uint32_t address,uint32_t *p_FlashBuffer,uint32_t length);//写半页
void flash_write_page(uint32_t address,uint32_t *p_FlashBuffer,uint8_t length);//写页


void FLASH_WriteCFG_ONE(uint32_t address,uint32_t *p_FlashBuffer);
void FLASH_HALFPAGE_WRITECFG_fun(uint32_t address,uint32_t *p_FlashBuffer,uint32_t length);
void FLASH_PageWrite_CFG_fun(uint32_t address,uint32_t *p_FlashBuffer,uint8_t length);

#endif /* FLASH_H_ */
