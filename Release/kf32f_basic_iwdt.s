	.file	"kf32f_basic_iwdt.c"
	.section .text$IWDT_Prescaler_Config
	.align	1
	.export	IWDT_Prescaler_Config
	.type	IWDT_Prescaler_Config, @function
IWDT_Prescaler_Config:
	LD	r5,#1073746432
	LD.w	r3,[r5]
	MOV	r4,#15
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5],r0
	JMP	lr
	.size	IWDT_Prescaler_Config, .-IWDT_Prescaler_Config
	.section .text$IWDT_Overflow_Config
	.align	1
	.export	IWDT_Overflow_Config
	.type	IWDT_Overflow_Config, @function
IWDT_Overflow_Config:
	LD	r5,#1073746432
	LD.w	r4,[r5]
	LSL	r0,#4
	LD	r3,#-65521
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5],r4
	JMP	lr
	.size	IWDT_Overflow_Config, .-IWDT_Overflow_Config
	.section .text$IWDT_Enable
	.align	1
	.export	IWDT_Enable
	.type	IWDT_Enable, @function
IWDT_Enable:
	LD	r5,#1073746432
	CMP	r0,#0
	JNZ	.L7
// inline asm begin
	// 87 "../src/kf32f_basic_iwdt.c" 1
	CLR [r5], #31
// inline asm end
	JMP	lr
.L7:
// inline asm begin
	// 82 "../src/kf32f_basic_iwdt.c" 1
	SET [r5], #31
// inline asm end
	JMP	lr
	.size	IWDT_Enable, .-IWDT_Enable
	.section .text$IWDT_Feed_The_Dog
	.align	1
	.export	IWDT_Feed_The_Dog
	.type	IWDT_Feed_The_Dog, @function
IWDT_Feed_The_Dog:
	LD	r4,#1437226410
	LD	r5,#1073746432
	ST.w	[r5+#1],r4
	JMP	lr
	.size	IWDT_Feed_The_Dog, .-IWDT_Feed_The_Dog
