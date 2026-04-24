# 1 "../KF32_EVAL.c"
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Release//"
# 1 "<command-line>"
# 1 "../KF32_EVAL.c"
# 1 "../KF32_EVAL.h" 1



# 1 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h" 1
# 20 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h" 1
# 16 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h"
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stddef.h" 1
# 24 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stddef.h"
typedef int ptrdiff_t;





typedef unsigned int size_t;




typedef unsigned short wchar_t;
# 17 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h" 2




typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned int uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
typedef long long int_least64_t;
typedef unsigned long long uint_least64_t;





typedef char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
typedef long long int_fast64_t;
typedef unsigned long long uint_fast64_t;
# 60 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h"
  typedef int intptr_t;
# 69 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h"
  typedef unsigned int uintptr_t;




typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 21 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h" 2
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_Config.h" 1
# 15 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_Config.h"
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj/__Kungfu32_chipmodel_define.h" 1
# 16 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_Config.h" 2
# 22 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h" 2
# 36 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef enum
{
    FALSE = 0,
    TRUE = !FALSE
} FunctionalState;



typedef enum
{
    RESET = 0,
    SET = !RESET
} FlagStatus, INTStatus;


typedef enum
{
    FAILURE = 0,
    SUCCESS = !FAILURE
} RetStatus;


typedef enum
{
    DISABLE = 0,
    ENABLE = !DISABLE
} AbleStatus;






typedef enum {
    INT_Initial_SP = 0,
    INT_Reset = 1,
    INT_NMI = 2,
    INT_HardFault = 3,
    INT_Reserved4 = 4,
    INT_StackFault = 5,
    INT_AriFault = 6,
    INT_Reserved7 = 7,
    INT_Reserved8 = 8,
    INT_Reserved9 = 9,
    INT_Reserved10 = 10,
    INT_SVCAll = 11,
    INT_Reserved12 = 12,
    INT_Reserved13 = 13,
    INT_SoftSV = 14,
    INT_SysTick = 15,
    INT_WWDT = 16,
    INT_EINT16 = 17,
    INT_EINT0 = 18,
    INT_EINT1 = 19,
    INT_EINT2 = 20,
    INT_EINT3 = 21,
    INT_EINT4 = 22,
    INT_EINT9TO5 = 23,
    INT_EINT15TO10 = 24,
    INT_T1 = 25,
    INT_T3 = 26,
    INT_T5 = 27,
    INT_T6 = 28,
    INT_QEI = 29,
    INT_T7 = INT_QEI,
    INT_T8 = INT_QEI,
    INT_CAN2 = 30,
    INT_CAN3 = 31,
    INT_CAN4 = 32,
    INT_T14 = 33,
    INT_T15 = 34,
    INT_CAN5 = 35,
    INT_EXIC = 36,
    INT_ADC0 = 37,
    INT_ADC1 = 38,
    INT_CFGL = 39,
    INT_LCD = 40,
    INT_T0 = 41,
    INT_DMA0 = 42,
    INT_CMP = 43,
    INT_USART0 = 44,
    INT_USART1 = 45,
    INT_SPI0 = 46,
    INT_SPI1 = 47,
    INT_DMA1 = 48,
    INT_EINT19TO17 = 49,
    INT_CAN0 = 50,
    INT_CAN1 = 51,
    INT_T9 = 52,
    INT_T10 = 53,
    INT_EINT21TO20 = 54,
    INT_EINT31TO22 = 55,
    INT_OSC = 56,
    INT_CLK = INT_OSC,
    INT_I2C0 = 57,
    INT_I2C1 = 58,
    INT_I2C2 = 59,
    INT_USB = 60,
    INT_T2 = 61,
    INT_T4 = 62,
    INT_CTOUCH = 63,
    INT_USART2 = 64,
    INT_USART3 = 65,
    INT_USART4 = 66,
    INT_SPI2 = 67,
    INT_SPI3 = 68,
    INT_ADC2 = 69,
    INT_T18 = 70,
    INT_T19 = 71,
    INT_T22 = 72,
    INT_T23 =INT_T22,
    INT_WKP0 = 73,
    INT_WKP1 =INT_WKP0,
    INT_WKP2 =INT_WKP0,
    INT_WKP3 =INT_WKP0,
    INT_WKP4 =INT_WKP0,
    INT_T20 = 74,
    INT_T21 = 75,
    INT_I2C3 = 76,
    INT_USART5 = 77,
    INT_USART6 = 78,
    INT_USART7 = 79,
} InterruptIndex;
# 171 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct GPIO_MemMap {
    volatile const uint32_t PIR;
    volatile uint32_t POR;
    volatile uint32_t PUR;
    volatile uint32_t PDR;
    volatile uint32_t PODR;
    volatile uint32_t PMOD;
    volatile uint32_t OMOD;
    volatile uint32_t LOCK;
    volatile uint32_t RMP[2];
                uint32_t RESERVED;
    volatile uint32_t CTMDCTL[2];
}GPIO_SFRmap;
# 1127 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct OSC_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t INT;
    volatile uint32_t CTL2;
    volatile uint32_t HFOSCCAL0;
    volatile uint32_t HFOSCCAL1;
}OSC_SFRmap;


