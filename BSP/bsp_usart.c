/*
 * @Author        Knox.Lai Knox.Lai@WACLighting.COM.CN
 * @Date          2026-04-17 13:43:32
 * @LastEditors   Knox.Lai
 * @LastEditTime  2026-04-24 16:25:14
 * @FilePath      \\KF32F330_EVAL\\BSP\\bsp_usart.c
 * @Description   
 */
#include "bsp.h"


static USART_SFRmap* COM_USART[COMn] = {COM1_USART, COM2_USART, COM3_USART, COM4_USART};
static GPIO_SFRmap* COM_GPIO_PORT[COMn] = {COM1_GPIO_PORT, COM2_GPIO_PORT, COM3_GPIO_PORT, COM4_GPIO_PORT};

static const uint16_t COM_TX_PIN_NUM[COMn] = {COM1_TX_PIN_NUM, COM2_TX_PIN_NUM, COM3_TX_PIN_NUM, COM4_TX_PIN_NUM};
static const uint16_t COM_RX_PIN_NUM[COMn] = {COM1_RX_PIN_NUM, COM2_RX_PIN_NUM, COM3_RX_PIN_NUM, COM4_RX_PIN_NUM};

static const uint8_t COM_TX_PIN_RMP[COMn] = {COM1_TX_PIN_RMP, COM2_TX_PIN_RMP, COM3_TX_PIN_RMP, COM4_TX_PIN_RMP};
static const uint8_t COM_RX_PIN_RMP[COMn] = {COM1_RX_PIN_RMP, COM2_RX_PIN_RMP, COM3_RX_PIN_RMP, COM4_RX_PIN_RMP};

static const uint16_t COM_TX_PIN[COMn] = {COM1_TX_PIN, COM2_TX_PIN, COM3_TX_PIN, COM4_TX_PIN};
static const uint16_t COM_RX_PIN[COMn] = {COM1_RX_PIN, COM2_RX_PIN, COM3_RX_PIN, COM4_RX_PIN};

static const uint32_t COM_BAUD[COMn] = {COM1_BAUDRATE, COM2_BAUDRATE, COM3_BAUDRATE, COM4_BAUDRATE};

static const InterruptIndex COM_INT[COMn] = {COM1_INT, COM2_INT, COM3_INT, COM4_INT};


static void GPIO_USART(GPIO_SFRmap* GPIOx, uint16_t PIN, uint16_t PIN_NUM, uint8_t PIN_RMP);//GPIO初始化函数
static void USART_Async_config(USART_SFRmap *USARTx);//串口异步全双工配置
static void USART_Sync_config(USART_SFRmap* USARTx); //串口半双工同步配置
static void USART_ReceiveInt_config(USART_SFRmap *USARTx,InterruptIndex Peripheral);//串口接收中断使能
static void USART_Send(USART_SFRmap* USARTx, uint8_t* Databuf, uint32_t length);//串口发送函数
static void Usart_line_feed(USART_SFRmap *USARTx);//串口发送换行符

/**
 * @brief : 初始化USART
 * @param  *com: 串口硬件配置对象
 * @return *
 */
