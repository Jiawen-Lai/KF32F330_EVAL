	.file	"kf32f_basic_bkp.c"
	.section .text$BKP_Reset
	.align	1
	.export	BKP_Reset
	.type	BKP_Reset, @function
BKP_Reset:
	LD	r5,#1073746944
// inline asm begin
	// 30 "../src/kf32f_basic_bkp.c" 1
	SET [r5], #31
	// 31 "../src/kf32f_basic_bkp.c" 1
	CLR [r5], #31
// inline asm end
	JMP	lr
	.size	BKP_Reset, .-BKP_Reset
	.section .text$BKP_Write_And_Read_Enable
	.align	1
	.export	BKP_Write_And_Read_Enable
	.type	BKP_Write_And_Read_Enable, @function
BKP_Write_And_Read_Enable:
	CMP	r0,#0
	JZ	.L3
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5]
	MOV	r3,#1
	ANL	r4,r4,r3
	JNZ	.L16
	LD	r3,#pmwrenbkp.1931
	ST.w	[r3],r4
// inline asm begin
	// 69 "../src/kf32f_basic_bkp.c" 1
	SET [r5], #0
// inline asm end
	LD	r5,#1073747328
	LD.w	r3,[r5]
	MOV	r4,#1
	LSL	r4,#22
	ANL	r4,r3,r4
	JZ	.L6
.L20:
	MOV	r4,#1
	LD	r5,#bkpregclrbkp.1932
	ST.w	[r5],r4
	LD	r5,#1073747328
	LD.w	r3,[r5]
	MOV	r4,#128
	ANL	r4,r3,r4
	JZ	.L8
.L21:
	MOV	r4,#1
	LD	r5,#bkpwrbkp.1933
	ST.w	[r5],r4
	JMP	lr
.L3:
	LD	r5,#pmwrenbkp.1931
	LD.w	r4,[r5]
	CMP	r4,#0
	JNZ	.L17
	MOV	r5,#1
	LSL	r5,#30
// inline asm begin
	// 110 "../src/kf32f_basic_bkp.c" 1
	CLR [r5], #0
// inline asm end
	LD	r5,#bkpregclrbkp.1932
	LD.w	r4,[r5]
	CMP	r4,#0
	JZ	.L12
.L19:
	MOV	r4,#1
	ST.w	[r5],r4
	LD	r5,#bkpwrbkp.1933
	LD.w	r4,[r5]
	CMP	r4,#0
	JNZ	.L18
.L14:
	LD	r5,#1073747328
// inline asm begin
	// 134 "../src/kf32f_basic_bkp.c" 1
	CLR [r5], #7
// inline asm end
	JMP	lr
.L17:
	MOV	r4,#1
	ST.w	[r5],r4
	LD	r5,#bkpregclrbkp.1932
	LD.w	r4,[r5]
	CMP	r4,#0
	JNZ	.L19
.L12:
	LD	r5,#1073747328
// inline asm begin
	// 122 "../src/kf32f_basic_bkp.c" 1
	CLR [r5], #22
// inline asm end
	LD	r5,#bkpwrbkp.1933
	LD.w	r4,[r5]
	CMP	r4,#0
	JZ	.L14
.L18:
	MOV	r4,#1
	ST.w	[r5],r4
	JMP	lr
.L16:
	LD	r5,#pmwrenbkp.1931
	ST.w	[r5],r3
	LD	r5,#1073747328
	LD.w	r3,[r5]
	MOV	r4,#1
	LSL	r4,#22
	ANL	r4,r3,r4
	JNZ	.L20
.L6:
	LD	r3,#bkpregclrbkp.1932
	ST.w	[r3],r4
// inline asm begin
	// 82 "../src/kf32f_basic_bkp.c" 1
	SET [r5], #22
// inline asm end
	LD	r5,#1073747328
	LD.w	r3,[r5]
	MOV	r4,#128
	ANL	r4,r3,r4
	JNZ	.L21
.L8:
	LD	r3,#bkpwrbkp.1933
	ST.w	[r3],r4
// inline asm begin
	// 95 "../src/kf32f_basic_bkp.c" 1
	SET [r5], #7
// inline asm end
	JMP	lr
	.size	BKP_Write_And_Read_Enable, .-BKP_Write_And_Read_Enable
	.section .text$BKP_Reset_Enable
	.align	1
	.export	BKP_Reset_Enable
	.type	BKP_Reset_Enable, @function
BKP_Reset_Enable:
	LD	r5,#1073746944
	CMP	r0,#0
	JNZ	.L25
// inline asm begin
	// 166 "../src/kf32f_basic_bkp.c" 1
	CLR [r5], #31
// inline asm end
	JMP	lr
.L25:
// inline asm begin
	// 161 "../src/kf32f_basic_bkp.c" 1
	SET [r5], #31
// inline asm end
	JMP	lr
	.size	BKP_Reset_Enable, .-BKP_Reset_Enable
	.section .text$BKP_Pin_Effective_Level_Config
	.align	1
	.export	BKP_Pin_Effective_Level_Config
	.type	BKP_Pin_Effective_Level_Config, @function
BKP_Pin_Effective_Level_Config:
	MOV	r5,#1
	LSL	r5,#20
	LSL	r0,r5,r0
	LD	r4,#1073746944
	LD.w	r3,[r4]
	CMP	r1,#0
	JNZ	.L29
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4],r5
	JMP	lr
.L29:
	ORL	r5,r0,r3
	ST.w	[r4],r5
	JMP	lr
	.size	BKP_Pin_Effective_Level_Config, .-BKP_Pin_Effective_Level_Config
	.section .text$BKP_Pin_Enable
	.align	1
	.export	BKP_Pin_Enable
	.type	BKP_Pin_Enable, @function