typedef struct PLL_MemMap {
   volatile uint32_t CTL;
}PLL_SFRmap;
# 1450 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct INT_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t EIE0;
             uint32_t RESERVED1;
    volatile uint32_t EIE1;
             uint32_t RESERVED2;
    volatile uint32_t EIE2;
       uint32_t RESERVED3;
    volatile uint32_t EIF0;
             uint32_t RESERVED4;
    volatile uint32_t EIF1;
             uint32_t RESERVED5;
    volatile uint32_t EIF2;
             uint32_t RESERVED6;
    volatile uint32_t IP0;
    volatile uint32_t IP1;
    volatile uint32_t IP2;
    volatile uint32_t IP3;
    volatile uint32_t IP4;
    volatile uint32_t IP5;
    volatile uint32_t IP6;
    volatile uint32_t IP7;
    volatile uint32_t IP8;
    volatile uint32_t IP9;
    volatile uint32_t IP10;
    volatile uint32_t IP11;
    volatile uint32_t IP12;
    volatile uint32_t IP13;
    volatile uint32_t IP14;
    volatile uint32_t IP15;
    volatile uint32_t IP16;
    volatile uint32_t IP17;
    volatile uint32_t IP18;
    volatile uint32_t EINTMASK;
    volatile uint32_t EINTRISE;
    volatile uint32_t EINTFALL;
    volatile uint32_t EINTF;
             uint32_t RESERVED7;
    volatile uint32_t EINTSS0;
    volatile uint32_t EINTSS1;
    volatile uint32_t CTL1;
}INT_SFRmap;
# 3309 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct SYSCTL_MemMap {
    volatile uint32_t PSW;
    volatile uint32_t MCTL;
    volatile uint32_t ARCTL;
    volatile uint32_t VECTOFF;
          uint32_t RESEVRVE1;
    volatile uint32_t RAMSPA;
    volatile uint32_t MEMCTL;
}SYSCTL_SFRmap;
# 3398 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct ADC_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t SCANSQ0;
    volatile uint32_t SCANSQ1;
    volatile uint32_t SCANSQ2;
    volatile uint32_t HSCANSQ;
    volatile uint32_t WDH;
    volatile uint32_t WDL;
    volatile const uint32_t DATA;
    volatile const uint32_t HPDATA0;
    volatile const uint32_t HPDATA1;
    volatile const uint32_t HPDATA2;
    volatile const uint32_t HPDATA3;
    volatile uint32_t HPOFF0;
    volatile uint32_t HPOFF1;
    volatile uint32_t HPOFF2;
    volatile uint32_t HPOFF3;
    volatile uint32_t SCANSQ3;
                   uint32_t RESERVED[2];
    volatile uint32_t STATE;
    volatile uint32_t DELAY;
}ADC_SFRmap;

