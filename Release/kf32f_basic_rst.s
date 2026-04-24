	.file	"kf32f_basic_rst.c"
	.section .text$RST_CTL0_Peripheral_Reset_Enable
	.align	1
	.export	RST_CTL0_Peripheral_Reset_Enable
	.type	RST_CTL0_Peripheral_Reset_Enable, @function
RST_CTL0_Peripheral_Reset_Enable:
	LD	r5,#1073747200
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
	.size	RST_CTL0_Peripheral_Reset_Enable, .-RST_CTL0_Peripheral_Reset_Enable
	.section .text$RST_CTL1_Peripheral_Reset_Enable
	.align	1
	.export	RST_CTL1_Peripheral_Reset_Enable
	.type	RST_CTL1_Peripheral_Reset_Enable, @function
RST_CTL1_Peripheral_Reset_Enable:
	LD	r5,#1073747200
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
	.size	RST_CTL1_Peripheral_Reset_Enable, .-RST_CTL1_Peripheral_Reset_Enable
	.section .text$RST_CTL2_Peripheral_Reset_Enable
	.align	1
	.export	RST_CTL2_Peripheral_Reset_Enable
	.type	RST_CTL2_Peripheral_Reset_Enable, @function
RST_CTL2_Peripheral_Reset_Enable:
	LD	r5,#1073747200
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
	.size	RST_CTL2_Peripheral_Reset_Enable, .-RST_CTL2_Peripheral_Reset_Enable
	.section .text$RST_CTL3_Peripheral_Reset_Enable
	.align	1
	.export	RST_CTL3_Peripheral_Reset_Enable
	.type	RST_CTL3_Peripheral_Reset_Enable, @function
RST_CTL3_Peripheral_Reset_Enable:
	LD	r5,#1073747200
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
	.size	RST_CTL3_Peripheral_Reset_Enable, .-RST_CTL3_Peripheral_Reset_Enable
