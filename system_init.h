/******************************************************************************

 *                  Shanghai ChipON Micro-Electronic Co.,Ltd
 ******************************************************************************

 *  @File Name       :system_init.h

 *  @Syntax          :gnu99

 *  @Author          :ChipON AE/FAE Group

 *  @Date            :2021-11-25

 *  @Version         :V3.0.0

 *  @Description     :This file contains the Header file configuration for KF32Axx
 *                    devices.
 ******************************************************************************

 *  Copyright (C) by Shanghai ChipON Micro-Electronic Co.,Ltd

 *  All rights reserved.

 *  This software is copyright protected and proprietary to

 *  Shanghai ChipON Micro-Electronic Co.,Ltd.
 *****************************************************************************/
#ifndef _SYSTEM_INIT_H_
#define _SYSTEM_INIT_H_

#include <stdio.h>
#include <string.h>
#include <stdint.h>


#include "KF32F_BASIC.h"
#include "kf32f_basic_adc.h"
#include "kf32f_basic_bkp.h"
#include "kf32f_basic_cfgl.h"
#include "kf32f_basic_cmp.h"
#include "kf32f_basic_crc.h"
#include "kf32f_basic_dac.h"
#include "kf32f_basic_dma.h"
#include "kf32f_basic_flash.h"
#include "kf32f_basic_gpio.h"
#include "kf32f_basic_i2c.h"
#include "kf32f_basic_int.h"
#include "kf32f_basic_iwdt.h"
#include "kf32f_basic_op.h"
#include "kf32f_basic_osc.h"
#include "kf32f_basic_pclk.h"
#include "kf32f_basic_pm.h"
#include "kf32f_basic_qei.h"
#include "kf32f_basic_rst.h"
#include "kf32f_basic_rtc.h"
#include "kf32f_basic_sysctl.h"
#include "kf32f_basic_systick.h"
#include "kf32f_basic_tim.h"
#include "kf32f_basic_usart.h"
#include "kf32f_basic_wwdt.h"






/* PLL clock source used by the INTHF in 16000000Hz defult
 * If an external clock source is used, then the value of the following define,
 * should be set to the value of the external clock source, else, if no external
 * clock is used, keep this define commented
 */
/* #define SYSCLK_FREQ_HSE  16000000 */ /* Value of the external clock in Hz */
#ifdef SYSCLK_FREQ_HSE
	/* If an external clock source is used, must be choose the pins for OSC pins
	*	PM_EXTHF_PIN1_IO_PORT defined use the pins PD14/PD15
	*	PM_EXTHF_PIN2_IO_PORT defined use the pins PD9/PD10
	*/
	#define	CHOOSE_EXTHF_PIN_PD14_PD15 	PM_EXTHF_PIN1_IO_PORT
	/* #define	CHOOSE_EXTHF_PIN_PD9_PD10 	PM_EXTHF_PIN2_IO_PORT */
#else
	#define	SYSCLK_FREQ_HSI  		16000000
#endif

/* Configure the System clock source */
#if defined (KF32F130) || defined (KF32F330)
	#define SYSCLK_FREQ_72MHz	72000000
#elif defined KF32F341
	#define SYSCLK_FREQ_96MHz	96000000
#elif defined (KF32F351) || defined (KF32F350)
	#define SYSCLK_FREQ_120MHz	120000000
#endif


/* System clock Controller functions ************************************************/
extern uint32_t SystemCoreClock;
void SystemInit(void);
void systick_timer_init(void);
void systick_delay_init(void);
void systick_delay_us(unsigned int nus);
void systick_delay_ms(unsigned int nms);
void SystemCoreClockUpdate(void);
#endif /* _SYSTEM_INIT_H_ */
