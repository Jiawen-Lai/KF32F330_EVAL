/*
 * @Author        Knox.Lai Knox.Lai@WACLighting.COM.CN
 * @Date          2026-04-09 15:54:31
 * @LastEditors   Knox.Lai
 * @LastEditTime  2026-04-23 16:29:19
 * @FilePath      \\TEST_Prj\\main.c
 * @Description   
 */
#include "system_init.h"
#include "delay.h"
#include "KF32_EVAL.h"
#include "bsp_flash.h"

void main()
{
	uint8_t INTstate=0;
	uint32_t i=0;
    uint32_t temp=0;
    uint32_t temp1=0;
    uint32_t temp2=0;

	SystemInit();

	kf_eval_usart_init(COM3);

	kf_eval_led_init(LED3);
	kf_eval_led_off(LED3);
	kf_eval_led_init(LED4);
	kf_eval_led_off(LED4);
	kf_eval_led_init(LED5);
	kf_eval_led_off(LED5);


	//读写字节Byte
	uint32_t addrtest=0x00032000;

    if(INT_CTL0 & 0xfffe)			//如果可屏蔽中断使能，关闭中断使能，
    {
    	INTstate=1;
    	INT_All_Enable(FALSE);   	//禁止中断
    }
	FLASH_Wipe_Configuration_RAM(FLASH_WIPE_CODE_PAGE,addrtest);//程序区页擦划分1K 空间  page200=200*1024=0x0003 2000;
	if(INTstate==1)
	{
		INTstate=0;
		INT_All_Enable(TRUE);    //打开中断
	}

	uint8_t num8=0;
	uint8_t read_byte=0;

    if(INT_CTL0 & 0xfffe)			//如果可屏蔽中断使能，关闭中断使能，
    {
    	INTstate=1;
    	INT_All_Enable(FALSE);   	//禁止中断
    }
	FLASH_WriteByte(addrtest,0xAA);
	if(INTstate==1)
	{
		INTstate=0;
		INT_All_Enable(TRUE);    //打开中断
	}

	// delay_ms(10);
	// addrtest=0x00032000;
	FLASH_ReadByte(addrtest,&read_byte);

	while(1)
	{
		/*读程序区地址为0x32000的数据并比较*/
		if(Read_Flash_or_CFR_RAM(0x32000,FLASH_PROGRAM_CODE)==0xAA)
		{
			kf_eval_led_toggle(LED3);
			printf("read_byte=0x%02X\r\n",read_byte);
			delay_ms(500);
		}

	}


}

/**
  * 描述   主函数
  * 输入   无
  * 返回   无
  */
// void main()
// {
// 	//系统时钟,外设高频时钟配置
// 	SystemInit();

// 	kf_eval_usart_init(COM3);

// 	kf_eval_led_init(LED3);
// 	kf_eval_led_init(LED4);
// 	kf_eval_led_init(LED5);


// 	for (uint32_t i = 0; i < 3; i++)
//     {
//         delay_ms(500);
// 		printf("TEST Initing\r\n");
// 		kf_eval_led_toggle(LED3);
//     }

// 	while(1)
// 	{
		
// 		printf("it is TEST\r\n");
// 		kf_eval_led_toggle(LED4);
// 		delay_ms(500);
// 		kf_eval_led_toggle(LED5);
// 		delay_ms(500);
// 		kf_eval_led_toggle(LED3);
// 		delay_ms(500);
// 	}		
// }
