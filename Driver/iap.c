#include "iap.h"
#include "bsp_flash.h"
#include "md5.h"
#include <string.h>

#define IAP_INFO_FLAG_ADDR      (IAP_FLASH_FLAG_ADDR)
#define IAP_COPY_PAGE_WORDS     (FLASH_PAGE_SIZE / 4U)

static iap_infor_t iap_info;
static uint8_t iap_verify_ok = 0;

/**
 * @brief : 读取升级标志并校验APP2备份区固件，校验内容包含累加和与MD5
 * @param : 无
 * @return : 无
 */
void iap_app_verify(void)
{
    uint8_t md5_result[16];
    iap_verify_ok = 0;

    flash_read_nbyte(IAP_INFO_FLAG_ADDR, (uint8_t *)&iap_info, sizeof(iap_info));

    if(iap_info.iap_flg != IAP_FLG)
    {
        return;
    }

    if((iap_info.fw_len == 0U) || (iap_info.fw_len > APP2_FLASH_SIZE))
    {
        return;
    }

    md5Flash(APP2_FLASH_START_ADDR, iap_info.fw_len, md5_result);

    if(memcmp(md5_result, iap_info.md5, sizeof(md5_result)) != 0)
    {
        return;
    }

    iap_verify_ok = 1;
}

/**
 * @brief : 清除升级信息标志页
 * @param : 无
 * @return : 无
 */
void iap_info_clear(void)
{
    flash_erase_page(IAP_FLASH_FLAG_ADDR);
    iap_verify_ok = 0;
    memset(&iap_info, 0, sizeof(iap_info));
}

/**
 * @brief : 将APP2备份区固件内容搬运到APP1
 * @param : 无
 * @return : 无
 */
void iap_app_update(void)
{
    uint32_t i = 0;
    uint8_t app_buffer[128];
    uint32_t len = iap_info.fw_len;
    uint32_t addr_read = APP2_FLASH_START_ADDR;
    uint32_t addr_write = APP1_FLASH_START_ADDR;

    /*擦除APP1区*/
    flash_erase_range(APP1_FLASH_START_ADDR, APP1_FLASH_START_ADDR + APP1_FLASH_SIZE);

    /*搬运APP2备份区固件内容到APP1*/
    while(len)
    {
        if(len >= sizeof(app_buffer))
        {
            flash_read_nbyte(addr_read, app_buffer, sizeof(app_buffer));
            flash_write_nbyte(addr_write, app_buffer, sizeof(app_buffer));
            len -= sizeof(app_buffer);
            addr_read += sizeof(app_buffer);
            addr_write += sizeof(app_buffer);
        }
        else
        {
            flash_read_nbyte(addr_read,app_buffer,len);
            flash_write_nbyte(addr_write,app_buffer,len);

            flash_read_nbyte(addr_read,app_buffer,len);
            for(i = 0;i < len;i++)
            {
                IAP_PRINTF("read fw[%d]:%2x\r\n",i,app_buffer[i]);
            }

            break;
        }
    }
}
