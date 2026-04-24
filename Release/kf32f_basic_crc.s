	.file	"kf32f_basic_crc.c"
	.section .text$CRC_Reset
	.align	1
	.export	CRC_Reset
	.type	CRC_Reset, @function
CRC_Reset:
	PUSH	{r6, r7, lr}
	MOV	r6,#1
	LSL	r6,#13
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
	.size	CRC_Reset, .-CRC_Reset
	.section .text$CRC_Configuration
	.align	1
	.export	CRC_Configuration
	.type	CRC_Configuration, @function
CRC_Configuration:
	LD	r5,#1073751680
	LD.w	r2,[r5]
	LD.w	r1,[r0+#1]
	LD.w	r3,[r0]
	ORL	r4,r1,r3
	LD.w	r1,[r0+#2]
	ORL	r4,r4,r1
	LD.w	r3,[r0+#3]
	ORL	r4,r4,r3
	MOV	r3,#173
	NOT	r3,r3
	ANL	r3,r2,r3
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
	.size	CRC_Configuration, .-CRC_Configuration
	.section .text$CRC_Struct_Init
	.align	1
	.export	CRC_Struct_Init
	.type	CRC_Struct_Init, @function
CRC_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	JMP	lr
	.size	CRC_Struct_Init, .-CRC_Struct_Init
	.section .text$CRC_INPUT_DATA
	.align	1
	.export	CRC_INPUT_DATA
	.type	CRC_INPUT_DATA, @function
CRC_INPUT_DATA:
	LD	r5,#1073751680
	ST.w	[r5+#1],r0
	JMP	lr
	.size	CRC_INPUT_DATA, .-CRC_INPUT_DATA
	.section .text$CRC_GET_RESULT
	.align	1
	.export	CRC_GET_RESULT
	.type	CRC_GET_RESULT, @function
CRC_GET_RESULT:
	LD	r5,#1073751680
	LD.w	r0,[r5+#2]
	JMP	lr
	.size	CRC_GET_RESULT, .-CRC_GET_RESULT
	.section .text$CRC_SET_INITVALUE
	.align	1
	.export	CRC_SET_INITVALUE
	.type	CRC_SET_INITVALUE, @function
CRC_SET_INITVALUE:
	LD	r5,#1073751680
	ST.w	[r5+#3],r0
	JMP	lr
	.size	CRC_SET_INITVALUE, .-CRC_SET_INITVALUE
	.section .text$CRC_SET_PLN
	.align	1
	.export	CRC_SET_PLN
	.type	CRC_SET_PLN, @function
CRC_SET_PLN:
	LD	r5,#1073751680
	ST.w	[r5+#4],r0
	JMP	lr
	.size	CRC_SET_PLN, .-CRC_SET_PLN
	.section .text$CRC_SET_RXOR
	.align	1
	.export	CRC_SET_RXOR
	.type	CRC_SET_RXOR, @function
CRC_SET_RXOR:
	LD	r5,#1073751680
	ST.w	[r5+#5],r0
	JMP	lr
	.size	CRC_SET_RXOR, .-CRC_SET_RXOR
	.section .text$CRC_SET_IDATA
	.align	1
	.export	CRC_SET_IDATA
	.type	CRC_SET_IDATA, @function
CRC_SET_IDATA:
	LD	r5,#1073751680
	ST.w	[r5+#6],r0
	JMP	lr
	.size	CRC_SET_IDATA, .-CRC_SET_IDATA
	.section .text$CRC_GET_TEMP
	.align	1
	.export	CRC_GET_TEMP
	.type	CRC_GET_TEMP, @function
CRC_GET_TEMP:
	LD	r5,#1073751680
	LD.w	r0,[r5+#7]
	JMP	lr
	.size	CRC_GET_TEMP, .-CRC_GET_TEMP
	.section .text$CRC_SET_RSET
	.align	1
	.export	CRC_SET_RSET
	.type	CRC_SET_RSET, @function
CRC_SET_RSET:
	LD	r5,#1073751680
	LD.w	r4,[r5]
	SET	r4,#0
	ST.w	[r5],r4
	JMP	lr
	.size	CRC_SET_RSET, .-CRC_SET_RSET
