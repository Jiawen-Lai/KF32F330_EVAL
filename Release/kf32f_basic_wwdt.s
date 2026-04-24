	.file	"kf32f_basic_wwdt.c"
	.section .text$WWDT_Reset
	.align	1
	.export	WWDT_Reset
	.type	WWDT_Reset, @function
WWDT_Reset:
	PUSH	{r6, lr}
	MOV	r0,#32
	MOV	r1,#1
	LD	r6,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#32
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#32
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	POP	{r6, pc}
	.size	WWDT_Reset, .-WWDT_Reset
	.section .text$WWDT_Threshold_Config
	.align	1
	.export	WWDT_Threshold_Config
	.type	WWDT_Threshold_Config, @function
WWDT_Threshold_Config:
	LD	r5,#1073746560
	LD.w	r4,[r5]
	LSL	r0,#8
	LD	r3,#-32513
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5],r4
	JMP	lr
	.size	WWDT_Threshold_Config, .-WWDT_Threshold_Config
	.section .text$WWDT_Prescaler_Config
	.align	1
	.export	WWDT_Prescaler_Config
	.type	WWDT_Prescaler_Config, @function
WWDT_Prescaler_Config:
	LD	r5,#1073746560
	LD.w	r3,[r5]
	MOV	r4,#248
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5],r0
	JMP	lr
	.size	WWDT_Prescaler_Config, .-WWDT_Prescaler_Config
	.section .text$WWDT_Enable
	.align	1
	.export	WWDT_Enable
	.type	WWDT_Enable, @function
WWDT_Enable:
	LD	r5,#1073746560
	CMP	r0,#0
	JNZ	.L8
// inline asm begin
	// 110 "../src/kf32f_basic_wwdt.c" 1
	CLR [r5], #0
// inline asm end
	JMP	lr
.L8:
// inline asm begin
	// 105 "../src/kf32f_basic_wwdt.c" 1
	SET [r5], #0
// inline asm end
	JMP	lr
	.size	WWDT_Enable, .-WWDT_Enable
	.section .text$WWDT_Counter_Config
	.align	1
	.export	WWDT_Counter_Config
	.type	WWDT_Counter_Config, @function
WWDT_Counter_Config:
	LD	r5,#1073746560
	ST.w	[r5+#1],r0
	JMP	lr
	.size	WWDT_Counter_Config, .-WWDT_Counter_Config
	.section .text$WWDT_Get_Counter
	.align	1
	.export	WWDT_Get_Counter
	.type	WWDT_Get_Counter, @function
WWDT_Get_Counter:
	LD	r5,#1073746560
	LD.w	r0,[r5+#1]
	MOV	r5,#127
	ANL	r0,r0,r5
	JMP	lr
	.size	WWDT_Get_Counter, .-WWDT_Get_Counter
	.section .text$WWDT_INT_Enable
	.align	1
	.export	WWDT_INT_Enable
	.type	WWDT_INT_Enable, @function
WWDT_INT_Enable:
	LD	r5,#1073746560
	CMP	r0,#0
	JNZ	.L14
// inline asm begin
	// 173 "../src/kf32f_basic_wwdt.c" 1
	CLR [r5], #1
// inline asm end
	JMP	lr
.L14:
// inline asm begin
	// 168 "../src/kf32f_basic_wwdt.c" 1
	SET [r5], #1
// inline asm end
	JMP	lr
	.size	WWDT_INT_Enable, .-WWDT_INT_Enable
	.section .text$WWDT_Get_INT_Flag
	.align	1
	.export	WWDT_Get_INT_Flag
	.type	WWDT_Get_INT_Flag, @function
WWDT_Get_INT_Flag:
	LD	r5,#1073746560
	LD.w	r0,[r5]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	WWDT_Get_INT_Flag, .-WWDT_Get_INT_Flag
	.section .text$WWDT_Clear_INT_Flag
	.align	1
	.export	WWDT_Clear_INT_Flag
	.type	WWDT_Clear_INT_Flag, @function
WWDT_Clear_INT_Flag:
	LD	r5,#1073746560
// inline asm begin
	// 207 "../src/kf32f_basic_wwdt.c" 1
	SET [r5], #15
// inline asm end
	LD	r3,#1073746560
	MOV	r4,#4
.L17:
	LD.w	r5,[r3]
	ANL	r5,r5,r4
	JNZ	.L17
	LD	r5,#1073746560
// inline asm begin
	// 209 "../src/kf32f_basic_wwdt.c" 1
	CLR [r5], #15
// inline asm end
	JMP	lr
	.size	WWDT_Clear_INT_Flag, .-WWDT_Clear_INT_Flag
