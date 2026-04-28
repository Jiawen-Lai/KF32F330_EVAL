/*
 * @Author        Knox.Lai Knox.Lai@WACLighting.COM.CN
 * @Date          2026-04-09 15:54:31
 * @LastEditors   Knox.Lai
 * @LastEditTime  2026-04-28 17:01:06
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
	flash_erase_range(0x00004C00, 0x00004C00 + FLASH_1K_SIZE);

    md5_flash_test();

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