typedef struct ADC_Delay_MemMap
{
    volatile uint32_t DELAY;
}ADC_DELAY_SFRmap;
# 4058 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct DMA_MemMap {
    union {
        struct
        {
            volatile uint32_t CTLR1;
            volatile uint32_t CTLR2;
            volatile uint32_t CTLR3;
            volatile uint32_t CTLR4;
            volatile uint32_t CTLR5;
            volatile uint32_t CTLR6;
            volatile uint32_t CTLR7;
        };
        volatile uint32_t CTLR[7];
    };
                   uint32_t RESERVED1;
    union {
        struct
        {
            volatile uint32_t PADDR1;
            volatile uint32_t PADDR2;
            volatile uint32_t PADDR3;
            volatile uint32_t PADDR4;
            volatile uint32_t PADDR5;
            volatile uint32_t PADDR6;
            volatile uint32_t PADDR7;
        };
        volatile uint32_t PADDR[7];
    };
                   uint32_t RESERVED2;
    union {
        struct
        {
            volatile uint32_t MADDR1;
            volatile uint32_t MADDR2;
            volatile uint32_t MADDR3;
            volatile uint32_t MADDR4;
            volatile uint32_t MADDR5;
            volatile uint32_t MADDR6;
            volatile uint32_t MADDR7;
        };
        volatile uint32_t MADDR[7];
    };
                   uint32_t RESERVED3;
    union {
        struct
        {
            volatile const uint32_t CPAR1;
            volatile const uint32_t CPAR2;
            volatile const uint32_t CPAR3;
            volatile const uint32_t CPAR4;
            volatile const uint32_t CPAR5;
            volatile const uint32_t CPAR6;
            volatile const uint32_t CPAR7;
        };
        volatile const uint32_t CPAR[7];
    };
                   uint32_t RESERVED4;
    union {
        struct
        {
            volatile const uint32_t CMAR1;
            volatile const uint32_t CMAR2;
            volatile const uint32_t CMAR3;
            volatile const uint32_t CMAR4;
            volatile const uint32_t CMAR5;
            volatile const uint32_t CMAR6;
            volatile const uint32_t CMAR7;
        };
        volatile const uint32_t CMAR[7];
    };
                   uint32_t RESERVED5;
    union {
        struct
        {
            volatile const uint32_t NCT1;
            volatile const uint32_t NCT2;
            volatile const uint32_t NCT3;
            volatile const uint32_t NCT4;
            volatile const uint32_t NCT5;
            volatile const uint32_t NCT6;
            volatile const uint32_t NCT7;
        };
        volatile const uint32_t NCT[7];
    };
                   uint32_t RESERVED6;
    volatile uint32_t LIFR;
    volatile uint32_t LIER;
}DMA_SFRmap;
# 4713 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct SYSTICK_MemMap {
    volatile uint32_t CTL;
    volatile uint32_t RELOAD;
    volatile uint32_t CV;
    volatile uint32_t CALI;
}SYSTICK_SFRmap;
# 4767 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct BTIM_MemMap {
    volatile uint32_t CNT;
    volatile uint32_t CTL1;
    volatile uint32_t CTL2;
    volatile uint32_t PRSC;
    volatile uint32_t PPX;
    volatile uint32_t DIER;
    volatile const uint32_t SR;
    volatile uint32_t SRIC;
}BTIM_SFRmap;
# 4955 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct GPTIM_MemMap {
    volatile uint32_t CNT;
    volatile uint32_t CTL1;
    volatile uint32_t CTL2;
    volatile uint32_t PRSC;
    volatile uint32_t PPX;
    volatile uint32_t UDTIM;
                   uint32_t RESERVED1[2];
    volatile const uint32_t CCPXC1;
    volatile const uint32_t CCPXC2;
    volatile const uint32_t CCPXC3;
    volatile const uint32_t CCPXC4;
    volatile uint32_t CCPXSRIC;
    volatile const uint32_t CCPXDF;
                   uint32_t RESERVED2[2];
    volatile uint32_t CCPXCTL1;
    volatile uint32_t CCPXR1;
    volatile uint32_t CCPXR2;
    volatile uint32_t CCPXR3;
    volatile uint32_t CCPXR4;
    volatile uint32_t CCPXCTL2;
    volatile uint32_t CCPXCTL3;
    volatile uint32_t CCPXEGIF;
}GPTIM_SFRmap, CCP_SFRmap;
# 5565 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct ATIM_MemMap {
    volatile uint32_t TXCNT;
    volatile uint32_t TZCNT;
    volatile uint32_t TXPPX;
    volatile uint32_t TZPPZ;
    volatile uint32_t TXPRSC;
    volatile uint32_t TZPRSC;
    volatile uint32_t TXCCR0;
    volatile uint32_t TXCCR1;
    volatile uint32_t TZCCR0;
    volatile uint32_t TXCTL;
    volatile uint32_t TZCTL;
    volatile uint32_t PXPDCTL;
    volatile uint32_t PXASCTL;
          uint32_t RESERVED1[19];
    volatile uint32_t ECCPXCTL1;
    volatile uint32_t ECCPXR1;
    volatile uint32_t ECCPXR2;
    volatile uint32_t ECCPXR3;
    volatile uint32_t ECCPXR4;
    volatile uint32_t PXUDCTL;
    volatile uint32_t ECCPXCTL2;
    volatile uint32_t PXDTCTL;
    volatile uint32_t PWMXOC;
    volatile uint32_t PXATRCTL;
    volatile uint32_t PXASCTL0;
    volatile uint32_t PXASCTL1;
    volatile uint32_t ZPDCTL0;
    volatile uint32_t ZPDCTL1;
    volatile uint32_t ZPDPORT;
    volatile uint32_t ECCPXIE;
    volatile uint32_t ECCPXEGIF;
    volatile uint32_t TXUDTIM;
    volatile uint32_t TZUDTIM;
    volatile const uint32_t ECCPXDF;
    volatile const uint32_t ECCPXC1;
    volatile const uint32_t ECCPXC2;
    volatile const uint32_t ECCPXC3;
    volatile const uint32_t ECCPXC4;
                   uint32_t RESERVED2;
    volatile uint32_t ECCPXDE;
    volatile uint32_t ECCPXSRIC;
    volatile uint32_t ECCPXCTL3;
}ATIM_SFRmap, ECCP_SFRmap;
# 6294 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct QEI_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t CNT;
    volatile uint32_t PPX;
    volatile uint32_t PRSC;
    volatile uint32_t DIER;
}QEI_SFRmap;
# 6412 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct DAC_MemMap {
    volatile uint32_t CTL;
    volatile uint32_t DAHD;
    volatile const uint32_t DATA;
    volatile uint32_t CTL1;
                   uint32_t RESERVED;
    volatile uint32_t CAL;
}DAC_SFRmap;
# 6565 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct CMP_MemMap {
    volatile uint32_t CTL;





}CMP_SFRmap;
# 8129 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct RTC_MemMap {
    volatile uint32_t CR;
    volatile uint32_t ALRA;
    volatile uint32_t TMR;
    volatile uint32_t DTR;
    volatile uint32_t ALRB;
    volatile uint32_t TMER;
    volatile uint32_t TCR;
    volatile uint32_t IER;
    volatile uint32_t IFR;
    volatile uint32_t TMBR;
    volatile uint32_t DTBR;
}RTC_SFRmap;
# 8672 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct IWDT_MemMap {
    volatile uint32_t CTL;
    volatile uint32_t FD;
}IWDT_SFRmap;
# 8705 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct WWDT_MemMap {
    volatile uint32_t CTL;
    volatile uint32_t CNT;
}WWDT_SFRmap;
# 8745 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct RST_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t CTL2;
    volatile uint32_t CTL3;
}RST_SFRmap;
# 9121 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct PCLK_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t CTL2;
    volatile uint32_t CTL3;
}PCLK_SFRmap;
# 9497 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct SPI_MemMap {
    volatile uint32_t BRGR;
    volatile uint32_t CTLR;
    volatile uint32_t BUFR;
    volatile uint32_t STR;
}SPI_SFRmap;
# 9657 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct I2C_MemMap {
    volatile uint32_t CTLR;
    volatile uint32_t SR;
    volatile uint32_t BUFR;
    volatile uint32_t ADDR0;
    volatile uint32_t BRGR;
    volatile uint32_t ADDR1;
    volatile uint32_t ADDR2;
    volatile uint32_t ADDR3;
    volatile uint32_t IER;
    volatile uint32_t TPSR;
}I2C_SFRmap;
# 9936 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct USART_MemMap {
    volatile uint32_t CTLR;
    volatile uint32_t BRGR;
    volatile uint32_t STR;
    union {
        volatile uint32_t TBUFR;
        volatile const uint32_t RBUFR;
    };
    volatile uint32_t U7816R;
    volatile uint32_t IER;
    volatile uint32_t ADM;
}USART_SFRmap;
# 10341 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct USB_MemMap {
    volatile uint32_t UCON;
    volatile const uint32_t USTAT;
    volatile uint32_t UADDR;
    volatile uint32_t UFRM;
    volatile uint32_t UIR;
    volatile uint32_t UIE;
    volatile uint32_t UEP[8];
    volatile uint32_t UDB;
}USB_SFRmap;
# 10589 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct CAN_MemMap {
    volatile uint32_t CTLR;
    volatile uint32_t BRGR;
    volatile const uint32_t RCR;
    volatile uint32_t EROR;
    volatile uint32_t ACRR;
    volatile uint32_t MSKR;
    volatile uint32_t IER;
    volatile uint32_t IFR;
    volatile uint32_t INFR;
    volatile uint32_t TX0R;
    volatile uint32_t TX1R;
    volatile uint32_t TX2R;
    volatile const uint32_t RXDATA0;
    volatile const uint32_t RXDATA1;
    volatile const uint32_t RXDATA2;
    volatile const uint32_t RXDATA3;
}CAN_SFRmap;
# 11691 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct PM_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile const uint32_t STA0;
    volatile const uint32_t STA1;
    volatile uint32_t STAC;
    volatile uint32_t CTL2;
    volatile uint32_t CAL0;
    volatile uint32_t CAL1;
    volatile uint32_t CAL2;
}PM_SFRmap;
# 12086 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct BKP_MemMap {
    volatile uint32_t CTL;
    volatile uint32_t INT;
             uint32_t RESERVED[14];
    volatile uint32_t DATA[32];
}BKP_SFRmap;
# 12196 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct FLASH_MemMap {
    volatile uint32_t ISPCON0;
    volatile uint32_t ISPCON1;
    volatile uint32_t ISPCMD;
    volatile uint32_t ISPTRG;
             uint32_t RESERVED1;
    volatile uint32_t CFG;
             uint32_t RESERVED2;
    volatile uint32_t ISPADDR;
    volatile uint32_t STATE;
             uint32_t RESERVED3;
    volatile uint32_t NVMUNLOCK;
    volatile uint32_t PROUNLOCK;
    volatile uint32_t CFGUNLOCK;
             uint32_t RESERVED4;
    volatile uint32_t CSSTART;
    volatile uint32_t CSSTOP;
    volatile uint32_t CSRES[4];
}FLASH_SFRmap;
# 12394 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct CRC_MemMap {
    volatile uint32_t CTL;
    volatile uint32_t DATA;
    volatile uint32_t RSLT;
    volatile uint32_t INIT;
    volatile uint32_t PLN;
    volatile uint32_t RXOR;
    volatile uint32_t IDATA;
    volatile uint32_t TEMP;
}CRC_SFRmap;
# 12444 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct AES_MemMap {
    volatile uint32_t CTL;
       uint32_t RESERVED1;
    volatile uint32_t AES_invMCin;
    volatile uint32_t AES_invMCout;
    volatile uint32_t KEY0;
    volatile uint32_t KEY1;
    volatile uint32_t KEY2;
    volatile uint32_t KEY3;
    volatile uint32_t INPUT0;
    volatile uint32_t INPUT1;
    volatile uint32_t INPUT2;
    volatile uint32_t INPUT3;
    volatile uint32_t OUTPUT0;
    volatile uint32_t OUTPUT1;
    volatile uint32_t OUTPUT2;
    volatile uint32_t OUTPUT3;
}AES_SFRmap;
# 12900 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct EXIC_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t STATE;
       uint32_t RESERVED1;
    volatile uint32_t WRITEBUF;
    volatile uint32_t READBUF;

}EXIC_SFRmap;
# 12980 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct CFGL_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t IFR;
}CFGL_SFRmap;
# 13333 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h"
static inline uint32_t
SFR_Config (uint32_t SfrMem, uint32_t SfrMask, uint32_t WriteVal)
{
    return ((SfrMem & SfrMask) | (WriteVal));
}
# 5 "../KF32_EVAL.h" 2

