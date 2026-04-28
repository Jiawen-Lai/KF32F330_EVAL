/*
 * @Author        Knox.Lai Knox.Lai@WACLighting.COM.CN
 * @Date          2026-04-13 15:35:05
 * @LastEditors   Knox.Lai
 * @LastEditTime  2026-04-28 16:57:36
 * @FilePath      \\KF32F330_EVAL\\Middle\\boot.c
 * @Description   
 */
#include "bsp_flash.h"

typedef  void (*pFunction)(void); //定义void函数指针类型

static uint32_t iap_get_appstackpointer(uint32_t app_addr);
static uint32_t iap_get_jumpaddress(uint32_t app_addr);

/**
 * @brief : 校验 App 栈顶地址是否有效，即是否在 SRAM 内部
 * @param  app_addr: App 首地址
 * @return * 1 表示有效，0 表示无效
 * @note   : 校验 App 栈顶地址是否在 SRAM 内部，且是否为偶数地址对齐
 */
uint8_t iap_is_app_valid(uint32_t app_addr)
{
    uint32_t app_stack = iap_get_appstackpointer(app_addr);

    if ((app_stack < SRAM_START_ADDR) || (app_stack > SRAM_END_ADDR) || ((app_stack & 0x3U) != 0U))
    {
        return 0;
    }

    return 1;
}

/**
 * @brief : 跳转到 App 程序执行
 * @param  app_addr: App 首地址
 * @return * 无
 */
void iap_jump_to_app(uint32_t app_addr)
{
    SYS_VECTOFF = app_addr; //设置向量表偏移值，即重映射向量表，这对中断服务函数正确执行至关重要
    uint32_t jump_address = iap_get_jumpaddress(app_addr); //获取APP的startup()入口地址
    pFunction jump_to_app = (pFunction)jump_address; //将startup()入口地址赋值给函数指针

    jump_to_app(); //使用新的函数指针，转向执行APP的startup()函数，这将导致APP程序启动

}

/**
 * @brief : 获取 App 向量表的首字，即初始 MSP 值
 * @param  app_addr: App 首地址
 * @return * App 的初始主堆栈指针值
 */
static uint32_t iap_get_appstackpointer(uint32_t app_addr)
{
    return (*((volatile uint32_t *)app_addr));
}

/**
 * @brief : 获取 App 向量表中的跳转地址
 * @param  app_addr: App 首地址
 * @return * App 的 Reset_Handler 地址
 */
static uint32_t iap_get_jumpaddress(uint32_t app_addr)
{
    return (*((volatile uint32_t *)(app_addr + 4U)));
}


