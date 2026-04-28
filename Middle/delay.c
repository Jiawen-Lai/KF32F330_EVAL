#include "delay.h"
#include "system_init.h"
// #include "soft_timer.h"

#define DELAY_MS_LOOP_COUNT    6050U
static volatile uint32_t delay_tick_count = 0;

/**
 * @brief : 延时nms, 死循环空跑实现延时
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

void delay_tick_cnt_up(void)
{
    delay_tick_count++;
}

uint32_t delay_tick_get(void)
{
    /* 返回当前的滴答计数值 */
    /* volatile确保每次都从内存读取最新值，不会被编译器优化 */
    return delay_tick_count;
}

/**
 * @brief  毫秒级延时函数，基于SysTick定时器
 * @param  nms: 延时时间，单位：ms
 * @retval None
 */
void delay_ms_timer(volatile uint32_t nms)
{
    uint32_t start_tick = delay_tick_get();  // 记录开始时间
    
    // 等待指定时间，自动处理溢出
    while ((delay_tick_get() - start_tick) < nms)
    {
        // 可以在此处添加低功耗模式或其他任务
    }
}
