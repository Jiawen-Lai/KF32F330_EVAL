/*
 * @Author        Knox.Lai Knox.Lai@WACLighting.COM.CN
 * @Date          2026-04-09 15:54:31
 * @LastEditors   Knox.Lai
 * @LastEditTime  2026-04-29 17:05:44
 * @FilePath      \\KF32F330_EVAL\\main.c
 * @Description
 */
#include "system_init.h"
#include "delay.h"
#include "KF32_EVAL.h"
#include "bsp_flash.h"
#include "boot.h"
#include "iap.h"
#include "md5.h"

#define MAIN_DEBUG_EN             1

#if (MAIN_DEBUG_EN)
    #define MAIN_PRINTF(fmt, ...)  fprintf(USART0_STREAM, fmt, ##__VA_ARGS__)
	// printf(fmt, ##__VA_ARGS__)
	// fprintf(USART0_STREAM, fmt, ##__VA_ARGS__)
#else
    #define MAIN_PRINTF(fmt, ...)
#endif

#define TEST_FLASH_MD5_START_ADDR 0x00004000
#define TEST_FLASH_MD5_SIZE       (FLASH_1K_SIZE * 1U)

void print_callback(void)
{
    MAIN_PRINTF("print_callback\r\n");
}

void md5_flash_test(void)
{
    uint8_t md5_result[16];
    uint8_t i;

    md5Flash(TEST_FLASH_MD5_START_ADDR, TEST_FLASH_MD5_SIZE, md5_result);

    MAIN_PRINTF("Flash MD5 test\r\n");
    MAIN_PRINTF("addr=0x%08lX, size=%lu bytes\r\n",
                (unsigned long)TEST_FLASH_MD5_START_ADDR,
                (unsigned long)TEST_FLASH_MD5_SIZE);
    MAIN_PRINTF("md5=");
    for(i = 0; i < 16; i++)
    {
        MAIN_PRINTF("%02X", md5_result[i]);
    }
    MAIN_PRINTF("\r\n");
}

void main()
{
    SystemInit();
    systick_timer_init();

    kf_eval_usart_init(COM3);

    kf_eval_led_init(LED3);
    kf_eval_led_off(LED3);
    kf_eval_led_init(LED4);
    kf_eval_led_off(LED4);
    kf_eval_led_init(LED5);
    kf_eval_led_off(LED5);

    MAIN_PRINTF("Bootloader Init!\r\n");
	flash_erase_range(0x00004400, 0x000047FF);

	uint32_t buf[256];
	uint8_t iap_flg[4] = {0x56,0xAA,0xAA,0x56};
	uint32_t word_test[2];
	uint32_t temp=0;
	uint8_t INTstate=0;

	flash_read_nbyte(0x00004000, (uint8_t *)word_test, 8);
	INT_All_Enable(FALSE); 
	flash_write_doubleword(0x00004400,word_test);
	INT_All_Enable(TRUE); 


    md5_flash_test();

	if(iap_appAA_verify())
	{
		MAIN_PRINTF("app verify ok\r\n");
		MAIN_PRINTF("update fw start\r\n");
		iap_app_update();
		MAIN_PRINTF("update fw done\r\n");
		iap_info_clear();
		MAIN_PRINTF("clear flg\r\n");
	}

    while(1)
    {
        delay_ms_timer(500);
        kf_eval_led_toggle(LED3);

		// if(iap_is_app_valid(APP1_FLASH_START_ADDR))
		// {
		//     MAIN_PRINTF("jump to app\r\n");
		//     iap_jump_to_app(APP1_FLASH_START_ADDR);
		// }
    }
}