void bsp_usart_init(usart_typedef_t com_id)
{
    if (com_id >= COMn) {
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

    USART_ReceiveInt_config(COM_USART[com_id], COM_INT[com_id]);
}

/**
 * @brief : 配置USART复用GPIO
 * @param  *GPIOx: GPIO端口
 * @param  PIN: GPIO引脚掩码
 * @param  PIN_NUM: GPIO引脚编号
 * @param  PIN_RMP: GPIO复用功能编号
 * @return *
 */
static void GPIO_USART(GPIO_SFRmap* GPIOx, uint16_t PIN, uint16_t PIN_NUM, uint8_t PIN_RMP)
{
    GPIO_Write_Mode_Bits(GPIOx, PIN, GPIO_MODE_RMP);
    GPIO_Pin_RMP_Config(GPIOx, PIN_NUM, PIN_RMP);
    GPIO_Pin_Lock_Config(GPIOx, PIN, TRUE);
}

/**
 * @brief : 配置USART异步全双工模式
 * @param  *USARTx: USART外设
 * @return *
 */
static void USART_Async_config(USART_SFRmap *USARTx)
{
    USART_InitTypeDef USART_InitStructure;

    USART_Struct_Init(&USART_InitStructure);
    USART_InitStructure.m_Mode = USART_MODE_FULLDUPLEXASY;
    USART_InitStructure.m_TransferDir = USART_DIRECTION_FULL_DUPLEX;
    USART_InitStructure.m_WordLength = USART_WORDLENGTH_8B;
    USART_InitStructure.m_StopBits = USART_STOPBITS_1;
    USART_InitStructure.m_BaudRateBRCKS = USART_CLK_HFCLK;

    /* 波特率 = Fck / (16 * (z + x / y))，时钟源为内部16MHz */
    USART_InitStructure.m_BaudRateInteger = 8;
    USART_InitStructure.m_BaudRateNumerator = 1;
    USART_InitStructure.m_BaudRateDenominator = 13;

    USART_Reset(USARTx);
    USART_Configuration(USARTx, &USART_InitStructure);
    USART_Passageway_Select_Config(USARTx, USART_U7816R_PASSAGEWAY_TX0);
    USART_Clear_Transmit_BUFR_INT_Flag(USARTx);
    USART_RESHD_Enable(USARTx, TRUE);
    USART_Cmd(USARTx, TRUE);
}

/**
 * @brief : 配置USART同步半双工模式
 * @param  *USARTx: USART外设
 * @return *
 */
static void USART_Sync_config(USART_SFRmap* USARTx)
{
    USART_InitTypeDef USART_InitStructure;

    USART_Struct_Init(&USART_InitStructure);
    USART_InitStructure.m_Mode = USART_MODE_HALFDUPLEXSYN;
    USART_InitStructure.m_HalfDuplexClkSource = USART_MASTER_CLOCKSOURCE_INTER;
    USART_InitStructure.m_TransferDir = USART_DIRECTION_TRANSMIT;
    USART_InitStructure.m_WordLength = USART_WORDLENGTH_9B;
    USART_InitStructure.m_Parity = USART_PARITY_ODD;
    USART_InitStructure.m_BaudRateBRCKS = USART_CLK_HFCLK;

    /* 波特率 = Fck / (16 * (z + x / y))，时钟源为内部16MHz */
    USART_InitStructure.m_BaudRateInteger = 104;
    USART_InitStructure.m_BaudRateNumerator = 0;
    USART_InitStructure.m_BaudRateDenominator = 0;

    USART_Reset(USARTx);
    USART_Configuration(USARTx, &USART_InitStructure);
    USART_Clear_Transmit_BUFR_INT_Flag(USARTx);
    USART_Cmd(USARTx, TRUE);
}

/**
 * @brief : 配置USART接收中断
 * @param  *USARTx: USART外设
 * @param  Peripheral: 中断向量编号
 * @return *
 */
static void USART_ReceiveInt_config(USART_SFRmap *USARTx, InterruptIndex Peripheral)
{
    USART_RDR_INT_Enable(USARTx, TRUE);
    INT_Interrupt_Enable(Peripheral, TRUE);
    INT_All_Enable(TRUE);
}

/**
 * @brief : USART发送数据
 * @param  *USARTx: USART外设
 * @param  *Databuf: 发送数据缓冲区
 * @param  length: 发送数据长度
 * @return *
 */
static void USART_Send(USART_SFRmap* USARTx, uint8_t* Databuf, uint32_t length)
{
    uint32_t i;

    for (i = 0; i < length; i++) {
        USART_SendData(USARTx, Databuf[i]);
        while (!USART_Get_Transmitter_Empty_Flag(USARTx));
    }
}

/**
 * @brief : USART发送换行符\r\n
 * @param  *USARTx: USART外设
 * @return *
 */
static void Usart_line_feed(USART_SFRmap *USARTx)
{
    USART_SendData(USARTx, 0x0D);
    while (!USART_Get_Transmitter_Empty_Flag(USARTx));
    USART_SendData(USARTx, 0x0A);
    while (!USART_Get_Transmitter_Empty_Flag(USARTx));
}
