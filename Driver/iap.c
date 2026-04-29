#include "iap.h"
#include "bsp_flash.h"
#include "kf32f_basic_int.h"
#include "md5.h"

static iap_infor_t iap_info;
static uint8_t iap_verify_ok = 0;

/**
 * @brief : 读取升级标志并校验APP2备份区固件，校验内容包含累加和与MD5
 * @param : 无
 * @return : 无
 */
uint8_t iap_app_verify(void)
{
    uint8_t md5_result[16];

    flash_read_nbyte(IAP_FLASH_FLAG_ADDR, (uint8_t *)&iap_info, sizeof(iap_info));

    if(iap_info.iap_flg != IAP_FLG)
    {
        return 0;
    }

    if((iap_info.fw_len == 0) || (iap_info.fw_len > APP2_FLASH_SIZE))
    {
        return 0;
    }

    md5Flash(APP2_FLASH_START_ADDR, iap_info.fw_len, md5_result);

    if(memcmp(md5_result, iap_info.md5, sizeof(md5_result)) != 0)
    {
        return 0;
    }

    return 1;
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
    uint32_t buffer[256];
    uint32_t len = iap_info.fw_len;
    uint32_t addr_read = APP2_FLASH_START_ADDR;
    uint32_t addr_write = APP1_FLASH_START_ADDR;

    /*擦除APP1区*/
    flash_erase_range(APP1_FLASH_START_ADDR, APP1_FLASH_START_ADDR + APP1_FLASH_SIZE);

    /*搬运APP2备份区固件内容到APP1*/
    while(len)
    {
        if(len >= sizeof(buffer))
        {
            flash_read_nbyte(addr_read, (uint8_t *)buffer, sizeof(buffer));

            INT_All_Enable(FALSE);   	//禁止中断
            flash_write_page(addr_write, buffer, 128);
            INT_All_Enable(TRUE);    //打开中断
            
            len -= sizeof(buffer);
            addr_read += sizeof(buffer);
            addr_write += sizeof(buffer);
        }
        else
        {
            for(uint32_t i = 0; i < (sizeof(buffer) / sizeof(buffer[0])); i++)
            {
                buffer[i] = 0xFFFFFFFF;
            }

            flash_read_nbyte(addr_read, (uint8_t *)buffer, len);

            INT_All_Enable(FALSE);   	//禁止中断
            flash_write_page(addr_write, buffer, 128);
            INT_All_Enable(TRUE);    //打开中断

            break;
        }
    }
}
