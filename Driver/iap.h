#ifndef __IAP_H
#define __IAP_H

#include "KF32F_BASIC.h"

#define IAP_DEBUG_EN             0

#if (IAP_DEBUG_EN)
    #define IAP_PRINTF(fmt, ...)  fprintf(USART0_STREAM, fmt, ##__VA_ARGS__)
	// printf(fmt, ##__VA_ARGS__)
	// fprintf(USART0_STREAM, fmt, ##__VA_ARGS__)
#else
    #define IAP_PRINTF(fmt, ...)
#endif


typedef struct
{
    uint32_t iap_flg;
    uint32_t fw_len;  //固件长度（字节数）
    uint32_t cks;
    uint8_t md5[16];
}iap_infor_t;//固件信息结构体，用于存储升级标志、APP2备份区的固件信息、累加和和MD5校验和

typedef enum
{
    IAP_START,
    IAP_FIRMWARE_INFO_CHECK,
    IAP_RECV_PACKAGE_DATA,
    IAP_END,
}iap_state_t;

typedef struct
{
    uint32_t file_rec_cks;  //从上位机接收到的累加和
    uint32_t file_bytes_num;  //固件长度（字节数）
    uint32_t bytes_count;   //累计接收到的字节数
    uint16_t last_pkt_index; //上一包包索引
    uint8_t firmware_id;  //固件编号
    uint32_t cks;  //校验和
    uint8_t md5[16];
}iap_handle_t;

void iap_app_verify(void);
void iap_info_clear(void);
void iap_app_update(void);


#endif
