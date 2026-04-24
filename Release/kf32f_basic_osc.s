	.file	"kf32f_basic_osc.c"
	.section .text$OSC_SCLK_Configuration
	.align	1
	.export	OSC_SCLK_Configuration
	.type	OSC_SCLK_Configuration, @function
OSC_SCLK_Configuration:
	PUSH	{r6, r7}
	LD.w	r5,[r0]
	LD.w	r3,[r0+#1]
	LSL	r3,#16
	ADD	r4,r5,r5
	ORL	r4,r3,r4
	CMP	r5,#3
	JZ	.L4
	CMP	r5,#4
	JZ	.L5
	CMP	r5,#2
	JZ	.L13
	MOV	r3,#1
	LSL	r3,#30
	LD.w	r1,[r3]
	LD	r2,#-458767
	ANL	r2,r1,r2
	ORL	r4,r4,r2
	ST.w	[r3],r4
	CMP	r5,#3
	JLS	.L10
	MOV	r3,#15
	NOT	r3,r3
	MOV	r2,#0
	JMP	.L6
.L13:
	LD	r6,#15728640
	MOV	r7,#20
.L3:
	MOV	r3,#1
	LSL	r3,#30
	LD.w	r1,[r3]
	LD	r2,#-458767
	ANL	r2,r1,r2
	ORL	r4,r4,r2
	ST.w	[r3],r4
.L7:
	SUB	r5,r5,#2
	CMP	r5,#1
	JHI	.L1
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5+#3]
	NOT	r6,r6
	ANL	r6,r6,r4
	LD.w	r4,[r0+#3]
	LSL	r7,r4,r7
	ORL	r7,r6,r7
	ST.w	[r5+#3],r7
.L1:
	POP	{r6, r7}
	JMP	lr
.L5:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r2,[r5]
	LD	r3,#-462863
	ANL	r3,r2,r3
	LD.w	r2,[r0+#2]
	LSL	r2,#12
	ORL	r3,r3,r2
	ORL	r4,r3,r4
	ST.w	[r5],r4
	LD	r3,#-251658241
	MOV	r2,#24
.L6:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5+#3]
	ANL	r3,r3,r4
	LD.w	r4,[r0+#3]
	LSL	r4,r4,r2
	ORL	r4,r3,r4
	ST.w	[r5+#3],r4
	POP	{r6, r7}
	JMP	lr
.L4:
	LD	r6,#983040
	MOV	r7,#16
	JMP	.L3
.L10:
	MOV	r6,#0
	MOV	r7,r6
	JMP	.L7
	.size	OSC_SCLK_Configuration, .-OSC_SCLK_Configuration
	.section .text$OSC_HFCK_Configuration
	.align	1
	.export	OSC_HFCK_Configuration
	.type	OSC_HFCK_Configuration, @function
OSC_HFCK_Configuration:
	PUSH	r6
	LD.w	r5,[r0]
	CMP	r5,#2
	JZ	.L16
	CMP	r5,#4
	JZ	.L23
	MOV	r4,#1
	LSL	r4,#30
	LD.w	r1,[r4]
	LD.w	r2,[r0+#1]
	LSL	r2,#20
	MOV	r6,#9
	LSL	r3,r5,r6
	ORL	r2,r2,r3
	LD	r3,#-15732225
	ANL	r3,r1,r3
	ORL	r3,r2,r3
	ST.w	[r4],r3
	CMP	r5,#3
	JHI	.L24
	CMP	r5,#2
	JZ	.L25
	POP	r6
	JMP	lr
.L23:
	LD.w	r4,[r0+#2]
	LSL	r4,#12
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r2,[r5]
	LD.w	r3,[r0+#1]
	LSL	r3,#20
	SET	r3,#11
	ORL	r3,r4,r3
	LD	r4,#-15736321
	ANL	r4,r2,r4
	ORL	r4,r3,r4
	ST.w	[r5],r4
	MOV	r4,#24
.L18:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r2,[r5+#3]
	MOV	r3,#15
	LSL	r3,r3,r4
	NOT	r3,r3
	ANL	r3,r3,r2
	LD.w	r2,[r0+#3]
	LSL	r4,r2,r4
	ORL	r4,r3,r4
	ST.w	[r5+#3],r4
	POP	r6
	JMP	lr
.L16:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r2,[r5]
	LD.w	r3,[r0+#1]
	LSL	r3,#20
	SET	r3,#10
	LD	r4,#-15732225
	ANL	r4,r2,r4
	ORL	r4,r3,r4
	ST.w	[r5],r4
	LD	r4,#983040
	MOV	r3,#16
.L21:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r2,[r5+#3]
	NOT	r4,r4
	ANL	r4,r4,r2
	LD.w	r2,[r0+#3]
	LSL	r3,r2,r3
	ORL	r3,r4,r3
	ST.w	[r5+#3],r3
	POP	r6
	JMP	lr
.L24:
	MOV	r4,#0
	JMP	.L18
.L25:
	MOV	r4,#0
	MOV	r3,r4
	JMP	.L21
	.size	OSC_HFCK_Configuration, .-OSC_HFCK_Configuration
	.section .text$OSC_LFCK_Configuration
	.align	1
	.export	OSC_LFCK_Configuration
	.type	OSC_LFCK_Configuration, @function
OSC_LFCK_Configuration:
	PUSH	r6
	LD.w	r4,[r0]
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r1,[r5]
	LD.w	r2,[r0+#1]
	LSL	r2,#24
	MOV	r6,#6
	LSL	r3,r4,r6
	ORL	r2,r2,r3
	LD	r3,#-117440577
	ANL	r3,r1,r3
	ORL	r3,r2,r3
	ST.w	[r5],r3
	CMP	r4,#1
	JNZ	.L26
	LD.w	r3,[r5+#3]
	LD	r4,#-983041
	ANL	r4,r3,r4
	LD.w	r3,[r0+#3]
	LSL	r3,#16
	ORL	r4,r4,r3
	ST.w	[r5+#3],r4
.L26:
	POP	r6
	JMP	lr
	.size	OSC_LFCK_Configuration, .-OSC_LFCK_Configuration
	.section .text$OSC_CK48M_Configuration
	.align	1
	.export	OSC_CK48M_Configuration
	.type	OSC_CK48M_Configuration, @function
OSC_CK48M_Configuration:
	PUSH	{r6, r7}
	LD.w	r5,[r0]
	CMP	r5,#2
	JZ	.L35
	CMP	r5,#4
	JZ	.L37
	CMP	r5,#3
	JHI	.L38
	CMP	r5,#2
	JZ	.L39
.L34:
	MOV	r4,#1
	LSL	r4,#30
	LD.w	r2,[r4+#1]
	LD.w	r3,[r0+#1]
	LSL	r3,#4
	ADD	r5,r5,r5
	ORL	r5,r3,r5
	MOV	r3,#62
	NOT	r3,r3
	ANL	r3,r2,r3
	ORL	r5,r5,r3
	ST.w	[r4+#1],r5
	POP	{r6, r7}
	JMP	lr
.L37:
	LD.w	r2,[r0+#2]
	LSL	r2,#12
	LD	r7,#-251658241
	MOV	r3,#24
	LD	r1,#-4097
.L32:
	MOV	r4,#1
	LSL	r4,#30
	LD.w	r6,[r4]
	ANL	r1,r1,r6
	ORL	r1,r1,r2
	ST.w	[r4],r1
	LD.w	r2,[r4+#3]
	ANL	r2,r7,r2
	LD.w	r1,[r0+#3]
	LSL	r3,r1,r3
	ORL	r3,r2,r3
	ST.w	[r4+#3],r3
	JMP	.L34
.L35:
	MOV	r3,#16
	LD	r2,#-983041
.L30:
	MOV	r4,#1
	LSL	r4,#30
	LD.w	r1,[r4+#3]
	ANL	r2,r2,r1
	LD.w	r1,[r0+#3]
	LSL	r3,r1,r3
	ORL	r3,r2,r3
	ST.w	[r4+#3],r3
	JMP	.L34
.L38:
	MOV	r7,#15
	NOT	r7,r7
	MOV	r3,#0
	MOV	r1,#0
	NOT	r1,r1
	MOV	r2,r3
	JMP	.L32
.L39:
	MOV	r3,#0
	MOV	r2,#0
	NOT	r2,r2
	JMP	.L30
	.size	OSC_CK48M_Configuration, .-OSC_CK48M_Configuration
	.section .text$OSC_Struct_Init
	.align	1
	.export	OSC_Struct_Init
	.type	OSC_Struct_Init, @function
OSC_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	MOV	r4,#7
	ST.w	[r0+#1],r4
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	JMP	lr
	.size	OSC_Struct_Init, .-OSC_Struct_Init
	.section .text$OSC_LFCK_Division_Config
	.align	1
	.export	OSC_LFCK_Division_Config
	.type	OSC_LFCK_Division_Config, @function
OSC_LFCK_Division_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5]
	LSL	r0,#24
	LD	r3,#-117440513
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5],r4
	JMP	lr
	.size	OSC_LFCK_Division_Config, .-OSC_LFCK_Division_Config
	.section .text$OSC_HFCK_Division_Config
	.align	1
	.export	OSC_HFCK_Division_Config
	.type	OSC_HFCK_Division_Config, @function
OSC_HFCK_Division_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5]
	LSL	r0,#20
	LD	r3,#-15728641
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5],r4
	JMP	lr
	.size	OSC_HFCK_Division_Config, .-OSC_HFCK_Division_Config
	.section .text$OSC_SCK_Division_Config
	.align	1
	.export	OSC_SCK_Division_Config
	.type	OSC_SCK_Division_Config, @function
OSC_SCK_Division_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5]
	LSL	r0,#16
	LD	r3,#-458753
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5],r4
	JMP	lr
	.size	OSC_SCK_Division_Config, .-OSC_SCK_Division_Config
	.section .text$OSC_PLL_Input_Source_Config
	.align	1
	.export	OSC_PLL_Input_Source_Config
	.type	OSC_PLL_Input_Source_Config, @function
OSC_PLL_Input_Source_Config:
	MOV	r5,#1
	LSL	r5,#30
	CMP	r0,#0
	JNZ	.L47
// inline asm begin
	// 458 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #12
// inline asm end
	JMP	lr
.L47:
// inline asm begin
	// 453 "../src/kf32f_basic_osc.c" 1
	SET [r5], #12
// inline asm end
	JMP	lr
	.size	OSC_PLL_Input_Source_Config, .-OSC_PLL_Input_Source_Config
	.section .text$OSC_HFCK_Source_Config
	.align	1
	.export	OSC_HFCK_Source_Config
	.type	OSC_HFCK_Source_Config, @function
OSC_HFCK_Source_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5]
	LSL	r0,#9
	LD	r3,#-3585
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5],r4
	JMP	lr
	.size	OSC_HFCK_Source_Config, .-OSC_HFCK_Source_Config
	.section .text$OSC_HFCK_Enable
	.align	1
	.export	OSC_HFCK_Enable
	.type	OSC_HFCK_Enable, @function
OSC_HFCK_Enable:
	MOV	r5,#1
	LSL	r5,#30
	CMP	r0,#0
	JNZ	.L52
// inline asm begin
	// 506 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #8
// inline asm end
	JMP	lr
.L52:
// inline asm begin
	// 501 "../src/kf32f_basic_osc.c" 1
	SET [r5], #8
// inline asm end
	JMP	lr
	.size	OSC_HFCK_Enable, .-OSC_HFCK_Enable
	.section .text$OSC_LFCK_Source_Config
	.align	1
	.export	OSC_LFCK_Source_Config
	.type	OSC_LFCK_Source_Config, @function
OSC_LFCK_Source_Config:
	MOV	r5,#1
	LSL	r5,#30
	CMP	r0,#0
	JNZ	.L56
// inline asm begin
	// 532 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #6
// inline asm end
	JMP	lr
.L56:
// inline asm begin
	// 527 "../src/kf32f_basic_osc.c" 1
	SET [r5], #6
// inline asm end
	JMP	lr
	.size	OSC_LFCK_Source_Config, .-OSC_LFCK_Source_Config
	.section .text$OSC_LFCK_Enable
	.align	1
	.export	OSC_LFCK_Enable
	.type	OSC_LFCK_Enable, @function
OSC_LFCK_Enable:
	MOV	r5,#1
	LSL	r5,#30
	CMP	r0,#0
	JNZ	.L60
// inline asm begin
	// 557 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #4
// inline asm end
	JMP	lr
.L60:
// inline asm begin
	// 552 "../src/kf32f_basic_osc.c" 1
	SET [r5], #4
// inline asm end
	JMP	lr
	.size	OSC_LFCK_Enable, .-OSC_LFCK_Enable
	.section .text$OSC_SCK_Source_Config
	.align	1
	.export	OSC_SCK_Source_Config
	.type	OSC_SCK_Source_Config, @function
OSC_SCK_Source_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5]
	ADD	r0,r0,r0
	MOV	r3,#14
	NOT	r3,r3
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5],r4
	JMP	lr
	.size	OSC_SCK_Source_Config, .-OSC_SCK_Source_Config
	.section .text$OSC_Backup_Write_Read_Enable
	.align	1
	.export	OSC_Backup_Write_Read_Enable
	.type	OSC_Backup_Write_Read_Enable, @function
OSC_Backup_Write_Read_Enable:
	MOV	r5,#1
	LSL	r5,#30
	CMP	r0,#0
	JNZ	.L65
// inline asm begin
	// 606 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #0
// inline asm end
	JMP	lr
.L65:
// inline asm begin
	// 601 "../src/kf32f_basic_osc.c" 1
	SET [r5], #0
// inline asm end
	JMP	lr
	.size	OSC_Backup_Write_Read_Enable, .-OSC_Backup_Write_Read_Enable
	.section .text$OSC_SCLK_Output_Enable
	.align	1
	.export	OSC_SCLK_Output_Enable
	.type	OSC_SCLK_Output_Enable, @function
OSC_SCLK_Output_Enable:
	LD	r5,#1073741828
	CMP	r0,#0
	JNZ	.L69
// inline asm begin
	// 631 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #28
// inline asm end
	JMP	lr
.L69:
// inline asm begin
	// 626 "../src/kf32f_basic_osc.c" 1
	SET [r5], #28
// inline asm end
	JMP	lr
	.size	OSC_SCLK_Output_Enable, .-OSC_SCLK_Output_Enable
	.section .text$OSC_SCLK_Output_Select
	.align	1
	.export	OSC_SCLK_Output_Select
	.type	OSC_SCLK_Output_Select, @function
OSC_SCLK_Output_Select:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5+#1]
	LSL	r0,#25
	LD	r3,#-234881025
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#1],r4
	JMP	lr
	.size	OSC_SCLK_Output_Select, .-OSC_SCLK_Output_Select
	.section .text$OSC_SCLK_Output_Division_Config
	.align	1
	.export	OSC_SCLK_Output_Division_Config
	.type	OSC_SCLK_Output_Division_Config, @function
OSC_SCLK_Output_Division_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5+#1]
	LSL	r0,#29
	LD	r3,#536870911
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#1],r4
	JMP	lr
	.size	OSC_SCLK_Output_Division_Config, .-OSC_SCLK_Output_Division_Config
	.section .text$OSC_Clock_Failure_Check_Enable
	.align	1
	.export	OSC_Clock_Failure_Check_Enable
	.type	OSC_Clock_Failure_Check_Enable, @function
OSC_Clock_Failure_Check_Enable:
	LD	r5,#1073741828
	CMP	r0,#0
	JNZ	.L75
// inline asm begin
	// 703 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #16
// inline asm end
	JMP	lr
.L75:
// inline asm begin
	// 698 "../src/kf32f_basic_osc.c" 1
	SET [r5], #16
// inline asm end
	JMP	lr
	.size	OSC_Clock_Failure_Check_Enable, .-OSC_Clock_Failure_Check_Enable
	.section .text$OSC_CK48M_Division_Config
	.align	1
	.export	OSC_CK48M_Division_Config
	.type	OSC_CK48M_Division_Config, @function
OSC_CK48M_Division_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5+#1]
	LSL	r0,#4
	CLR	r4,#4
	CLR	r4,#5
	ORL	r4,r0,r4
	ST.w	[r5+#1],r4
	JMP	lr
	.size	OSC_CK48M_Division_Config, .-OSC_CK48M_Division_Config
	.section .text$OSC_CK48M_Source_Config
	.align	1
	.export	OSC_CK48M_Source_Config
	.type	OSC_CK48M_Source_Config, @function
OSC_CK48M_Source_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5+#1]
	ADD	r0,r0,r0
	MOV	r3,#14
	NOT	r3,r3
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#1],r4
	JMP	lr
	.size	OSC_CK48M_Source_Config, .-OSC_CK48M_Source_Config
	.section .text$OSC_CK48M_Enable
	.align	1
	.export	OSC_CK48M_Enable
	.type	OSC_CK48M_Enable, @function
OSC_CK48M_Enable:
	LD	r5,#1073741828
	CMP	r0,#0
	JNZ	.L81
// inline asm begin
	// 770 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #0
// inline asm end
	JMP	lr
.L81:
// inline asm begin
	// 765 "../src/kf32f_basic_osc.c" 1
	SET [r5], #0
// inline asm end
	JMP	lr
	.size	OSC_CK48M_Enable, .-OSC_CK48M_Enable
	.section .text$OSC_PLL_Multiple_Value_Select
	.align	1
	.export	OSC_PLL_Multiple_Value_Select
	.type	OSC_PLL_Multiple_Value_Select, @function
OSC_PLL_Multiple_Value_Select:
	LD	r5,#1073751424
	LD.w	r4,[r5]
	LSL	r0,#2
	LD	r3,#-65533
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5],r4
	LD.w	r4,[r5]
	LSL	r1,#16
	LD	r3,#-983041
	ANL	r4,r4,r3
	ORL	r4,r1,r4
	ST.w	[r5],r4
	CMP	r2,#8
	JZ	.L84
	CMP	r2,#4
	JZ	.L85
	CMP	r2,#2
	JZ	.L86
	MOV	r4,#0
	CMP	r2,#1
	JZ	.L83
	MOV	r5,#20
	LSL	r4,r2,r5
.L83:
	LD	r5,#1073751424
	LD.w	r3,[r5]
	CLR	r3,#20
	CLR	r3,#21
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
.L84:
	LD	r4,#3145728
	LD	r5,#1073751424
	LD.w	r3,[r5]
	CLR	r3,#20
	CLR	r3,#21
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
.L85:
	MOV	r4,#1
	LSL	r4,#21
	LD	r5,#1073751424
	LD.w	r3,[r5]
	CLR	r3,#20
	CLR	r3,#21
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
.L86:
	MOV	r4,#1
	LSL	r4,#20
	LD	r5,#1073751424
	LD.w	r3,[r5]
	CLR	r3,#20
	CLR	r3,#21
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
	.size	OSC_PLL_Multiple_Value_Select, .-OSC_PLL_Multiple_Value_Select
	.section .text$OSC_PLL_RST
	.align	1
	.export	OSC_PLL_RST
	.type	OSC_PLL_RST, @function
OSC_PLL_RST:
	LD	r5,#1073751424
// inline asm begin
	// 819 "../src/kf32f_basic_osc.c" 1
	SET [r5], #0
// inline asm end
	JMP	lr
	.size	OSC_PLL_RST, .-OSC_PLL_RST
	.section .text$OSC_PLL_Start_Delay_Config
	.align	1
	.export	OSC_PLL_Start_Delay_Config
	.type	OSC_PLL_Start_Delay_Config, @function
OSC_PLL_Start_Delay_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5+#3]
	LSL	r0,#24
	LD	r3,#-251658241
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#3],r4
	JMP	lr
	.size	OSC_PLL_Start_Delay_Config, .-OSC_PLL_Start_Delay_Config
	.section .text$OSC_EXTHF_Start_Delay_Config
	.align	1
	.export	OSC_EXTHF_Start_Delay_Config
	.type	OSC_EXTHF_Start_Delay_Config, @function
OSC_EXTHF_Start_Delay_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5+#3]
	LSL	r0,#20
	LD	r3,#-15728641
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#3],r4
	JMP	lr
	.size	OSC_EXTHF_Start_Delay_Config, .-OSC_EXTHF_Start_Delay_Config
	.section .text$OSC_EXTLF_Start_Delay_Config
	.align	1
	.export	OSC_EXTLF_Start_Delay_Config
	.type	OSC_EXTLF_Start_Delay_Config, @function
OSC_EXTLF_Start_Delay_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5+#3]
	LSL	r0,#16
	LD	r3,#-983041
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#3],r4
	JMP	lr
	.size	OSC_EXTLF_Start_Delay_Config, .-OSC_EXTLF_Start_Delay_Config
	.section .text$OSC_PLL_Software_Enable
	.align	1
	.export	OSC_PLL_Software_Enable
	.type	OSC_PLL_Software_Enable, @function
OSC_PLL_Software_Enable:
	LD	r5,#1073741836
	CMP	r0,#0
	JNZ	.L96
// inline asm begin
	// 926 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #4
// inline asm end
	JMP	lr
.L96:
// inline asm begin
	// 921 "../src/kf32f_basic_osc.c" 1
	SET [r5], #4
// inline asm end
	JMP	lr
	.size	OSC_PLL_Software_Enable, .-OSC_PLL_Software_Enable
	.section .text$OSC_EXTHF_Software_Enable
	.align	1
	.export	OSC_EXTHF_Software_Enable
	.type	OSC_EXTHF_Software_Enable, @function
OSC_EXTHF_Software_Enable:
	LD	r5,#1073741836
	CMP	r0,#0
	JNZ	.L100
// inline asm begin
	// 950 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #3
// inline asm end
	JMP	lr
.L100:
// inline asm begin
	// 945 "../src/kf32f_basic_osc.c" 1
	SET [r5], #3
// inline asm end
	JMP	lr
	.size	OSC_EXTHF_Software_Enable, .-OSC_EXTHF_Software_Enable
	.section .text$OSC_EXTLF_Software_Enable
	.align	1
	.export	OSC_EXTLF_Software_Enable
	.type	OSC_EXTLF_Software_Enable, @function
OSC_EXTLF_Software_Enable:
	LD	r5,#1073741836
	CMP	r0,#0
	JNZ	.L104
// inline asm begin
	// 974 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #2
// inline asm end
	JMP	lr
.L104:
// inline asm begin
	// 969 "../src/kf32f_basic_osc.c" 1
	SET [r5], #2
// inline asm end
	JMP	lr
	.size	OSC_EXTLF_Software_Enable, .-OSC_EXTLF_Software_Enable
	.section .text$OSC_INTHF_Software_Enable
	.align	1
	.export	OSC_INTHF_Software_Enable
	.type	OSC_INTHF_Software_Enable, @function
OSC_INTHF_Software_Enable:
	LD	r5,#1073741836
	CMP	r0,#0
	JNZ	.L108
// inline asm begin
	// 998 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #1
// inline asm end
	JMP	lr
.L108:
// inline asm begin
	// 993 "../src/kf32f_basic_osc.c" 1
	SET [r5], #1
// inline asm end
	JMP	lr
	.size	OSC_INTHF_Software_Enable, .-OSC_INTHF_Software_Enable
	.section .text$OSC_INTLF_Software_Enable
	.align	1
	.export	OSC_INTLF_Software_Enable
	.type	OSC_INTLF_Software_Enable, @function
OSC_INTLF_Software_Enable:
	LD	r5,#1073741836
	CMP	r0,#0
	JNZ	.L112
// inline asm begin
	// 1022 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #0
// inline asm end
	JMP	lr
.L112:
// inline asm begin
	// 1017 "../src/kf32f_basic_osc.c" 1
	SET [r5], #0
// inline asm end
	JMP	lr
	.size	OSC_INTLF_Software_Enable, .-OSC_INTLF_Software_Enable
	.section .text$OSC_Zero_Drift_Config
	.align	1
	.export	OSC_Zero_Drift_Config
	.type	OSC_Zero_Drift_Config, @function
OSC_Zero_Drift_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5+#4]
	CMP	r1,#0
	JNZ	.L116
	NOT	r0,r0
	ANL	r0,r0,r4
	ST.w	[r5+#4],r0
	JMP	lr
.L116:
	ORL	r0,r0,r4
	ST.w	[r5+#4],r0
	JMP	lr
	.size	OSC_Zero_Drift_Config, .-OSC_Zero_Drift_Config
	.section .text$OSC_Positive_Drift_Config
	.align	1
	.export	OSC_Positive_Drift_Config
	.type	OSC_Positive_Drift_Config, @function
OSC_Positive_Drift_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5+#4]
	LSL	r0,#5
	LD	r3,#-993
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#4],r4
	JMP	lr
	.size	OSC_Positive_Drift_Config, .-OSC_Positive_Drift_Config
	.section .text$OSC_Negative_Drift_Config
	.align	1
	.export	OSC_Negative_Drift_Config
	.type	OSC_Negative_Drift_Config, @function
OSC_Negative_Drift_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r3,[r5+#4]
	MOV	r4,#31
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#4],r0
	JMP	lr
	.size	OSC_Negative_Drift_Config, .-OSC_Negative_Drift_Config
	.section .text$OSC_Current_Gain_Config
	.align	1
	.export	OSC_Current_Gain_Config
	.type	OSC_Current_Gain_Config, @function
OSC_Current_Gain_Config:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5+#5]
	LSL	r0,#3
	CLR	r4,#3
	CLR	r4,#4
	ORL	r4,r0,r4
	ST.w	[r5+#5],r4
	JMP	lr
	.size	OSC_Current_Gain_Config, .-OSC_Current_Gain_Config
	.section .text$OSC_High_Speed_Enable
	.align	1
	.export	OSC_High_Speed_Enable
	.type	OSC_High_Speed_Enable, @function
OSC_High_Speed_Enable:
	LD	r5,#1073741844
	CMP	r0,#0
	JNZ	.L123
// inline asm begin
	// 1141 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #2
// inline asm end
	JMP	lr
.L123:
// inline asm begin
	// 1136 "../src/kf32f_basic_osc.c" 1
	SET [r5], #2
// inline asm end
	JMP	lr
	.size	OSC_High_Speed_Enable, .-OSC_High_Speed_Enable
	.section .text$OSC_External_Input_Enable
	.align	1
	.export	OSC_External_Input_Enable
	.type	OSC_External_Input_Enable, @function
OSC_External_Input_Enable:
	LD	r5,#1073741844
	CMP	r0,#0
	JNZ	.L127
// inline asm begin
	// 1165 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #1
// inline asm end
	JMP	lr
.L127:
// inline asm begin
	// 1160 "../src/kf32f_basic_osc.c" 1
	SET [r5], #1
// inline asm end
	JMP	lr
	.size	OSC_External_Input_Enable, .-OSC_External_Input_Enable
	.section .text$OSC_Feedback_Resistance_Config
	.align	1
	.export	OSC_Feedback_Resistance_Config
	.type	OSC_Feedback_Resistance_Config, @function
OSC_Feedback_Resistance_Config:
	LD	r5,#1073741844
	CMP	r0,#0
	JNZ	.L131
// inline asm begin
	// 1191 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #0
// inline asm end
	JMP	lr
.L131:
// inline asm begin
	// 1186 "../src/kf32f_basic_osc.c" 1
	SET [r5], #0
// inline asm end
	JMP	lr
	.size	OSC_Feedback_Resistance_Config, .-OSC_Feedback_Resistance_Config
	.section .text$OSC_PLL_Zero_Source_Enable
	.align	1
	.export	OSC_PLL_Zero_Source_Enable
	.type	OSC_PLL_Zero_Source_Enable, @function
OSC_PLL_Zero_Source_Enable:
	LD	r5,#1073751424
	CMP	r0,#0
	JNZ	.L135
// inline asm begin
	// 1215 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #24
// inline asm end
	JMP	lr
.L135:
// inline asm begin
	// 1210 "../src/kf32f_basic_osc.c" 1
	SET [r5], #24
// inline asm end
	JMP	lr
	.size	OSC_PLL_Zero_Source_Enable, .-OSC_PLL_Zero_Source_Enable
	.section .text$OSC_PLL_Vref2_Enable
	.align	1
	.export	OSC_PLL_Vref2_Enable
	.type	OSC_PLL_Vref2_Enable, @function
OSC_PLL_Vref2_Enable:
	LD	r5,#1073751424
	CMP	r0,#0
	JNZ	.L139
// inline asm begin
	// 1240 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #25
// inline asm end
	JMP	lr
.L139:
// inline asm begin
	// 1235 "../src/kf32f_basic_osc.c" 1
	SET [r5], #25
// inline asm end
	JMP	lr
	.size	OSC_PLL_Vref2_Enable, .-OSC_PLL_Vref2_Enable
	.section .text$OSC_PLL_Vref0p5_Enable
	.align	1
	.export	OSC_PLL_Vref0p5_Enable
	.type	OSC_PLL_Vref0p5_Enable, @function
OSC_PLL_Vref0p5_Enable:
	LD	r5,#1073751424
	CMP	r0,#0
	JNZ	.L143
// inline asm begin
	// 1265 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #26
// inline asm end
	JMP	lr
.L143:
// inline asm begin
	// 1260 "../src/kf32f_basic_osc.c" 1
	SET [r5], #26
// inline asm end
	JMP	lr
	.size	OSC_PLL_Vref0p5_Enable, .-OSC_PLL_Vref0p5_Enable
	.section .text$OSC_PLL_Vref1p2_Enable
	.align	1
	.export	OSC_PLL_Vref1p2_Enable
	.type	OSC_PLL_Vref1p2_Enable, @function
OSC_PLL_Vref1p2_Enable:
	LD	r5,#1073751424
	CMP	r0,#0
	JNZ	.L147
// inline asm begin
	// 1290 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #27
// inline asm end
	JMP	lr
.L147:
// inline asm begin
	// 1285 "../src/kf32f_basic_osc.c" 1
	SET [r5], #27
// inline asm end
	JMP	lr
	.size	OSC_PLL_Vref1p2_Enable, .-OSC_PLL_Vref1p2_Enable
	.section .text$OSC_PLL_Low_Power_20nA_Enable
	.align	1
	.export	OSC_PLL_Low_Power_20nA_Enable
	.type	OSC_PLL_Low_Power_20nA_Enable, @function
OSC_PLL_Low_Power_20nA_Enable:
	LD	r5,#1073751424
	CMP	r0,#0
	JNZ	.L151
// inline asm begin
	// 1315 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #28
// inline asm end
	JMP	lr
.L151:
// inline asm begin
	// 1310 "../src/kf32f_basic_osc.c" 1
	SET [r5], #28
// inline asm end
	JMP	lr
	.size	OSC_PLL_Low_Power_20nA_Enable, .-OSC_PLL_Low_Power_20nA_Enable
	.section .text$OSC_PLL_Vref1p14_Enable
	.align	1
	.export	OSC_PLL_Vref1p14_Enable
	.type	OSC_PLL_Vref1p14_Enable, @function
OSC_PLL_Vref1p14_Enable:
	LD	r5,#1073751424
	CMP	r0,#0
	JNZ	.L155
// inline asm begin
	// 1340 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #29
// inline asm end
	JMP	lr
.L155:
// inline asm begin
	// 1335 "../src/kf32f_basic_osc.c" 1
	SET [r5], #29
// inline asm end
	JMP	lr
	.size	OSC_PLL_Vref1p14_Enable, .-OSC_PLL_Vref1p14_Enable
	.section .text$OSC_PLL_Low_Power_100nA_Enable
	.align	1
	.export	OSC_PLL_Low_Power_100nA_Enable
	.type	OSC_PLL_Low_Power_100nA_Enable, @function
OSC_PLL_Low_Power_100nA_Enable:
	LD	r5,#1073751424
	CMP	r0,#0
	JNZ	.L159
// inline asm begin
	// 1365 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #30
// inline asm end
	JMP	lr
.L159:
// inline asm begin
	// 1360 "../src/kf32f_basic_osc.c" 1
	SET [r5], #30
// inline asm end
	JMP	lr
	.size	OSC_PLL_Low_Power_100nA_Enable, .-OSC_PLL_Low_Power_100nA_Enable
	.section .text$OSC_PLL_LDO_Enable
	.align	1
	.export	OSC_PLL_LDO_Enable
	.type	OSC_PLL_LDO_Enable, @function
OSC_PLL_LDO_Enable:
	LD	r5,#1073751424
	CMP	r0,#0
	JNZ	.L163
// inline asm begin
	// 1390 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #31
// inline asm end
	JMP	lr
.L163:
// inline asm begin
	// 1385 "../src/kf32f_basic_osc.c" 1
	SET [r5], #31
// inline asm end
	JMP	lr
	.size	OSC_PLL_LDO_Enable, .-OSC_PLL_LDO_Enable
	.section .text$OSC_PLL_INT_Enable
	.align	1
	.export	OSC_PLL_INT_Enable
	.type	OSC_PLL_INT_Enable, @function
OSC_PLL_INT_Enable:
	LD	r5,#1073741832
	CMP	r0,#0
	JNZ	.L167
// inline asm begin
	// 1414 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #12
// inline asm end
	JMP	lr
.L167:
// inline asm begin
	// 1409 "../src/kf32f_basic_osc.c" 1
	SET [r5], #12
// inline asm end
	JMP	lr
	.size	OSC_PLL_INT_Enable, .-OSC_PLL_INT_Enable
	.section .text$OSC_EXTHF_INT_Enable
	.align	1
	.export	OSC_EXTHF_INT_Enable
	.type	OSC_EXTHF_INT_Enable, @function
OSC_EXTHF_INT_Enable:
	LD	r5,#1073741832
	CMP	r0,#0
	JNZ	.L171
// inline asm begin
	// 1438 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #11
// inline asm end
	JMP	lr
.L171:
// inline asm begin
	// 1433 "../src/kf32f_basic_osc.c" 1
	SET [r5], #11
// inline asm end
	JMP	lr
	.size	OSC_EXTHF_INT_Enable, .-OSC_EXTHF_INT_Enable
	.section .text$OSC_EXTLF_INT_Enable
	.align	1
	.export	OSC_EXTLF_INT_Enable
	.type	OSC_EXTLF_INT_Enable, @function
OSC_EXTLF_INT_Enable:
	LD	r5,#1073741832
	CMP	r0,#0
	JNZ	.L175
// inline asm begin
	// 1462 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #10
// inline asm end
	JMP	lr
.L175:
// inline asm begin
	// 1457 "../src/kf32f_basic_osc.c" 1
	SET [r5], #10
// inline asm end
	JMP	lr
	.size	OSC_EXTLF_INT_Enable, .-OSC_EXTLF_INT_Enable
	.section .text$OSC_INTHF_INT_Enable
	.align	1
	.export	OSC_INTHF_INT_Enable
	.type	OSC_INTHF_INT_Enable, @function
OSC_INTHF_INT_Enable:
	LD	r5,#1073741832
	CMP	r0,#0
	JNZ	.L179
// inline asm begin
	// 1486 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #9
// inline asm end
	JMP	lr
.L179:
// inline asm begin
	// 1481 "../src/kf32f_basic_osc.c" 1
	SET [r5], #9
// inline asm end
	JMP	lr
	.size	OSC_INTHF_INT_Enable, .-OSC_INTHF_INT_Enable
	.section .text$OSC_INTLF_INT_Enable
	.align	1
	.export	OSC_INTLF_INT_Enable
	.type	OSC_INTLF_INT_Enable, @function
OSC_INTLF_INT_Enable:
	LD	r5,#1073741832
	CMP	r0,#0
	JNZ	.L183
// inline asm begin
	// 1510 "../src/kf32f_basic_osc.c" 1
	CLR [r5], #8
// inline asm end
	JMP	lr
.L183:
// inline asm begin
	// 1505 "../src/kf32f_basic_osc.c" 1
	SET [r5], #8
// inline asm end
	JMP	lr
	.size	OSC_INTLF_INT_Enable, .-OSC_INTLF_INT_Enable
	.section .text$OSC_Get_Clock_Failure_INT_Flag
	.align	1
	.export	OSC_Get_Clock_Failure_INT_Flag
	.type	OSC_Get_Clock_Failure_INT_Flag, @function
OSC_Get_Clock_Failure_INT_Flag:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r0,[r5+#2]
	LSR	r0,#7
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	OSC_Get_Clock_Failure_INT_Flag, .-OSC_Get_Clock_Failure_INT_Flag
	.section .text$OSC_Get_PLL_INT_Flag
	.align	1
	.export	OSC_Get_PLL_INT_Flag
	.type	OSC_Get_PLL_INT_Flag, @function
OSC_Get_PLL_INT_Flag:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r0,[r5+#2]
	LSR	r0,#4
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	OSC_Get_PLL_INT_Flag, .-OSC_Get_PLL_INT_Flag
	.section .text$OSC_Get_EXTHF_INT_Flag
	.align	1
	.export	OSC_Get_EXTHF_INT_Flag
	.type	OSC_Get_EXTHF_INT_Flag, @function
OSC_Get_EXTHF_INT_Flag:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r0,[r5+#2]
	LSR	r0,#3
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	OSC_Get_EXTHF_INT_Flag, .-OSC_Get_EXTHF_INT_Flag
	.section .text$OSC_Get_EXTLF_INT_Flag
	.align	1
	.export	OSC_Get_EXTLF_INT_Flag
	.type	OSC_Get_EXTLF_INT_Flag, @function
OSC_Get_EXTLF_INT_Flag:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r0,[r5+#2]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	OSC_Get_EXTLF_INT_Flag, .-OSC_Get_EXTLF_INT_Flag
	.section .text$OSC_Get_INTHF_INT_Flag
	.align	1
	.export	OSC_Get_INTHF_INT_Flag
	.type	OSC_Get_INTHF_INT_Flag, @function
OSC_Get_INTHF_INT_Flag:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r0,[r5+#2]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	OSC_Get_INTHF_INT_Flag, .-OSC_Get_INTHF_INT_Flag
	.section .text$OSC_Get_INTLF_INT_Flag
	.align	1
	.export	OSC_Get_INTLF_INT_Flag
	.type	OSC_Get_INTLF_INT_Flag, @function
OSC_Get_INTLF_INT_Flag:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r0,[r5+#2]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	OSC_Get_INTLF_INT_Flag, .-OSC_Get_INTLF_INT_Flag
