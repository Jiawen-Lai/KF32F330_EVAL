#include "ymodem.h"

#define EVAL_COM USART2_SFR

uint8_t file_name[FILE_NAME_LENGTH];
uint32_t FlashDestination = 0x8000; /* APP���������׵�ַ���������Ϊ��ҳ���׵�ַ ��1ҳ =1K byte*/
uint32_t test[256] ;

/**
  * ����   uart����һ���ַ�
  * ����   c: �����ַ����յĻ���ָ��
  * ����   0���ַ����ճɹ�
  * 	 -1�����ճ�ʱ
  *
  * ע��	 timeout: ��ʱϵ�����������ó�ʱ��ʱ��
  */
static  int32_t Receive_Byte (uint8_t *c )
{
  uint32_t timeout =0x50000;//��ʱʱ������㹻����һ��Ҫ��������30ms��������λ����������Ӧ

  while (timeout-- > 1)
  {
	  if( EVAL_COM->STR & 0x01) //���������
	  {
		  EVAL_COM->STR |= 0x10000; //OVFEIC =1
		  while( EVAL_COM->STR & (uint32_t)0x01);
		  EVAL_COM->STR &= 0xfffeffff; //OVFEIC =0
	  }

	  if( EVAL_COM->STR & 0x800)  //RDRIF =1�����ջ���������
	  {
		  *c = (uint8_t)EVAL_COM->RBUFR; //������������
		  return 0;
	  }
  }
  return -1;
}

/**
  * ����   Uart����һ���ַ�
  * ����   c:�����͵��ַ�
  * ����  ��
  */
static void Send_Byte (uint8_t c)
{
	USART_SendData(EVAL_COM,c);//��дUart�ķ��ͻ��潫���Զ�����uart�ķ�����Ϊ
	while(!USART_Get_Transmitter_Empty_Flag(EVAL_COM));//������ɱ�־
}

/**
  * ����   ����һ�����ݰ�
  * ����   data: ���յĻ���ָ��
  * 	 length���ѽ������ݰ��ĳ���
  * 	 -1�����ճ�ʱ
  *����   0���������ݰ��ɹ�
  *		1����λ����������
  *		-1����ʱ�����ݴ���
  */
static int32_t Receive_Packet (uint8_t *data, int32_t *length)
{
  volatile uint16_t i, packet_size =0;
  uint8_t c;
  *length = 0; //д���ʼ�����ݰ�����
  if (Receive_Byte(&c ) != 0) //���յ�һ���ַ�
  {
    return -1;
  }
  switch (c) //�ж�����һ�����ݰ�������ȷ�����ݰ��ĳ���
  {
    case SOH:
      packet_size = PACKET_SIZE; //��ʼ���������ļ������ļ����ȣ����ݳ�����128
      break;
    case STX:
      packet_size = PACKET_1K_SIZE; //���ݰ������ݳ�����1024
      break;
    case EOT: //������
      return 0;
    default: //����յ��ĵ�һ�����ݣ����Ǳ�׼���ݰ��ĵ�һ�����ݣ�ֱ�ӷ��ز��ٴ���ʣ�������
      return -1;
  }
  *data = c; //������ĵ�һ���ֽ�
  for (i = 1; i < (packet_size + PACKET_OVERHEAD); i ++) //���յ�ǰ���ݰ���ʣ���ֽ�
  {
    if (Receive_Byte(data + i ) != 0)
    {
      return -1;
    }
  }
  if (data[PACKET_SEQNO_INDEX] != ((data[PACKET_SEQNO_COMP_INDEX] ^ 0xff) & 0xff)) //У�������źͷ����Ƿ���ȷ
  {
    return -1;
  }
  *length = packet_size; //д�뵱ǰ���ݰ�����
  return 0;
}

/**
  * ����   ����YmodemЭ�鴫�����ļ���д��Flash
  * ����   buf: ���ݰ����յĻ���ָ��
  *	����   100���ļ��ɹ����ղ�˳��д��Flash
  *		 ��������������ʧ��
  */
