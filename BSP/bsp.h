#ifndef __BSP_H
#define __BSP_H

/*BSP外设驱动头文件 */
#include "bsp_usart.h"
#include "bsp_flash.h"



/*非BSP外设驱动头文件 */
#include "delay.h"
#include "boot.h"


/*库函数  标准库函数*/
#include "KF32F_BASIC.h"
#include "kf32f_basic_usart.h"
#include "kf32f_basic_int.h"
#include "kf32f_basic_gpio.h"
#include "kf32f_basic_flash.h"

#include <stdio.h>
#include <string.h>
#include <stdint.h>


void bsp_init(void);






















#endif