BKP_Pin_Enable:
	MOV	r5,#1
	LSL	r5,#16
	LSL	r0,r5,r0
	LD	r4,#1073746944
	LD.w	r3,[r4]
	CMP	r1,#0
	JNZ	.L33
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4],r5
	JMP	lr
.L33:
	ORL	r5,r0,r3
	ST.w	[r4],r5
	JMP	lr
	.size	BKP_Pin_Enable, .-BKP_Pin_Enable
	.section .text$BKP_RTC_Clock_Config
	.align	1
	.export	BKP_RTC_Clock_Config
	.type	BKP_RTC_Clock_Config, @function
BKP_RTC_Clock_Config:
	LD	r5,#1073746944
	LD.w	r4,[r5]
	CLR	r4,#8
	CLR	r4,#9
	ORL	r0,r0,r4
	ST.w	[r5],r0
	JMP	lr
	.size	BKP_RTC_Clock_Config, .-BKP_RTC_Clock_Config
	.section .text$BKP_External_Clock_Bypass_Enable
	.align	1
	.export	BKP_External_Clock_Bypass_Enable
	.type	BKP_External_Clock_Bypass_Enable, @function
BKP_External_Clock_Bypass_Enable:
	MOV	r5,#2
	LSL	r0,r5,r0
	LD	r4,#1073746944
	LD.w	r3,[r4]
	CMP	r1,#0
	JNZ	.L38
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4],r5
	JMP	lr
.L38:
	ORL	r5,r0,r3
	ST.w	[r4],r5
	JMP	lr
	.size	BKP_External_Clock_Bypass_Enable, .-BKP_External_Clock_Bypass_Enable
	.section .text$BKP_Data_Config
	.align	1
	.export	BKP_Data_Config
	.type	BKP_Data_Config, @function
BKP_Data_Config:
	ADD	r0,#16
	LSL	r0,#2
	LD	r5,#1073746944
	ST.w	[r5+r0],r1
	JMP	lr
	.size	BKP_Data_Config, .-BKP_Data_Config
	.section .text$BKP_Get_Data
	.align	1
	.export	BKP_Get_Data
	.type	BKP_Get_Data, @function
BKP_Get_Data:
	ADD	r0,#16
	LSL	r0,#2
	LD	r5,#1073746944
	LD.w	r0,[r5+r0]
	JMP	lr
	.size	BKP_Get_Data, .-BKP_Get_Data
	.section .text$BKP_Pin_TAMP_INT_Enable
	.align	1
	.export	BKP_Pin_TAMP_INT_Enable
	.type	BKP_Pin_TAMP_INT_Enable, @function
BKP_Pin_TAMP_INT_Enable:
	MOV	r5,#255
	ADD	r5,r5,#1
	LSL	r0,r5,r0
	LD	r4,#1073746944
	LD.w	r3,[r4+#1]
	CMP	r1,#0
	JNZ	.L44
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4+#1],r5
	JMP	lr
.L44:
	ORL	r5,r0,r3
	ST.w	[r4+#1],r5
	JMP	lr
	.size	BKP_Pin_TAMP_INT_Enable, .-BKP_Pin_TAMP_INT_Enable
	.section .text$BKP_Get_Pin_TAMP_INT_Flag
	.align	1
	.export	BKP_Get_Pin_TAMP_INT_Flag
	.type	BKP_Get_Pin_TAMP_INT_Flag, @function
BKP_Get_Pin_TAMP_INT_Flag:
	LD	r5,#1073746944
	LD.w	r5,[r5+#1]
	MOV	r4,#1
	LSL	r4,#16
	LSL	r0,r4,r0
	ANL	r0,r0,r5
	MOV	r5,#0
	SUB	r5,r5,r0
	ORL	r0,r5,r0
	LSR	r0,#31
	JMP	lr
	.size	BKP_Get_Pin_TAMP_INT_Flag, .-BKP_Get_Pin_TAMP_INT_Flag
	.section .text$BKP_Clear_Pin_TAMP_INT_Flag
	.align	1
	.export	BKP_Clear_Pin_TAMP_INT_Flag
	.type	BKP_Clear_Pin_TAMP_INT_Flag, @function
BKP_Clear_Pin_TAMP_INT_Flag:
	MOV	r1,#1
	LSL	r1,r1,r0
	MOV	r2,#1
	LSL	r2,#16
	LSL	r2,r2,r0
	LD	r3,#1073746944
	LD.w	r5,[r3+#1]
	ORL	r5,r1,r5
	ST.w	[r3+#1],r5
	ADD	r0,#16
.L47:
	LD	r4,#1073746944
	LD.w	r5,[r3+#1]
	ANL	r5,r2,r5
	LSR	r5,r5,r0
	CMP	r5,#0
	JNZ	.L47
	LD.w	r5,[r4+#1]
	NOT	r1,r1
	ANL	r1,r1,r5
	ST.w	[r4+#1],r1
	JMP	lr
	.size	BKP_Clear_Pin_TAMP_INT_Flag, .-BKP_Clear_Pin_TAMP_INT_Flag
	.section .data$pmwrenbkp.1931
	.align	2
	.type	pmwrenbkp.1931, @object
	.size	pmwrenbkp.1931, 4
pmwrenbkp.1931:
	.long	1
	.section .data$bkpregclrbkp.1932
	.align	2
	.type	bkpregclrbkp.1932, @object
	.size	bkpregclrbkp.1932, 4
bkpregclrbkp.1932:
	.long	1
	.section .data$bkpwrbkp.1933
	.align	2
	.type	bkpwrbkp.1933, @object
	.size	bkpwrbkp.1933, 4
bkpwrbkp.1933:
	.long	1
