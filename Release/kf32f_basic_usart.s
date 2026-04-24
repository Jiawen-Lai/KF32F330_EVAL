	.file	"kf32f_basic_usart.c"
	.section .text$USART_Reset
	.align	1
	.export	USART_Reset
	.type	USART_Reset, @function
USART_Reset:
	PUSH	{r6, r7, lr}
	MOV	r6,r0
	LD	r5,#1073744256
	CMP	r0,r5
	JZ	.L12
	LD	r5,#1073744384
	CMP	r0,r5
	JZ	.L13
	LD	r5,#1073744512
	CMP	r0,r5
	JZ	.L14
	LD	r5,#1073744640
	CMP	r0,r5
	JZ	.L15
	LD	r5,#1073744768
	CMP	r0,r5
	JZ	.L16
.L9:
	LD	r5,#1073749632
	CMP	r6,r5
	JZ	.L17
.L6:
	LD	r5,#1073749760
	CMP	r6,r5
	JZ	.L18
	LD	r5,#1073749888
	CMP	r6,r5
	JZ	.L19
.L1:
	POP	{r6, r7, pc}
.L19:
	MOV	r0,#1
	LSL	r0,#31
	MOV	r1,#1
	LD	r6,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#31
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#31
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	POP	{r6, r7, pc}
.L12:
	MOV	r0,#1
	LSL	r0,#19
	MOV	r1,#1
	LD	r7,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#19
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#19
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L9
.L13:
	MOV	r0,#1
	LSL	r0,#20
	MOV	r1,#1
	LD	r7,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#20
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#20
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L9
.L14:
	MOV	r0,#1
	LSL	r0,#21
	MOV	r1,#1
	LD	r7,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#21
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#21
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L6
.L15:
	MOV	r0,#1
	LSL	r0,#22
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#22
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#22
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L16:
	MOV	r0,#1
	LSL	r0,#23
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#23
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#23
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L17:
	MOV	r0,#1
	LSL	r0,#29
	MOV	r1,#1
	LD	r6,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#29
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#29
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L18:
	MOV	r0,#1
	LSL	r0,#30
	MOV	r1,#1
	LD	r6,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#30
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#30
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
	.size	USART_Reset, .-USART_Reset
	.section .text$USART_Configuration
	.align	1
	.export	USART_Configuration
	.type	USART_Configuration, @function
