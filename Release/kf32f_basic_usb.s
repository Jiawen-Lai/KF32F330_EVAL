	.file	"kf32f_basic_usb.c"
	.section .text$USB_Reset
	.align	1
	.export	USB_Reset
	.type	USB_Reset, @function
USB_Reset:
	PUSH	{r6, r7, lr}
	MOV	r6,#1
	LSL	r6,#31
	MOV	r0,r6
	MOV	r1,#1
	LD	r7,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,r6
	MOV	r1,#0
	LJMP	r7
	MOV	r0,r6
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	POP	{r6, r7, pc}
	.size	USB_Reset, .-USB_Reset
	.section .text$USB_Configuration
	.align	1
	.export	USB_Configuration
	.type	USB_Configuration, @function
USB_Configuration:
	PUSH	{r6, r7}
	LD.w	r4,[r0+#3]
	LD	r5,#1073745792
	LD.w	r1,[r5]
	LD.w	r3,[r0+#2]
	LD.w	r6,[r0]
	ORL	r2,r3,r6
	LD.w	r3,[r0+#1]
	LSL	r3,#2
	ORL	r2,r2,r3
	MOV	r6,#14
	LSL	r3,r4,r6
	ORL	r2,r2,r3
	MOV	r3,#23
	NOT	r3,r3
	ANL	r3,r1,r3
	ORL	r3,r2,r3
	ST.w	[r5],r3
	CMP	r4,#0
	JZ	.L3
// inline asm begin
	// 98 "../src/kf32f_basic_usb.c" 1
	CLR [r5], #14
// inline asm end
.L3:
	LD.w	r7,[r0+#6]
	LSL	r7,#3
	LD.w	r5,[r0+#5]
	LSL	r5,#4
	ORL	r7,r7,r5
	LD.w	r5,[r0+#7]
	LSL	r5,#2
	ORL	r7,r7,r5
	LD.w	r5,[r0+#8]
	ADD	r5,r5,r5
	ORL	r7,r7,r5
	LD.w	r4,[r0+#4]
	MOV	r5,#0
	MOV	r1,#1
	LD	r2,#1073745792
	MOV	r6,#30
	NOT	r6,r6
.L5:
	ANL	r3,r4,r1
	JZ	.L4
	ADD	r3,r5,#6
	LSL	r3,#2
	LD.w	r0,[r2+r3]
	ANL	r0,r0,r6
	ORL	r0,r0,r7
	ST.w	[r2+r3],r0
.L4:
	LSR	r4,#1
	ADD	r5,r5,#1
	CMP	r5,#8
	JNZ	.L5
	POP	{r6, r7}
	JMP	lr
	.size	USB_Configuration, .-USB_Configuration
	.section .text$USB_Struct_Init
	.align	1
	.export	USB_Struct_Init
	.type	USB_Struct_Init, @function
USB_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	ST.w	[r0+#6],r5
	ST.w	[r0+#7],r5
	ST.w	[r0+#8],r5
	JMP	lr
	.size	USB_Struct_Init, .-USB_Struct_Init
	.section .text$USB_Buffer_Struct_Init
	.align	1
	.export	USB_Buffer_Struct_Init
	.type	USB_Buffer_Struct_Init, @function
USB_Buffer_Struct_Init:
	MOV	r5,#0
	ST.h	[r0],r5
	ST.h	[r0+#1],r5
	MOV	r4,#1
	ST.h	[r0+#2],r4
	ST.h	[r0+#3],r5
	MOV	r5,#0
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	ST.w	[r0+#6],r5
	JMP	lr
	.size	USB_Buffer_Struct_Init, .-USB_Buffer_Struct_Init
	.section .text$USB_Double_Buffer_Pointer_Enable
	.align	1
	.export	USB_Double_Buffer_Pointer_Enable
	.type	USB_Double_Buffer_Pointer_Enable, @function
USB_Double_Buffer_Pointer_Enable:
	LD	r5,#1073745792
	CMP	r0,#0
	JNZ	.L19
// inline asm begin
	// 287 "../src/kf32f_basic_usb.c" 1
	CLR [r5], #14
// inline asm end
	JMP	lr
.L19:
// inline asm begin
	// 282 "../src/kf32f_basic_usb.c" 1
	SET [r5], #14
// inline asm end
	JMP	lr
	.size	USB_Double_Buffer_Pointer_Enable, .-USB_Double_Buffer_Pointer_Enable
	.section .text$USB_Get_Single_Ended_0_Flag
	.align	1
	.export	USB_Get_Single_Ended_0_Flag
	.type	USB_Get_Single_Ended_0_Flag, @function
USB_Get_Single_Ended_0_Flag:
	LD	r5,#1073745792
	LD.w	r0,[r5]
	LSR	r0,#13
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USB_Get_Single_Ended_0_Flag, .-USB_Get_Single_Ended_0_Flag
	.section .text$USB_Clear_Single_Ended_0_Flag
	.align	1
	.export	USB_Clear_Single_Ended_0_Flag
	.type	USB_Clear_Single_Ended_0_Flag, @function
USB_Clear_Single_Ended_0_Flag:
	LD	r5,#1073745792
	LD.w	r4,[r5]
	MOV	r3,#1
	LSL	r3,#13
	ANL	r4,r4,r3
	JZ	.L21
.L26:
// inline asm begin
	// 323 "../src/kf32f_basic_usb.c" 1
	CLR [r5], #13
// inline asm end
	LD.w	r4,[r5]
	ANL	r4,r4,r3
	JNZ	.L26
.L21:
	JMP	lr
	.size	USB_Clear_Single_Ended_0_Flag, .-USB_Clear_Single_Ended_0_Flag
	.section .text$USB_Get_Package_Transmit_Flag
	.align	1
	.export	USB_Get_Package_Transmit_Flag
	.type	USB_Get_Package_Transmit_Flag, @function
USB_Get_Package_Transmit_Flag:
	LD	r5,#1073745792
	LD.w	r0,[r5]
	LSR	r0,#12
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USB_Get_Package_Transmit_Flag, .-USB_Get_Package_Transmit_Flag
	.section .text$USB_Clear_Package_Transmit_Flag
	.align	1
	.export	USB_Clear_Package_Transmit_Flag
	.type	USB_Clear_Package_Transmit_Flag, @function
USB_Clear_Package_Transmit_Flag:
	LD	r5,#1073745792
	LD.w	r4,[r5]
	MOV	r3,#1
	LSL	r3,#12
	ANL	r4,r4,r3
	JZ	.L30
.L35:
// inline asm begin
	// 360 "../src/kf32f_basic_usb.c" 1
	CLR [r5], #12
// inline asm end
	LD.w	r4,[r5]
	ANL	r4,r4,r3
	JNZ	.L35
.L30:
	JMP	lr
	.size	USB_Clear_Package_Transmit_Flag, .-USB_Clear_Package_Transmit_Flag
	.section .text$USB_Suspend_Enable
	.align	1
	.export	USB_Suspend_Enable
	.type	USB_Suspend_Enable, @function
USB_Suspend_Enable:
	LD	r5,#1073745792
	CMP	r0,#0
	JNZ	.L41
// inline asm begin
	// 384 "../src/kf32f_basic_usb.c" 1
	CLR [r5], #11
// inline asm end
	JMP	lr
.L41:
// inline asm begin
	// 379 "../src/kf32f_basic_usb.c" 1
	SET [r5], #11
// inline asm end
	JMP	lr
	.size	USB_Suspend_Enable, .-USB_Suspend_Enable
	.section .text$USB_Resume_Signal_Transmit_Enable
	.align	1
	.export	USB_Resume_Signal_Transmit_Enable
	.type	USB_Resume_Signal_Transmit_Enable, @function
USB_Resume_Signal_Transmit_Enable:
	LD	r5,#1073745792
	CMP	r0,#0
	JNZ	.L45
// inline asm begin
	// 408 "../src/kf32f_basic_usb.c" 1
	CLR [r5], #10
// inline asm end
	JMP	lr
.L45:
// inline asm begin
	// 403 "../src/kf32f_basic_usb.c" 1
	SET [r5], #10
// inline asm end
	JMP	lr
	.size	USB_Resume_Signal_Transmit_Enable, .-USB_Resume_Signal_Transmit_Enable
	.section .text$USB_Cmd
	.align	1
	.export	USB_Cmd
	.type	USB_Cmd, @function
USB_Cmd:
	LD	r5,#1073745792
	CMP	r0,#0
	JNZ	.L49
// inline asm begin
	// 432 "../src/kf32f_basic_usb.c" 1
	CLR [r5], #9
// inline asm end
	JMP	lr
.L49:
// inline asm begin
	// 427 "../src/kf32f_basic_usb.c" 1
	SET [r5], #9
// inline asm end
	JMP	lr
	.size	USB_Cmd, .-USB_Cmd
	.section .text$USB_Eye_Test_Enable
	.align	1
	.export	USB_Eye_Test_Enable
	.type	USB_Eye_Test_Enable, @function
USB_Eye_Test_Enable:
	LD	r5,#1073745792
	CMP	r0,#0
	JNZ	.L53
// inline asm begin
	// 456 "../src/kf32f_basic_usb.c" 1
	CLR [r5], #7
// inline asm end
	JMP	lr
.L53:
// inline asm begin
	// 451 "../src/kf32f_basic_usb.c" 1
	SET [r5], #7
// inline asm end
	JMP	lr
	.size	USB_Eye_Test_Enable, .-USB_Eye_Test_Enable
	.section .text$USB_Speed_Config
	.align	1
	.export	USB_Speed_Config
	.type	USB_Speed_Config, @function
USB_Speed_Config:
	LD	r5,#1073745792
	CMP	r0,#0
	JNZ	.L57
// inline asm begin
	// 482 "../src/kf32f_basic_usb.c" 1
	CLR [r5], #4
// inline asm end
	JMP	lr
.L57:
// inline asm begin
	// 477 "../src/kf32f_basic_usb.c" 1
	SET [r5], #4
// inline asm end
	JMP	lr
	.size	USB_Speed_Config, .-USB_Speed_Config
	.section .text$USB_On_Chip_Pull_Up_Enable
	.align	1
	.export	USB_On_Chip_Pull_Up_Enable
	.type	USB_On_Chip_Pull_Up_Enable, @function
USB_On_Chip_Pull_Up_Enable:
	LD	r5,#1073745792
	CMP	r0,#0
	JNZ	.L61
// inline asm begin
	// 506 "../src/kf32f_basic_usb.c" 1
	CLR [r5], #2
// inline asm end
	JMP	lr
.L61:
// inline asm begin
	// 501 "../src/kf32f_basic_usb.c" 1
	SET [r5], #2
// inline asm end
	JMP	lr
	.size	USB_On_Chip_Pull_Up_Enable, .-USB_On_Chip_Pull_Up_Enable
	.section .text$USB_Double_Buffer_Config
	.align	1
	.export	USB_Double_Buffer_Config
	.type	USB_Double_Buffer_Config, @function
USB_Double_Buffer_Config:
	LD	r5,#1073745792
	LD.w	r4,[r5]
	CLR	r4,#0
	CLR	r4,#1
	ORL	r0,r0,r4
	ST.w	[r5],r0
	JMP	lr
	.size	USB_Double_Buffer_Config, .-USB_Double_Buffer_Config
	.section .text$USB_Get_Arrangement_State
	.align	1
	.export	USB_Get_Arrangement_State
	.type	USB_Get_Arrangement_State, @function
USB_Get_Arrangement_State:
	LD	r5,#1073745792
	LD.w	r5,[r5+#1]
	MOV	r4,#120
	ANL	r4,r5,r4
	LSR	r4,#3
	ST.b	[r0],r4
	MOV	r4,#4
	ANL	r4,r5,r4
	LSR	r4,#2
	ST.b	[r0+#1],r4
	MOV	r4,#2
	ANL	r5,r5,r4
	LSR	r5,#1
	ST.b	[r0+#2],r5
	JMP	lr
	.size	USB_Get_Arrangement_State, .-USB_Get_Arrangement_State
	.section .text$USB_Address_Config
	.align	1
	.export	USB_Address_Config
	.type	USB_Address_Config, @function
USB_Address_Config:
	LD	r5,#1073745792
	LD.w	r3,[r5+#2]
	MOV	r4,#127
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#2],r0
	JMP	lr
	.size	USB_Address_Config, .-USB_Address_Config
	.section .text$USB_Get_Address
	.align	1
	.export	USB_Get_Address
	.type	USB_Get_Address, @function
USB_Get_Address:
	LD	r5,#1073745792
	LD.w	r0,[r5+#2]
	MOV	r5,#127
	ANL	r0,r0,r5
	JMP	lr
	.size	USB_Get_Address, .-USB_Get_Address
	.section .text$USB_Get_Frame_Num
	.align	1
	.export	USB_Get_Frame_Num
	.type	USB_Get_Frame_Num, @function
USB_Get_Frame_Num:
	LD	r5,#1073745792
	LD.w	r0,[r5+#3]
	LD	r5,#2047
	ANL	r0,r0,r5
	JMP	lr
	.size	USB_Get_Frame_Num, .-USB_Get_Frame_Num
	.section .text$USB_Endpoint_Handshake_Enable
	.align	1
	.export	USB_Endpoint_Handshake_Enable
	.type	USB_Endpoint_Handshake_Enable, @function
USB_Endpoint_Handshake_Enable:
	LSL	r0,#2
	LD	r5,#1073745816
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L70
// inline asm begin
	// 638 "../src/kf32f_basic_usb.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
.L70:
// inline asm begin
	// 633 "../src/kf32f_basic_usb.c" 1
	SET [r0], #4
// inline asm end
	JMP	lr
	.size	USB_Endpoint_Handshake_Enable, .-USB_Endpoint_Handshake_Enable
	.section .text$USB_Bidirectional_Endpoint_Enable
	.align	1
	.export	USB_Bidirectional_Endpoint_Enable
	.type	USB_Bidirectional_Endpoint_Enable, @function
USB_Bidirectional_Endpoint_Enable:
	LSL	r0,#2
	LD	r5,#1073745816
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L74
// inline asm begin
	// 664 "../src/kf32f_basic_usb.c" 1
	SET [r0], #3
// inline asm end
	JMP	lr
.L74:
// inline asm begin
	// 659 "../src/kf32f_basic_usb.c" 1
	CLR [r0], #3
// inline asm end
	JMP	lr
	.size	USB_Bidirectional_Endpoint_Enable, .-USB_Bidirectional_Endpoint_Enable
	.section .text$USB_Endpoint_Output_Enable
	.align	1
	.export	USB_Endpoint_Output_Enable
	.type	USB_Endpoint_Output_Enable, @function
USB_Endpoint_Output_Enable:
	LSL	r0,#2
	LD	r5,#1073745816
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L78
// inline asm begin
	// 690 "../src/kf32f_basic_usb.c" 1
	CLR [r0], #2
// inline asm end
	JMP	lr
.L78:
// inline asm begin
	// 685 "../src/kf32f_basic_usb.c" 1
	SET [r0], #2
// inline asm end
	JMP	lr
	.size	USB_Endpoint_Output_Enable, .-USB_Endpoint_Output_Enable
	.section .text$USB_Endpoint_Input_Enable
	.align	1
	.export	USB_Endpoint_Input_Enable
	.type	USB_Endpoint_Input_Enable, @function
USB_Endpoint_Input_Enable:
	LSL	r0,#2
	LD	r5,#1073745816
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L82
// inline asm begin
	// 716 "../src/kf32f_basic_usb.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L82:
// inline asm begin
	// 711 "../src/kf32f_basic_usb.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	USB_Endpoint_Input_Enable, .-USB_Endpoint_Input_Enable
	.section .text$USB_Get_Endpoint_STALL_Flag
	.align	1
	.export	USB_Get_Endpoint_STALL_Flag
	.type	USB_Get_Endpoint_STALL_Flag, @function
USB_Get_Endpoint_STALL_Flag:
	ADD	r0,r0,#6
	LSL	r0,#2
	LD	r5,#1073745792
	LD.w	r0,[r5+r0]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USB_Get_Endpoint_STALL_Flag, .-USB_Get_Endpoint_STALL_Flag
	.section .text$USB_Clear_Endpoint_STALL_Flag
	.align	1
	.export	USB_Clear_Endpoint_STALL_Flag
	.type	USB_Clear_Endpoint_STALL_Flag, @function
USB_Clear_Endpoint_STALL_Flag:
	LD	r5,#1073745792
	ADD	r3,r0,#6
	LSL	r3,#2
	LD.w	r2,[r5+r3]
	MOV	r4,#1
	ANL	r2,r2,r4
	JZ	.L84
	LSL	r0,#2
	LD	r2,#1073745816
	ADD	r0,r0,r2
	ADD	r3,r5,r3
.L86:
// inline asm begin
	// 759 "../src/kf32f_basic_usb.c" 1
	CLR [r0], #0
// inline asm end
	LD.w	r5,[r3]
	ANL	r5,r5,r4
	JNZ	.L86
.L84:
	JMP	lr
	.size	USB_Clear_Endpoint_STALL_Flag, .-USB_Clear_Endpoint_STALL_Flag
	.section .text$USB_Debug_Signal_Output_Enable
	.align	1
	.export	USB_Debug_Signal_Output_Enable
	.type	USB_Debug_Signal_Output_Enable, @function
USB_Debug_Signal_Output_Enable:
	LD	r5,#1073745848
	CMP	r0,#0
	JNZ	.L94
// inline asm begin
	// 783 "../src/kf32f_basic_usb.c" 1
	CLR [r5], #4
// inline asm end
	JMP	lr
.L94:
// inline asm begin
	// 778 "../src/kf32f_basic_usb.c" 1
	SET [r5], #4
// inline asm end
	JMP	lr
	.size	USB_Debug_Signal_Output_Enable, .-USB_Debug_Signal_Output_Enable
	.section .text$USB_Debug_Output_Config
	.align	1
	.export	USB_Debug_Output_Config
	.type	USB_Debug_Output_Config, @function
USB_Debug_Output_Config:
	LD	r5,#1073745792
	LD.w	r3,[r5+#14]
	MOV	r4,#7
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#14],r0
	JMP	lr
	.size	USB_Debug_Output_Config, .-USB_Debug_Output_Config
	.section .text$USB_Get_Endpoint_Double_Buffer_Addr
	.align	1
	.export	USB_Get_Endpoint_Double_Buffer_Addr
	.type	USB_Get_Endpoint_Double_Buffer_Addr, @function
USB_Get_Endpoint_Double_Buffer_Addr:
	LD	r5,#1073745792
	LD.w	r4,[r5]
	MOV	r5,#3
	ANL	r5,r4,r5
	CMP	r5,#2
	JZ	.L99
	CMP	r5,#3
	JZ	.L100
	CMP	r5,#1
	JZ	.L98
	LSL	r0,#3
	LD	r5,#536804352
	ADD	r0,r0,r5
	LSL	r1,#2
	ADD	r0,r0,r1
	JMP	lr
.L98:
	CMP	r0,#0
	JNZ	.L114
	CMP	r1,#1
	JZ	.L107
	CMP	r2,#0
	JZ	.L115
	LD	r0,#536804352
	JMP	lr
.L100:
	CMP	r0,#0
	JZ	.L105
	LSL	r0,#4
	LD	r5,#536804344
	ADD	r0,r0,r5
	LSL	r1,#3
	ADD	r0,r0,r1
	MOV	r5,#0
	CMP	r2,r5
	JZ	.L116
.L106:
	ADD	r0,r0,r5
.L117:
	JMP	lr
.L99:
	LSL	r0,#4
	LD	r5,#536804352
	ADD	r0,r0,r5
	LSL	r1,#3
	ADD	r0,r0,r1
	MOV	r5,#0
	CMP	r2,r5
	JNZ	.L106
.L116:
	MOV	r5,#4
	ADD	r0,r0,r5
	JMP	.L117
.L105:
	LSL	r1,#2
	LD	r5,#536804352
	ADD	r0,r1,r5
	JMP	lr
.L114:
	LSL	r0,#3
	LD	r5,#536804356
	ADD	r0,r0,r5
	LSL	r1,#2
	ADD	r0,r0,r1
	JMP	lr
.L107:
	LD	r0,#536804360
	JMP	lr
.L115:
	LD	r0,#536804356
	JMP	lr
	.size	USB_Get_Endpoint_Double_Buffer_Addr, .-USB_Get_Endpoint_Double_Buffer_Addr
	.section .text$USB_Buffer_Configuration
	.align	1
	.export	USB_Buffer_Configuration
	.type	USB_Buffer_Configuration, @function
USB_Buffer_Configuration:
	PUSH	{r6, lr}
	MOV	r6,r0
	LD.h	r0,[r0]
	LD.h	r1,[r6+#1]
	LD.h	r2,[r6+#2]
	LD	r5,#USB_Get_Endpoint_Double_Buffer_Addr
	LJMP	r5
	LD.w	r3,[r0]
	LD.w	r2,[r0]
	LD.w	r4,[r6+#3]
	LSL	r4,#7
	LD.w	r5,[r6+#5]
	LSL	r5,#3
	ORL	r4,r4,r5
	LD.w	r5,[r6+#4]
	ORL	r4,r4,r5
	LD.w	r1,[r6+#6]
	LSL	r1,#2
	ORL	r4,r4,r1
	LD.h	r1,[r6+#3]
	LSL	r1,#16
	ORL	r4,r4,r1
	MOV	r5,#48
	ANL	r5,r2,r5
	ORL	r5,r4,r5
	MOV	r4,#3
	ANL	r4,r3,r4
	LSL	r4,#16
	ORL	r5,r5,r4
	ST.w	[r0],r5
	POP	{r6, pc}
	.size	USB_Buffer_Configuration, .-USB_Buffer_Configuration
	.section .text$USB_Buffer_Address_Config
	.align	1
	.export	USB_Buffer_Address_Config
	.type	USB_Buffer_Address_Config, @function
USB_Buffer_Address_Config:
	LD.w	r5,[r0]
	ZXT.h	r5,r5
	LSL	r1,#16
	ORL	r5,r5,r1
	ST.w	[r0],r5
	JMP	lr
	.size	USB_Buffer_Address_Config, .-USB_Buffer_Address_Config
	.section .text$USB_Get_Buffer_Address
	.align	1
	.export	USB_Get_Buffer_Address
	.type	USB_Get_Buffer_Address, @function
USB_Get_Buffer_Address:
	LD.w	r0,[r0]
	LSR	r0,#16
	JMP	lr
	.size	USB_Get_Buffer_Address, .-USB_Get_Buffer_Address
	.section .text$USB_Buffer_Data_Length_Config
	.align	1
	.export	USB_Buffer_Data_Length_Config
	.type	USB_Buffer_Data_Length_Config, @function
USB_Buffer_Data_Length_Config:
	MOV	r5,#8
	LSR	r4,r1,r5
	MOV	r5,#3
	ANL	r5,r4,r5
	LD.w	r4,[r0]
	LSL	r1,#8
	LD	r3,#65535
	ANL	r1,r1,r3
	ORL	r1,r1,r5
	LD	r5,#-65284
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0],r1
	JMP	lr
	.size	USB_Buffer_Data_Length_Config, .-USB_Buffer_Data_Length_Config
	.section .text$USB_Get_Buffer_Data_Length
	.align	1
	.export	USB_Get_Buffer_Data_Length
	.type	USB_Get_Buffer_Data_Length, @function
USB_Get_Buffer_Data_Length:
	LD.w	r3,[r0]
	LD.w	r4,[r0]
	LD	r5,#65280
	ANL	r5,r4,r5
	MOV	r4,#3
	ANL	r0,r3,r4
	LSL	r0,#16
	LSR	r5,#8
	ORL	r0,r0,r5
	JMP	lr
	.size	USB_Get_Buffer_Data_Length, .-USB_Get_Buffer_Data_Length
	.section .text$USB_Own_Config
	.align	1
	.export	USB_Own_Config
	.type	USB_Own_Config, @function
USB_Own_Config:
	CMP	r1,#0
	JNZ	.L126
// inline asm begin
	// 1054 "../src/kf32f_basic_usb.c" 1
	CLR [r0], #7
// inline asm end
	JMP	lr
.L126:
// inline asm begin
	// 1049 "../src/kf32f_basic_usb.c" 1
	SET [r0], #7
// inline asm end
	JMP	lr
	.size	USB_Own_Config, .-USB_Own_Config
	.section .text$USB_Get_Own_Status
	.align	1
	.export	USB_Get_Own_Status
	.type	USB_Get_Own_Status, @function
USB_Get_Own_Status:
	LD.w	r0,[r0]
	LSR	r0,#7
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USB_Get_Own_Status, .-USB_Get_Own_Status
	.section .text$USB_Data_Toggle_Sync_Config
	.align	1
	.export	USB_Data_Toggle_Sync_Config
	.type	USB_Data_Toggle_Sync_Config, @function
USB_Data_Toggle_Sync_Config:
	CMP	r1,#0
	JNZ	.L131
// inline asm begin
	// 1116 "../src/kf32f_basic_usb.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
.L131:
// inline asm begin
	// 1111 "../src/kf32f_basic_usb.c" 1
	SET [r0], #6
// inline asm end
	JMP	lr
	.size	USB_Data_Toggle_Sync_Config, .-USB_Data_Toggle_Sync_Config
	.section .text$USB_Get_Data_Toggle_Sync_Status
	.align	1
	.export	USB_Get_Data_Toggle_Sync_Status
	.type	USB_Get_Data_Toggle_Sync_Status, @function
USB_Get_Data_Toggle_Sync_Status:
	LD.w	r0,[r0]
	LSR	r0,#6
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	USB_Get_Data_Toggle_Sync_Status, .-USB_Get_Data_Toggle_Sync_Status
	.section .text$USB_Data_Toggle_Sync_Enable
	.align	1
	.export	USB_Data_Toggle_Sync_Enable
	.type	USB_Data_Toggle_Sync_Enable, @function
USB_Data_Toggle_Sync_Enable:
	CMP	r1,#0
	JNZ	.L136
// inline asm begin
	// 1177 "../src/kf32f_basic_usb.c" 1
	CLR [r0], #3
// inline asm end
	JMP	lr
.L136:
// inline asm begin
	// 1172 "../src/kf32f_basic_usb.c" 1
	SET [r0], #3
// inline asm end
	JMP	lr
	.size	USB_Data_Toggle_Sync_Enable, .-USB_Data_Toggle_Sync_Enable
	.section .text$USB_Buffer_Stall_Enable
	.align	1
	.export	USB_Buffer_Stall_Enable
	.type	USB_Buffer_Stall_Enable, @function
USB_Buffer_Stall_Enable:
	CMP	r1,#0
	JNZ	.L140
// inline asm begin
	// 1209 "../src/kf32f_basic_usb.c" 1
	CLR [r0], #2
// inline asm end
	JMP	lr
.L140:
// inline asm begin
	// 1204 "../src/kf32f_basic_usb.c" 1
	SET [r0], #2
// inline asm end
	JMP	lr
	.size	USB_Buffer_Stall_Enable, .-USB_Buffer_Stall_Enable
	.section .text$USB_Get_Last_Receive_PID
	.align	1
	.export	USB_Get_Last_Receive_PID
	.type	USB_Get_Last_Receive_PID, @function
USB_Get_Last_Receive_PID:
	LD.w	r0,[r0]
	MOV	r5,#60
	ANL	r0,r0,r5
	LSR	r0,#2
	JMP	lr
	.size	USB_Get_Last_Receive_PID, .-USB_Get_Last_Receive_PID
	.section .text$USB_Write_Buffer_Data
	.align	1
	.export	USB_Write_Buffer_Data
	.type	USB_Write_Buffer_Data, @function
USB_Write_Buffer_Data:
	PUSH	lr
	LD	r5,#memcpy
	LJMP	r5
	POP	lr
	JMP	lr
	.size	USB_Write_Buffer_Data, .-USB_Write_Buffer_Data
	.section .text$USB_Get_INT_Flag
	.align	1
	.export	USB_Get_INT_Flag
	.type	USB_Get_INT_Flag, @function
USB_Get_INT_Flag:
	LD	r5,#1073745792
	LD.w	r5,[r5+#4]
	ANL	r0,r0,r5
	MOV	r5,#0
	SUB	r5,r5,r0
	ORL	r0,r5,r0
	LSR	r0,#31
	JMP	lr
	.size	USB_Get_INT_Flag, .-USB_Get_INT_Flag
	.section .text$USB_Clear_INT_Flag
	.align	1
	.export	USB_Clear_INT_Flag
	.type	USB_Clear_INT_Flag, @function
USB_Clear_INT_Flag:
	LD	r5,#1073745792
	LD.w	r4,[r5+#4]
	ANL	r4,r0,r4
	NOT	r3,r0
	CMP	r4,#0
	JZ	.L144
.L148:
	LD.w	r4,[r5+#4]
	ANL	r4,r3,r4
	ST.w	[r5+#4],r4
	LD.w	r4,[r5+#4]
	ANL	r4,r0,r4
	JNZ	.L148
.L144:
	JMP	lr
	.size	USB_Clear_INT_Flag, .-USB_Clear_INT_Flag
	.section .text$USB_Set_INT_Enable
	.align	1
	.export	USB_Set_INT_Enable
	.type	USB_Set_INT_Enable, @function
USB_Set_INT_Enable:
	LD	r5,#1073745792
	LD.w	r4,[r5+#5]
	CMP	r1,#0
	JNZ	.L153
	NOT	r0,r0
	ANL	r0,r0,r4
	ST.w	[r5+#5],r0
	JMP	lr
.L153:
	ORL	r0,r0,r4
	ST.w	[r5+#5],r0
	JMP	lr
	.size	USB_Set_INT_Enable, .-USB_Set_INT_Enable
	.section .text$USB_Get_INT_Enable
	.align	1
	.export	USB_Get_INT_Enable
	.type	USB_Get_INT_Enable, @function
USB_Get_INT_Enable:
	LD	r5,#1073745792
	LD.w	r5,[r5+#5]
	ANL	r0,r0,r5
	MOV	r5,#0
	SUB	r5,r5,r0
	ORL	r0,r5,r0
	LSR	r0,#31
	JMP	lr
	.size	USB_Get_INT_Enable, .-USB_Get_INT_Enable