typedef enum
{
  LED3 = 0,
  LED4 = 1,
  LED5 = 2,

} Led_TypeDef;

typedef enum
{
  COM1 = 0,
  COM2 = 1,
  COM3 = 2,
  COM4 = 3,

} usart_typedef;
# 80 "../KF32_EVAL.h"
void kf_eval_usart_init(usart_typedef com_id);

void kf_eval_led_init(Led_TypeDef Led);
void kf_eval_led_on(Led_TypeDef Led);
void kf_eval_led_off(Led_TypeDef Led);
void kf_eval_led_toggle(Led_TypeDef Led);
# 2 "../KF32_EVAL.c" 2

# 1 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/kf32f_basic_gpio.h" 1
# 15 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/kf32f_basic_gpio.h"
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/KF32F_BASIC.h" 1
# 16 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/kf32f_basic_gpio.h" 2
# 33 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/kf32f_basic_gpio.h"
typedef enum
{
    GPIO_NOPULL = 0x00,
    GPIO_PULLUP = 0x01
}GPIOPU_TypeDef, GPIOPD_TypeDef;
# 47 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/kf32f_basic_gpio.h"
typedef enum
{
    GPIO_POD_PP = 0x00,
    GPIO_POD_OD = 0x01
}GPIOPOD_TypeDef;