USART_Configuration:
	LD.w	r3,[r0]
	LD.w	r2,[r1+#1]
	LD.w	r4,[r1]
	ORL	r5,r2,r4
	LD.w	r2,[r1+#2]
	ORL	r5,r5,r2
	LD.w	r4,[r1+#3]
	ORL	r5,r5,r4
	LD.w	r2,[r1+#5]
	ORL	r5,r5,r2
	LD.w	r4,[r1+#4]
	ORL	r5,r5,r4
	LD.w	r2,[r1+#7]
	ORL	r5,r5,r2
	LD.w	r4,[r1+#8]
	ORL	r5,r5,r4
	LD.w	r2,[r1+#6]
	ORL	r5,r5,r2
	LD.w	r4,[r1+#9]
	ORL	r5,r5,r4
	LD.w	r2,[r1+#10]
	ORL	r5,r5,r2
	LD.h	r4,[r1+#22]
	ORL	r5,r5,r4
	LD	r4,#-53854465
	ANL	r4,r3,r4
	ORL	r5,r5,r4
	ST.w	[r0],r5
	LD.w	r4,[r0+#1]
	LD	r5,#-16777216
	ANL	r5,r4,r5
	LD.h	r4,[r1+#23]
	ORL	r5,r5,r4
	LD.h	r4,[r1+#24]
	LSL	r4,#16
	ORL	r5,r5,r4
	LD.h	r4,[r1+#25]
	LSL	r4,#20
	ORL	r5,r5,r4
	ST.w	[r0+#1],r5
	JMP	lr
	.size	USART_Configuration, .-USART_Configuration
	.section .text$USART_U7816R_Configuration
	.align	1
	.export	USART_U7816R_Configuration
	.type	USART_U7816R_Configuration, @function
USART_U7816R_Configuration:
	LD.w	r3,[r0+#4]
	LD.w	r2,[r1+#1]
	LD.w	r5,[r1]
	ORL	r4,r2,r5
	LD.w	r2,[r1+#2]
	ORL	r4,r4,r2
	LD.w	r5,[r1+#3]
	ORL	r4,r4,r5
	LD.w	r5,[r1+#4]
	ADD	r5,r5,r5
	ORL	r5,r4,r5
	LD	r4,#50145
	ANL	r4,r3,r4
	ORL	r5,r5,r4
	LD.b	r4,[r1+#21]
	LSL	r4,#24
	ORL	r5,r5,r4
	LD.b	r4,[r1+#20]
	LSL	r4,#16
	ORL	r5,r5,r4
	ST.w	[r0+#4],r5
	JMP	lr
	.size	USART_U7816R_Configuration, .-USART_U7816R_Configuration
	.section .text$USART_Struct_Init
	.align	1
	.export	USART_Struct_Init
	.type	USART_Struct_Init, @function
USART_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	MOV	r4,#1
	LSL	r4,#15
	ST.w	[r0+#2],r4
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	ST.w	[r0+#6],r5
	ST.w	[r0+#7],r5
	ST.w	[r0+#8],r5
	ST.w	[r0+#9],r5
	ST.w	[r0+#10],r5
	ST.h	[r0+#22],r5
	MOV	r4,#1
	ST.h	[r0+#23],r4
	ST.h	[r0+#24],r5
	ST.h	[r0+#25],r4
	JMP	lr
	.size	USART_Struct_Init, .-USART_Struct_Init
	.section .text$USART_U7816R_Struct_Init
	.align	1
	.export	USART_U7816R_Struct_Init
	.type	USART_U7816R_Struct_Init, @function
USART_U7816R_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.b	[r0+#20],r5
	ST.b	[r0+#21],r5
	JMP	lr
	.size	USART_U7816R_Struct_Init, .-USART_U7816R_Struct_Init
	.section .text$USART_Cmd
	.align	1
	.export	USART_Cmd
	.type	USART_Cmd, @function
USART_Cmd:
	CMP	r1,#0
	JNZ	.L27
// inline asm begin
	// 339 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L27:
// inline asm begin
	// 334 "../src/kf32f_basic_usart.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	USART_Cmd, .-USART_Cmd
	.section .text$USART_BaudRate_Clock_Config
	.align	1
	.export	USART_BaudRate_Clock_Config
	.type	USART_BaudRate_Clock_Config, @function
USART_BaudRate_Clock_Config:
	LD.w	r5,[r0]
	CLR	r5,#1
	CLR	r5,#2
	ORL	r1,r1,r5
	ST.w	[r0],r1
	JMP	lr
	.size	USART_BaudRate_Clock_Config, .-USART_BaudRate_Clock_Config
	.section .text$USART_HalfDuplex_ClockPolarity_Config
	.align	1
	.export	USART_HalfDuplex_ClockPolarity_Config
	.type	USART_HalfDuplex_ClockPolarity_Config, @function
USART_HalfDuplex_ClockPolarity_Config:
	CMP	r1,#0
	JNZ	.L32
// inline asm begin
	// 387 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #3
// inline asm end
	JMP	lr
.L32:
// inline asm begin
	// 382 "../src/kf32f_basic_usart.c" 1
	SET [r0], #3
// inline asm end
	JMP	lr
	.size	USART_HalfDuplex_ClockPolarity_Config, .-USART_HalfDuplex_ClockPolarity_Config
	.section .text$USART_Transmit_Order_Config
	.align	1
	.export	USART_Transmit_Order_Config
	.type	USART_Transmit_Order_Config, @function
USART_Transmit_Order_Config:
	CMP	r1,#0
	JNZ	.L36
// inline asm begin
	// 415 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
.L36:
// inline asm begin
	// 410 "../src/kf32f_basic_usart.c" 1
	SET [r0], #4
// inline asm end
	JMP	lr
	.size	USART_Transmit_Order_Config, .-USART_Transmit_Order_Config
	.section .text$USART_Receive_Order_Config
	.align	1
	.export	USART_Receive_Order_Config
	.type	USART_Receive_Order_Config, @function
USART_Receive_Order_Config:
	CMP	r1,#0
	JNZ	.L40
// inline asm begin
	// 443 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #5
// inline asm end
	JMP	lr
.L40:
// inline asm begin
	// 438 "../src/kf32f_basic_usart.c" 1
	SET [r0], #5
// inline asm end
	JMP	lr
	.size	USART_Receive_Order_Config, .-USART_Receive_Order_Config
	.section .text$USART_Infrare_Detector_Voltage_Config
	.align	1
	.export	USART_Infrare_Detector_Voltage_Config
	.type	USART_Infrare_Detector_Voltage_Config, @function
USART_Infrare_Detector_Voltage_Config:
	CMP	r1,#0
	JNZ	.L44
// inline asm begin
	// 472 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
.L44:
// inline asm begin
	// 467 "../src/kf32f_basic_usart.c" 1
	SET [r0], #6
// inline asm end
	JMP	lr
	.size	USART_Infrare_Detector_Voltage_Config, .-USART_Infrare_Detector_Voltage_Config
	.section .text$USART_WeakUP_Enable
	.align	1
	.export	USART_WeakUP_Enable
	.type	USART_WeakUP_Enable, @function
USART_WeakUP_Enable:
	CMP	r1,#0
	JNZ	.L48
// inline asm begin
	// 498 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #7
// inline asm end
	JMP	lr
.L48:
// inline asm begin
	// 493 "../src/kf32f_basic_usart.c" 1
	SET [r0], #7
// inline asm end
	JMP	lr
	.size	USART_WeakUP_Enable, .-USART_WeakUP_Enable
	.section .text$USART_Clock_Source_Config
	.align	1
	.export	USART_Clock_Source_Config
	.type	USART_Clock_Source_Config, @function
USART_Clock_Source_Config:
	CMP	r1,#0
	JNZ	.L52
// inline asm begin
	// 526 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #8
// inline asm end
	JMP	lr
.L52:
// inline asm begin
	// 521 "../src/kf32f_basic_usart.c" 1
	SET [r0], #8
// inline asm end
	JMP	lr
	.size	USART_Clock_Source_Config, .-USART_Clock_Source_Config
	.section .text$USART_Address_Detection_Enable
	.align	1
	.export	USART_Address_Detection_Enable
	.type	USART_Address_Detection_Enable, @function
USART_Address_Detection_Enable:
	CMP	r1,#0
	JNZ	.L56
// inline asm begin
	// 552 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #9
// inline asm end
	JMP	lr
.L56:
// inline asm begin
	// 547 "../src/kf32f_basic_usart.c" 1
	SET [r0], #9
// inline asm end
	JMP	lr
	.size	USART_Address_Detection_Enable, .-USART_Address_Detection_Enable
	.section .text$USART_Auto_BaudRate_Detection_Enable
	.align	1
	.export	USART_Auto_BaudRate_Detection_Enable
	.type	USART_Auto_BaudRate_Detection_Enable, @function
USART_Auto_BaudRate_Detection_Enable:
	CMP	r1,#0
	JNZ	.L60
// inline asm begin
	// 579 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #11
// inline asm end
	JMP	lr
.L60:
// inline asm begin
	// 574 "../src/kf32f_basic_usart.c" 1
	SET [r0], #11
// inline asm end
	JMP	lr
	.size	USART_Auto_BaudRate_Detection_Enable, .-USART_Auto_BaudRate_Detection_Enable
	.section .text$USART_Get_Auto_BaudRate_Detection_Flag
	.align	1
	.export	USART_Get_Auto_BaudRate_Detection_Flag
	.type	USART_Get_Auto_BaudRate_Detection_Flag, @function
USART_Get_Auto_BaudRate_Detection_Flag:
	LD.w	r0,[r0]
	LSR	r0,#11
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_Auto_BaudRate_Detection_Flag, .-USART_Get_Auto_BaudRate_Detection_Flag
	.section .text$USART_Send_Blank_Enable
	.align	1
	.export	USART_Send_Blank_Enable
	.type	USART_Send_Blank_Enable, @function
USART_Send_Blank_Enable:
	CMP	r1,#0
	JNZ	.L65
// inline asm begin
	// 627 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #13
// inline asm end
	JMP	lr
.L65:
// inline asm begin
	// 622 "../src/kf32f_basic_usart.c" 1
	SET [r0], #13
// inline asm end
	JMP	lr
	.size	USART_Send_Blank_Enable, .-USART_Send_Blank_Enable
	.section .text$USART_SYN_Choice_Config
	.align	1
	.export	USART_SYN_Choice_Config
	.type	USART_SYN_Choice_Config, @function
USART_SYN_Choice_Config:
	CMP	r1,#0
	JNZ	.L69
// inline asm begin
	// 655 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #14
// inline asm end
	JMP	lr
.L69:
// inline asm begin
	// 650 "../src/kf32f_basic_usart.c" 1
	SET [r0], #14
// inline asm end
	JMP	lr
	.size	USART_SYN_Choice_Config, .-USART_SYN_Choice_Config
	.section .text$USART_Transmit_Data_Enable
	.align	1
	.export	USART_Transmit_Data_Enable
	.type	USART_Transmit_Data_Enable, @function
USART_Transmit_Data_Enable:
	CMP	r1,#0
	JNZ	.L73
// inline asm begin
	// 681 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #15
// inline asm end
	JMP	lr
.L73:
// inline asm begin
	// 676 "../src/kf32f_basic_usart.c" 1
	SET [r0], #15
// inline asm end
	JMP	lr
	.size	USART_Transmit_Data_Enable, .-USART_Transmit_Data_Enable
	.section .text$USART_Receive_Data_Enable
	.align	1
	.export	USART_Receive_Data_Enable
	.type	USART_Receive_Data_Enable, @function
USART_Receive_Data_Enable:
	CMP	r1,#0
	JNZ	.L77
// inline asm begin
	// 707 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #16
// inline asm end
	JMP	lr
.L77:
// inline asm begin
	// 702 "../src/kf32f_basic_usart.c" 1
	SET [r0], #16
// inline asm end
	JMP	lr
	.size	USART_Receive_Data_Enable, .-USART_Receive_Data_Enable
	.section .text$USART_STOP_Word_Config
	.align	1
	.export	USART_STOP_Word_Config
	.type	USART_STOP_Word_Config, @function
USART_STOP_Word_Config:
	CMP	r1,#0
	JNZ	.L81
// inline asm begin
	// 735 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #18
// inline asm end
	JMP	lr
.L81:
// inline asm begin
	// 730 "../src/kf32f_basic_usart.c" 1
	SET [r0], #18
// inline asm end
	JMP	lr
	.size	USART_STOP_Word_Config, .-USART_STOP_Word_Config
	.section .text$USART_Transmit_9Word_Select_Config
	.align	1
	.export	USART_Transmit_9Word_Select_Config
	.type	USART_Transmit_9Word_Select_Config, @function
USART_Transmit_9Word_Select_Config:
	CMP	r1,#0
	JNZ	.L85
// inline asm begin
	// 763 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #19
// inline asm end
	JMP	lr
.L85:
// inline asm begin
	// 758 "../src/kf32f_basic_usart.c" 1
	SET [r0], #19
// inline asm end
	JMP	lr
	.size	USART_Transmit_9Word_Select_Config, .-USART_Transmit_9Word_Select_Config
	.section .text$USART_Parity_Select_Config
	.align	1
	.export	USART_Parity_Select_Config
	.type	USART_Parity_Select_Config, @function
USART_Parity_Select_Config:
	CMP	r1,#0
	JNZ	.L89
// inline asm begin
	// 791 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #20
// inline asm end
	JMP	lr
.L89:
// inline asm begin
	// 786 "../src/kf32f_basic_usart.c" 1
	SET [r0], #20
// inline asm end
	JMP	lr
	.size	USART_Parity_Select_Config, .-USART_Parity_Select_Config
	.section .text$USART_9Data_Enable
	.align	1
	.export	USART_9Data_Enable
	.type	USART_9Data_Enable, @function
USART_9Data_Enable:
	CMP	r1,#0
	JNZ	.L93
// inline asm begin
	// 817 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #21
// inline asm end
	JMP	lr
.L93:
// inline asm begin
	// 812 "../src/kf32f_basic_usart.c" 1
	SET [r0], #21
// inline asm end
	JMP	lr
	.size	USART_9Data_Enable, .-USART_9Data_Enable
	.section .text$USART_CTS_Enable
	.align	1
	.export	USART_CTS_Enable
	.type	USART_CTS_Enable, @function
USART_CTS_Enable:
	CMP	r1,#0
	JNZ	.L97
// inline asm begin
	// 843 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #24
// inline asm end
	JMP	lr
.L97:
// inline asm begin
	// 838 "../src/kf32f_basic_usart.c" 1
	SET [r0], #24
// inline asm end
	JMP	lr
	.size	USART_CTS_Enable, .-USART_CTS_Enable
	.section .text$USART_RTS_Enable
	.align	1
	.export	USART_RTS_Enable
	.type	USART_RTS_Enable, @function
USART_RTS_Enable:
	CMP	r1,#0
	JNZ	.L101
// inline asm begin
	// 869 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #25
// inline asm end
	JMP	lr
.L101:
// inline asm begin
	// 864 "../src/kf32f_basic_usart.c" 1
	SET [r0], #25
// inline asm end
	JMP	lr
	.size	USART_RTS_Enable, .-USART_RTS_Enable
	.section .text$USART_Infrare_Detector_Enable
	.align	1
	.export	USART_Infrare_Detector_Enable
	.type	USART_Infrare_Detector_Enable, @function
USART_Infrare_Detector_Enable:
	CMP	r1,#0
	JNZ	.L105
// inline asm begin
	// 895 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #29
// inline asm end
	JMP	lr
.L105:
// inline asm begin
	// 890 "../src/kf32f_basic_usart.c" 1
	SET [r0], #29
// inline asm end
	JMP	lr
	.size	USART_Infrare_Detector_Enable, .-USART_Infrare_Detector_Enable
	.section .text$USART_RESHD_Enable
	.align	1
	.export	USART_RESHD_Enable
	.type	USART_RESHD_Enable, @function
USART_RESHD_Enable:
	CMP	r1,#0
	JNZ	.L109
// inline asm begin
	// 921 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #30
// inline asm end
	JMP	lr
.L109:
// inline asm begin
	// 916 "../src/kf32f_basic_usart.c" 1
	SET [r0], #30
// inline asm end
	JMP	lr
	.size	USART_RESHD_Enable, .-USART_RESHD_Enable
	.section .text$USART_Singlet_Line_Mode_Enable
	.align	1
	.export	USART_Singlet_Line_Mode_Enable
	.type	USART_Singlet_Line_Mode_Enable, @function
USART_Singlet_Line_Mode_Enable:
	CMP	r1,#0
	JNZ	.L113
// inline asm begin
	// 946 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #31
// inline asm end
	JMP	lr
.L113:
// inline asm begin
	// 941 "../src/kf32f_basic_usart.c" 1
	SET [r0], #31
// inline asm end
	JMP	lr
	.size	USART_Singlet_Line_Mode_Enable, .-USART_Singlet_Line_Mode_Enable
	.section .text$USART_BaudRate_Integer_Config
	.align	1
	.export	USART_BaudRate_Integer_Config
	.type	USART_BaudRate_Integer_Config, @function
USART_BaudRate_Integer_Config:
	ZXT.h	r1,r1
	LD.w	r4,[r0+#1]
	LD	r5,#-65536
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	USART_BaudRate_Integer_Config, .-USART_BaudRate_Integer_Config
	.section .text$USART_BaudRate_Decimal1_Config
	.align	1
	.export	USART_BaudRate_Decimal1_Config
	.type	USART_BaudRate_Decimal1_Config, @function
USART_BaudRate_Decimal1_Config:
	LD.w	r5,[r0+#1]
	LSL	r1,#16
	LD	r4,#-983041
	ANL	r5,r5,r4
	ORL	r5,r1,r5
	ST.w	[r0+#1],r5
	JMP	lr
	.size	USART_BaudRate_Decimal1_Config, .-USART_BaudRate_Decimal1_Config
	.section .text$USART_BaudRate_Decimal2_Config
	.align	1
	.export	USART_BaudRate_Decimal2_Config
	.type	USART_BaudRate_Decimal2_Config, @function
USART_BaudRate_Decimal2_Config:
	LD.w	r5,[r0+#1]
	LSL	r1,#20
	LD	r4,#-15728641
	ANL	r5,r5,r4
	ORL	r5,r1,r5
	ST.w	[r0+#1],r5
	JMP	lr
	.size	USART_BaudRate_Decimal2_Config, .-USART_BaudRate_Decimal2_Config
	.section .text$USART_SendData
	.align	1
	.export	USART_SendData
	.type	USART_SendData, @function
USART_SendData:
	ZXT.b	r1,r1
	ST.w	[r0+#3],r1
	JMP	lr
	.size	USART_SendData, .-USART_SendData
	.section .text$USART_ReceiveData
	.align	1
	.export	USART_ReceiveData
	.type	USART_ReceiveData, @function
USART_ReceiveData:
	LD.w	r0,[r0+#3]
	JMP	lr
	.size	USART_ReceiveData, .-USART_ReceiveData
	.section .text$USART_Address_Match_Config
	.align	1
	.export	USART_Address_Match_Config
	.type	USART_Address_Match_Config, @function
USART_Address_Match_Config:
	ZXT.b	r1,r1
	LD.w	r4,[r0+#6]
	MOV	r5,#255
	NOT	r5,r5
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#6],r1
	JMP	lr
	.size	USART_Address_Match_Config, .-USART_Address_Match_Config
	.section .text$USART_7816_Cmd
	.align	1
	.export	USART_7816_Cmd
	.type	USART_7816_Cmd, @function
USART_7816_Cmd:
	ADD	r0,#16
	CMP	r1,#0
	JNZ	.L123
// inline asm begin
	// 1087 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L123:
// inline asm begin
	// 1082 "../src/kf32f_basic_usart.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	USART_7816_Cmd, .-USART_7816_Cmd
	.section .text$USART_7816_CLKOUT_Enable
	.align	1
	.export	USART_7816_CLKOUT_Enable
	.type	USART_7816_CLKOUT_Enable, @function
USART_7816_CLKOUT_Enable:
	ADD	r0,#16
	CMP	r1,#0
	JNZ	.L127
// inline asm begin
	// 1113 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L127:
// inline asm begin
	// 1108 "../src/kf32f_basic_usart.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	USART_7816_CLKOUT_Enable, .-USART_7816_CLKOUT_Enable
	.section .text$USART_7816_Error_Signal_Config
	.align	1
	.export	USART_7816_Error_Signal_Config
	.type	USART_7816_Error_Signal_Config, @function
USART_7816_Error_Signal_Config:
	LD.w	r5,[r0+#4]
	CLR	r5,#2
	CLR	r5,#3
	ORL	r1,r1,r5
	ST.w	[r0+#4],r1
	JMP	lr
	.size	USART_7816_Error_Signal_Config, .-USART_7816_Error_Signal_Config
	.section .text$USART_Passageway_Select_Config
	.align	1
	.export	USART_Passageway_Select_Config
	.type	USART_Passageway_Select_Config, @function
USART_Passageway_Select_Config:
	ADD	r0,#16
	CMP	r1,#0
	JNZ	.L132
// inline asm begin
	// 1161 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
.L132:
// inline asm begin
	// 1156 "../src/kf32f_basic_usart.c" 1
	SET [r0], #4
// inline asm end
	JMP	lr
	.size	USART_Passageway_Select_Config, .-USART_Passageway_Select_Config
	.section .text$USART_BGT_Config
	.align	1
	.export	USART_BGT_Config
	.type	USART_BGT_Config, @function
USART_BGT_Config:
	ADD	r0,#16
	CMP	r1,#0
	JNZ	.L136
// inline asm begin
	// 1189 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #5
// inline asm end
	JMP	lr
.L136:
// inline asm begin
	// 1184 "../src/kf32f_basic_usart.c" 1
	SET [r0], #5
// inline asm end
	JMP	lr
	.size	USART_BGT_Config, .-USART_BGT_Config
	.section .text$USART_Transmit_Repeat_Enable
	.align	1
	.export	USART_Transmit_Repeat_Enable
	.type	USART_Transmit_Repeat_Enable, @function
USART_Transmit_Repeat_Enable:
	ADD	r0,#16
	CMP	r1,#0
	JNZ	.L140
// inline asm begin
	// 1216 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #8
// inline asm end
	JMP	lr
.L140:
// inline asm begin
	// 1211 "../src/kf32f_basic_usart.c" 1
	SET [r0], #8
// inline asm end
	JMP	lr
	.size	USART_Transmit_Repeat_Enable, .-USART_Transmit_Repeat_Enable
	.section .text$USART_Receive_Repeat_Enable
	.align	1
	.export	USART_Receive_Repeat_Enable
	.type	USART_Receive_Repeat_Enable, @function
USART_Receive_Repeat_Enable:
	ADD	r0,#16
	CMP	r1,#0
	JNZ	.L144
// inline asm begin
	// 1244 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #9
// inline asm end
	JMP	lr
.L144:
// inline asm begin
	// 1239 "../src/kf32f_basic_usart.c" 1
	SET [r0], #9
// inline asm end
	JMP	lr
	.size	USART_Receive_Repeat_Enable, .-USART_Receive_Repeat_Enable
	.section .text$USART_Transmit_Repeat_Times_Config
	.align	1
	.export	USART_Transmit_Repeat_Times_Config
	.type	USART_Transmit_Repeat_Times_Config, @function
USART_Transmit_Repeat_Times_Config:
	LD.w	r5,[r0+#4]
	CLR	r5,#10
	CLR	r5,#11
	ORL	r1,r1,r5
	ST.w	[r0+#4],r1
	JMP	lr
	.size	USART_Transmit_Repeat_Times_Config, .-USART_Transmit_Repeat_Times_Config
	.section .text$USART_Receive_Repeat_Times_Config
	.align	1
	.export	USART_Receive_Repeat_Times_Config
	.type	USART_Receive_Repeat_Times_Config, @function
USART_Receive_Repeat_Times_Config:
	LD.w	r5,[r0+#4]
	CLR	r5,#12
	CLR	r5,#13
	ORL	r1,r1,r5
	ST.w	[r0+#4],r1
	JMP	lr
	.size	USART_Receive_Repeat_Times_Config, .-USART_Receive_Repeat_Times_Config
	.section .text$USART_7816_CLKDIV_Config
	.align	1
	.export	USART_7816_CLKDIV_Config
	.type	USART_7816_CLKDIV_Config, @function
USART_7816_CLKDIV_Config:
	ZXT.b	r1,r1
	LD.w	r3,[r0+#4]
	MOV	r4,#16
	LSL	r5,r1,r4
	LD	r4,#-16711681
	ANL	r1,r3,r4
	ORL	r1,r5,r1
	ST.w	[r0+#4],r1
	JMP	lr
	.size	USART_7816_CLKDIV_Config, .-USART_7816_CLKDIV_Config
	.section .text$USART_7816_EGT_Config
	.align	1
	.export	USART_7816_EGT_Config
	.type	USART_7816_EGT_Config, @function
USART_7816_EGT_Config:
	LD.w	r5,[r0+#4]
	LSL	r1,#24
	LD	r4,#16777215
	ANL	r5,r5,r4
	ORL	r5,r1,r5
	ST.w	[r0+#4],r5
	JMP	lr
	.size	USART_7816_EGT_Config, .-USART_7816_EGT_Config
	.section .text$USART_Receive_Overflow_INT_Enable
	.align	1
	.export	USART_Receive_Overflow_INT_Enable
	.type	USART_Receive_Overflow_INT_Enable, @function
USART_Receive_Overflow_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L152
// inline asm begin
	// 1358 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L152:
// inline asm begin
	// 1353 "../src/kf32f_basic_usart.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	USART_Receive_Overflow_INT_Enable, .-USART_Receive_Overflow_INT_Enable
	.section .text$USART_Parity_ERROR_INT_Enable
	.align	1
	.export	USART_Parity_ERROR_INT_Enable
	.type	USART_Parity_ERROR_INT_Enable, @function
USART_Parity_ERROR_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L156
// inline asm begin
	// 1384 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L156:
// inline asm begin
	// 1379 "../src/kf32f_basic_usart.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	USART_Parity_ERROR_INT_Enable, .-USART_Parity_ERROR_INT_Enable
	.section .text$USART_Frame_ERROE_INT_Enable
	.align	1
	.export	USART_Frame_ERROE_INT_Enable
	.type	USART_Frame_ERROE_INT_Enable, @function
USART_Frame_ERROE_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L160
// inline asm begin
	// 1410 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #2
// inline asm end
	JMP	lr
.L160:
// inline asm begin
	// 1405 "../src/kf32f_basic_usart.c" 1
	SET [r0], #2
// inline asm end
	JMP	lr
	.size	USART_Frame_ERROE_INT_Enable, .-USART_Frame_ERROE_INT_Enable
	.section .text$USART_Blank_INT_Enable
	.align	1
	.export	USART_Blank_INT_Enable
	.type	USART_Blank_INT_Enable, @function
USART_Blank_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L164
// inline asm begin
	// 1436 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #3
// inline asm end
	JMP	lr
.L164:
// inline asm begin
	// 1431 "../src/kf32f_basic_usart.c" 1
	SET [r0], #3
// inline asm end
	JMP	lr
	.size	USART_Blank_INT_Enable, .-USART_Blank_INT_Enable
	.section .text$USART_Auto_BaudRate_TimeOver_INT_Enable
	.align	1
	.export	USART_Auto_BaudRate_TimeOver_INT_Enable
	.type	USART_Auto_BaudRate_TimeOver_INT_Enable, @function
USART_Auto_BaudRate_TimeOver_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L168
// inline asm begin
	// 1463 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
.L168:
// inline asm begin
	// 1458 "../src/kf32f_basic_usart.c" 1
	SET [r0], #4
// inline asm end
	JMP	lr
	.size	USART_Auto_BaudRate_TimeOver_INT_Enable, .-USART_Auto_BaudRate_TimeOver_INT_Enable
	.section .text$USART_WeakUP_INT_Enable
	.align	1
	.export	USART_WeakUP_INT_Enable
	.type	USART_WeakUP_INT_Enable, @function
USART_WeakUP_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L172
// inline asm begin
	// 1489 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #5
// inline asm end
	JMP	lr
.L172:
// inline asm begin
	// 1484 "../src/kf32f_basic_usart.c" 1
	SET [r0], #5
// inline asm end
	JMP	lr
	.size	USART_WeakUP_INT_Enable, .-USART_WeakUP_INT_Enable
	.section .text$USART_Transmit_ERROR_INT_Enable
	.align	1
	.export	USART_Transmit_ERROR_INT_Enable
	.type	USART_Transmit_ERROR_INT_Enable, @function
USART_Transmit_ERROR_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L176
// inline asm begin
	// 1515 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
.L176:
// inline asm begin
	// 1510 "../src/kf32f_basic_usart.c" 1
	SET [r0], #6
// inline asm end
	JMP	lr
	.size	USART_Transmit_ERROR_INT_Enable, .-USART_Transmit_ERROR_INT_Enable
	.section .text$USART_Receive_ERROR_INT_Enable
	.align	1
	.export	USART_Receive_ERROR_INT_Enable
	.type	USART_Receive_ERROR_INT_Enable, @function
USART_Receive_ERROR_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L180
// inline asm begin
	// 1541 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #7
// inline asm end
	JMP	lr
.L180:
// inline asm begin
	// 1536 "../src/kf32f_basic_usart.c" 1
	SET [r0], #7
// inline asm end
	JMP	lr
	.size	USART_Receive_ERROR_INT_Enable, .-USART_Receive_ERROR_INT_Enable
	.section .text$USART_CTS_INT_Enable
	.align	1
	.export	USART_CTS_INT_Enable
	.type	USART_CTS_INT_Enable, @function
USART_CTS_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L184
// inline asm begin
	// 1567 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #8
// inline asm end
	JMP	lr
.L184:
// inline asm begin
	// 1562 "../src/kf32f_basic_usart.c" 1
	SET [r0], #8
// inline asm end
	JMP	lr
	.size	USART_CTS_INT_Enable, .-USART_CTS_INT_Enable
	.section .text$USART_RDR_INT_Enable
	.align	1
	.export	USART_RDR_INT_Enable
	.type	USART_RDR_INT_Enable, @function
USART_RDR_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L188
// inline asm begin
	// 1593 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #9
// inline asm end
	JMP	lr
.L188:
// inline asm begin
	// 1588 "../src/kf32f_basic_usart.c" 1
	SET [r0], #9
// inline asm end
	JMP	lr
	.size	USART_RDR_INT_Enable, .-USART_RDR_INT_Enable
	.section .text$USART_TFE_INT_Enable
	.align	1
	.export	USART_TFE_INT_Enable
	.type	USART_TFE_INT_Enable, @function
USART_TFE_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L192
// inline asm begin
	// 1619 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #10
// inline asm end
	JMP	lr
.L192:
// inline asm begin
	// 1614 "../src/kf32f_basic_usart.c" 1
	SET [r0], #10
// inline asm end
	JMP	lr
	.size	USART_TFE_INT_Enable, .-USART_TFE_INT_Enable
	.section .text$USART_TXE_INT_Enable
	.align	1
	.export	USART_TXE_INT_Enable
	.type	USART_TXE_INT_Enable, @function
USART_TXE_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L196
// inline asm begin
	// 1645 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #11
// inline asm end
	JMP	lr
.L196:
// inline asm begin
	// 1640 "../src/kf32f_basic_usart.c" 1
	SET [r0], #11
// inline asm end
	JMP	lr
	.size	USART_TXE_INT_Enable, .-USART_TXE_INT_Enable
	.section .text$USART_Receive_DMA_INT_Enable
	.align	1
	.export	USART_Receive_DMA_INT_Enable
	.type	USART_Receive_DMA_INT_Enable, @function
USART_Receive_DMA_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L200
// inline asm begin
	// 1671 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #16
// inline asm end
	JMP	lr
.L200:
// inline asm begin
	// 1666 "../src/kf32f_basic_usart.c" 1
	SET [r0], #16
// inline asm end
	JMP	lr
	.size	USART_Receive_DMA_INT_Enable, .-USART_Receive_DMA_INT_Enable
	.section .text$USART_Transmit_DMA_INT_Enable
	.align	1
	.export	USART_Transmit_DMA_INT_Enable
	.type	USART_Transmit_DMA_INT_Enable, @function
USART_Transmit_DMA_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L204
// inline asm begin
	// 1697 "../src/kf32f_basic_usart.c" 1
	CLR [r0], #17
// inline asm end
	JMP	lr
.L204:
// inline asm begin
	// 1692 "../src/kf32f_basic_usart.c" 1
	SET [r0], #17
// inline asm end
	JMP	lr
	.size	USART_Transmit_DMA_INT_Enable, .-USART_Transmit_DMA_INT_Enable
	.section .text$USART_Get_Receive_Overflow_Flag
	.align	1
	.export	USART_Get_Receive_Overflow_Flag
	.type	USART_Get_Receive_Overflow_Flag, @function
USART_Get_Receive_Overflow_Flag:
	LD.w	r0,[r0+#2]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_Receive_Overflow_Flag, .-USART_Get_Receive_Overflow_Flag
	.section .text$USART_Get_Parity_ERROR_Flag
	.align	1
	.export	USART_Get_Parity_ERROR_Flag
	.type	USART_Get_Parity_ERROR_Flag, @function
USART_Get_Parity_ERROR_Flag:
	LD.w	r0,[r0+#2]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_Parity_ERROR_Flag, .-USART_Get_Parity_ERROR_Flag
	.section .text$USART_Get_Frame_ERROR_Flag
	.align	1
	.export	USART_Get_Frame_ERROR_Flag
	.type	USART_Get_Frame_ERROR_Flag, @function
USART_Get_Frame_ERROR_Flag:
	LD.w	r0,[r0+#2]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_Frame_ERROR_Flag, .-USART_Get_Frame_ERROR_Flag
	.section .text$USART_Get_Blank_Flag
	.align	1
	.export	USART_Get_Blank_Flag
	.type	USART_Get_Blank_Flag, @function
USART_Get_Blank_Flag:
	LD.w	r0,[r0+#2]
	LSR	r0,#3
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_Blank_Flag, .-USART_Get_Blank_Flag
	.section .text$USART_Get_Auto_Baudrate_TimeOver_Flag
	.align	1
	.export	USART_Get_Auto_Baudrate_TimeOver_Flag
	.type	USART_Get_Auto_Baudrate_TimeOver_Flag, @function
USART_Get_Auto_Baudrate_TimeOver_Flag:
	LD.w	r0,[r0+#2]
	LSR	r0,#4
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_Auto_Baudrate_TimeOver_Flag, .-USART_Get_Auto_Baudrate_TimeOver_Flag
	.section .text$USART_Get_WeakUP_Flag
	.align	1
	.export	USART_Get_WeakUP_Flag
	.type	USART_Get_WeakUP_Flag, @function
USART_Get_WeakUP_Flag:
	LD.w	r0,[r0+#2]
	LSR	r0,#5
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_WeakUP_Flag, .-USART_Get_WeakUP_Flag
	.section .text$USART_Get_7816Transmit_ERROR_Flag
	.align	1
	.export	USART_Get_7816Transmit_ERROR_Flag
	.type	USART_Get_7816Transmit_ERROR_Flag, @function
USART_Get_7816Transmit_ERROR_Flag:
	LD.w	r0,[r0+#2]
	LSR	r0,#6
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_7816Transmit_ERROR_Flag, .-USART_Get_7816Transmit_ERROR_Flag
	.section .text$USART_Get_7816Receive_ERROR_Flag
	.align	1
	.export	USART_Get_7816Receive_ERROR_Flag
	.type	USART_Get_7816Receive_ERROR_Flag, @function
USART_Get_7816Receive_ERROR_Flag:
	LD.w	r0,[r0+#2]
	LSR	r0,#7
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_7816Receive_ERROR_Flag, .-USART_Get_7816Receive_ERROR_Flag
	.section .text$USART_Get_CTS_Flag
	.align	1
	.export	USART_Get_CTS_Flag
	.type	USART_Get_CTS_Flag, @function
USART_Get_CTS_Flag:
	LD.w	r0,[r0+#2]
	LSR	r0,#8
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_CTS_Flag, .-USART_Get_CTS_Flag
	.section .text$USART_Get_Receive_BUFR_Ready_Flag
	.align	1
	.export	USART_Get_Receive_BUFR_Ready_Flag
	.type	USART_Get_Receive_BUFR_Ready_Flag, @function
USART_Get_Receive_BUFR_Ready_Flag:
	LD.w	r0,[r0+#2]
	LSR	r0,#11
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_Receive_BUFR_Ready_Flag, .-USART_Get_Receive_BUFR_Ready_Flag
	.section .text$USART_Get_WUEN_Flag
	.align	1
	.export	USART_Get_WUEN_Flag
	.type	USART_Get_WUEN_Flag, @function
USART_Get_WUEN_Flag:
	LD.w	r0,[r0]
	LSR	r0,#7
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_WUEN_Flag, .-USART_Get_WUEN_Flag
	.section .text$USART_Get_Transmit_BUFR_Empty_Flag
	.align	1
	.export	USART_Get_Transmit_BUFR_Empty_Flag
	.type	USART_Get_Transmit_BUFR_Empty_Flag, @function
USART_Get_Transmit_BUFR_Empty_Flag:
	LD.w	r0,[r0+#2]
	LSR	r0,#12
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_Transmit_BUFR_Empty_Flag, .-USART_Get_Transmit_BUFR_Empty_Flag
	.section .text$USART_Get_Transmitter_Empty_Flag
	.align	1
	.export	USART_Get_Transmitter_Empty_Flag
	.type	USART_Get_Transmitter_Empty_Flag, @function
USART_Get_Transmitter_Empty_Flag:
	LD.w	r0,[r0+#2]
	LSR	r0,#13
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USART_Get_Transmitter_Empty_Flag, .-USART_Get_Transmitter_Empty_Flag
	.section .text$USART_Clear_Receive_Overflow_INT_Flag
	.align	1
	.export	USART_Clear_Receive_Overflow_INT_Flag
	.type	USART_Clear_Receive_Overflow_INT_Flag, @function
USART_Clear_Receive_Overflow_INT_Flag:
	MOV	r5,#8
	ADD	r3,r0,r5
// inline asm begin
	// 2038 "../src/kf32f_basic_usart.c" 1
	SET [r3], #16
// inline asm end
	MOV	r4,#1
.L219:
	LD.w	r5,[r0+#2]
	ANL	r5,r5,r4
	JNZ	.L219
// inline asm begin
	// 2040 "../src/kf32f_basic_usart.c" 1
	CLR [r3], #16
// inline asm end
	JMP	lr
	.size	USART_Clear_Receive_Overflow_INT_Flag, .-USART_Clear_Receive_Overflow_INT_Flag
	.section .text$USART_Clear_Parity_ERROR_INT_Flag
	.align	1
	.export	USART_Clear_Parity_ERROR_INT_Flag
	.type	USART_Clear_Parity_ERROR_INT_Flag, @function
USART_Clear_Parity_ERROR_INT_Flag:
	MOV	r5,#8
	ADD	r3,r0,r5
// inline asm begin
	// 2055 "../src/kf32f_basic_usart.c" 1
	SET [r3], #17
// inline asm end
	MOV	r4,#2
.L222:
	LD.w	r5,[r0+#2]
	ANL	r5,r5,r4
	JNZ	.L222
// inline asm begin
	// 2057 "../src/kf32f_basic_usart.c" 1
	CLR [r3], #17
// inline asm end
	JMP	lr
	.size	USART_Clear_Parity_ERROR_INT_Flag, .-USART_Clear_Parity_ERROR_INT_Flag
	.section .text$USART_Clear_Frame_ERROR_INT_Flag
	.align	1
	.export	USART_Clear_Frame_ERROR_INT_Flag
	.type	USART_Clear_Frame_ERROR_INT_Flag, @function
USART_Clear_Frame_ERROR_INT_Flag:
	MOV	r5,#8
	ADD	r3,r0,r5
// inline asm begin
	// 2072 "../src/kf32f_basic_usart.c" 1
	SET [r3], #18
// inline asm end
	MOV	r4,#4
.L225:
	LD.w	r5,[r0+#2]
	ANL	r5,r5,r4
	JNZ	.L225
// inline asm begin
	// 2074 "../src/kf32f_basic_usart.c" 1
	CLR [r3], #18
// inline asm end
	JMP	lr
	.size	USART_Clear_Frame_ERROR_INT_Flag, .-USART_Clear_Frame_ERROR_INT_Flag
	.section .text$USART_Clear_Blank_INT_Flag
	.align	1
	.export	USART_Clear_Blank_INT_Flag
	.type	USART_Clear_Blank_INT_Flag, @function
USART_Clear_Blank_INT_Flag:
	MOV	r5,#8
	ADD	r3,r0,r5
// inline asm begin
	// 2089 "../src/kf32f_basic_usart.c" 1
	SET [r3], #19
// inline asm end
	MOV	r4,#8
.L228:
	LD.w	r5,[r0+#2]
	ANL	r5,r5,r4
	JNZ	.L228
// inline asm begin
	// 2091 "../src/kf32f_basic_usart.c" 1
	CLR [r3], #19
// inline asm end
	JMP	lr
	.size	USART_Clear_Blank_INT_Flag, .-USART_Clear_Blank_INT_Flag
	.section .text$USART_Clear_Auto_BaudRate_TimeOver_INT_Flag
	.align	1
	.export	USART_Clear_Auto_BaudRate_TimeOver_INT_Flag
	.type	USART_Clear_Auto_BaudRate_TimeOver_INT_Flag, @function
USART_Clear_Auto_BaudRate_TimeOver_INT_Flag:
	MOV	r5,#8
	ADD	r3,r0,r5
// inline asm begin
	// 2106 "../src/kf32f_basic_usart.c" 1
	SET [r3], #20
// inline asm end
	MOV	r4,#16
.L231:
	LD.w	r5,[r0+#2]
	ANL	r5,r5,r4
	JNZ	.L231
// inline asm begin
	// 2108 "../src/kf32f_basic_usart.c" 1
	CLR [r3], #20
// inline asm end
	JMP	lr
	.size	USART_Clear_Auto_BaudRate_TimeOver_INT_Flag, .-USART_Clear_Auto_BaudRate_TimeOver_INT_Flag
	.section .text$USART_Clear_WeakUP_INT_Flag
	.align	1
	.export	USART_Clear_WeakUP_INT_Flag
	.type	USART_Clear_WeakUP_INT_Flag, @function
USART_Clear_WeakUP_INT_Flag:
	MOV	r5,#8
	ADD	r3,r0,r5
// inline asm begin
	// 2123 "../src/kf32f_basic_usart.c" 1
	SET [r3], #21
// inline asm end
	MOV	r4,#32
.L234:
	LD.w	r5,[r0+#2]
	ANL	r5,r5,r4
	JNZ	.L234
// inline asm begin
	// 2125 "../src/kf32f_basic_usart.c" 1
	CLR [r3], #21
// inline asm end
	JMP	lr
	.size	USART_Clear_WeakUP_INT_Flag, .-USART_Clear_WeakUP_INT_Flag
	.section .text$USART_Clear_Transmit_ERROR_INT_Flag
	.align	1
	.export	USART_Clear_Transmit_ERROR_INT_Flag
	.type	USART_Clear_Transmit_ERROR_INT_Flag, @function
USART_Clear_Transmit_ERROR_INT_Flag:
	MOV	r5,#8
	ADD	r3,r0,r5
// inline asm begin
	// 2140 "../src/kf32f_basic_usart.c" 1
	SET [r3], #22
// inline asm end
	MOV	r4,#64
.L237:
	LD.w	r5,[r0+#2]
	ANL	r5,r5,r4
	JNZ	.L237
// inline asm begin
	// 2142 "../src/kf32f_basic_usart.c" 1
	CLR [r3], #22
// inline asm end
	JMP	lr
	.size	USART_Clear_Transmit_ERROR_INT_Flag, .-USART_Clear_Transmit_ERROR_INT_Flag
	.section .text$USART_Clear_Receive_ERROR_INT_Flag
	.align	1
	.export	USART_Clear_Receive_ERROR_INT_Flag
	.type	USART_Clear_Receive_ERROR_INT_Flag, @function
USART_Clear_Receive_ERROR_INT_Flag:
	MOV	r5,#8
	ADD	r3,r0,r5
// inline asm begin
	// 2157 "../src/kf32f_basic_usart.c" 1
	SET [r3], #23
// inline asm end
	MOV	r4,#128
.L240:
	LD.w	r5,[r0+#2]
	ANL	r5,r5,r4
	JNZ	.L240
// inline asm begin
	// 2159 "../src/kf32f_basic_usart.c" 1
	CLR [r3], #23
// inline asm end
	JMP	lr
	.size	USART_Clear_Receive_ERROR_INT_Flag, .-USART_Clear_Receive_ERROR_INT_Flag
	.section .text$USART_Clear_CTS_INT_Flag
	.align	1
	.export	USART_Clear_CTS_INT_Flag
	.type	USART_Clear_CTS_INT_Flag, @function
USART_Clear_CTS_INT_Flag:
	MOV	r5,#8
	ADD	r3,r0,r5
// inline asm begin
	// 2174 "../src/kf32f_basic_usart.c" 1
	SET [r3], #24
// inline asm end
	MOV	r4,#255
	ADD	r4,r4,#1
.L243:
	LD.w	r5,[r0+#2]
	ANL	r5,r5,r4
	JNZ	.L243
// inline asm begin
	// 2176 "../src/kf32f_basic_usart.c" 1
	CLR [r3], #24
// inline asm end
	JMP	lr
	.size	USART_Clear_CTS_INT_Flag, .-USART_Clear_CTS_INT_Flag
	.section .text$USART_Clear_Receive_BUFR_INT_Flag
	.align	1
	.export	USART_Clear_Receive_BUFR_INT_Flag
	.type	USART_Clear_Receive_BUFR_INT_Flag, @function
USART_Clear_Receive_BUFR_INT_Flag:
	MOV	r5,#8
	ADD	r3,r0,r5
// inline asm begin
	// 2191 "../src/kf32f_basic_usart.c" 1
	SET [r3], #9
// inline asm end
	MOV	r4,#1
	LSL	r4,#11
.L246:
	LD.w	r5,[r0+#2]
	ANL	r5,r5,r4
	JNZ	.L246
// inline asm begin
	// 2193 "../src/kf32f_basic_usart.c" 1
	CLR [r3], #9
// inline asm end
	JMP	lr
	.size	USART_Clear_Receive_BUFR_INT_Flag, .-USART_Clear_Receive_BUFR_INT_Flag
	.section .text$USART_Clear_Transmit_BUFR_INT_Flag
	.align	1
	.export	USART_Clear_Transmit_BUFR_INT_Flag
	.type	USART_Clear_Transmit_BUFR_INT_Flag, @function
USART_Clear_Transmit_BUFR_INT_Flag:
	MOV	r5,#8
	ADD	r3,r0,r5
// inline asm begin
	// 2208 "../src/kf32f_basic_usart.c" 1
	SET [r3], #10
// inline asm end
	MOV	r4,#1
	LSL	r4,#12
.L249:
	LD.w	r5,[r0+#2]
	ANL	r5,r5,r4
	JZ	.L249
// inline asm begin
	// 2210 "../src/kf32f_basic_usart.c" 1
	CLR [r3], #10
// inline asm end
	JMP	lr
	.size	USART_Clear_Transmit_BUFR_INT_Flag, .-USART_Clear_Transmit_BUFR_INT_Flag
