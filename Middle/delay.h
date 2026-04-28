#ifndef __DELAY_H
#define __DELAY_H

#include "KF32F_BASIC.h"

void delay_ms(volatile uint32_t nms);
uint32_t delay_tick_get(void);
void delay_tick_cnt_up(void);
void delay_ms_timer(volatile uint32_t nms);


#endif

