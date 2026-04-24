#include "KF32_EVAL.h"
#include "KF32F_BASIC.h"
#include "kf32f_basic_gpio.h"
#include "kf32f_basic_usart.h"
#include <stdio.h>


GPIO_SFRmap* GPIO_PORT[LEDn] = {LED0_GPIO_PORT, LED1_GPIO_PORT, LED2_GPIO_PORT};
const uint16_t GPIO_PIN[LEDn] = {LED0_PIN, LED1_PIN, LED2_PIN};

static USART_SFRmap* COM_USART[EVAL_COMn] = {EVAL_COM1_USART, EVAL_COM2_USART, EVAL_COM3_USART, EVAL_COM4_USART};
static GPIO_SFRmap* COM_GPIO_PORT[EVAL_COMn] = {EVAL_COM1_GPIO_PORT, EVAL_COM2_GPIO_PORT, EVAL_COM3_GPIO_PORT, EVAL_COM4_GPIO_PORT};

static const uint16_t COM_TX_PIN_NUM[EVAL_COMn] = {EVAL_COM1_TX_PIN_NUM, EVAL_COM2_TX_PIN_NUM, EVAL_COM3_TX_PIN_NUM, EVAL_COM4_TX_PIN_NUM};
static const uint16_t COM_RX_PIN_NUM[EVAL_COMn] = {EVAL_COM1_RX_PIN_NUM, EVAL_COM2_RX_PIN_NUM, EVAL_COM3_RX_PIN_NUM, EVAL_COM4_RX_PIN_NUM};

static const uint8_t COM_TX_PIN_RMP[EVAL_COMn] = {EVAL_COM1_TX_PIN_RMP, EVAL_COM2_TX_PIN_RMP, EVAL_COM3_TX_PIN_RMP, EVAL_COM4_TX_PIN_RMP};
static const uint8_t COM_RX_PIN_RMP[EVAL_COMn] = {EVAL_COM1_RX_PIN_RMP, EVAL_COM2_RX_PIN_RMP, EVAL_COM3_RX_PIN_RMP, EVAL_COM4_RX_PIN_RMP};

static const uint16_t COM_TX_PIN[EVAL_COMn] = {EVAL_COM1_TX_PIN, EVAL_COM2_TX_PIN, EVAL_COM3_TX_PIN, EVAL_COM4_TX_PIN};
static const uint16_t COM_RX_PIN[EVAL_COMn] = {EVAL_COM1_RX_PIN, EVAL_COM2_RX_PIN, EVAL_COM3_RX_PIN, EVAL_COM4_RX_PIN};

static const uint32_t COM_BAUD[EVAL_COMn] = {EVAL_COM1_BAUDRATE, EVAL_COM2_BAUDRATE, EVAL_COM3_BAUDRATE, EVAL_COM4_BAUDRATE};

static const InterruptIndex COM_INT[EVAL_COMn] = {EVAL_COM1_INT, EVAL_COM2_INT, EVAL_COM3_INT, EVAL_COM4_INT};


/**
 * @brief : 初始化USART
 * @param  *com: 串口硬件配置对象
 * @return *
 */