typedef enum
{
    GPIO_MODE_IN = 0x00,
    GPIO_MODE_OUT = 0x01,
    GPIO_MODE_RMP = 0x02,
    GPIO_MODE_AN = 0x03
}GPIOMode_TypeDef;
# 73 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/kf32f_basic_gpio.h"
typedef enum
{
    GPIO_LOW_SPEED = 0,
    GPIO_HIGH_SPEED = 1
}GPIOSpeed_TypeDef;






typedef struct
{
    uint32_t m_Pin;


    GPIOMode_TypeDef m_Mode;


    GPIOSpeed_TypeDef m_Speed;


    GPIOPOD_TypeDef m_OpenDrain;


    GPIOPU_TypeDef m_PullUp;


    GPIOPD_TypeDef m_PullDown;

}GPIO_InitTypeDef;




typedef enum
{
    Bit_RESET = 0,
    Bit_SET = !Bit_RESET
}BitAction;
# 278 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/kf32f_basic_gpio.h"
void GPIO_Reset (GPIO_SFRmap* GPIOx);
void GPIO_Configuration (GPIO_SFRmap* GPIOx, GPIO_InitTypeDef* gpioInitStruct);
void GPIO_Struct_Init (GPIO_InitTypeDef* gpioInitStruct);
void GPIO_Pin_Lock_Config (GPIO_SFRmap* GPIOx,
                    uint16_t GpioPin, FunctionalState NewState);
void GPIO_Pull_Up_Enable (GPIO_SFRmap* GPIOx,
                    uint16_t GpioPin, FunctionalState NewState);
void GPIO_Toggle_Pull_Up_Config (GPIO_SFRmap* GPIOx, uint16_t GpioPin);
void GPIO_Pull_Down_Enable (GPIO_SFRmap* GPIOx,
                    uint16_t GpioPin, FunctionalState NewState);
void GPIO_Toggle_Pull_Down_Config (GPIO_SFRmap* GPIOx, uint16_t GpioPin);
void GPIO_Open_Drain_Enable (GPIO_SFRmap* GPIOx,
                    uint16_t GpioPin, GPIOPOD_TypeDef NewState);
void GPIO_Toggle_Open_Drain_Config (GPIO_SFRmap* GPIOx, uint16_t GpioPin);
void GPIO_Write_Mode_Bits (GPIO_SFRmap* GPIOx,
                    uint16_t GpioPin, GPIOMode_TypeDef NewState);
void GPIO_Speed_Config (GPIO_SFRmap* GPIOx,
                    uint16_t GpioPin, GPIOSpeed_TypeDef NewState);
void GPIO_Toggle_Speed_Config (GPIO_SFRmap* GPIOx, uint16_t GpioPin);

BitAction GPIO_Read_Input_Data_Bit (GPIO_SFRmap* GPIOx, uint16_t GpioPin);
uint16_t GPIO_Read_Input_Data (GPIO_SFRmap* GPIOx);
BitAction GPIO_Read_Output_Data_Bit (GPIO_SFRmap* GPIOx, uint16_t GpioPin);
uint16_t GPIO_Read_Output_Data (GPIO_SFRmap* GPIOx);
void GPIO_Set_Output_Data_Bits (GPIO_SFRmap* GPIOx,
                    uint16_t GpioPin, BitAction BitsValue);
