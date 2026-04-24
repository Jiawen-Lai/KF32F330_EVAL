#include "delay.h"

#define DELAY_MS_LOOP_COUNT    6050U


/**
 * @brief : 延时nms
 * @param  nms: 延时时间，单位：ms
 * @return *
 */
void delay_ms(volatile uint32_t nms)
{
	volatile uint32_t i,j;
	for(i=0;i<nms;i++)
	{
		j=DELAY_MS_LOOP_COUNT;
		while(j--);
	}

}
