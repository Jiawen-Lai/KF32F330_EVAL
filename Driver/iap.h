#ifndef __IAP_H
#define __IAP_H

#include "KF32F_BASIC.h"



typedef struct
{
    uint32_t fileRecChecksum;
    uint32_t fileChecksum;  //校验和
    uint32_t fileBytesNum;  //包长
    //uint16_t filePackageNum;
    uint32_t bytesCount;   //累计接收到的字节数
    uint16_t lastPktIndex; //上一包包索引
    uint8_t firmwareIdFlag;  //固件编号
}iap_handle_t;




#endif

/************************ end of file*****************************************/
