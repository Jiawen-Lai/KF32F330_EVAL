/*
 * @Author        Knox.Lai Knox.Lai@WACLighting.COM.CN
 * @Date          2026-04-21 10:54:35
 * @LastEditors   Knox.Lai
 * @LastEditTime  2026-04-28 16:41:34
 * @FilePath      \\KF32F330_EVAL\\BSP\\bsp_flash.c
 * @Description   
 */
#include"bsp.h"


FLASH_ProgramTypeDef flash_write;

void flash_erase_page(uint32_t address)
{
	FLASH_Wipe_Configuration_RAM(FLASH_WIPE_CODE_PAGE,address);//程序区页擦

}

/**
 * @brief : 擦除指定地址范围内的flash程序区
 * @param  start_addr: 起始地址
 * @param  end_addr: 结束地址，不包含该地址
 * @return * 无
 */
void flash_erase_range(uint32_t start_addr, uint32_t end_addr)
{
	uint32_t erase_addr;

	if(start_addr >= end_addr)
	{
		return;
	}

	erase_addr = start_addr - (start_addr % FLASH_PAGE_SIZE);
	while(erase_addr < end_addr)
	{
		flash_erase_page(erase_addr);
		erase_addr += FLASH_PAGE_SIZE;
	}
}

/**
  * 描述  flash 程序区读单字节数据
  * 输入  address： 指定flash地址
  *  p_FlashBuffer: 读出数据的指针
  *
  * 返回  read_buf:读出单字节数据
  *
  */
uint32_t flash_read_byte(uint32_t address,uint8_t *p_FlashBuffer) //读代码区
{
	uint32_t read_buf;
	read_buf=Read_Flash_or_CFR_RAM(address,FLASH_PROGRAM_CODE);
	*p_FlashBuffer=read_buf;

	return read_buf;
}

/**
  * 描述  flash 程序区读半字数据
  * 输入  address： 指定flash地址
  *  p_FlashBuffer: 读出数据的指针
  *
  * 返回  read_buf:读出半字数据
  *
  */
uint32_t flash_read_halfword(uint32_t address,uint16_t *p_FlashBuffer)
{
	uint32_t read_buf;
	read_buf=Read_Flash_or_CFR_RAM(address,FLASH_PROGRAM_CODE);
	*p_FlashBuffer=read_buf;

	return read_buf;
}

/**
  * 描述  flash 程序区读单字数据
  * 输入  address： 指定flash地址
  *  p_FlashBuffer: 读出数据的指针
  *
  * 返回  read_buf:读出单字数据
  *
  */
uint32_t flash_read_word(uint32_t address,uint32_t *p_FlashBuffer)
{
	uint32_t read_buf;
	read_buf=Read_Flash_or_CFR_RAM(address,FLASH_PROGRAM_CODE);
	*p_FlashBuffer=read_buf;

	return read_buf;
}

/**
 * @brief : flash 程序区读多个单字节数据
 * @param  Address: flash地址，地址必须为被8整除
 * @param  Length: 读取数据的长度
 * @param  *Buffers: 读取数据的缓冲区，长度至少为Length字节
 * @return *
 */
void flash_read_nbyte(uint32_t Address, uint8_t *Buffers, uint32_t Length)
{
	for (int i = 0; i < Length; i++)
	{
		Buffers[i] = *(unsigned char *)Address++;
	}
}

/**
 * @brief : flash 程序区读多字数据
 * @param  address: 指定flash  程序区地址
 * @param  *p_FlashBuffer: 指向存储读出数据数组的指针
 * @param  length: 读取数据长度
 * @return * 无
 */
void flash_read_multiple_word(uint32_t address,uint32_t *p_FlashBuffer,uint32_t length)
{

	volatile uint32_t read_num;

	for(read_num=0;read_num<length;read_num++)
	{
		*p_FlashBuffer=Read_Flash_or_CFR_RAM(address,FLASH_PROGRAM_CODE);
		p_FlashBuffer++;
		address=address+0x0004;
	}
}


/**
  * 描述  flash 程序区写单字节数据
  * 输入  address： 指定flash地址
  *  p_FlashBuffer: 写入数据的指针
  *
  * 返回  无。
  * 注：写入前要先擦除地址所在的页
  */
void flash_write_byte(uint32_t address,uint8_t p_FlashBuffer)
{
	uint32_t num32[2];
	uint32_t* flash_write_num;
	num32[0] = p_FlashBuffer;
	num32[1] = 0;
	flash_write_num = num32;

	flash_write.m_Mode = FLASH_PROGRAM_WORD;//FLASH_PROGRAM_HALF_PAGE //FLASH_PROGRAM_WORD
	flash_write.m_Zone = FLASH_PROGRAM_CODE;//FLASH_PROGRAM_CFG  FLASH_PROGRAM_CODE
	flash_write.m_Addr = address;
	flash_write.m_WriteSize = 1;//半页编程不得为0，如果写1（+1）实际写的是2个双字 单字编程无影响
	flash_write.m_Data = flash_write_num;
	FLASH_Program_Configuration_RAM(&flash_write);
}

