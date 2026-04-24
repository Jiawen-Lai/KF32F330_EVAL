	.file	"kf32f_basic_qei.c"
	.section .text$QEI_Reset
	.align	1
	.export	QEI_Reset
	.type	QEI_Reset, @function
QEI_Reset:
	PUSH	{r6, lr}
	LD	r5,#1073743104
	CMP	r0,r5
	JZ	.L5
	LD	r5,#1073741952
	CMP	r0,r5
	JZ	.L6
.L1:
	POP	{r6, pc}
.L6:
	MOV	r0,#2
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#2
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#2
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	POP	{r6, pc}
.L5:
	MOV	r0,#1
	LSL	r0,#10
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#10
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#10
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
	.size	QEI_Reset, .-QEI_Reset
	.section .text$QEI_Configuration
	.align	1
	.export	QEI_Configuration
	.type	QEI_Configuration, @function
QEI_Configuration:
	LD.h	r5,[r1+#12]
	ST.w	[r0+#2],r5
	LD.h	r5,[r1+#13]
	ST.w	[r0+#3],r5
	LD.h	r5,[r1+#14]
	ST.w	[r0+#4],r5
	LD.w	r3,[r0+#1]
	LD.w	r2,[r1+#4]
	LD.w	r4,[r1+#2]
	ORL	r5,r2,r4
	LD.w	r2,[r1+#5]
	ORL	r5,r5,r2
	LD.w	r4,[r1+#3]
	LSL	r4,#4
	ORL	r5,r5,r4
	MOV	r4,#127
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r5,r5,r4
	ST.w	[r0+#1],r5
	LD.w	r4,[r0]
	LD.w	r5,[r1+#1]
	ADD	r5,r5,r5
	LD.w	r3,[r1]
	LSL	r3,#4
	ORL	r5,r5,r3
	CLR	r4,#1
	CLR	r4,#4
	ORL	r5,r5,r4
	ST.w	[r0],r5
	JMP	lr
	.size	QEI_Configuration, .-QEI_Configuration
	.section .text$QEI_Timer_Configuration
	.align	1
	.export	QEI_Timer_Configuration
	.type	QEI_Timer_Configuration, @function
QEI_Timer_Configuration:
	LD.h	r5,[r1]
	ST.w	[r0+#2],r5
	LD.h	r5,[r1+#1]
	ST.w	[r0+#3],r5
	LD.h	r5,[r1+#2]
	ST.w	[r0+#4],r5
	LD.w	r4,[r0]
	LD.w	r3,[r1+#3]
	LD.w	r5,[r1+#2]
	ORL	r5,r3,r5
	CLR	r4,#0
	CLR	r4,#3
	ORL	r5,r5,r4
	ST.w	[r0],r5
	JMP	lr
	.size	QEI_Timer_Configuration, .-QEI_Timer_Configuration
	.section .text$QEI_Struct_Init
	.align	1
	.export	QEI_Struct_Init
	.type	QEI_Struct_Init, @function
QEI_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	ST.h	[r0+#12],r5
	ST.h	[r0+#13],r5
	ST.h	[r0+#14],r5
	JMP	lr
	.size	QEI_Struct_Init, .-QEI_Struct_Init
	.section .text$QEI_Timer_Struct_Init
	.align	1
	.export	QEI_Timer_Struct_Init
	.type	QEI_Timer_Struct_Init, @function
QEI_Timer_Struct_Init:
	MOV	r5,#0
	ST.h	[r0],r5
	ST.h	[r0+#1],r5
	ST.h	[r0+#2],r5
	MOV	r5,#0
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	JMP	lr
	.size	QEI_Timer_Struct_Init, .-QEI_Timer_Struct_Init
	.section .text$QEI_Encoder_Mode_Config
	.align	1
	.export	QEI_Encoder_Mode_Config
	.type	QEI_Encoder_Mode_Config, @function
QEI_Encoder_Mode_Config:
	LD.w	r5,[r0]
	LSL	r1,#5
	MOV	r4,#224
	NOT	r4,r4
	ANL	r5,r5,r4
	ORL	r5,r1,r5
	ST.w	[r0],r5
	JMP	lr
	.size	QEI_Encoder_Mode_Config, .-QEI_Encoder_Mode_Config
	.section .text$QEI_Location_Counter_Reset_Enable
	.align	1
	.export	QEI_Location_Counter_Reset_Enable
	.type	QEI_Location_Counter_Reset_Enable, @function
QEI_Location_Counter_Reset_Enable:
	CMP	r1,#0
	JNZ	.L15
// inline asm begin
	// 258 "../src/kf32f_basic_qei.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
.L15:
// inline asm begin
	// 253 "../src/kf32f_basic_qei.c" 1
	SET [r0], #4
// inline asm end
	JMP	lr
	.size	QEI_Location_Counter_Reset_Enable, .-QEI_Location_Counter_Reset_Enable
	.section .text$QEI_Timer_Source_Clock_Config
	.align	1
	.export	QEI_Timer_Source_Clock_Config
	.type	QEI_Timer_Source_Clock_Config, @function
QEI_Timer_Source_Clock_Config:
	CMP	r1,#0
	JNZ	.L19
// inline asm begin
	// 286 "../src/kf32f_basic_qei.c" 1
	CLR [r0], #3
// inline asm end
	JMP	lr
.L19:
// inline asm begin
	// 281 "../src/kf32f_basic_qei.c" 1
	SET [r0], #3
// inline asm end
	JMP	lr
	.size	QEI_Timer_Source_Clock_Config, .-QEI_Timer_Source_Clock_Config
	.section .text$QEI_Get_Index_Pin_State
	.align	1
	.export	QEI_Get_Index_Pin_State
	.type	QEI_Get_Index_Pin_State, @function
QEI_Get_Index_Pin_State:
	LD.w	r0,[r0]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	QEI_Get_Index_Pin_State, .-QEI_Get_Index_Pin_State
	.section .text$QEI_Location_Counter_Output_Enable
	.align	1
	.export	QEI_Location_Counter_Output_Enable
	.type	QEI_Location_Counter_Output_Enable, @function
QEI_Location_Counter_Output_Enable:
	CMP	r1,#0
	JNZ	.L24
// inline asm begin
	// 336 "../src/kf32f_basic_qei.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L24:
// inline asm begin
	// 331 "../src/kf32f_basic_qei.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	QEI_Location_Counter_Output_Enable, .-QEI_Location_Counter_Output_Enable
	.section .text$QEI_Location_Counter_Direction_Config
	.align	1
	.export	QEI_Location_Counter_Direction_Config
	.type	QEI_Location_Counter_Direction_Config, @function
QEI_Location_Counter_Direction_Config:
	CMP	r1,#0
	JNZ	.L28
// inline asm begin
	// 364 "../src/kf32f_basic_qei.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L28:
// inline asm begin
	// 359 "../src/kf32f_basic_qei.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	QEI_Location_Counter_Direction_Config, .-QEI_Location_Counter_Direction_Config
	.section .text$QEI_Get_Location_Counter_Direction
	.align	1
	.export	QEI_Get_Location_Counter_Direction
	.type	QEI_Get_Location_Counter_Direction, @function
QEI_Get_Location_Counter_Direction:
	LD.w	r0,[r0]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	QEI_Get_Location_Counter_Direction, .-QEI_Get_Location_Counter_Direction
	.section .text$QEI_Source_Clock_Config
	.align	1
	.export	QEI_Source_Clock_Config
	.type	QEI_Source_Clock_Config, @function
QEI_Source_Clock_Config:
	LD.w	r5,[r0+#1]
	CLR	r5,#5
	CLR	r5,#6
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	QEI_Source_Clock_Config, .-QEI_Source_Clock_Config
	.section .text$QEI_Digital_Filter_Output_Enable
	.align	1
	.export	QEI_Digital_Filter_Output_Enable
	.type	QEI_Digital_Filter_Output_Enable, @function
QEI_Digital_Filter_Output_Enable:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L34
// inline asm begin
	// 436 "../src/kf32f_basic_qei.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
.L34:
// inline asm begin
	// 431 "../src/kf32f_basic_qei.c" 1
	SET [r0], #4
// inline asm end
	JMP	lr
	.size	QEI_Digital_Filter_Output_Enable, .-QEI_Digital_Filter_Output_Enable
	.section .text$QEI_Digital_Filter_Clock_Config
	.align	1
	.export	QEI_Digital_Filter_Clock_Config
	.type	QEI_Digital_Filter_Clock_Config, @function
QEI_Digital_Filter_Clock_Config:
	LD.w	r4,[r0+#1]
	MOV	r5,#14
	NOT	r5,r5
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	QEI_Digital_Filter_Clock_Config, .-QEI_Digital_Filter_Clock_Config
	.section .text$QEI_Swap_Phase_AB_Enable
	.align	1
	.export	QEI_Swap_Phase_AB_Enable
	.type	QEI_Swap_Phase_AB_Enable, @function
QEI_Swap_Phase_AB_Enable:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L39
// inline asm begin
	// 490 "../src/kf32f_basic_qei.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L39:
// inline asm begin
	// 485 "../src/kf32f_basic_qei.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	QEI_Swap_Phase_AB_Enable, .-QEI_Swap_Phase_AB_Enable
	.section .text$QEI_Timer_Counter_Config
	.align	1
	.export	QEI_Timer_Counter_Config
	.type	QEI_Timer_Counter_Config, @function
QEI_Timer_Counter_Config:
	ZXT.h	r1,r1
	LD.w	r4,[r0+#2]
	LD	r5,#-65536
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#2],r1
	JMP	lr
	.size	QEI_Timer_Counter_Config, .-QEI_Timer_Counter_Config
	.section .text$QEI_Get_Timer_Counter
	.align	1
	.export	QEI_Get_Timer_Counter
	.type	QEI_Get_Timer_Counter, @function
QEI_Get_Timer_Counter:
	LD.w	r0,[r0+#2]
	ZXT.h	r0,r0
	JMP	lr
	.size	QEI_Get_Timer_Counter, .-QEI_Get_Timer_Counter
	.section .text$QEI_Timer_Period_Config
	.align	1
	.export	QEI_Timer_Period_Config
	.type	QEI_Timer_Period_Config, @function
QEI_Timer_Period_Config:
	ZXT.h	r1,r1
	LD.w	r4,[r0+#3]
	LD	r5,#-65536
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#3],r1
	JMP	lr
	.size	QEI_Timer_Period_Config, .-QEI_Timer_Period_Config
	.section .text$QEI_Get_Timer_Period
	.align	1
	.export	QEI_Get_Timer_Period
	.type	QEI_Get_Timer_Period, @function
QEI_Get_Timer_Period:
	LD.w	r0,[r0+#3]
	ZXT.h	r0,r0
	JMP	lr
	.size	QEI_Get_Timer_Period, .-QEI_Get_Timer_Period
	.section .text$QEI_Timer_Prescaler_Config
	.align	1
	.export	QEI_Timer_Prescaler_Config
	.type	QEI_Timer_Prescaler_Config, @function
QEI_Timer_Prescaler_Config:
	ZXT.h	r1,r1
	LD.w	r4,[r0+#4]
	LD	r5,#-65536
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#4],r1
	JMP	lr
	.size	QEI_Timer_Prescaler_Config, .-QEI_Timer_Prescaler_Config
	.section .text$QEI_Get_INT_Flag
	.align	1
	.export	QEI_Get_INT_Flag
	.type	QEI_Get_INT_Flag, @function
QEI_Get_INT_Flag:
	LD.w	r5,[r0]
	LSL	r1,#8
	ANL	r1,r1,r5
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
	LSR	r0,#31
	JMP	lr
	.size	QEI_Get_INT_Flag, .-QEI_Get_INT_Flag
	.section .text$QEI_Clear_INT_Flag
	.align	1
	.export	QEI_Clear_INT_Flag
	.type	QEI_Clear_INT_Flag, @function
QEI_Clear_INT_Flag:
	MOV	r5,#8
	LSL	r4,r1,r5
	LSL	r1,#3
	LD.w	r5,[r0+#5]
	ORL	r5,r1,r5
	ST.w	[r0+#5],r5
.L47:
	LD.w	r5,[r0]
	ANL	r5,r4,r5
	JNZ	.L47
	LD.w	r5,[r0+#5]
	NOT	r1,r1
	ANL	r1,r1,r5
	ST.w	[r0+#5],r1
	JMP	lr
	.size	QEI_Clear_INT_Flag, .-QEI_Clear_INT_Flag
	.section .text$QEI_Set_INT_Enable
	.align	1
	.export	QEI_Set_INT_Enable
	.type	QEI_Set_INT_Enable, @function
QEI_Set_INT_Enable:
	LD.w	r5,[r0+#5]
	CMP	r2,#0
	JNZ	.L52
	NOT	r1,r1
	ANL	r1,r1,r5
	ST.w	[r0+#5],r1
	JMP	lr
.L52:
	ORL	r1,r1,r5
	ST.w	[r0+#5],r1
	JMP	lr
	.size	QEI_Set_INT_Enable, .-QEI_Set_INT_Enable
	.section .text$QEI_Get_Counter_Overflow_INT_Flag
	.align	1
	.export	QEI_Get_Counter_Overflow_INT_Flag
	.type	QEI_Get_Counter_Overflow_INT_Flag, @function
QEI_Get_Counter_Overflow_INT_Flag:
	LD.w	r0,[r0]
	LSR	r0,#10
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	QEI_Get_Counter_Overflow_INT_Flag, .-QEI_Get_Counter_Overflow_INT_Flag
	.section .text$QEI_Get_Phase_Error_INT_Flag
	.align	1
	.export	QEI_Get_Phase_Error_INT_Flag
	.type	QEI_Get_Phase_Error_INT_Flag, @function
QEI_Get_Phase_Error_INT_Flag:
	LD.w	r0,[r0]
	LSR	r0,#9
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	QEI_Get_Phase_Error_INT_Flag, .-QEI_Get_Phase_Error_INT_Flag
	.section .text$QEI_Get_Count_Error_INT_Flag
	.align	1
	.export	QEI_Get_Count_Error_INT_Flag
	.type	QEI_Get_Count_Error_INT_Flag, @function
QEI_Get_Count_Error_INT_Flag:
	LD.w	r0,[r0]
	LSR	r0,#8
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	QEI_Get_Count_Error_INT_Flag, .-QEI_Get_Count_Error_INT_Flag
	.section .text$QEI_Clear_Timer_Overflow_INT_Flag
	.align	1
	.export	QEI_Clear_Timer_Overflow_INT_Flag
	.type	QEI_Clear_Timer_Overflow_INT_Flag, @function
QEI_Clear_Timer_Overflow_INT_Flag:
	MOV	r5,#20
	ADD	r3,r0,r5
// inline asm begin
	// 776 "../src/kf32f_basic_qei.c" 1
	SET [r3], #5
// inline asm end
	MOV	r4,#1
	LSL	r4,#10
.L57:
	LD.w	r5,[r0]
	ANL	r5,r5,r4
	JNZ	.L57
// inline asm begin
	// 778 "../src/kf32f_basic_qei.c" 1
	CLR [r3], #5
// inline asm end
	JMP	lr
	.size	QEI_Clear_Timer_Overflow_INT_Flag, .-QEI_Clear_Timer_Overflow_INT_Flag
	.section .text$QEI_Clear_Phase_Error_INT_Flag
	.align	1
	.export	QEI_Clear_Phase_Error_INT_Flag
	.type	QEI_Clear_Phase_Error_INT_Flag, @function
QEI_Clear_Phase_Error_INT_Flag:
	MOV	r5,#20
	ADD	r3,r0,r5
// inline asm begin
	// 793 "../src/kf32f_basic_qei.c" 1
	SET [r3], #4
// inline asm end
	MOV	r4,#1
	LSL	r4,#9
.L60:
	LD.w	r5,[r0]
	ANL	r5,r5,r4
	JNZ	.L60
// inline asm begin
	// 795 "../src/kf32f_basic_qei.c" 1
	CLR [r3], #4
// inline asm end
	JMP	lr
	.size	QEI_Clear_Phase_Error_INT_Flag, .-QEI_Clear_Phase_Error_INT_Flag
	.section .text$QEI_Clear_Counter_Error_INT_Flag
	.align	1
	.export	QEI_Clear_Counter_Error_INT_Flag
	.type	QEI_Clear_Counter_Error_INT_Flag, @function
QEI_Clear_Counter_Error_INT_Flag:
	MOV	r5,#20
	ADD	r3,r0,r5
// inline asm begin
	// 810 "../src/kf32f_basic_qei.c" 1
	SET [r3], #3
// inline asm end
	MOV	r4,#255
	ADD	r4,r4,#1
.L63:
	LD.w	r5,[r0]
	ANL	r5,r5,r4
	JNZ	.L63
// inline asm begin
	// 812 "../src/kf32f_basic_qei.c" 1
	CLR [r3], #3
// inline asm end
	JMP	lr
	.size	QEI_Clear_Counter_Error_INT_Flag, .-QEI_Clear_Counter_Error_INT_Flag
	.section .text$QEI_Timer_Overflow_INT_Enable
	.align	1
	.export	QEI_Timer_Overflow_INT_Enable
	.type	QEI_Timer_Overflow_INT_Enable, @function
QEI_Timer_Overflow_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L68
// inline asm begin
	// 837 "../src/kf32f_basic_qei.c" 1
	CLR [r0], #2
// inline asm end
	JMP	lr
.L68:
// inline asm begin
	// 832 "../src/kf32f_basic_qei.c" 1
	SET [r0], #2
// inline asm end
	JMP	lr
	.size	QEI_Timer_Overflow_INT_Enable, .-QEI_Timer_Overflow_INT_Enable
	.section .text$QEI_Phase_Error_INT_Enable
	.align	1
	.export	QEI_Phase_Error_INT_Enable
	.type	QEI_Phase_Error_INT_Enable, @function
QEI_Phase_Error_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L72
// inline asm begin
	// 863 "../src/kf32f_basic_qei.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L72:
// inline asm begin
	// 858 "../src/kf32f_basic_qei.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	QEI_Phase_Error_INT_Enable, .-QEI_Phase_Error_INT_Enable
	.section .text$QEI_Counter_Error_INT_Enable
	.align	1
	.export	QEI_Counter_Error_INT_Enable
	.type	QEI_Counter_Error_INT_Enable, @function
QEI_Counter_Error_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L76
// inline asm begin
	// 889 "../src/kf32f_basic_qei.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L76:
// inline asm begin
	// 884 "../src/kf32f_basic_qei.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	QEI_Counter_Error_INT_Enable, .-QEI_Counter_Error_INT_Enable
