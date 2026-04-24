	.file	"kf32f_basic_spi.c"
	.section .text$SPI_Reset
	.align	1
	.export	SPI_Reset
	.type	SPI_Reset, @function
SPI_Reset:
	PUSH	{r6, lr}
	LD	r5,#1073744896
	CMP	r0,r5
	JZ	.L7
	LD	r5,#1073745024
	CMP	r0,r5
	JZ	.L8
	LD	r5,#1073750144
	CMP	r0,r5
	JZ	.L9
	LD	r5,#1073750272
	CMP	r0,r5
	JZ	.L10
.L1:
	POP	{r6, pc}
.L10:
	MOV	r0,#4
	MOV	r1,#1
	LD	r6,#RST_CTL3_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#4
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#4
	MOV	r1,#1
	LD	r5,#PCLK_CTL3_Peripheral_Clock_Enable
	LJMP	r5
	POP	{r6, pc}
.L7:
	MOV	r0,#1
	LSL	r0,#24
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#24
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#24
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L8:
	MOV	r0,#1
	LSL	r0,#25
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#25
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#25
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L9:
	MOV	r0,#2
	MOV	r1,#1
	LD	r6,#RST_CTL3_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#2
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#2
	MOV	r1,#1
	LD	r5,#PCLK_CTL3_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
	.size	SPI_Reset, .-SPI_Reset
	.section .text$SPI_Configuration
	.align	1
	.export	SPI_Configuration
	.type	SPI_Configuration, @function
