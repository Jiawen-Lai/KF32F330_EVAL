	.file	"kf32f_basic_systick.c"
	.section .text$SYSTICK_Configuration
	.align	1
	.export	SYSTICK_Configuration
	.type	SYSTICK_Configuration, @function
SYSTICK_Configuration:
	LD	r5,#1075839136
// inline asm begin
	// 54 "../src/kf32f_basic_systick.c" 1
	CLR [r5], #0
// inline asm end
	ST.w	[r5+#1],r2
	MOV	r4,#0
	ST.w	[r5+#2],r4
	LD.w	r4,[r5]
	CLR	r4,#1
	CLR	r4,#2
	ORL	r0,r0,r4
	ADD	r1,r1,r1
	ORL	r1,r0,r1
	ST.w	[r5],r1
	JMP	lr
	.size	SYSTICK_Configuration, .-SYSTICK_Configuration
	.section .text$SYSTICK_Cmd
	.align	1
	.export	SYSTICK_Cmd
	.type	SYSTICK_Cmd, @function
SYSTICK_Cmd:
	LD	r5,#1075839136
	CMP	r0,#0
	JNZ	.L6
// inline asm begin
	// 101 "../src/kf32f_basic_systick.c" 1
	CLR [r5], #0
// inline asm end
	JMP	lr
.L6:
// inline asm begin
	// 96 "../src/kf32f_basic_systick.c" 1
	SET [r5], #0
// inline asm end
	JMP	lr
	.size	SYSTICK_Cmd, .-SYSTICK_Cmd
	.section .text$SYSTICK_Clock_Config
	.align	1
	.export	SYSTICK_Clock_Config
	.type	SYSTICK_Clock_Config, @function
SYSTICK_Clock_Config:
	LD	r5,#1075839136
	CMP	r0,#0
	JNZ	.L10
// inline asm begin
	// 128 "../src/kf32f_basic_systick.c" 1
	CLR [r5], #2
// inline asm end
	JMP	lr
.L10:
// inline asm begin
	// 123 "../src/kf32f_basic_systick.c" 1
	SET [r5], #2
// inline asm end
	JMP	lr
	.size	SYSTICK_Clock_Config, .-SYSTICK_Clock_Config
	.section .text$SYSTICK_Systick_INT_Enable
	.align	1
	.export	SYSTICK_Systick_INT_Enable
	.type	SYSTICK_Systick_INT_Enable, @function
SYSTICK_Systick_INT_Enable:
	LD	r5,#1075839136
	CMP	r0,#0
	JNZ	.L14
// inline asm begin
	// 153 "../src/kf32f_basic_systick.c" 1
	CLR [r5], #1
// inline asm end
	JMP	lr
.L14:
// inline asm begin
	// 148 "../src/kf32f_basic_systick.c" 1
	SET [r5], #1
// inline asm end
	JMP	lr
	.size	SYSTICK_Systick_INT_Enable, .-SYSTICK_Systick_INT_Enable
	.section .text$SYSTICK_Get_Count_Zero_Flag
	.align	1
	.export	SYSTICK_Get_Count_Zero_Flag
	.type	SYSTICK_Get_Count_Zero_Flag, @function
SYSTICK_Get_Count_Zero_Flag:
	LD	r5,#1075839136
	LD.w	r0,[r5]
	LSR	r0,#16
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	SYSTICK_Get_Count_Zero_Flag, .-SYSTICK_Get_Count_Zero_Flag
	.section .text$SYSTICK_Reload_Config
	.align	1
	.export	SYSTICK_Reload_Config
	.type	SYSTICK_Reload_Config, @function
SYSTICK_Reload_Config:
	LD	r5,#1075839136
	ST.w	[r5+#1],r0
	JMP	lr
	.size	SYSTICK_Reload_Config, .-SYSTICK_Reload_Config
	.section .text$SYSTICK_Counter_Updata
	.align	1
	.export	SYSTICK_Counter_Updata
	.type	SYSTICK_Counter_Updata, @function
SYSTICK_Counter_Updata:
	MOV	r4,#0
	LD	r5,#1075839136
	ST.w	[r5+#2],r4
	JMP	lr
	.size	SYSTICK_Counter_Updata, .-SYSTICK_Counter_Updata
	.section .text$SYSTICK_Get_Reload
	.align	1
	.export	SYSTICK_Get_Reload
	.type	SYSTICK_Get_Reload, @function
SYSTICK_Get_Reload:
	LD	r5,#1075839136
	LD.w	r0,[r5+#1]
	LD	r5,#16777215
	ANL	r0,r0,r5
	JMP	lr
	.size	SYSTICK_Get_Reload, .-SYSTICK_Get_Reload
	.section .text$SYSTICK_Get_Counter
	.align	1
	.export	SYSTICK_Get_Counter
	.type	SYSTICK_Get_Counter, @function
SYSTICK_Get_Counter:
	LD	r5,#1075839136
	LD.w	r0,[r5+#2]
	LD	r5,#16777215
	ANL	r0,r0,r5
	JMP	lr
	.size	SYSTICK_Get_Counter, .-SYSTICK_Get_Counter
