/*
 * @Author        Knox.Lai Knox.Lai@WACLighting.COM.CN
 * @Date          2026-04-24 15:55:25
 * @LastEditors   Knox.Lai
 * @LastEditTime  2026-04-24 16:32:58
 * @FilePath      \\KF32F330_EVAL\\Middle\\soft_timer.c
 * @Description   
 */
//------------------------------------------------------------------------------
// Includes
//------------------------------------------------------------------------------
#include "soft_timer.h"



//------------------------------------------------------------------------------
// Private define
//------------------------------------------------------------------------------


timer_handle_t timeTable[MAX_SOFT_TIMER];   //5个软件定时器

my_date_t cur_date;


//------------------------------------------------------------------------------
// private function
//------------------------------------------------------------------------------
void systick_timer_init(void)
{
	SYSTICK_Configuration(SYSTICK_SYS_CLOCK_DIV_1, TRUE, SystemCoreClock/1000);
    INT_Interrupt_Enable(INT_SysTick, TRUE);
    INT_All_Enable(TRUE);
    SYSTICK_Cmd(TRUE);
}

/**
 * @brief : 获取当前软件定时器tick数
 * @param  *
 * @return uint32_t: 当前软件定时器tick数
 */
uint32_t softtimer_tick_get(void)
{
    return cur_date.cur_day_tick;
}
/**
 * @brief : 软件定时器tick数加1接口，放置在systick中断中
 * @param  *
 * @return *
 */
void softtimer_tick_cnt_up(void)
{
    cur_date.cur_day_tick ++;
}


//------------------------------------------------------------------------------
// public function
//------------------------------------------------------------------------------
uint32_t SOFTTIMER_getTimeoutValue(uint8_t timerIndex)
{
    return timeTable[timerIndex].tar_day_tick;
}

void SOFTTIMER_setTimeoutValue(uint8_t timerIndex,uint32_t newValue)
{
    timeTable[timerIndex].tar_day_tick = cur_date.cur_day_tick + newValue;
    if(timeTable[timerIndex].tar_day_tick >= DAY_TO_TICK)
    {
        timeTable[timerIndex].tar_day_num = cur_date.cur_day_num + 1;
        timeTable[timerIndex].tar_day_tick = timeTable[timerIndex].tar_day_tick - DAY_TO_TICK;
    }
    else
    {
        timeTable[timerIndex].tar_day_num = cur_date.cur_day_num;
    }
}


void SOFTTIMER_start(uint8_t timerIndex)
{
    timeTable[timerIndex].flg = 1;
}


void SOFTTIMER_suspend(uint8_t timerIndex)
{
    timeTable[timerIndex].flg = 0;
}


/**
  * @brief   register a soft timer.
  *
  * @param   repeat:whether the timer repeate to count when it timeout.
  * @param   timeoutValue:how long will it time out from now,unit:ms.
  * @param   func:the call back funtion when the timer timeout.
  *
  * @return  the index of timer.
  *
  * @note:   the timeoutValue should less than DAY_TO_TICK.
  */

uint8_t SOFTTIMER_register(uint8_t repeat,uint32_t timeoutValue,TimeoutCallback func)  //注册软件定时
{
    uint8_t i;

    if(timeoutValue > DAY_TO_TICK)  //限制软定时不能超过一天
    {
        return UNVALID_TIMER;
    }


    for(i = 0;i < MAX_SOFT_TIMER;i++)
    {
        if(timeTable[i].flg == 0)  //找到没有在使用的软件定时器
        {
            timeTable[i].repeat = repeat;  //是否要重复
            timeTable[i].period_tick = timeoutValue;  //定时时间
            timeTable[i].tar_day_tick = cur_date.cur_day_tick + timeTable[i].period_tick;   //定时到后的实际tick值
            if(timeTable[i].tar_day_tick >= DAY_TO_TICK) //累计的tick大于1天了
            {
                timeTable[i].tar_day_num = cur_date.cur_day_num + 1;  //天数+1
                timeTable[i].tar_day_tick = timeTable[i].tar_day_tick - DAY_TO_TICK;  //tick值减去1天
            }
            else  //定时tick未超过1天
            {
                timeTable[i].tar_day_num = cur_date.cur_day_num;  
            }

            timeTable[i].func = func;  //定时到后的回调函数
            timeTable[i].flg = 1;  //将该软件定时器标记为已被使用

            SOFT_TIMER_PRINTF("register timer%d successfully\r\n",i);
        	return i;  //返回定时器下标
        }
    }

    SOFT_TIMER_PRINTF("register failed\r\n");
    return UNVALID_TIMER;  //当前没有软件定时器可用了
}



void SOFTTIMER_unregister(uint8_t * timerIndex)  //删除软件定时器
{
    if(*timerIndex == UNVALID_TIMER)
    {
        return;
    }

    SOFT_TIMER_PRINTF("unregister timer%d\r\n",timerIndex);
    timeTable[*timerIndex].repeat = 0;
    timeTable[*timerIndex].tar_day_tick = 0;
    timeTable[*timerIndex].tar_day_num = 0;
    timeTable[*timerIndex].func = NULL;
    timeTable[*timerIndex].flg = 0;
    *timerIndex = UNVALID_TIMER;
}


void SOFTTIMER_Handle(void)
{
    uint8_t i;

    if(cur_date.cur_day_tick >= DAY_TO_TICK)   //cur_date.cur_day_tick在SysTick_Handler中1ms加1，DAY_TO_TICK为一天的毫秒数
    {
        cur_date.cur_day_tick = cur_date.cur_day_tick - DAY_TO_TICK;  //每超过一天，就将毫秒计数归零
        cur_date.cur_day_num++;  //天数+1
    }

    for(i = 0;i < MAX_SOFT_TIMER;i++)  //轮询每个软定时
    {
        if(timeTable[i].flg == 1)  //该定时器被使能
        {
            if((cur_date.cur_day_num >= timeTable[i].tar_day_num)&&(cur_date.cur_day_tick >= timeTable[i].tar_day_tick))  //定时时间到
            {
                if(timeTable[i].func)
                {
                    timeTable[i].func();   //回调函数
                }

                if(timeTable[i].repeat == RELOAD_DISABLE)  //不重复执行，执行一次后就删除该定时器
                {
                    SOFT_TIMER_PRINTF("unregister timer%d\r\n",i);
                    timeTable[i].flg = 0;  
                    timeTable[i].repeat = 0;
                    timeTable[i].tar_day_tick = 0;
                    timeTable[i].tar_day_num = 0;
                    timeTable[i].func = NULL;
                }
                else  //重复执行的定时器
                {
                    timeTable[i].tar_day_tick = cur_date.cur_day_tick + timeTable[i].period_tick;  //更新目标tick值
                    if(timeTable[i].tar_day_tick >= DAY_TO_TICK)  //处理超过一天的tick值，天数+1
                    {
                        timeTable[i].tar_day_num = cur_date.cur_day_num + 1;  //天数+1
                        timeTable[i].tar_day_tick = timeTable[i].tar_day_tick - DAY_TO_TICK;  //tick清零
                    }
                    else
                    {
                        timeTable[i].tar_day_num = cur_date.cur_day_num;  
                    }
                }
            }
        }
    }
}





/************************ end of file*****************************************/
