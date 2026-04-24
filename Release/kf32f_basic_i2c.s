	.file	"kf32f_basic_i2c.c"
	.section .text$I2C_Reset
	.align	1
	.export	I2C_Reset
	.type	I2C_Reset, @function
I2C_Reset:
	PUSH	{r6, lr}
	LD	r5,#1073745152
	CMP	r0,r5
	JZ	.L7
	LD	r5,#1073745280
	CMP	r0,r5
	JZ	.L8
	LD	r5,#1073745408
	CMP	r0,r5
	JZ	.L9
	LD	r5,#1073750912
	CMP	r0,r5
	JZ	.L10
.L1:
	POP	{r6, pc}
.L10:
	MOV	r0,#128
	MOV	r1,#1
	LD	r6,#RST_CTL3_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#128
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#128
	MOV	r1,#1
	LD	r5,#PCLK_CTL3_Peripheral_Clock_Enable
	LJMP	r5
	POP	{r6, pc}
.L7:
	MOV	r0,#1
	LSL	r0,#26
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#26
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#26
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L8:
	MOV	r0,#1
	LSL	r0,#27
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#27
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#27
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L9:
	MOV	r0,#1
	LSL	r0,#28
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#28
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#28
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
	.size	I2C_Reset, .-I2C_Reset
	.section .text$I2C_Configuration
	.align	1
	.export	I2C_Configuration
	.type	I2C_Configuration, @function