/**
  * 描述  flash 程序区写多个字节数据
  * 输入  address： 指定flash地址，地址必须为被8整除
  *  p_FlashBuffer: 写入数据的指针
  *    leng：数据的长度
  * 返回  无。
  * 注：写入前要先擦除地址所在的页
  */
void flash_write_nbyte(uint32_t address,uint8_t *p_FlashBuffer,uint32_t length)
{
	uint32_t i;
	for(i=0;i<length;i++)//一页1024byte，缓冲一次写64bit=8byte，128个缓冲块
	{
		flash_write_byte(address,*p_FlashBuffer);
		p_FlashBuffer++;
		address+=8;
	}
}

/**
  * 描述  flash 程序区写半字数据
  * 输入  address： 指定flash地址
  *  p_FlashBuffer: 写入数据的指针
  *
  * 返回  无。
  * 注：写入前要先擦除地址所在的页
  */
void flash_write_halfword(uint32_t address,uint16_t p_FlashBuffer)
{
	uint32_t num32[2];
	uint32_t* flash_write_num;
	num32[0] = p_FlashBuffer;
	num32[1] = 0;
	flash_write_num = num32;

	flash_write.m_Mode = FLASH_PROGRAM_WORD;//FLASH_PROGRAM_HALF_PAGE //FLASH_PROGRAM_WORD
	flash_write.m_Zone = FLASH_PROGRAM_CODE;//FLASH_PROGRAM_CFG  FLASH_PROGRAM_CODE
	flash_write.m_Addr = address;
	flash_write.m_WriteSize = 1;//半页编程不得为0，如果写1（+1）实际写的是2个双字 单字编程无影响
	flash_write.m_Data = flash_write_num;
	FLASH_Program_Configuration_RAM(&flash_write);
}

/**
  * 描述  flash 程序区写单字数据
  * 输入  address： 指定flash地址
  *  p_FlashBuffer: 写入数据的指针
  *
  * 返回  无。
  * 注：写入前要先擦除地址所在的页
  */
void flash_write_word(uint32_t address,uint32_t p_FlashBuffer)
{
	uint32_t num32[2];
	uint32_t* flash_write_num;
	num32[0] = p_FlashBuffer;
	num32[1] = 0;
	flash_write_num = num32;

	flash_write.m_Mode = FLASH_PROGRAM_WORD;//FLASH_PROGRAM_HALF_PAGE //FLASH_PROGRAM_WORD
	flash_write.m_Zone = FLASH_PROGRAM_CODE;//FLASH_PROGRAM_CFG  FLASH_PROGRAM_CODE
	flash_write.m_Addr = address;
	flash_write.m_WriteSize = 1;//半页编程不得为0，如果写1（+1）实际写的是2个双字 单字编程无影响
	flash_write.m_Data = flash_write_num;
	FLASH_Program_Configuration_RAM(&flash_write);
}

/**
 * @brief : flash 程序区写双字数据（写入两个32位数据）
 * @param  address: 指定flash  程序区地址
 * @param  *p_FlashBuffer: 写入数据的指针
 * @return * 无
 * @note 写flash注意说明：页擦会把指定地址所在的一页128个双字地址的数据都擦除掉
 */
void flash_write_doubleword(uint32_t address,uint32_t *p_FlashBuffer)
{
	flash_write.m_Mode = FLASH_PROGRAM_WORD;//FLASH_PROGRAM_HALF_PAGE //FLASH_PROGRAM_WORD
	flash_write.m_Zone = FLASH_PROGRAM_CODE;//FLASH_PROGRAM_CFG  FLASH_PROGRAM_CODE
	flash_write.m_Addr = address;
	flash_write.m_WriteSize = 1;//半页编程不得为0，如果写1（+1）实际写的是2个双字 单字编程无影响
	flash_write.m_Data = p_FlashBuffer;
	FLASH_Program_Configuration_RAM(&flash_write);
}


/**
 * @brief : flash 程序区半页编程
 * 			按半页或小于半页数据写入数据到FLASH，个数参数1~63，地址为页的首地址 如十六进制下结尾000 400 800 C00
* 			如果地址不是页的首地址，必须确定后续页结果为0xFFFF，或前面操作过页首写，使后续块值被0xFFFF，否则写结果异常。
 * @param  address: 指定flash  程序区地址
 * @param  *p_FlashBuffer: 待写地址的数据指针
 * @param  length: 待写数据长度 取值：1~63
 * @return * 无
 * @note 写flash注意说明：页擦会把指定地址所在的一页128个双字地址（1KB）的数据都擦除掉
 * （一次写64位的双字节，如设最大63时，实际最大写入（63+1）*2=128个32位的数据，如没有补齐数据，系统会生成随机数一起写入flash
 */
