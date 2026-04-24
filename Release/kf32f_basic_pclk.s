	.file	"kf32f_basic_pclk.c"
	.section .text$PCLK_CTL0_Peripheral_Clock_Enable
	.align	1
	.export	PCLK_CTL0_Peripheral_Clock_Enable
	.type	PCLK_CTL0_Peripheral_Clock_Enable, @function
PCLK_CTL0_Peripheral_Clock_Enable:
	LD	r5,#1073751616
	LD.w	r4,[r5]
	CMP	r1,#0
	JNZ	.L5
	NOT	r0,r0
	ANL	r0,r0,r4
	ST.w	[r5],r0
	JMP	lr
.L5:
	ORL	r0,r0,r4
	ST.w	[r5],r0
	JMP	lr
	.size	PCLK_CTL0_Peripheral_Clock_Enable, .-PCLK_CTL0_Peripheral_Clock_Enable
	.section .text$PCLK_CTL1_Peripheral_Clock_Enable
	.align	1
	.export	PCLK_CTL1_Peripheral_Clock_Enable
	.type	PCLK_CTL1_Peripheral_Clock_Enable, @function
PCLK_CTL1_Peripheral_Clock_Enable:
	LD	r5,#1073751616
	LD.w	r4,[r5+#1]
	CMP	r1,#0
	JNZ	.L9
	NOT	r0,r0
	ANL	r0,r0,r4
	ST.w	[r5+#1],r0
	JMP	lr
.L9:
	ORL	r0,r0,r4
	ST.w	[r5+#1],r0
	JMP	lr
	.size	PCLK_CTL1_Peripheral_Clock_Enable, .-PCLK_CTL1_Peripheral_Clock_Enable
	.section .text$PCLK_CTL2_Peripheral_Clock_Enable
	.align	1
	.export	PCLK_CTL2_Peripheral_Clock_Enable
	.type	PCLK_CTL2_Peripheral_Clock_Enable, @function
PCLK_CTL2_Peripheral_Clock_Enable:
	LD	r5,#1073751616
	LD.w	r4,[r5+#2]
	CMP	r1,#0
	JNZ	.L13
	NOT	r0,r0
	ANL	r0,r0,r4
	ST.w	[r5+#2],r0
	JMP	lr
.L13:
	ORL	r0,r0,r4
	ST.w	[r5+#2],r0
	JMP	lr
	.size	PCLK_CTL2_Peripheral_Clock_Enable, .-PCLK_CTL2_Peripheral_Clock_Enable
	.section .text$PCLK_CTL3_Peripheral_Clock_Enable
	.align	1
	.export	PCLK_CTL3_Peripheral_Clock_Enable
	.type	PCLK_CTL3_Peripheral_Clock_Enable, @function
PCLK_CTL3_Peripheral_Clock_Enable:
	LD	r5,#1073751616
	LD.w	r4,[r5+#3]
	CMP	r1,#0
	JNZ	.L17
	NOT	r0,r0
	ANL	r0,r0,r4
	ST.w	[r5+#3],r0
	JMP	lr
.L17:
	ORL	r0,r0,r4
	ST.w	[r5+#3],r0
	JMP	lr
	.size	PCLK_CTL3_Peripheral_Clock_Enable, .-PCLK_CTL3_Peripheral_Clock_Enable
