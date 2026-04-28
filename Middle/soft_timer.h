
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __SOFT_TIMER_H
#define __SOFT_TIMER_H

#include "system_init.h"
#include <stdio.h>
#include <string.h>
//------------------------------------------------------------------------------
// define
//------------------------------------------------------------------------------

#define SOFT_TIMER_DEBUG_ENABLE  1

#if (SOFT_TIMER_DEBUG_ENABLE)
    #define SOFT_TIMER_PRINTF(fmt, ...)  fprintf(USART0_STREAM, fmt, ##__VA_ARGS__)
#else
    #define SOFT_TIMER_PRINTF(fmt, ...)
#endif


#define RELOAD_DISABLE      0
#define RELOAD_ENABLE       1

#define UNVALID_TIMER         0xff

#define MAX_SOFT_TIMER      5

#define DAY_TO_TICK         86400000    //1000*3600*24

//------------------------------------------------------------------------------
// variable
//------------------------------------------------------------------------------

typedef void (*TimeoutCallback)(void);


typedef struct
{

    //uint8_t busy;
    uint32_t tar_day_tick; //定时的实际tick
    uint32_t period_tick;  //定时时间
    uint16_t  tar_day_num; //当定时tick超过一天时，定时天数+1
    uint8_t flg;  //定时器是否被使用标记
    uint8_t repeat;  //是否重复
    TimeoutCallback func;  //定时结束的回调函数
}timer_handle_t;


typedef struct
{
    uint32_t cur_day_tick;
    uint16_t cur_day_num;
}my_date_t;




//------------------------------------------------------------------------------
// public function
//------------------------------------------------------------------------------
uint32_t softtimer_tick_get(void);
void softtimer_tick_cnt_up(void);
void systick_timer_init(void);

uint32_t SOFTTIMER_getTimeoutValue(uint8_t timerIndex);
void SOFTTIMER_setTimeoutValue(uint8_t timerIndex,uint32_t newValue);
void SOFTTIMER_start(uint8_t timerIndex);
void SOFTTIMER_suspend(uint8_t timerIndex);

void SOFTTIMER_unregister(uint8_t * timerIndex);
uint8_t SOFTTIMER_register(uint8_t repeat,uint32_t timeoutValue,TimeoutCallback func);
void SOFTTIMER_Handle(void);



#endif

/************************ end of file*****************************************/