void flash_write_half_page(uint32_t address,uint32_t *p_FlashBuffer,uint32_t length)
{

		flash_erase_page(address);

		flash_write.m_Mode=FLASH_PROGRAM_HALF_PAGE;//FLASH_PROGRAM_HALF_PAGE //FLASH_PROGRAM_WORD
		flash_write.m_Zone=FLASH_PROGRAM_CODE;//FLASH_PROGRAM_CFG  FLASH_PROGRAM_CODE
		flash_write.m_Addr=address;
		flash_write.m_WriteSize=length;//半页编程不得为0，如果写1（+1）实际写的是2个双字 单字编程无影响
		flash_write.m_Data=p_FlashBuffer;
		FLASH_Program_Configuration_RAM(&flash_write);
}


/**
 * @brief : flash 程序区按页写入数据到FLASH
 * 			个数参数只能为128 ，地址必须为页的首地址 如十六进制下结尾000 400 800 C00
 * 			如果地址不是页的首地址，必须确定后续块结果为0xFFFF，或前面操作过块首写，使后续页值被0xFFFF，否则写结果异常。
 * @param  address: 指定flash  程序区地址
 * @param  *p_FlashBuffer: 待写地址的数据指针
 * @param  length: 待写数据长度 取值：128
 * @return * 无
 * @note 写flash注意说明：页擦会把指定地址所在的一页128个双字地址（1KB）的数据都擦除掉，半页编程只能64个双字进行写操作，页写需要进行两次半页写。
 * */
void flash_write_page(uint32_t address,uint32_t *p_FlashBuffer,uint8_t length)
{
	volatile uint8_t i;
	static uint32_t Flash_Buff1[128];
	static uint32_t Flash_Buff2[128];

	flash_erase_page(address);

	for (i = 0; i < length; i++)
	{
		Flash_Buff1[i] = *p_FlashBuffer;
		p_FlashBuffer++;
	}

	flash_write.m_Mode = FLASH_PROGRAM_HALF_PAGE;//FLASH_PROGRAM_HALF_PAGE //FLASH_PROGRAM_WORD
	flash_write.m_Zone = FLASH_PROGRAM_CODE;//FLASH_PROGRAM_CFG  FLASH_PROGRAM_CODE
	flash_write.m_Addr = address;
	flash_write.m_WriteSize = 63;//半页编程不得为0，如果写1（+1）实际写的是2个双字 单字编程无影响
	flash_write.m_Data = Flash_Buff1;
	FLASH_Program_Configuration_RAM(&flash_write);


	for (i = 0; i < length; i++)
	{
		Flash_Buff2[i] = *p_FlashBuffer;
		p_FlashBuffer++;
	}

	flash_write.m_Mode = FLASH_PROGRAM_HALF_PAGE;//FLASH_PROGRAM_HALF_PAGE //FLASH_PROGRAM_WORD
	flash_write.m_Zone = FLASH_PROGRAM_CODE;//FLASH_PROGRAM_CFG  FLASH_PROGRAM_CODE
	flash_write.m_Addr = address + 0x200;
	flash_write.m_WriteSize = 63;//半页编程不得为0，如果写1（+1）实际写的是2个双字 单字编程无影响
	flash_write.m_Data = Flash_Buff2;
	FLASH_Program_Configuration_RAM(&flash_write);

}



/*******************************************信息用户区读写函数*********************************************/
/**
  * 描述  flash 信息用户区写单个双字节数据（写入两个32位数据）。
  * 输入  address： 指定flash用户区地址（0x1C00~0X1FF8）地址十六进制下结尾0x1C00 0x1C08  0x1E00 0x1E08
  * p_FlashBuffer: 写入数据的指针
  *
  * 返回  无。
  * 写flash注意说明：页擦会把指定地址所在的一页128个双字地址的数据都擦除掉
  */
void FLASH_WriteCFG_ONE(uint32_t address,uint32_t *p_FlashBuffer)
{

	//	//--------------------------------------------------------------------------------------------
		FLASH_Wipe_Configuration_RAM(FLASH_WIPE_CFG_PAGE,address);//程序区页擦

		flash_write.m_Mode=FLASH_PROGRAM_WORD;//FLASH_PROGRAM_HALF_PAGE //FLASH_PROGRAM_WORD
		flash_write.m_Zone=FLASH_PROGRAM_CFG;//FLASH_PROGRAM_CFG  FLASH_PROGRAM_CODE
		flash_write.m_Addr=address;
		flash_write.m_WriteSize=1;//半页编程不得为0，如果写1（+1）实际写的是2个双字 单字编程无影响
		flash_write.m_Data=p_FlashBuffer;
		FLASH_Program_Configuration_RAM(&flash_write);
}

