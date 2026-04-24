#ifndef __BOOT_H
#define __BOOT_H

#include "bsp.h"


uint8_t iap_is_app_valid(uint32_t app_addr);
void iap_jump_to_app(uint32_t app_addr);


#endif

/************************ end of file*****************************************/