int32_t Ymodem_Receive (uint8_t *buf)
{
  uint8_t  *file_ptr;
  int32_t i, packet_length,  errors =0, session_begin=0;
  uint32_t packets_received =0 ,k=0;

    while(1) //��������Э�鴫���жϻ������ش��󣬷��߻�һֱ������ȴ�����
    {
      if(!Receive_Packet(buf, &packet_length ))//��ȷ�Ľ�����һ�����ݰ�
      {
          GPIO_Toggle_Output_Data_Config(GPIOB_SFR,GPIO_PIN_MASK_9); //PB10��ת,LED2Ϩ������
          errors = 0;
            switch (packet_length) //������ͬ���ȵ����ݰ�
            {
              case 0:    //���յ�������־
                Send_Byte(ACK);
                return 100;
              default: //���������ݰ�����
                if (buf[PACKET_SEQNO_INDEX] != (packets_received & 0xff)) //��鵱ǰ���ݰ��ڵ���ź�ʵ���յ������ݰ���ŵĵ�8λ�Ƿ�һ��
                {
                  Send_Byte(NAK); //������ԣ�����NACK
                }
                else //���ݰ������֤��ȷ
                {
/*��һ�����ݰ��������������ļ�����ʵ���϶�Bootloaderû���ô���ʵ�ʴ������ɾ���ò���*/
                  if (packets_received == 0)//����ǵ�һ�����ݰ�
                  {
                    if (buf[PACKET_HEADER] != 0)//����ļ������ݵĵ�һ���ַ���ȷ�ϲ��ǿյ�
                    {
                      for (i = 0, file_ptr = buf + PACKET_HEADER; (*file_ptr != 0) && (i < FILE_NAME_LENGTH);) //ȡ���ļ���
                      {
                        file_name[i++] = *file_ptr++;
                      }
                      file_name[i++] = '\0'; //�����ÿո����
                      Send_Byte(ACK); //����Ӧ��
                      Send_Byte(CRC16); //Ҫ����������ļ����ݣ������ļ�ͷ�����������뷢C���ܼ���
                    }
                    else //�ļ����ǿյģ�
                    {
                      Send_Byte(ACK);
                      return 0; //ֱ�ӷ����ļ��ĳ��Ⱦ���0
                    }
                  }
/*�ļ��������ݰ�������������ʵ�����ݣ��������ݰ�����Ч������128byte*/
                  else //���ݰ�����
                  {
                  	k = (packets_received-1) % 8;
                  	memcpy ( (uint8_t *)test + k*128, buf+ PACKET_HEADER, 128);//���յ������ݰ���˳������test[]��
                  	if( k ==7) //ÿ1K���ֽ�
                  	{
                          //��������ҳд������
                          FLASH_PageWrite_fun( FlashDestination, test, 128);     //��һҳ������д��0x8000 ���ڳ�������flash PAGE
                          FlashDestination +=0x400; //ÿд1K����ַ�ۼ�1K
                  	}
                    Send_Byte(ACK); //������Ӧ

                  }

                  packets_received ++; //���հ���������
                  if(packets_received> 80) //�������80 /8 *1K byteδ��������������ֹͣ��������
                  {
                  	Send_Byte(NAK); //������Ӧ
                      return 100;
                  }
                  session_begin = 1; //��ʾ��ʼ������
                }//���ݰ������֤��ȷ
            } //switch
      }
      else//�ַ����ճ�ʱ�������ݴ�����
      {
          if (session_begin > 0) //���չ����У��������
          {
            errors ++;
          }
          if (errors > MAX_ERRORS) //������󳬹�һ����������ֹ����
          {
        	Send_Byte(NAK); //������Ӧ
            return 0;
          }
          Send_Byte(CRC16);  //���͡�C����Ҫ�������ط�,��ʱ���C�������﷢����
      }
    } //while(1)
  return 100;
}

/**
  * ����   ���㵥���ֽ����ݵ�CRC16ֵ
  * ����   crcIn: CRC�ĳ�ֵ
  * 	 byte��������CRCֵ���ַ�
  *	����   CRC16����Ľ��
  *	ʹ�õĶ���ʽ0x1021
  */
uint16_t UpdateCRC16(uint16_t crcIn, uint8_t byte)
{
 uint32_t crc = crcIn;
 uint32_t in = byte|0x100;
 do
 {
 crc <<= 1;
 in <<= 1;
 if(in&0x100)
 ++crc;
 if(crc&0x10000)
 crc ^= 0x1021;
 }
 while(!(in&0x10000));
 return crc&0xffffu;
}

/**
  * ����   �������ݰ���CRC16ֵ
  * ����   data: ���ݰ���ָ��
  * 	 size�����ݰ��ĳ���
  *	����   CRC16����Ľ��
  */
uint16_t Cal_CRC16(const uint8_t* data, uint32_t size)
{
 uint32_t crc = 0;
 const uint8_t* dataEnd = data+size;
 while(data<dataEnd)
  crc = UpdateCRC16(crc,*data++);
 
 crc = UpdateCRC16(crc,0);
 crc = UpdateCRC16(crc,0);
 return crc&0xffffu;
}

/**
  * ����   �������ݰ���Checksumֵ
  * ����   data: ���ݰ���ָ��
  * 	 size�����ݰ��ĳ���
  *	����   Checksum����Ľ��
  */
uint8_t CalChecksum(const uint8_t* data, uint32_t size)
{
 uint32_t sum = 0;
 const uint8_t* dataEnd = data+size;
 while(data < dataEnd )
   sum += *data++;
 return sum&0xffu;
}

