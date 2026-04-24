	.file	"kf32f_basic_aes.c"
	.section .text$AES_Reset
	.align	1
	.export	AES_Reset
	.type	AES_Reset, @function
AES_Reset:
	PUSH	{r6, r7, lr}
	MOV	r6,#1
	LSL	r6,#14
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
	.size	AES_Reset, .-AES_Reset
	.section .text$AES_Configuration
	.align	1
	.export	AES_Configuration
	.type	AES_Configuration, @function
AES_Configuration:
	LD	r5,#1073751808
	LD.w	r2,[r5]
	LD.w	r1,[r0+#1]
	LD.w	r3,[r0]
	ORL	r4,r1,r3
	LD.w	r1,[r0+#2]
	ORL	r4,r4,r1
	LD.w	r3,[r0+#3]
	ORL	r4,r4,r3
	LD.w	r1,[r0+#4]
	ORL	r4,r4,r1
	LD.w	r3,[r0+#5]
	ORL	r4,r4,r3
	LD	r3,#-8421568
	ANL	r3,r2,r3
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
	.size	AES_Configuration, .-AES_Configuration
	.section .text$AES_Struct_Init
	.align	1
	.export	AES_Struct_Init
	.type	AES_Struct_Init, @function
AES_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	JMP	lr
	.size	AES_Struct_Init, .-AES_Struct_Init
	.section .text$AES_KEY0_DATA
	.align	1
	.export	AES_KEY0_DATA
	.type	AES_KEY0_DATA, @function
AES_KEY0_DATA:
	LD	r5,#1073751808
	ST.w	[r5+#4],r0
	JMP	lr
	.size	AES_KEY0_DATA, .-AES_KEY0_DATA
	.section .text$AES_KEY1_DATA
	.align	1
	.export	AES_KEY1_DATA
	.type	AES_KEY1_DATA, @function
AES_KEY1_DATA:
	LD	r5,#1073751808
	ST.w	[r5+#5],r0
	JMP	lr
	.size	AES_KEY1_DATA, .-AES_KEY1_DATA
	.section .text$AES_KEY2_DATA
	.align	1
	.export	AES_KEY2_DATA
	.type	AES_KEY2_DATA, @function
AES_KEY2_DATA:
	LD	r5,#1073751808
	ST.w	[r5+#6],r0
	JMP	lr
	.size	AES_KEY2_DATA, .-AES_KEY2_DATA
	.section .text$AES_KEY3_DATA
	.align	1
	.export	AES_KEY3_DATA
	.type	AES_KEY3_DATA, @function
AES_KEY3_DATA:
	LD	r5,#1073751808
	ST.w	[r5+#7],r0
	JMP	lr
	.size	AES_KEY3_DATA, .-AES_KEY3_DATA
	.section .text$AES_INPUT0_DATA
	.align	1
	.export	AES_INPUT0_DATA
	.type	AES_INPUT0_DATA, @function
AES_INPUT0_DATA:
	LD	r5,#1073751808
	ST.w	[r5+#8],r0
	JMP	lr
	.size	AES_INPUT0_DATA, .-AES_INPUT0_DATA
	.section .text$AES_INPUT1_DATA
	.align	1
	.export	AES_INPUT1_DATA
	.type	AES_INPUT1_DATA, @function
AES_INPUT1_DATA:
	LD	r5,#1073751808
	ST.w	[r5+#9],r0
	JMP	lr
	.size	AES_INPUT1_DATA, .-AES_INPUT1_DATA
	.section .text$AES_INPUT2_DATA
	.align	1
	.export	AES_INPUT2_DATA
	.type	AES_INPUT2_DATA, @function
AES_INPUT2_DATA:
	LD	r5,#1073751808
	ST.w	[r5+#10],r0
	JMP	lr
	.size	AES_INPUT2_DATA, .-AES_INPUT2_DATA
	.section .text$AES_INPUT3_DATA
	.align	1
	.export	AES_INPUT3_DATA
	.type	AES_INPUT3_DATA, @function
AES_INPUT3_DATA:
	LD	r5,#1073751808
	ST.w	[r5+#11],r0
	JMP	lr
	.size	AES_INPUT3_DATA, .-AES_INPUT3_DATA
	.section .text$GET_AES_OUTPUT0_DATA
	.align	1
	.export	GET_AES_OUTPUT0_DATA
	.type	GET_AES_OUTPUT0_DATA, @function
GET_AES_OUTPUT0_DATA:
	LD	r5,#1073751808
	LD.w	r0,[r5+#12]
	JMP	lr
	.size	GET_AES_OUTPUT0_DATA, .-GET_AES_OUTPUT0_DATA
	.section .text$GET_AES_OUTPUT1_DATA
	.align	1
	.export	GET_AES_OUTPUT1_DATA
	.type	GET_AES_OUTPUT1_DATA, @function
GET_AES_OUTPUT1_DATA:
	LD	r5,#1073751808
	LD.w	r0,[r5+#13]
	JMP	lr
	.size	GET_AES_OUTPUT1_DATA, .-GET_AES_OUTPUT1_DATA
	.section .text$GET_AES_OUTPUT2_DATA
	.align	1
	.export	GET_AES_OUTPUT2_DATA
	.type	GET_AES_OUTPUT2_DATA, @function
GET_AES_OUTPUT2_DATA:
	LD	r5,#1073751808
	LD.w	r0,[r5+#14]
	JMP	lr
	.size	GET_AES_OUTPUT2_DATA, .-GET_AES_OUTPUT2_DATA
	.section .text$GET_AES_OUTPUT3_DATA
	.align	1
	.export	GET_AES_OUTPUT3_DATA
	.type	GET_AES_OUTPUT3_DATA, @function
GET_AES_OUTPUT3_DATA:
	LD	r5,#1073751808
	LD.w	r0,[r5+#15]
	JMP	lr
	.size	GET_AES_OUTPUT3_DATA, .-GET_AES_OUTPUT3_DATA
	.section .text$AES_Get_Flag_Status
	.align	1
	.export	AES_Get_Flag_Status
	.type	AES_Get_Flag_Status, @function
AES_Get_Flag_Status:
	LD	r5,#1073751808
	LD.w	r0,[r5]
	LSR	r0,#31
	JMP	lr
	.size	AES_Get_Flag_Status, .-AES_Get_Flag_Status
	.section .text$AES_Start
	.align	1
	.export	AES_Start
	.type	AES_Start, @function
AES_Start:
	LD	r5,#1073751808
	LD.w	r4,[r5]
	SET	r4,#7
	ST.w	[r5],r4
	JMP	lr
	.size	AES_Start, .-AES_Start
	.section .text$AES_CLR_Flag_Status
	.align	1
	.export	AES_CLR_Flag_Status
	.type	AES_CLR_Flag_Status, @function
AES_CLR_Flag_Status:
	LD	r3,#1073751808
	LD.w	r5,[r3]
	SET	r5,#23
	ST.w	[r3],r5
.L19:
	LD	r5,#1073751808
	LD.w	r4,[r3]
	CMP	r4,#0
	JMI	.L19
	LD.w	r4,[r5]
	CLR	r4,#23
	ST.w	[r5],r4
	JMP	lr
	.size	AES_CLR_Flag_Status, .-AES_CLR_Flag_Status
