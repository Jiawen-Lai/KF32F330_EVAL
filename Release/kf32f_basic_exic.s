	.file	"kf32f_basic_exic.c"
	.section .text$EXIC_Reset
	.align	1
	.export	EXIC_Reset
	.type	EXIC_Reset, @function
EXIC_Reset:
	PUSH	{r6, r7, lr}
	MOV	r6,#1
	LSL	r6,#16
	MOV	r0,r6
	MOV	r1,#1
	LD	r7,#RST_CTL3_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,r6
	MOV	r1,#0
	LJMP	r7
	MOV	r0,r6
	MOV	r1,#1
	LD	r5,#PCLK_CTL3_Peripheral_Clock_Enable
	LJMP	r5
	POP	{r6, r7, pc}
	.size	EXIC_Reset, .-EXIC_Reset
	.section .text$EXIC_Configuration
	.align	1
	.export	EXIC_Configuration
	.type	EXIC_Configuration, @function
EXIC_Configuration:
	PUSH	{r6, r7}
	LD.w	r3,[r0+#13]
	LD.w	r2,[r0+#14]
	LD	r5,#1073752064
	LD.w	r6,[r5]
	LD.w	r4,[r0+#2]
	LD.w	r7,[r0]
	ORL	r1,r4,r7
	LD.w	r4,[r0+#11]
	ORL	r1,r1,r4
	LD.w	r7,[r0+#12]
	ORL	r1,r1,r7
	ORL	r1,r1,r3
	ORL	r1,r1,r2
	LD.w	r4,[r0+#1]
	ADD	r4,r4,r4
	ORL	r4,r1,r4
	LD.w	r1,[r0+#3]
	LSL	r1,#3
	ORL	r4,r4,r1
	LD.w	r1,[r0+#4]
	LSL	r1,#4
	ORL	r4,r4,r1
	LD.w	r1,[r0+#5]
	LSL	r1,#8
	ORL	r4,r4,r1
	LD.w	r1,[r0+#6]
	LSL	r1,#9
	ORL	r4,r4,r1
	LD.w	r1,[r0+#7]
	LSL	r1,#16
	ORL	r4,r4,r1
	LD.w	r1,[r0+#8]
	LSL	r1,#17
	ORL	r4,r4,r1
	LD.w	r1,[r0+#9]
	LSL	r1,#28
	ORL	r4,r4,r1
	LD.w	r1,[r0+#10]
	LSL	r1,#29
	ORL	r4,r4,r1
	LD	r1,#268238048
	ANL	r1,r6,r1
	ORL	r4,r4,r1
	ST.w	[r5],r4
	LD.w	r1,[r5+#1]
	ORL	r3,r2,r3
	MOV	r4,#243
	NOT	r4,r4
	ANL	r4,r1,r4
	ORL	r3,r3,r4
	ST.w	[r5+#1],r3
	POP	{r6, r7}
	JMP	lr
	.size	EXIC_Configuration, .-EXIC_Configuration
	.section .text$EXIC_Struct_Init
	.align	1
	.export	EXIC_Struct_Init
	.type	EXIC_Struct_Init, @function
EXIC_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	ST.w	[r0+#6],r5
	ST.w	[r0+#7],r5
	ST.w	[r0+#8],r5
	ST.w	[r0+#9],r5
	ST.w	[r0+#10],r5
	MOV	r4,#1
	LSL	r4,#30
	ST.w	[r0+#11],r4
	MOV	r4,#1
	LSL	r4,#31
	ST.w	[r0+#12],r4
	ST.w	[r0+#13],r5
	MOV	r5,#64
	ST.w	[r0+#14],r5
	JMP	lr
	.size	EXIC_Struct_Init, .-EXIC_Struct_Init
	.section .text$EXIC_Get_Write_Finish_INT_Flag
	.align	1
	.export	EXIC_Get_Write_Finish_INT_Flag
	.type	EXIC_Get_Write_Finish_INT_Flag, @function
EXIC_Get_Write_Finish_INT_Flag:
	LD	r5,#1073752064
	LD.w	r0,[r5+#2]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	EXIC_Get_Write_Finish_INT_Flag, .-EXIC_Get_Write_Finish_INT_Flag
	.section .text$EXIC_Clear_Write_Finish_INT_Flag
	.align	1
	.export	EXIC_Clear_Write_Finish_INT_Flag
	.type	EXIC_Clear_Write_Finish_INT_Flag, @function
EXIC_Clear_Write_Finish_INT_Flag:
	LD	r5,#1073752064
	LD.w	r4,[r5+#2]
	MOV	r3,#1
	ANL	r4,r4,r3
	JZ	.L5
.L8:
	LD.w	r4,[r5+#2]
	CLR	r4,#0
	ST.w	[r5+#2],r4
	LD.w	r4,[r5+#2]
	ANL	r4,r4,r3
	JNZ	.L8
.L5:
	JMP	lr
	.size	EXIC_Clear_Write_Finish_INT_Flag, .-EXIC_Clear_Write_Finish_INT_Flag
	.section .text$EXIC_Get_Read_Finish_INT_Flag
	.align	1
	.export	EXIC_Get_Read_Finish_INT_Flag
	.type	EXIC_Get_Read_Finish_INT_Flag, @function
EXIC_Get_Read_Finish_INT_Flag:
	LD	r5,#1073752064
	LD.w	r0,[r5+#2]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	EXIC_Get_Read_Finish_INT_Flag, .-EXIC_Get_Read_Finish_INT_Flag
	.section .text$EXIC_Clear_Read_Finish_INT_Flag
	.align	1
	.export	EXIC_Clear_Read_Finish_INT_Flag
	.type	EXIC_Clear_Read_Finish_INT_Flag, @function
EXIC_Clear_Read_Finish_INT_Flag:
	LD	r5,#1073752064
	LD.w	r4,[r5+#2]
	MOV	r3,#2
	ANL	r4,r4,r3
	JZ	.L12
.L15:
	LD.w	r4,[r5+#2]
	CLR	r4,#1
	ST.w	[r5+#2],r4
	LD.w	r4,[r5+#2]
	ANL	r4,r4,r3
	JNZ	.L15
.L12:
	JMP	lr
	.size	EXIC_Clear_Read_Finish_INT_Flag, .-EXIC_Clear_Read_Finish_INT_Flag
	.section .text$EXIC_Write_Buff
	.align	1
	.export	EXIC_Write_Buff
	.type	EXIC_Write_Buff, @function
EXIC_Write_Buff:
	LD	r5,#1073752064
	ST.w	[r5+#4],r0
	JMP	lr
	.size	EXIC_Write_Buff, .-EXIC_Write_Buff
	.section .text$EXIC_Read_Buff
	.align	1
	.export	EXIC_Read_Buff
	.type	EXIC_Read_Buff, @function
EXIC_Read_Buff:
	LD	r5,#1073752064
	LD.w	r0,[r5+#5]
	JMP	lr
	.size	EXIC_Read_Buff, .-EXIC_Read_Buff
