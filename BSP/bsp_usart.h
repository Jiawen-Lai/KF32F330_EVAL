#ifndef __BSP_USART_H
#define __BSP_USART_H

#include "KF32F_BASIC.h"

typedef enum
{
  COM1 = 0,
  COM2 = 1,
  COM3 = 2,
  COM4 = 3,

} usart_typedef_t;

#define COMn                             4

#define COM1_USART                  USART3_SFR
#define COM1_GPIO_PORT              GPIOA_SFR
#define COM1_TX_PIN_NUM             GPIO_Pin_Num_3
#define COM1_RX_PIN_NUM             GPIO_Pin_Num_2
#define COM1_TX_PIN                 GPIO_PIN_MASK_3
#define COM1_RX_PIN                 GPIO_PIN_MASK_2
#define COM1_TX_PIN_RMP             GPIO_RMP_AF6_USART3
#define COM1_RX_PIN_RMP             GPIO_RMP_AF6_USART3
#define COM1_INT                    INT_USART3
#define COM1_BAUDRATE               115200

#define COM2_USART                  USART5_SFR
#define COM2_GPIO_PORT              GPIOA_SFR
#define COM2_TX_PIN_NUM             GPIO_Pin_Num_6
#define COM2_RX_PIN_NUM             GPIO_Pin_Num_5
#define COM2_TX_PIN                 GPIO_PIN_MASK_6
#define COM2_RX_PIN                 GPIO_PIN_MASK_5
#define COM2_TX_PIN_RMP             GPIO_RMP_AF6_USART5
#define COM2_RX_PIN_RMP             GPIO_RMP_AF6_USART5
#define COM2_INT                    INT_USART5
#define COM2_BAUDRATE               115200

#define COM3_USART                  USART0_SFR
#define COM3_GPIO_PORT              GPIOA_SFR
#define COM3_TX_PIN_NUM             GPIO_Pin_Num_1
#define COM3_RX_PIN_NUM             GPIO_Pin_Num_0
#define COM3_TX_PIN                 GPIO_PIN_MASK_1
#define COM3_RX_PIN                 GPIO_PIN_MASK_0
#define COM3_TX_PIN_RMP             GPIO_RMP_AF5_USART0
#define COM3_RX_PIN_RMP             GPIO_RMP_AF5_USART0
#define COM3_INT                    INT_USART0
#define COM3_BAUDRATE               115200

#define COM4_USART                  USART1_SFR
#define COM4_GPIO_PORT              GPIOC_SFR
#define COM4_TX_PIN_NUM             GPIO_Pin_Num_11
#define COM4_RX_PIN_NUM             GPIO_Pin_Num_10
#define COM4_TX_PIN                 GPIO_PIN_MASK_11
#define COM4_RX_PIN                 GPIO_PIN_MASK_10
#define COM4_TX_PIN_RMP             GPIO_RMP_AF5_USART1
#define COM4_RX_PIN_RMP             GPIO_RMP_AF11_USART
#define COM4_INT                    INT_USART1
#define COM4_BAUDRATE               115200

void bsp_usart_init(usart_typedef_t com_id);




#endif