SPI_Configuration:
	LD.w	r3,[r0+#1]
	LD.w	r2,[r1+#1]
	LD.w	r5,[r1]
	ORL	r4,r2,r5
	LD.w	r2,[r1+#2]
	ORL	r4,r4,r2
	LD.w	r5,[r1+#3]
	ORL	r4,r4,r5
	LD.w	r2,[r1+#4]
	ORL	r4,r4,r2
	LD.w	r5,[r1+#5]
	ORL	r4,r4,r5
	LD	r5,#-13183
	ANL	r5,r3,r5
	ORL	r5,r4,r5
	ST.w	[r0+#1],r5
	LD.w	r4,[r0]
	LD	r5,#-65536
	ANL	r5,r4,r5
	LD.h	r4,[r1+#12]
	ORL	r5,r5,r4
	ST.w	[r0],r5
	JMP	lr
	.size	SPI_Configuration, .-SPI_Configuration
	.section .text$I2S_Configuration
	.align	1
	.export	I2S_Configuration
	.type	I2S_Configuration, @function
I2S_Configuration:
	LD.w	r3,[r0+#1]
	LD.w	r2,[r1+#1]
	LD.w	r5,[r1]
	ORL	r4,r2,r5
	LD.w	r2,[r1+#2]
	ORL	r4,r4,r2
	LD.w	r5,[r1+#3]
	ORL	r4,r4,r5
	LD.w	r2,[r1+#4]
	ORL	r4,r4,r2
	LD	r5,#-267386881
	ANL	r5,r3,r5
	ORL	r5,r4,r5
	ST.w	[r0+#1],r5
	LD.w	r3,[r0]
	LD.b	r4,[r1+#20]
	LSL	r4,#16
	LD	r5,#-16711681
	ANL	r5,r3,r5
	ORL	r5,r4,r5
	ST.w	[r0],r5
	JMP	lr
	.size	I2S_Configuration, .-I2S_Configuration
	.section .text$SPI_Struct_Init
	.align	1
	.export	SPI_Struct_Init
	.type	SPI_Struct_Init, @function
SPI_Struct_Init:
	MOV	r5,#8
	ST.w	[r0],r5
	MOV	r5,#16
	ST.w	[r0+#1],r5
	MOV	r5,#64
	ST.w	[r0+#2],r5
	MOV	r5,#0
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	ST.h	[r0+#12],r5
	JMP	lr
	.size	SPI_Struct_Init, .-SPI_Struct_Init
	.section .text$I2S_Struct_Init
	.align	1
	.export	I2S_Struct_Init
	.type	I2S_Struct_Init, @function
I2S_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	MOV	r4,#1
	LSL	r4,#24
	ST.w	[r0+#2],r4
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.b	[r0+#20],r5
	JMP	lr
	.size	I2S_Struct_Init, .-I2S_Struct_Init
	.section .text$SPI_Cmd
	.align	1
	.export	SPI_Cmd
	.type	SPI_Cmd, @function
SPI_Cmd:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L18
// inline asm begin
	// 238 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L18:
// inline asm begin
	// 233 "../src/kf32f_basic_spi.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	SPI_Cmd, .-SPI_Cmd
	.section .text$I2S_Mode_Select
	.align	1
	.export	I2S_Mode_Select
	.type	I2S_Mode_Select, @function
I2S_Mode_Select:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L22
// inline asm begin
	// 267 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #16
// inline asm end
	JMP	lr
.L22:
// inline asm begin
	// 262 "../src/kf32f_basic_spi.c" 1
	SET [r0], #16
// inline asm end
	JMP	lr
	.size	I2S_Mode_Select, .-I2S_Mode_Select
	.section .text$SPI_I2S_ReceiveData
	.align	1
	.export	SPI_I2S_ReceiveData
	.type	SPI_I2S_ReceiveData, @function
SPI_I2S_ReceiveData:
	LD.w	r0,[r0+#2]
	JMP	lr
	.size	SPI_I2S_ReceiveData, .-SPI_I2S_ReceiveData
	.section .text$SPI_I2S_SendData32
	.align	1
	.export	SPI_I2S_SendData32
	.type	SPI_I2S_SendData32, @function
SPI_I2S_SendData32:
	ST.w	[r0+#2],r1
	JMP	lr
	.size	SPI_I2S_SendData32, .-SPI_I2S_SendData32
	.section .text$SPI_I2S_SendData8
	.align	1
	.export	SPI_I2S_SendData8
	.type	SPI_I2S_SendData8, @function
SPI_I2S_SendData8:
	ZXT.b	r1,r1
	ST.w	[r0+#2],r1
	JMP	lr
	.size	SPI_I2S_SendData8, .-SPI_I2S_SendData8
	.section .text$SPI_BaudRate_Config
	.align	1
	.export	SPI_BaudRate_Config
	.type	SPI_BaudRate_Config, @function
SPI_BaudRate_Config:
	ZXT.h	r1,r1
	LD.w	r4,[r0]
	LD	r5,#-65536
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0],r1
	JMP	lr
	.size	SPI_BaudRate_Config, .-SPI_BaudRate_Config
	.section .text$I2S_DIV_Config
	.align	1
	.export	I2S_DIV_Config
	.type	I2S_DIV_Config, @function
I2S_DIV_Config:
	ZXT.b	r1,r1
	LD.w	r3,[r0]
	MOV	r4,#16
	LSL	r5,r1,r4
	LD	r4,#-16711681
	ANL	r1,r3,r4
	ORL	r1,r5,r1
	ST.w	[r0],r1
	JMP	lr
	.size	I2S_DIV_Config, .-I2S_DIV_Config
	.section .text$SPI_MODE_Config
	.align	1
	.export	SPI_MODE_Config
	.type	SPI_MODE_Config, @function
SPI_MODE_Config:
	LD.w	r4,[r0+#1]
	MOV	r5,#14
	NOT	r5,r5
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	SPI_MODE_Config, .-SPI_MODE_Config
	.section .text$SPI_CLK_Config
	.align	1
	.export	SPI_CLK_Config
	.type	SPI_CLK_Config, @function
SPI_CLK_Config:
	LD.w	r5,[r0+#1]
	CLR	r5,#4
	CLR	r5,#5
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	SPI_CLK_Config, .-SPI_CLK_Config
	.section .text$SPI_Data_Direction_Config
	.align	1
	.export	SPI_Data_Direction_Config
	.type	SPI_Data_Direction_Config, @function
SPI_Data_Direction_Config:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L33
// inline asm begin
	// 423 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
.L33:
// inline asm begin
	// 418 "../src/kf32f_basic_spi.c" 1
	SET [r0], #6
// inline asm end
	JMP	lr
	.size	SPI_Data_Direction_Config, .-SPI_Data_Direction_Config
	.section .text$SPI_Clock_Polarity_Config
	.align	1
	.export	SPI_Clock_Polarity_Config
	.type	SPI_Clock_Polarity_Config, @function
SPI_Clock_Polarity_Config:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L37
// inline asm begin
	// 451 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #8
// inline asm end
	JMP	lr
.L37:
// inline asm begin
	// 446 "../src/kf32f_basic_spi.c" 1
	SET [r0], #8
// inline asm end
	JMP	lr
	.size	SPI_Clock_Polarity_Config, .-SPI_Clock_Polarity_Config
	.section .text$SPI_Clock_Edge_Config
	.align	1
	.export	SPI_Clock_Edge_Config
	.type	SPI_Clock_Edge_Config, @function
SPI_Clock_Edge_Config:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L41
// inline asm begin
	// 479 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #9
// inline asm end
	JMP	lr
.L41:
// inline asm begin
	// 474 "../src/kf32f_basic_spi.c" 1
	SET [r0], #9
// inline asm end
	JMP	lr
	.size	SPI_Clock_Edge_Config, .-SPI_Clock_Edge_Config
	.section .text$SPI_BIT_SELECT_Config
	.align	1
	.export	SPI_BIT_SELECT_Config
	.type	SPI_BIT_SELECT_Config, @function
SPI_BIT_SELECT_Config:
	LD.w	r5,[r0+#1]
	CLR	r5,#12
	CLR	r5,#13
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	SPI_BIT_SELECT_Config, .-SPI_BIT_SELECT_Config
	.section .text$SPI_I2S_MODE_Config
	.align	1
	.export	SPI_I2S_MODE_Config
	.type	SPI_I2S_MODE_Config, @function
SPI_I2S_MODE_Config:
	LD.w	r5,[r0+#1]
	CLR	r5,#20
	CLR	r5,#21
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	SPI_I2S_MODE_Config, .-SPI_I2S_MODE_Config
	.section .text$SPI_I2S_STANDARD_Config
	.align	1
	.export	SPI_I2S_STANDARD_Config
	.type	SPI_I2S_STANDARD_Config, @function
SPI_I2S_STANDARD_Config:
	LD.w	r5,[r0+#1]
	CLR	r5,#22
	CLR	r5,#23
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	SPI_I2S_STANDARD_Config, .-SPI_I2S_STANDARD_Config
	.section .text$SPI_PCM_Config
	.align	1
	.export	SPI_PCM_Config
	.type	SPI_PCM_Config, @function
SPI_PCM_Config:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L48
// inline asm begin
	// 569 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #24
// inline asm end
	JMP	lr
.L48:
// inline asm begin
	// 564 "../src/kf32f_basic_spi.c" 1
	SET [r0], #24
// inline asm end
	JMP	lr
	.size	SPI_PCM_Config, .-SPI_PCM_Config
	.section .text$SPI_CHLEN_Config
	.align	1
	.export	SPI_CHLEN_Config
	.type	SPI_CHLEN_Config, @function
SPI_CHLEN_Config:
	LD	r5,#100663296
	CMP	r1,r5
	JZ	.L53
	MOV	r5,#1
	LSL	r5,#26
	CMP	r1,r5
	JZ	.L54
	ADD	r5,r0,#4
// inline asm begin
	// 604 "../src/kf32f_basic_spi.c" 1
	CLR [r5], #25
// inline asm end
	ADD	r0,r0,#4
// inline asm begin
	// 605 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #26
// inline asm end
	JMP	lr
.L53:
	ADD	r5,r0,#4
// inline asm begin
	// 592 "../src/kf32f_basic_spi.c" 1
	SET [r5], #25
// inline asm end
	ADD	r0,r0,#4
// inline asm begin
	// 593 "../src/kf32f_basic_spi.c" 1
	SET [r0], #26
// inline asm end
	JMP	lr
.L54:
	ADD	r5,r0,#4
// inline asm begin
	// 598 "../src/kf32f_basic_spi.c" 1
	CLR [r5], #25
// inline asm end
	ADD	r0,r0,#4
// inline asm begin
	// 599 "../src/kf32f_basic_spi.c" 1
	SET [r0], #26
// inline asm end
	JMP	lr
	.size	SPI_CHLEN_Config, .-SPI_CHLEN_Config
	.section .text$SPI_PCM_CLOCK_Polarity_Config
	.align	1
	.export	SPI_PCM_CLOCK_Polarity_Config
	.type	SPI_PCM_CLOCK_Polarity_Config, @function
SPI_PCM_CLOCK_Polarity_Config:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L58
// inline asm begin
	// 633 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #27
// inline asm end
	JMP	lr
.L58:
// inline asm begin
	// 628 "../src/kf32f_basic_spi.c" 1
	SET [r0], #27
// inline asm end
	JMP	lr
	.size	SPI_PCM_CLOCK_Polarity_Config, .-SPI_PCM_CLOCK_Polarity_Config
	.section .text$SPI_MAIN_CLOCK_OUT_Enable
	.align	1
	.export	SPI_MAIN_CLOCK_OUT_Enable
	.type	SPI_MAIN_CLOCK_OUT_Enable, @function
SPI_MAIN_CLOCK_OUT_Enable:
	CMP	r1,#0
	JNZ	.L62
// inline asm begin
	// 659 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #24
// inline asm end
	JMP	lr
.L62:
// inline asm begin
	// 654 "../src/kf32f_basic_spi.c" 1
	SET [r0], #24
// inline asm end
	JMP	lr
	.size	SPI_MAIN_CLOCK_OUT_Enable, .-SPI_MAIN_CLOCK_OUT_Enable
	.section .text$SPI_Receive_Overflow_INT_Enable
	.align	1
	.export	SPI_Receive_Overflow_INT_Enable
	.type	SPI_Receive_Overflow_INT_Enable, @function
SPI_Receive_Overflow_INT_Enable:
	ADD	r0,#12
	CMP	r1,#0
	JNZ	.L66
// inline asm begin
	// 692 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #12
// inline asm end
	JMP	lr
.L66:
// inline asm begin
	// 687 "../src/kf32f_basic_spi.c" 1
	SET [r0], #12
// inline asm end
	JMP	lr
	.size	SPI_Receive_Overflow_INT_Enable, .-SPI_Receive_Overflow_INT_Enable
	.section .text$SPI_Transmit_Overflow_INT_Enable
	.align	1
	.export	SPI_Transmit_Overflow_INT_Enable
	.type	SPI_Transmit_Overflow_INT_Enable, @function
SPI_Transmit_Overflow_INT_Enable:
	ADD	r0,#12
	CMP	r1,#0
	JNZ	.L70
// inline asm begin
	// 718 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #13
// inline asm end
	JMP	lr
.L70:
// inline asm begin
	// 713 "../src/kf32f_basic_spi.c" 1
	SET [r0], #13
// inline asm end
	JMP	lr
	.size	SPI_Transmit_Overflow_INT_Enable, .-SPI_Transmit_Overflow_INT_Enable
	.section .text$SPI_RNEIE_INT_Enable
	.align	1
	.export	SPI_RNEIE_INT_Enable
	.type	SPI_RNEIE_INT_Enable, @function
SPI_RNEIE_INT_Enable:
	ADD	r0,#12
	CMP	r1,#0
	JNZ	.L74
// inline asm begin
	// 744 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #14
// inline asm end
	JMP	lr
.L74:
// inline asm begin
	// 739 "../src/kf32f_basic_spi.c" 1
	SET [r0], #14
// inline asm end
	JMP	lr
	.size	SPI_RNEIE_INT_Enable, .-SPI_RNEIE_INT_Enable
	.section .text$SPI_TNEIE_INT_Enable
	.align	1
	.export	SPI_TNEIE_INT_Enable
	.type	SPI_TNEIE_INT_Enable, @function
SPI_TNEIE_INT_Enable:
	ADD	r0,#12
	CMP	r1,#0
	JNZ	.L78
// inline asm begin
	// 770 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #15
// inline asm end
	JMP	lr
.L78:
// inline asm begin
	// 765 "../src/kf32f_basic_spi.c" 1
	SET [r0], #15
// inline asm end
	JMP	lr
	.size	SPI_TNEIE_INT_Enable, .-SPI_TNEIE_INT_Enable
	.section .text$SPI_Receive_DMA_INT_Enable
	.align	1
	.export	SPI_Receive_DMA_INT_Enable
	.type	SPI_Receive_DMA_INT_Enable, @function
SPI_Receive_DMA_INT_Enable:
	ADD	r0,#12
	CMP	r1,#0
	JNZ	.L82
// inline asm begin
	// 797 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #20
// inline asm end
	JMP	lr
.L82:
// inline asm begin
	// 792 "../src/kf32f_basic_spi.c" 1
	SET [r0], #20
// inline asm end
	JMP	lr
	.size	SPI_Receive_DMA_INT_Enable, .-SPI_Receive_DMA_INT_Enable
	.section .text$SPI_Transmit_DMA_INT_Enable
	.align	1
	.export	SPI_Transmit_DMA_INT_Enable
	.type	SPI_Transmit_DMA_INT_Enable, @function
SPI_Transmit_DMA_INT_Enable:
	ADD	r0,#12
	CMP	r1,#0
	JNZ	.L86
// inline asm begin
	// 823 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #21
// inline asm end
	JMP	lr
.L86:
// inline asm begin
	// 818 "../src/kf32f_basic_spi.c" 1
	SET [r0], #21
// inline asm end
	JMP	lr
	.size	SPI_Transmit_DMA_INT_Enable, .-SPI_Transmit_DMA_INT_Enable
	.section .text$SPI_Transmit_CHSIDE_INT_Enable
	.align	1
	.export	SPI_Transmit_CHSIDE_INT_Enable
	.type	SPI_Transmit_CHSIDE_INT_Enable, @function
SPI_Transmit_CHSIDE_INT_Enable:
	ADD	r0,#12
	CMP	r1,#0
	JNZ	.L90
// inline asm begin
	// 849 "../src/kf32f_basic_spi.c" 1
	CLR [r0], #3
// inline asm end
	JMP	lr
.L90:
// inline asm begin
	// 844 "../src/kf32f_basic_spi.c" 1
	SET [r0], #3
// inline asm end
	JMP	lr
	.size	SPI_Transmit_CHSIDE_INT_Enable, .-SPI_Transmit_CHSIDE_INT_Enable
	.section .text$SPI_Get_BUSY_Flag
	.align	1
	.export	SPI_Get_BUSY_Flag
	.type	SPI_Get_BUSY_Flag, @function
SPI_Get_BUSY_Flag:
	LD.w	r0,[r0+#3]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	SPI_Get_BUSY_Flag, .-SPI_Get_BUSY_Flag
	.section .text$SPI_Get_Receive_Overflow_Flag
	.align	1
	.export	SPI_Get_Receive_Overflow_Flag
	.type	SPI_Get_Receive_Overflow_Flag, @function
SPI_Get_Receive_Overflow_Flag:
	LD.w	r0,[r0+#3]
	LSR	r0,#4
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	SPI_Get_Receive_Overflow_Flag, .-SPI_Get_Receive_Overflow_Flag
	.section .text$SPI_Get_Transmit_Overflow_Flag
	.align	1
	.export	SPI_Get_Transmit_Overflow_Flag
	.type	SPI_Get_Transmit_Overflow_Flag, @function
SPI_Get_Transmit_Overflow_Flag:
	LD.w	r0,[r0+#3]
	LSR	r0,#5
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	SPI_Get_Transmit_Overflow_Flag, .-SPI_Get_Transmit_Overflow_Flag
	.section .text$SPI_Get_Receive_Buf_Flag
	.align	1
	.export	SPI_Get_Receive_Buf_Flag
	.type	SPI_Get_Receive_Buf_Flag, @function
SPI_Get_Receive_Buf_Flag:
	LD.w	r0,[r0+#3]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	SPI_Get_Receive_Buf_Flag, .-SPI_Get_Receive_Buf_Flag
	.section .text$SPI_Get_Transmit_Buf_Flag
	.align	1
	.export	SPI_Get_Transmit_Buf_Flag
	.type	SPI_Get_Transmit_Buf_Flag, @function
SPI_Get_Transmit_Buf_Flag:
	LD.w	r0,[r0+#3]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	SPI_Get_Transmit_Buf_Flag, .-SPI_Get_Transmit_Buf_Flag
	.section .text$SPI_Clear_Receive_Overflow_INT_Flag
	.align	1
	.export	SPI_Clear_Receive_Overflow_INT_Flag
	.type	SPI_Clear_Receive_Overflow_INT_Flag, @function
SPI_Clear_Receive_Overflow_INT_Flag:
	MOV	r5,#12
	ADD	r3,r0,r5
// inline asm begin
	// 991 "../src/kf32f_basic_spi.c" 1
	SET [r3], #16
// inline asm end
	MOV	r4,#16
.L97:
	LD.w	r5,[r0+#3]
	ANL	r5,r5,r4
	JNZ	.L97
// inline asm begin
	// 993 "../src/kf32f_basic_spi.c" 1
	CLR [r3], #16
// inline asm end
	JMP	lr
	.size	SPI_Clear_Receive_Overflow_INT_Flag, .-SPI_Clear_Receive_Overflow_INT_Flag
	.section .text$SPI_Clear_Transmit_Overflow_INT_Flag
	.align	1
	.export	SPI_Clear_Transmit_Overflow_INT_Flag
	.type	SPI_Clear_Transmit_Overflow_INT_Flag, @function
SPI_Clear_Transmit_Overflow_INT_Flag:
	MOV	r5,#12
	ADD	r3,r0,r5
// inline asm begin
	// 1008 "../src/kf32f_basic_spi.c" 1
	SET [r3], #17
// inline asm end
	MOV	r4,#32
.L100:
	LD.w	r5,[r0+#3]
	ANL	r5,r5,r4
	JNZ	.L100
// inline asm begin
	// 1010 "../src/kf32f_basic_spi.c" 1
	CLR [r3], #17
// inline asm end
	JMP	lr
	.size	SPI_Clear_Transmit_Overflow_INT_Flag, .-SPI_Clear_Transmit_Overflow_INT_Flag