void GPIO_Toggle_Output_Data_Config (GPIO_SFRmap* GPIOx, uint16_t GpioPin);

void GPIO_Pin_RMP_Config (GPIO_SFRmap* GPIOx,
                    uint16_t GpioPinNum, uint8_t PinRemap);
# 4 "../KF32_EVAL.c" 2
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/kf32f_basic_usart.h" 1
# 36 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/kf32f_basic_usart.h"
typedef struct
{
    uint32_t m_Mode;

    uint32_t m_HalfDuplexClkSource;
    uint32_t m_TransferDir;
    uint32_t m_WordLength;
    uint32_t m_StopBits;
    uint32_t m_Bit9SEL;
    uint32_t m_Parity;
    uint32_t m_ReceiveOrder;
    uint32_t m_TransmitOrder;
    uint32_t m_BRAutoDetect;
    uint32_t m_HardwareFlowControl;
    uint16_t m_BaudRateBRCKS;
    uint16_t m_BaudRateInteger;
    uint16_t m_BaudRateNumerator;
    uint16_t m_BaudRateDenominator;
} USART_InitTypeDef;




typedef struct
{
    uint32_t m_ErrorSignal;

    uint32_t m_PassagewaySelect;

    uint32_t m_TransmitRepeat;

    uint32_t m_ReceiveRepeat;

    FunctionalState m_Clkout;

    uint8_t m_ClkDiv;

    uint8_t m_Egt;

} U7816R_InitTypeDef;
# 325 "E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\inc/kf32f_basic_usart.h"
void USART_Reset (USART_SFRmap* USARTx);
void USART_Configuration (USART_SFRmap* USARTx,
                    USART_InitTypeDef* usartInitStruct);
void USART_U7816R_Configuration (USART_SFRmap* USARTx,
                    U7816R_InitTypeDef* usartInitStruct);
void USART_Struct_Init(USART_InitTypeDef* usartInitStruct);
void USART_U7816R_Struct_Init(U7816R_InitTypeDef* usartInitStruct);

void USART_Cmd (USART_SFRmap* USARTx, FunctionalState NewState);
void USART_BaudRate_Clock_Config(USART_SFRmap* USARTx, uint32_t CLK);
void USART_HalfDuplex_ClockPolarity_Config(USART_SFRmap* USARTx,
                    uint32_t NewState);