/*
* 描述：用户区半页编程，按半页或小于半页数据写入数据到FLASH，个数参数1~63，地址为页的首地址 如十六进制下结尾000 400 800 C00
* 			如果地址不是页的首地址，必须确定后续页结果为0xFFFF，或前面操作过页首写，使后续块值被0xFFFF，否则写结果异常。
* 输入参数：address 指定用户区地址（0x1C00~0X1FF8）
*          p_FlashBuffer 待写地址的数据指针
*          length        待写数据长度取值：1~63
*  （一次写64位的双字节，如设最大63时，实际最大写入（63+1）*2=128个32位的数据，如没有补齐数据，系统会生成随机数一起写入flash）
* 返回          ：无
* 写flash注意说明：页擦会把指定地址所在的那一页128个双字地址的数据都擦除掉，
*/
void FLASH_HALFPAGE_WRITECFG_fun(uint32_t address,uint32_t *p_FlashBuffer,uint32_t length)
{

		FLASH_Wipe_Configuration_RAM(FLASH_WIPE_CFG_PAGE,address);//程序区页擦

		flash_write.m_Mode=FLASH_PROGRAM_HALF_PAGE;//FLASH_PROGRAM_HALF_PAGE //FLASH_PROGRAM_WORD
		flash_write.m_Zone=FLASH_PROGRAM_CFG;//FLASH_PROGRAM_CFG  FLASH_PROGRAM_CODE
		flash_write.m_Addr=address;
		flash_write.m_WriteSize=length;//半页编程不得为0，如果写1（+1）实际写的是2个双字 单字编程无影响
		flash_write.m_Data=p_FlashBuffer;
		FLASH_Program_Configuration_RAM(&flash_write);
}


/*
*
* 描述：用户区按页写入数据到FLASH，个数参数只能为128 ，地址必须为页的首地址 如十六进制下结尾000 400 800 C00
* 			如果地址不是页的首地址，必须确定后续块结果为0xFFFF，或前面操作过块首写，使后续页值被0xFFFF，否则写结果异常。
* 输入参数：address 待写地址因目前开放的只有最后一个PAGE 因此首地址只能从0x1C00开始
*          p_FlashBuffer 待写地址的数据指针
*          length        待写数据长度(个数参数只能为128)
* 返回          ：无
* 写flash注意说明：页擦会把指定地址所在的一页128个双字地址的数据都擦除掉，半页编程只能64个双字进行写操作，页写需要进行两次半页写。
*/
void FLASH_PageWrite_CFG_fun(uint32_t address,uint32_t *p_FlashBuffer,uint8_t length)
{
	volatile uint8_t i;
	static uint32_t Flash_Buff1[128];
	static uint32_t Flash_Buff2[128];

	//	//--------------------------------------------------------------------------------------------
		FLASH_Wipe_Configuration_RAM(FLASH_WIPE_CFG_PAGE,address);//信息用户区页擦

		//--------------------------------------------------------------------------------------------
		for (i = 0; i < length; i++)
		{
			Flash_Buff1[i] =*p_FlashBuffer;
			p_FlashBuffer ++;
		}

		flash_write.m_Mode=FLASH_PROGRAM_HALF_PAGE;//FLASH_PROGRAM_HALF_PAGE //FLASH_PROGRAM_WORD
		flash_write.m_Zone=FLASH_PROGRAM_CFG;//FLASH_PROGRAM_CFG  FLASH_PROGRAM_CODE
		flash_write.m_Addr=address;
		flash_write.m_WriteSize=63;//半页编程不得为0，如果写1（+1）实际写的是2个双字 单字编程无影响
		flash_write.m_Data=Flash_Buff1;
		FLASH_Program_Configuration_RAM(&flash_write);


		for (i = 0; i < length; i++)
		{
			Flash_Buff2[i] = *p_FlashBuffer;
			p_FlashBuffer ++;
		}

		flash_write.m_Mode=FLASH_PROGRAM_HALF_PAGE;//FLASH_PROGRAM_HALF_PAGE //FLASH_PROGRAM_WORD
		flash_write.m_Zone=FLASH_PROGRAM_CFG;//FLASH_PROGRAM_CFG  FLASH_PROGRAM_CODE
		flash_write.m_Addr=address+0x200;
		flash_write.m_WriteSize=63;//半页编程不得为0，如果写1（+1）实际写的是2个双字 单字编程无影响
		flash_write.m_Data=Flash_Buff2;
		FLASH_Program_Configuration_RAM(&flash_write);


}