void kf_eval_usart_init(usart_typedef com_id)
{
    if (com_id >= EVAL_COMn) {
        return;
    }

    GPIO_Write_Mode_Bits(COM_GPIO_PORT[com_id], COM_TX_PIN[com_id], GPIO_MODE_RMP);
    GPIO_Pin_RMP_Config(COM_GPIO_PORT[com_id], COM_TX_PIN_NUM[com_id], COM_TX_PIN_RMP[com_id]);
    GPIO_Pin_Lock_Config(COM_GPIO_PORT[com_id], COM_TX_PIN[com_id], TRUE);

    GPIO_Write_Mode_Bits(COM_GPIO_PORT[com_id], COM_RX_PIN[com_id], GPIO_MODE_RMP);
    GPIO_Pin_RMP_Config(COM_GPIO_PORT[com_id], COM_RX_PIN_NUM[com_id], COM_RX_PIN_RMP[com_id]);
    GPIO_Pin_Lock_Config(COM_GPIO_PORT[com_id], COM_RX_PIN[com_id], TRUE);

    USART_InitTypeDef USART_InitStructure;

    USART_Struct_Init(&USART_InitStructure);
    USART_InitStructure.m_Mode = USART_MODE_FULLDUPLEXASY;
    USART_InitStructure.m_TransferDir = USART_DIRECTION_FULL_DUPLEX;
    USART_InitStructure.m_WordLength = USART_WORDLENGTH_8B;
    USART_InitStructure.m_StopBits = USART_STOPBITS_1;
    USART_InitStructure.m_BaudRateBRCKS = USART_CLK_HFCLK;

    /* 波特率 = Fck / (16 * (z + x / y))，时钟源为内部16MHz */
    /* 
    4800:z=208 x=0 y=0, 
    9600:z=104 x=0 y=0, 
    19200:z=52 x=0 y=0, 
    115200:z=8 x=1 y=13 
    */
    if (COM_BAUD[com_id] == 115200) {
        USART_InitStructure.m_BaudRateInteger = 8;
        USART_InitStructure.m_BaudRateNumerator = 1;
        USART_InitStructure.m_BaudRateDenominator = 13;
    } else if (COM_BAUD[com_id] == 9600) {
        USART_InitStructure.m_BaudRateInteger = 104;
        USART_InitStructure.m_BaudRateNumerator = 0;
        USART_InitStructure.m_BaudRateDenominator = 0;
    }

    USART_Reset(COM_USART[com_id]);
    USART_Configuration(COM_USART[com_id], &USART_InitStructure);
    USART_Passageway_Select_Config(COM_USART[com_id], USART_U7816R_PASSAGEWAY_TX0);
    USART_Clear_Transmit_BUFR_INT_Flag(COM_USART[com_id]);
    USART_RESHD_Enable(COM_USART[com_id], TRUE);
    USART_Cmd(COM_USART[com_id], TRUE);

//    USART_ReceiveInt_config(COM_USART[com_id], COM_INT[com_id]);
}


/**
  * 描述  DEMO板上LED灯初始化配置。
  * 输入 : Led:  LED0 LED1 LED2
  *
  * 返回  无。
  */
void kf_eval_led_init(Led_TypeDef Led)
{
    GPIO_InitTypeDef  GPIO_InitStructure;
    GPIO_Struct_Init(&GPIO_InitStructure);
  /*配置 GPIO_LED 引脚 */
    GPIO_InitStructure.m_Pin = GPIO_PIN[Led];

	GPIO_InitStructure.m_Speed = GPIO_LOW_SPEED;          //初始化 GPIO输出速度
	GPIO_InitStructure.m_Mode = GPIO_MODE_OUT;            //初始化 GPIO方向为输出
	GPIO_InitStructure.m_PullUp = GPIO_NOPULL;            //初始化 GPIO是否上拉
	GPIO_InitStructure.m_PullDown = GPIO_NOPULL;          //初始化 GPIO是否下拉
    GPIO_Configuration(GPIO_PORT[Led], &GPIO_InitStructure);
}



/**
  * 描述  打开LED灯功能函数。
  * 输入 : Led: LED0 LED1 LED2
  *
  * 返回  无。
  */
void kf_eval_led_on(Led_TypeDef Led)
{
    GPIO_Set_Output_Data_Bits(GPIO_PORT[Led],GPIO_PIN[Led],Bit_SET);					//设置为高电平
}

/**
  * 描述  熄灭LED灯功能函数。
  * 输入 : Led:  LED0 LED1 LED2  *
  * 返回  无。
  */
void kf_eval_led_off(Led_TypeDef Led)
{
	GPIO_Set_Output_Data_Bits(GPIO_PORT[Led],GPIO_PIN[Led],Bit_RESET);				//设置为低电平
}

void kf_eval_led_toggle(Led_TypeDef Led)
{
	GPIO_Toggle_Output_Data_Config(GPIO_PORT[Led], GPIO_PIN[Led]);
}