void USART_Transmit_Order_Config (USART_SFRmap* USARTx, uint32_t NewState);
void USART_Receive_Order_Config (USART_SFRmap* USARTx, uint32_t NewState);
void USART_Infrare_Detector_Voltage_Config (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_WeakUP_Enable(USART_SFRmap* USARTx, FunctionalState NewState);
void USART_Clock_Source_Config(USART_SFRmap* USARTx, uint32_t ClockSource);
void USART_Address_Detection_Enable(USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_Auto_BaudRate_Detection_Enable(USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_Send_Blank_Enable(USART_SFRmap* USARTx, FunctionalState NewState);
void USART_SYN_Choice_Config(USART_SFRmap* USARTx, uint32_t NewMode);
void USART_Transmit_Data_Enable (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_Receive_Data_Enable (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_STOP_Word_Config(USART_SFRmap* USARTx, uint32_t NewLength);
void USART_Transmit_9Word_Select_Config (USART_SFRmap* USARTx,
                    uint32_t NewState);
void USART_Parity_Select_Config(USART_SFRmap* USARTx, uint32_t NewState);
void USART_9Data_Enable (USART_SFRmap* USARTx, FunctionalState NewState);
void USART_CTS_Enable (USART_SFRmap* USARTx, FunctionalState NewState);
void USART_RTS_Enable(USART_SFRmap* USARTx, FunctionalState NewState);
void USART_Infrare_Detector_Enable(USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_Singlet_Line_Mode_Enable (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_BaudRate_Integer_Config(USART_SFRmap* USARTx, uint16_t DIV);
void USART_BaudRate_Decimal1_Config(USART_SFRmap* USARTx, uint32_t DIV);
void USART_BaudRate_Decimal2_Config(USART_SFRmap* USARTx, uint32_t DIV);
void USART_SendData(USART_SFRmap* USARTx, uint8_t Data);
void USART_TransmitData(USART_SFRmap* USARTx, uint8_t Data);
uint32_t USART_ReceiveData(USART_SFRmap* USARTx);
void USART_Address_Match_Config(USART_SFRmap* USARTx, uint8_t DIV);
void USART_Send_Idle_Frame_Enable(USART_SFRmap* USARTx, FunctionalState NewState);
void USART_Receive_Idle_Frame_Config(USART_SFRmap* USARTx, FunctionalState NewState);


void USART_7816_Cmd(USART_SFRmap* USARTx, FunctionalState NewState);
void USART_7816_CLKOUT_Enable (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_7816_Error_Signal_Config (USART_SFRmap* USARTx,
                    uint32_t ERRORSIGNAL);
void USART_Passageway_Select_Config(USART_SFRmap* USARTx, uint32_t NewState);
void USART_BGT_Config(USART_SFRmap* USARTx, FunctionalState NewState);
void USART_Transmit_Repeat_Enable(USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_Receive_Repeat_Enable(USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_Transmit_Repeat_Times_Config(USART_SFRmap* USARTx, uint32_t SELECT);
void USART_Receive_Repeat_Times_Config(USART_SFRmap* USARTx, uint32_t SELECT);
void USART_7816_CLKDIV_Config (USART_SFRmap* USARTx, uint8_t DIV);
void USART_7816_EGT_Config(USART_SFRmap* USARTx, uint8_t EGT);
void USART_7816_Resend_Mode_Select(USART_SFRmap* USARTx, FunctionalState NewState);


void USART_Receive_Overflow_INT_Enable (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_Parity_ERROR_INT_Enable (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_Frame_ERROE_INT_Enable (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_Blank_INT_Enable (USART_SFRmap* USARTx, FunctionalState NewState);
void USART_Auto_BaudRate_TimeOver_INT_Enable (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_WeakUP_INT_Enable (USART_SFRmap* USARTx, FunctionalState NewState);
void USART_Transmit_ERROR_INT_Enable (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_Receive_ERROR_INT_Enable (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_CTS_INT_Enable (USART_SFRmap* USARTx, FunctionalState NewState);
void USART_RDR_INT_Enable (USART_SFRmap* USARTx, FunctionalState NewState);
void USART_TFE_INT_Enable (USART_SFRmap* USARTx, FunctionalState NewState);
void USART_TXE_INT_Enable (USART_SFRmap* USARTx, FunctionalState NewState);
void USART_Receive_DMA_INT_Enable (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_Transmit_DMA_INT_Enable (USART_SFRmap* USARTx,
                    FunctionalState NewState);
void USART_IDLE_INT_Enable(USART_SFRmap* USARTx, FunctionalState NewState);
void USART_UADM_INT_Enable(USART_SFRmap* USARTx, FunctionalState NewState);
FlagStatus USART_Get_Receive_Overflow_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_Parity_ERROR_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_Frame_ERROR_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_Blank_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_Auto_Baudrate_TimeOver_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_WeakUP_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_7816Transmit_ERROR_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_7816Receive_ERROR_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_CTS_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_Receive_BUFR_Ready_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_Transmit_BUFR_Empty_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_Transmitter_Empty_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_Receive_Frame_Idel_Flag(USART_SFRmap* USARTx);
void USART_Clear_Receive_Overflow_INT_Flag (USART_SFRmap* USARTx);
void USART_Clear_Parity_ERROR_INT_Flag (USART_SFRmap* USARTx);
void USART_Clear_Frame_ERROR_INT_Flag (USART_SFRmap* USARTx);
void USART_Clear_Blank_INT_Flag (USART_SFRmap* USARTx);
void USART_Clear_Auto_BaudRate_TimeOver_INT_Flag (USART_SFRmap* USARTx);
void USART_Clear_WeakUP_INT_Flag (USART_SFRmap* USARTx);
void USART_Clear_Transmit_ERROR_INT_Flag (USART_SFRmap* USARTx);
void USART_Clear_Receive_ERROR_INT_Flag (USART_SFRmap* USARTx);
void USART_Clear_CTS_INT_Flag (USART_SFRmap* USARTx);
void USART_Clear_UADM_INT_Flag (USART_SFRmap* USARTx);
void USART_Clear_IDLE_INT_Flag (USART_SFRmap* USARTx);
void USART_Clear_Receive_BUFR_INT_Flag (USART_SFRmap* USARTx);
void USART_Clear_Transmit_BUFR_INT_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_WUEN_Flag (USART_SFRmap* USARTx);
FlagStatus USART_Get_Auto_BaudRate_Detection_Flag(USART_SFRmap* USARTx);
void USART_RESHD_Enable (USART_SFRmap* USARTx, FunctionalState NewState);
# 5 "../KF32_EVAL.c" 2
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h" 1
# 12 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdarg.h" 1
# 18 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdarg.h"
typedef unsigned char * va_list;
# 13 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h" 2
# 32 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
typedef void *STREAM;
# 74 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
extern char getchar (void);
extern char fgetchar (STREAM *stream);

extern int putchar (int c);
extern int fputchar (int c,STREAM *stream);
# 145 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
extern int puts (const char *);
extern int fputs(const char *str,STREAM *stream);
extern int fwrite(const char *str,unsigned int Size,unsigned int N, STREAM *stream);




extern char _scanf_buf_[256];

extern char getche(void);






extern char * gets(char * s);
extern char * cgets(char * s);

extern int scanf (const char * fmt, ...);
extern int vscanf (const char * fmt, va_list ap);

extern int fscanf (const char * str,const char * fmt, ...);
extern int sscanf (const char * str,const char * fmt, ...);

extern int vsscanf(const char * str,const char * fmt, va_list ap);




extern int printf (const char *fmt, ...);

extern int fprintf (STREAM *stream, const char *fmt, ...);

extern int sprintf (char *str, const char *fmt, ...);
extern int snprintf (char *str, unsigned int n, const char *format, ...);




extern int vprintf (const char *fmt, va_list ap);
extern int vfprintf (STREAM *stream, const char *fmt, va_list ap);
extern int vsprintf (char *str, const char *fmt, va_list ap);
extern int vsnprintf (char *s, unsigned int n, const char *format, va_list ap);
# 212 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
extern void printf_small (const char *fmt, ...);
extern void printf_tiny (const char *fmt, ...);
# 6 "../KF32_EVAL.c" 2


GPIO_SFRmap* GPIO_PORT[3] = {((GPIO_SFRmap *) ((uint32_t)0x500001C0)), ((GPIO_SFRmap *) ((uint32_t)0x500001C0)), ((GPIO_SFRmap *) ((uint32_t)0x500000C0))};
const uint16_t GPIO_PIN[3] = {((uint16_t)0x0020), ((uint16_t)0x0040), ((uint16_t)0x2000)};

static USART_SFRmap* COM_USART[4] = {((USART_SFRmap *) ((uint32_t)0x40000B00)), ((USART_SFRmap *) ((uint32_t)0x40001E80)), ((USART_SFRmap *) ((uint32_t)0x40000980)), ((USART_SFRmap *) ((uint32_t)0x40000A00))};
static GPIO_SFRmap* COM_GPIO_PORT[4] = {((GPIO_SFRmap *) ((uint32_t)0x50000000)), ((GPIO_SFRmap *) ((uint32_t)0x50000000)), ((GPIO_SFRmap *) ((uint32_t)0x50000000)), ((GPIO_SFRmap *) ((uint32_t)0x50000080))};

static const uint16_t COM_TX_PIN_NUM[4] = {((uint32_t)0x3), ((uint32_t)0x6), ((uint32_t)0x1), ((uint32_t)0xB)};
static const uint16_t COM_RX_PIN_NUM[4] = {((uint32_t)0x2), ((uint32_t)0x5), ((uint32_t)0x0), ((uint32_t)0xA)};

static const uint8_t COM_TX_PIN_RMP[4] = {((uint8_t)0x06), ((uint8_t)0x06), ((uint8_t)0x05), ((uint8_t)0x05)};
static const uint8_t COM_RX_PIN_RMP[4] = {((uint8_t)0x06), ((uint8_t)0x06), ((uint8_t)0x05), ((uint8_t)0x0B)};

static const uint16_t COM_TX_PIN[4] = {((uint16_t)0x0008), ((uint16_t)0x0040), ((uint16_t)0x0002), ((uint16_t)0x0800)};
static const uint16_t COM_RX_PIN[4] = {((uint16_t)0x0004), ((uint16_t)0x0020), ((uint16_t)0x0001), ((uint16_t)0x0400)};

static const uint32_t COM_BAUD[4] = {115200, 115200, 115200, 115200};

static const InterruptIndex COM_INT[4] = {INT_USART3, INT_USART5, INT_USART0, INT_USART1};







void kf_eval_usart_init(usart_typedef com_id)
{
    if (com_id >= 4) {
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
    USART_InitStructure.m_Mode = ((uint32_t)0<<(14));
    USART_InitStructure.m_TransferDir = ((uint32_t)3<<(15));
    USART_InitStructure.m_WordLength = ((uint32_t)0<<(21));
    USART_InitStructure.m_StopBits = ((uint32_t)0<<(18));
    USART_InitStructure.m_BaudRateBRCKS = ((uint32_t)1<<(1));
# 63 "../KF32_EVAL.c"
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
    USART_Passageway_Select_Config(COM_USART[com_id], ((uint32_t)0<<(4)));
    USART_Clear_Transmit_BUFR_INT_Flag(COM_USART[com_id]);
    USART_RESHD_Enable(COM_USART[com_id], TRUE);
    USART_Cmd(COM_USART[com_id], TRUE);


}
# 90 "../KF32_EVAL.c"
void kf_eval_led_init(Led_TypeDef Led)
{
    GPIO_InitTypeDef GPIO_InitStructure;
    GPIO_Struct_Init(&GPIO_InitStructure);

    GPIO_InitStructure.m_Pin = GPIO_PIN[Led];

 GPIO_InitStructure.m_Speed = GPIO_LOW_SPEED;
 GPIO_InitStructure.m_Mode = GPIO_MODE_OUT;
 GPIO_InitStructure.m_PullUp = GPIO_NOPULL;
 GPIO_InitStructure.m_PullDown = GPIO_NOPULL;
    GPIO_Configuration(GPIO_PORT[Led], &GPIO_InitStructure);
}
# 112 "../KF32_EVAL.c"
void kf_eval_led_on(Led_TypeDef Led)
{
    GPIO_Set_Output_Data_Bits(GPIO_PORT[Led],GPIO_PIN[Led],Bit_SET);
}






void kf_eval_led_off(Led_TypeDef Led)
{
 GPIO_Set_Output_Data_Bits(GPIO_PORT[Led],GPIO_PIN[Led],Bit_RESET);
}

void kf_eval_led_toggle(Led_TypeDef Led)
{
 GPIO_Toggle_Output_Data_Config(GPIO_PORT[Led], GPIO_PIN[Led]);
}