I2C_Configuration:
	LD.w	r3,[r0]
	LD.w	r2,[r1+#1]
	LD.w	r4,[r1]
	ORL	r5,r2,r4
	LD.w	r2,[r1+#2]
	ORL	r5,r5,r2
	LD.w	r4,[r1+#3]
	ORL	r5,r5,r4
	LD.w	r2,[r1+#6]
	ORL	r5,r5,r2
	LD.w	r4,[r1+#5]
	LSL	r4,#12
	ORL	r5,r5,r4
	LD	r4,#-50540547
	ANL	r4,r3,r4
	ORL	r5,r5,r4
	ST.w	[r0],r5
	LD.h	r5,[r1+#8]
	LSL	r5,#16
	LD.h	r4,[r1+#9]
	ORL	r5,r5,r4
	LD.w	r4,[r0+#4]
	ST.w	[r0+#4],r5
	JMP	lr
	.size	I2C_Configuration, .-I2C_Configuration
	.section .text$I2C_Struct_Init
	.align	1
	.export	I2C_Struct_Init
	.type	I2C_Struct_Init, @function
I2C_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	MOV	r4,#4
	ST.h	[r0+#8],r4
	ST.h	[r0+#9],r4
	ST.w	[r0+#5],r5
	ST.w	[r0+#6],r5
	JMP	lr
	.size	I2C_Struct_Init, .-I2C_Struct_Init
	.section .text$I2C_Cmd
	.align	1
	.export	I2C_Cmd
	.type	I2C_Cmd, @function
I2C_Cmd:
	CMP	r1,#0
	JNZ	.L16
// inline asm begin
	// 184 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L16:
// inline asm begin
	// 179 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	I2C_Cmd, .-I2C_Cmd
	.section .text$I2C_Bufr_Address_Config
	.align	1
	.export	I2C_Bufr_Address_Config
	.type	I2C_Bufr_Address_Config, @function
I2C_Bufr_Address_Config:
	CMP	r1,#0
	JNZ	.L20
// inline asm begin
	// 211 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L20:
// inline asm begin
	// 206 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	I2C_Bufr_Address_Config, .-I2C_Bufr_Address_Config
	.section .text$I2C_Generate_START
	.align	1
	.export	I2C_Generate_START
	.type	I2C_Generate_START, @function
I2C_Generate_START:
	CMP	r1,#0
	JNZ	.L24
// inline asm begin
	// 237 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #8
// inline asm end
	JMP	lr
.L24:
// inline asm begin
	// 232 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #8
// inline asm end
	JMP	lr
	.size	I2C_Generate_START, .-I2C_Generate_START
	.section .text$I2C_Generate_STOP
	.align	1
	.export	I2C_Generate_STOP
	.type	I2C_Generate_STOP, @function
I2C_Generate_STOP:
	CMP	r1,#0
	JNZ	.L28
// inline asm begin
	// 263 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #10
// inline asm end
	JMP	lr
.L28:
// inline asm begin
	// 258 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #10
// inline asm end
	JMP	lr
	.size	I2C_Generate_STOP, .-I2C_Generate_STOP
	.section .text$I2C_Ack_Config
	.align	1
	.export	I2C_Ack_Config
	.type	I2C_Ack_Config, @function
I2C_Ack_Config:
	CMP	r1,#0
	JNZ	.L32
// inline asm begin
	// 289 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #12
// inline asm end
	JMP	lr
.L32:
// inline asm begin
	// 284 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #12
// inline asm end
	JMP	lr
	.size	I2C_Ack_Config, .-I2C_Ack_Config
	.section .text$I2C_Ack_DATA_Config
	.align	1
	.export	I2C_Ack_DATA_Config
	.type	I2C_Ack_DATA_Config, @function
I2C_Ack_DATA_Config:
	CMP	r1,#0
	JNZ	.L36
// inline asm begin
	// 317 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #13
// inline asm end
	JMP	lr
.L36:
// inline asm begin
	// 312 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #13
// inline asm end
	JMP	lr
	.size	I2C_Ack_DATA_Config, .-I2C_Ack_DATA_Config
	.section .text$I2C_Call_Cmd
	.align	1
	.export	I2C_Call_Cmd
	.type	I2C_Call_Cmd, @function
I2C_Call_Cmd:
	CMP	r1,#0
	JNZ	.L40
// inline asm begin
	// 343 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #14
// inline asm end
	JMP	lr
.L40:
// inline asm begin
	// 338 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #14
// inline asm end
	JMP	lr
	.size	I2C_Call_Cmd, .-I2C_Call_Cmd
	.section .text$I2C_Clock_Config
	.align	1
	.export	I2C_Clock_Config
	.type	I2C_Clock_Config, @function
I2C_Clock_Config:
	LD.w	r5,[r0]
	CLR	r5,#16
	CLR	r5,#17
	ORL	r1,r1,r5
	ST.w	[r0],r1
	JMP	lr
	.size	I2C_Clock_Config, .-I2C_Clock_Config
	.section .text$I2C_MATCH_ADDRESS_Config
	.align	1
	.export	I2C_MATCH_ADDRESS_Config
	.type	I2C_MATCH_ADDRESS_Config, @function
I2C_MATCH_ADDRESS_Config:
	CMP	r1,#0
	JNZ	.L45
// inline asm begin
	// 388 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #20
// inline asm end
	JMP	lr
.L45:
// inline asm begin
	// 383 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #20
// inline asm end
	JMP	lr
	.size	I2C_MATCH_ADDRESS_Config, .-I2C_MATCH_ADDRESS_Config
	.section .text$I2C_SCL_Enable
	.align	1
	.export	I2C_SCL_Enable
	.type	I2C_SCL_Enable, @function
I2C_SCL_Enable:
	CMP	r1,#0
	JNZ	.L49
// inline asm begin
	// 414 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #21
// inline asm end
	JMP	lr
.L49:
// inline asm begin
	// 409 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #21
// inline asm end
	JMP	lr
	.size	I2C_SCL_Enable, .-I2C_SCL_Enable
	.section .text$I2C_NMENA_Enable
	.align	1
	.export	I2C_NMENA_Enable
	.type	I2C_NMENA_Enable, @function
I2C_NMENA_Enable:
	CMP	r1,#0
	JNZ	.L53
// inline asm begin
	// 440 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #22
// inline asm end
	JMP	lr
.L53:
// inline asm begin
	// 435 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #22
// inline asm end
	JMP	lr
	.size	I2C_NMENA_Enable, .-I2C_NMENA_Enable
	.section .text$I2C_SMBUS_Enable
	.align	1
	.export	I2C_SMBUS_Enable
	.type	I2C_SMBUS_Enable, @function
I2C_SMBUS_Enable:
	CMP	r1,#0
	JNZ	.L57
// inline asm begin
	// 468 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #24
// inline asm end
	JMP	lr
.L57:
// inline asm begin
	// 463 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #24
// inline asm end
	JMP	lr
	.size	I2C_SMBUS_Enable, .-I2C_SMBUS_Enable
	.section .text$I2C_SMBT_Config
	.align	1
	.export	I2C_SMBT_Config
	.type	I2C_SMBT_Config, @function
I2C_SMBT_Config:
	CMP	r1,#0
	JNZ	.L61
// inline asm begin
	// 496 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #25
// inline asm end
	JMP	lr
.L61:
// inline asm begin
	// 491 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #25
// inline asm end
	JMP	lr
	.size	I2C_SMBT_Config, .-I2C_SMBT_Config
	.section .text$I2C_SMBus_ALERT_Config
	.align	1
	.export	I2C_SMBus_ALERT_Config
	.type	I2C_SMBus_ALERT_Config, @function
I2C_SMBus_ALERT_Config:
	CMP	r1,#0
	JNZ	.L65
// inline asm begin
	// 522 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #27
// inline asm end
	JMP	lr
.L65:
// inline asm begin
	// 517 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #27
// inline asm end
	JMP	lr
	.size	I2C_SMBus_ALERT_Config, .-I2C_SMBus_ALERT_Config
	.section .text$I2C_SendData
	.align	1
	.export	I2C_SendData
	.type	I2C_SendData, @function
I2C_SendData:
	ST.w	[r0+#2],r1
	JMP	lr
	.size	I2C_SendData, .-I2C_SendData
	.section .text$I2C_SendData8
	.align	1
	.export	I2C_SendData8
	.type	I2C_SendData8, @function
I2C_SendData8:
	ZXT.b	r1,r1
	ST.w	[r0+#2],r1
	JMP	lr
	.size	I2C_SendData8, .-I2C_SendData8
	.section .text$I2C_ReceiveData
	.align	1
	.export	I2C_ReceiveData
	.type	I2C_ReceiveData, @function
I2C_ReceiveData:
	LD.w	r0,[r0+#2]
	LD	r5,#1023
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_ReceiveData, .-I2C_ReceiveData
	.section .text$I2C_ARP_Enable
	.align	1
	.export	I2C_ARP_Enable
	.type	I2C_ARP_Enable, @function
I2C_ARP_Enable:
	CMP	r1,#0
	JNZ	.L72
// inline asm begin
	// 602 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #26
// inline asm end
	JMP	lr
.L72:
// inline asm begin
	// 597 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #26
// inline asm end
	JMP	lr
	.size	I2C_ARP_Enable, .-I2C_ARP_Enable
	.section .text$I2C_ADDR_Config
	.align	1
	.export	I2C_ADDR_Config
	.type	I2C_ADDR_Config, @function
I2C_ADDR_Config:
	CMP	r1,#0
	JZ	.L76
	ADD	r0,#16
	LSL	r1,#2
	ADD	r0,r0,r1
	LD.w	r4,[r0]
	LD	r5,#-1024
	ANL	r5,r4,r5
	ORL	r2,r5,r2
	ST.w	[r0],r2
	JMP	lr
.L76:
	ADD	r0,#12
	LD.w	r4,[r0]
	LD	r5,#-1024
	ANL	r5,r4,r5
	ORL	r2,r5,r2
	ST.w	[r0],r2
	JMP	lr
	.size	I2C_ADDR_Config, .-I2C_ADDR_Config
	.section .text$I2C_MSK_Config
	.align	1
	.export	I2C_MSK_Config
	.type	I2C_MSK_Config, @function
I2C_MSK_Config:
	LSL	r2,#16
	CMP	r1,#0
	JZ	.L80
	ADD	r0,#16
	LSL	r1,#2
	ADD	r0,r0,r1
	LD.w	r4,[r0]
	LD	r5,#-67043329
	ANL	r5,r4,r5
	ORL	r2,r5,r2
	ST.w	[r0],r2
	JMP	lr
.L80:
	ADD	r0,#12
	LD.w	r4,[r0]
	LD	r5,#-67043329
	ANL	r5,r4,r5
	ORL	r2,r5,r2
	ST.w	[r0],r2
	JMP	lr
	.size	I2C_MSK_Config, .-I2C_MSK_Config
	.section .text$I2C_BRGH_Config
	.align	1
	.export	I2C_BRGH_Config
	.type	I2C_BRGH_Config, @function
I2C_BRGH_Config:
	ZXT.h	r1,r1
	LD.w	r4,[r0+#4]
	LD	r5,#-65536
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#4],r1
	JMP	lr
	.size	I2C_BRGH_Config, .-I2C_BRGH_Config
	.section .text$I2C_BRGL_Config
	.align	1
	.export	I2C_BRGL_Config
	.type	I2C_BRGL_Config, @function
I2C_BRGL_Config:
	LD.w	r5,[r0+#4]
	LSL	r1,#16
	ZXT.h	r5,r5
	ORL	r5,r1,r5
	ST.w	[r0+#4],r5
	JMP	lr
	.size	I2C_BRGL_Config, .-I2C_BRGL_Config
	.section .text$I2C_Start_INT_Enable
	.align	1
	.export	I2C_Start_INT_Enable
	.type	I2C_Start_INT_Enable, @function
I2C_Start_INT_Enable:
	ADD	r0,#32
	CMP	r1,#0
	JNZ	.L86
// inline asm begin
	// 742 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L86:
// inline asm begin
	// 737 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	I2C_Start_INT_Enable, .-I2C_Start_INT_Enable
	.section .text$I2C_Stop_INT_Enable
	.align	1
	.export	I2C_Stop_INT_Enable
	.type	I2C_Stop_INT_Enable, @function
I2C_Stop_INT_Enable:
	ADD	r0,#32
	CMP	r1,#0
	JNZ	.L90
// inline asm begin
	// 768 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L90:
// inline asm begin
	// 763 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	I2C_Stop_INT_Enable, .-I2C_Stop_INT_Enable
	.section .text$I2C_Ack_Fail_INT_Enable
	.align	1
	.export	I2C_Ack_Fail_INT_Enable
	.type	I2C_Ack_Fail_INT_Enable, @function
I2C_Ack_Fail_INT_Enable:
	ADD	r0,#32
	CMP	r1,#0
	JNZ	.L94
// inline asm begin
	// 794 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #5
// inline asm end
	JMP	lr
.L94:
// inline asm begin
	// 789 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #5
// inline asm end
	JMP	lr
	.size	I2C_Ack_Fail_INT_Enable, .-I2C_Ack_Fail_INT_Enable
	.section .text$I2C_Arbitration_Lost_INT_Enable
	.align	1
	.export	I2C_Arbitration_Lost_INT_Enable
	.type	I2C_Arbitration_Lost_INT_Enable, @function
I2C_Arbitration_Lost_INT_Enable:
	ADD	r0,#32
	CMP	r1,#0
	JNZ	.L98
// inline asm begin
	// 820 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
.L98:
// inline asm begin
	// 815 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #6
// inline asm end
	JMP	lr
	.size	I2C_Arbitration_Lost_INT_Enable, .-I2C_Arbitration_Lost_INT_Enable
	.section .text$I2C_SMBus_Alert_INT_Enable
	.align	1
	.export	I2C_SMBus_Alert_INT_Enable
	.type	I2C_SMBus_Alert_INT_Enable, @function
I2C_SMBus_Alert_INT_Enable:
	ADD	r0,#32
	CMP	r1,#0
	JNZ	.L102
// inline asm begin
	// 846 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #8
// inline asm end
	JMP	lr
.L102:
// inline asm begin
	// 841 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #8
// inline asm end
	JMP	lr
	.size	I2C_SMBus_Alert_INT_Enable, .-I2C_SMBus_Alert_INT_Enable
	.section .text$I2C_SMBus_HostHead_INT_Enable
	.align	1
	.export	I2C_SMBus_HostHead_INT_Enable
	.type	I2C_SMBus_HostHead_INT_Enable, @function
I2C_SMBus_HostHead_INT_Enable:
	ADD	r0,#32
	CMP	r1,#0
	JNZ	.L106
// inline asm begin
	// 872 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #9
// inline asm end
	JMP	lr
.L106:
// inline asm begin
	// 867 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #9
// inline asm end
	JMP	lr
	.size	I2C_SMBus_HostHead_INT_Enable, .-I2C_SMBus_HostHead_INT_Enable
	.section .text$I2C_SMBus_Device_Defaultaddress_INT_Enable
	.align	1
	.export	I2C_SMBus_Device_Defaultaddress_INT_Enable
	.type	I2C_SMBus_Device_Defaultaddress_INT_Enable, @function
I2C_SMBus_Device_Defaultaddress_INT_Enable:
	ADD	r0,#32
	CMP	r1,#0
	JNZ	.L110
// inline asm begin
	// 899 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #10
// inline asm end
	JMP	lr
.L110:
// inline asm begin
	// 894 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #10
// inline asm end
	JMP	lr
	.size	I2C_SMBus_Device_Defaultaddress_INT_Enable, .-I2C_SMBus_Device_Defaultaddress_INT_Enable
	.section .text$I2C_ISIE_INT_Enable
	.align	1
	.export	I2C_ISIE_INT_Enable
	.type	I2C_ISIE_INT_Enable, @function
I2C_ISIE_INT_Enable:
	ADD	r0,#32
	CMP	r1,#0
	JNZ	.L114
// inline asm begin
	// 925 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #11
// inline asm end
	JMP	lr
.L114:
// inline asm begin
	// 920 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #11
// inline asm end
	JMP	lr
	.size	I2C_ISIE_INT_Enable, .-I2C_ISIE_INT_Enable
	.section .text$I2C_Receive_DMA_INT_Enable
	.align	1
	.export	I2C_Receive_DMA_INT_Enable
	.type	I2C_Receive_DMA_INT_Enable, @function
I2C_Receive_DMA_INT_Enable:
	ADD	r0,#32
	CMP	r1,#0
	JNZ	.L118
// inline asm begin
	// 951 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #16
// inline asm end
	JMP	lr
.L118:
// inline asm begin
	// 946 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #16
// inline asm end
	JMP	lr
	.size	I2C_Receive_DMA_INT_Enable, .-I2C_Receive_DMA_INT_Enable
	.section .text$I2C_Transmit_DMA_INT_Enable
	.align	1
	.export	I2C_Transmit_DMA_INT_Enable
	.type	I2C_Transmit_DMA_INT_Enable, @function
I2C_Transmit_DMA_INT_Enable:
	ADD	r0,#32
	CMP	r1,#0
	JNZ	.L122
// inline asm begin
	// 977 "../src/kf32f_basic_i2c.c" 1
	CLR [r0], #17
// inline asm end
	JMP	lr
.L122:
// inline asm begin
	// 972 "../src/kf32f_basic_i2c.c" 1
	SET [r0], #17
// inline asm end
	JMP	lr
	.size	I2C_Transmit_DMA_INT_Enable, .-I2C_Transmit_DMA_INT_Enable
	.section .text$I2C_Get_Start_Flag
	.align	1
	.export	I2C_Get_Start_Flag
	.type	I2C_Get_Start_Flag, @function
I2C_Get_Start_Flag:
	LD.w	r0,[r0+#1]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_Start_Flag, .-I2C_Get_Start_Flag
	.section .text$I2C_Clear_Start_Flag
	.align	1
	.export	I2C_Clear_Start_Flag
	.type	I2C_Clear_Start_Flag, @function
I2C_Clear_Start_Flag:
	LD.w	r5,[r0+#1]
	MOV	r4,#1
	ANL	r5,r5,r4
	JZ	.L124
	ADD	r3,r0,#4
.L126:
// inline asm begin
	// 1020 "../src/kf32f_basic_i2c.c" 1
	CLR [r3], #0
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L126
.L124:
	JMP	lr
	.size	I2C_Clear_Start_Flag, .-I2C_Clear_Start_Flag
	.section .text$I2C_Get_Stop_Flag
	.align	1
	.export	I2C_Get_Stop_Flag
	.type	I2C_Get_Stop_Flag, @function
I2C_Get_Stop_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_Stop_Flag, .-I2C_Get_Stop_Flag
	.section .text$I2C_Clear_Stop_Flag
	.align	1
	.export	I2C_Clear_Stop_Flag
	.type	I2C_Clear_Stop_Flag, @function
I2C_Clear_Stop_Flag:
	LD.w	r5,[r0+#1]
	MOV	r4,#2
	ANL	r5,r5,r4
	JZ	.L132
	ADD	r3,r0,#4
.L134:
// inline asm begin
	// 1063 "../src/kf32f_basic_i2c.c" 1
	CLR [r3], #1
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L134
.L132:
	JMP	lr
	.size	I2C_Clear_Stop_Flag, .-I2C_Clear_Stop_Flag
	.section .text$I2C_Get_Address_Match_Flag
	.align	1
	.export	I2C_Get_Address_Match_Flag
	.type	I2C_Get_Address_Match_Flag, @function
I2C_Get_Address_Match_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_Address_Match_Flag, .-I2C_Get_Address_Match_Flag
	.section .text$I2C_Get_HighAddress_Flag
	.align	1
	.export	I2C_Get_HighAddress_Flag
	.type	I2C_Get_HighAddress_Flag, @function
I2C_Get_HighAddress_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#3
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_HighAddress_Flag, .-I2C_Get_HighAddress_Flag
	.section .text$I2C_Get_Data_Flag
	.align	1
	.export	I2C_Get_Data_Flag
	.type	I2C_Get_Data_Flag, @function
I2C_Get_Data_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#4
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_Data_Flag, .-I2C_Get_Data_Flag
	.section .text$I2C_Get_Ack_Fail_Flag
	.align	1
	.export	I2C_Get_Ack_Fail_Flag
	.type	I2C_Get_Ack_Fail_Flag, @function
I2C_Get_Ack_Fail_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#5
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_Ack_Fail_Flag, .-I2C_Get_Ack_Fail_Flag
	.section .text$I2C_Clear_Ack_Fail_Flag
	.align	1
	.export	I2C_Clear_Ack_Fail_Flag
	.type	I2C_Clear_Ack_Fail_Flag, @function
I2C_Clear_Ack_Fail_Flag:
	LD.w	r5,[r0+#1]
	MOV	r4,#32
	ANL	r5,r5,r4
	JZ	.L143
	ADD	r3,r0,#4
.L145:
// inline asm begin
	// 1182 "../src/kf32f_basic_i2c.c" 1
	CLR [r3], #5
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L145
.L143:
	JMP	lr
	.size	I2C_Clear_Ack_Fail_Flag, .-I2C_Clear_Ack_Fail_Flag
	.section .text$I2C_Get_Arbitration_Lost_Flag
	.align	1
	.export	I2C_Get_Arbitration_Lost_Flag
	.type	I2C_Get_Arbitration_Lost_Flag, @function
I2C_Get_Arbitration_Lost_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#6
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_Arbitration_Lost_Flag, .-I2C_Get_Arbitration_Lost_Flag
	.section .text$I2C_Clear_Arbitration_Lost_Flag
	.align	1
	.export	I2C_Clear_Arbitration_Lost_Flag
	.type	I2C_Clear_Arbitration_Lost_Flag, @function
I2C_Clear_Arbitration_Lost_Flag:
	LD.w	r5,[r0+#1]
	MOV	r4,#64
	ANL	r5,r5,r4
	JZ	.L151
	ADD	r3,r0,#4
.L153:
// inline asm begin
	// 1225 "../src/kf32f_basic_i2c.c" 1
	CLR [r3], #6
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L153
.L151:
	JMP	lr
	.size	I2C_Clear_Arbitration_Lost_Flag, .-I2C_Clear_Arbitration_Lost_Flag
	.section .text$I2C_Get_Write_Read_Flag
	.align	1
	.export	I2C_Get_Write_Read_Flag
	.type	I2C_Get_Write_Read_Flag, @function
I2C_Get_Write_Read_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#7
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_Write_Read_Flag, .-I2C_Get_Write_Read_Flag
	.section .text$I2C_Get_SMBus_Alert_Flag
	.align	1
	.export	I2C_Get_SMBus_Alert_Flag
	.type	I2C_Get_SMBus_Alert_Flag, @function
I2C_Get_SMBus_Alert_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#8
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_SMBus_Alert_Flag, .-I2C_Get_SMBus_Alert_Flag
	.section .text$I2C_Clear_SMBus_Alert_Flag
	.align	1
	.export	I2C_Clear_SMBus_Alert_Flag
	.type	I2C_Clear_SMBus_Alert_Flag, @function
I2C_Clear_SMBus_Alert_Flag:
	LD.w	r5,[r0+#1]
	MOV	r4,#255
	ADD	r4,r4,#1
	ANL	r5,r5,r4
	JZ	.L160
	ADD	r3,r0,#4
.L162:
// inline asm begin
	// 1293 "../src/kf32f_basic_i2c.c" 1
	CLR [r3], #8
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L162
.L160:
	JMP	lr
	.size	I2C_Clear_SMBus_Alert_Flag, .-I2C_Clear_SMBus_Alert_Flag
	.section .text$I2C_Get_SMBus_Host_Header_Flag
	.align	1
	.export	I2C_Get_SMBus_Host_Header_Flag
	.type	I2C_Get_SMBus_Host_Header_Flag, @function
I2C_Get_SMBus_Host_Header_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#9
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_SMBus_Host_Header_Flag, .-I2C_Get_SMBus_Host_Header_Flag
	.section .text$I2C_Clear_SMBus_Host_Header_Flag
	.align	1
	.export	I2C_Clear_SMBus_Host_Header_Flag
	.type	I2C_Clear_SMBus_Host_Header_Flag, @function
I2C_Clear_SMBus_Host_Header_Flag:
	LD.w	r5,[r0+#1]
	MOV	r4,#1
	LSL	r4,#9
	ANL	r5,r5,r4
	JZ	.L168
	ADD	r3,r0,#4
.L170:
// inline asm begin
	// 1336 "../src/kf32f_basic_i2c.c" 1
	CLR [r3], #9
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L170
.L168:
	JMP	lr
	.size	I2C_Clear_SMBus_Host_Header_Flag, .-I2C_Clear_SMBus_Host_Header_Flag
	.section .text$I2C_Get_SMBus_Device_Default_Flag
	.align	1
	.export	I2C_Get_SMBus_Device_Default_Flag
	.type	I2C_Get_SMBus_Device_Default_Flag, @function
I2C_Get_SMBus_Device_Default_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#10
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_SMBus_Device_Default_Flag, .-I2C_Get_SMBus_Device_Default_Flag
	.section .text$I2C_Clear_SMBus_Device_Default_Flag
	.align	1
	.export	I2C_Clear_SMBus_Device_Default_Flag
	.type	I2C_Clear_SMBus_Device_Default_Flag, @function
I2C_Clear_SMBus_Device_Default_Flag:
	LD.w	r5,[r0+#1]
	MOV	r4,#1
	LSL	r4,#10
	ANL	r5,r5,r4
	JZ	.L176
	ADD	r3,r0,#4
.L178:
// inline asm begin
	// 1379 "../src/kf32f_basic_i2c.c" 1
	CLR [r3], #10
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L178
.L176:
	JMP	lr
	.size	I2C_Clear_SMBus_Device_Default_Flag, .-I2C_Clear_SMBus_Device_Default_Flag
	.section .text$I2C_Get_INTERRUPT_Flag
	.align	1
	.export	I2C_Get_INTERRUPT_Flag
	.type	I2C_Get_INTERRUPT_Flag, @function
I2C_Get_INTERRUPT_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#11
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_INTERRUPT_Flag, .-I2C_Get_INTERRUPT_Flag
	.section .text$I2C_Clear_INTERRUPT_Flag
	.align	1
	.export	I2C_Clear_INTERRUPT_Flag
	.type	I2C_Clear_INTERRUPT_Flag, @function
I2C_Clear_INTERRUPT_Flag:
	LD.w	r5,[r0+#1]
	MOV	r4,#1
	LSL	r4,#11
	ANL	r5,r5,r4
	JZ	.L184
	ADD	r3,r0,#4
.L186:
// inline asm begin
	// 1422 "../src/kf32f_basic_i2c.c" 1
	CLR [r3], #11
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L186
.L184:
	JMP	lr
	.size	I2C_Clear_INTERRUPT_Flag, .-I2C_Clear_INTERRUPT_Flag
	.section .text$I2C_Get_Receive_Buff_Flag
	.align	1
	.export	I2C_Get_Receive_Buff_Flag
	.type	I2C_Get_Receive_Buff_Flag, @function
I2C_Get_Receive_Buff_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#12
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_Receive_Buff_Flag, .-I2C_Get_Receive_Buff_Flag
	.section .text$I2C_Get_Transmit_Buff_Flag
	.align	1
	.export	I2C_Get_Transmit_Buff_Flag
	.type	I2C_Get_Transmit_Buff_Flag, @function
I2C_Get_Transmit_Buff_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#13
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_Transmit_Buff_Flag, .-I2C_Get_Transmit_Buff_Flag
	.section .text$I2C_Get_Receive_DMA_Flag
	.align	1
	.export	I2C_Get_Receive_DMA_Flag
	.type	I2C_Get_Receive_DMA_Flag, @function
I2C_Get_Receive_DMA_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#16
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_Receive_DMA_Flag, .-I2C_Get_Receive_DMA_Flag
	.section .text$I2C_Get_Transmit_DMA_Flag
	.align	1
	.export	I2C_Get_Transmit_DMA_Flag
	.type	I2C_Get_Transmit_DMA_Flag, @function
I2C_Get_Transmit_DMA_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#17
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	I2C_Get_Transmit_DMA_Flag, .-I2C_Get_Transmit_DMA_Flag
