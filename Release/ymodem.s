	.file	"ymodem.c"
	.section .text$Receive_Byte
	.align	1
	.type	Receive_Byte, @function
Receive_Byte:
	PUSH	r6
	LD	r1,#327679
	LD	r4,#1073744512
	MOV	r3,#1
	MOV	r6,#1
	LSL	r6,#11
.L6:
	LD.w	r5,[r4+#2]
	ANL	r5,r5,r3
	JZ	.L2
	LD.w	r5,[r4+#2]
	SET	r5,#16
	ST.w	[r4+#2],r5
.L3:
	LD	r2,#1073744512
	LD.w	r5,[r4+#2]
	ANL	r5,r5,r3
	JNZ	.L3
	LD.w	r5,[r2+#2]
	CLR	r5,#16
	ST.w	[r2+#2],r5
.L2:
	LD.w	r5,[r4+#2]
	ANL	r5,r5,r6
	JNZ	.L13
	SUB	r1,r1,#1
	JNZ	.L6
	MOV	r0,#0
	NOT	r0,r0
	POP	r6
	JMP	lr
.L13:
	LD	r5,#1073744512
	LD.w	r5,[r5+#3]
	ST.b	[r0],r5
	MOV	r0,#0
	POP	r6
	JMP	lr
	.size	Receive_Byte, .-Receive_Byte
	.section .text$Send_Byte
	.align	1
	.type	Send_Byte, @function
Send_Byte:
	PUSH	{r6, lr}
	MOV	r1,r0
	LD	r0,#1073744512
	LD	r5,#USART_SendData
	LJMP	r5
	LD	r6,#USART_Get_Transmitter_Empty_Flag
.L15:
	LD	r0,#1073744512
	LJMP	r6
	CMP	r0,#0
	JZ	.L15
	POP	{r6, pc}
	.size	Send_Byte, .-Send_Byte
	.section .text$Ymodem_Receive
	.align	1
	.export	Ymodem_Receive
	.type	Ymodem_Receive, @function
Ymodem_Receive:
	PUSH	{r6, r7, r8, r9, r10, r11, r12, lr}
	SUB	sp,#16
	MOV	r6,r0
	MOV	r10,#0
	MOV	r11,r10
	MOV	r8,r10
	LD	r7,#Receive_Byte
	LD	r4,#Send_Byte
	MOV	r9,r4
	LD	r5,#GPIO_Toggle_Output_Data_Config
	MOV	r12,r5
	ADD	r4,r0,#3
	ST.w	[sp+#2],r4
.L54:
	MOV	r5,#0
	ST.h	[sp],r5
	MOV	r5,sp
	ADD	r0,r5,#4
	LJMP	r7
	CMP	r0,#0
	JNZ	.L23
	LD.b	r5,[sp+#4]
	CMP	r5,#2
	JZ	.L25
	CMP	r5,#4
	JZ	.L26
	CMP	r5,#1
	JZ	.L58
.L23:
	CMP	r11,#0
	JZ	.L43
	ADD	r8,#1
.L43:
	CMP	r8,#5
	JGT	.L59
	MOV	r0,#67
	LJMP	r9
	JMP	.L54
.L58:
	MOV	r4,#128
	ST.h	[sp],r4
.L27:
	ST.b	[r6],r5
	MOV	r5,#1
	ST.h	[sp+#1],r5
	LD.h	r5,[sp]
	ZXT.h	r5,r5
	LD.h	r4,[sp+#1]
	ZXT.h	r4,r4
	ADD	r5,r5,#4
	CMP	r4,r5
	JLE	.L49
	JMP	.L30
.L60:
	LD.h	r5,[sp+#1]
	ADD	r5,r5,#1
	ZXT.h	r5,r5
	ST.h	[sp+#1],r5
	LD.h	r4,[sp]
	ZXT.h	r4,r4
	LD.h	r5,[sp+#1]
	ZXT.h	r5,r5
	ADD	r4,r4,#4
	CMP	r4,r5
	JLT	.L30
.L49:
	LD.h	r0,[sp+#1]
	ZXT.h	r0,r0
	ADD	r0,r6,r0
	LJMP	r7
	CMP	r0,#0
	JZ	.L60
	JMP	.L23
.L30:
	LD.b	r5,[r6+#2]
	NOT	r5,r5
	LD.b	r4,[r6+#1]
	ZXT.b	r5,r5
	CMP	r4,r5
	JNZ	.L23
	LD.h	r8,[sp]
	ZXT.h	r8,r8
	LD	r0,#1342177344
	MOV	r1,#1
	LSL	r1,#9
	LJMP	r12
	CMP	r8,#0
	JNZ	.L56
.L32:
	MOV	r0,#6
	LJMP	r9
	MOV	r0,#100
.L57:
	ADD	sp,#16
	POP	{r6, r7, r8, r9, r10, r11, r12, pc}
.L56:
	LD.b	r4,[r6+#1]
	ZXT.b	r5,r10
	CMP	r4,r5
	JZ	.L34
	MOV	r0,#21
	LJMP	r9
	MOV	r8,#0
	JMP	.L54
.L26:
	LD	r0,#1342177344
	MOV	r1,#1
	LSL	r1,#9
	LD	r5,#GPIO_Toggle_Output_Data_Config
	LJMP	r5
	JMP	.L32
.L25:
	MOV	r4,#1
	LSL	r4,#10
	ST.h	[sp],r4
	JMP	.L27
.L34:
	CMP	r10,#0
	JNZ	.L36
	LD.b	r4,[r6+#3]
	CMP	r4,#0
	JZ	.L37
	ADD	r3,r6,#4
	MOV	r5,r10
	LD	r2,#file_name
	MOV	r1,#255
	ADD	r1,r1,#1
	JMP	.L39
.L61:
	CMP	r5,r1
	JZ	.L38
.L39:
	ST.b	[r2+r5],r4
	ADD	r5,r5,#1
	LD.b	r4,[r3++]
	CMP	r4,#0
	JNZ	.L61
.L38:
	MOV	r8,#0
	//++++
	PUSH r2
	ADD r2,r5 
	ST.B [r2],r8
	POP r2
	//replace_ST.x [r2+r5],r8
	MOV	r0,#6
	LJMP	r9
	MOV	r0,#67
	LJMP	r9
	MOV	r10,#1
	MOV	r11,r10
	JMP	.L54
.L36:
	MOV	r5,r10
	SUB	r4,r5,#1
	MOV	r5,#7
	ANL	r4,r4,r5
	MOV	r8,r4
	LSL	r0,r4,r5
	LD	r4,#test
	ADD	r0,r4,r0
	LD.w	r1,[sp+#2]
	MOV	r2,#128
	LD	r5,#memcpy
	LJMP	r5
	CMP	r8,#7
	JZ	.L62
	MOV	r0,#6
	LJMP	r9
	ADD	r10,#1
	CMP	r10,#80
	JHI	.L63
.L44:
	MOV	r11,#1
	MOV	r8,#0
	JMP	.L54
.L59:
	MOV	r0,#21
	LJMP	r9
	MOV	r0,#0
	ADD	sp,#16
	POP	{r6, r7, r8, r9, r10, r11, r12, pc}
.L62:
	LD	r4,#FlashDestination
	LD.w	r0,[r4]
	LD	r1,#test
	MOV	r2,#128
	LD	r5,#FLASH_PageWrite_fun
	LJMP	r5
	LD	r5,#FlashDestination
	LD.w	r4,[r5]
	ST.w	[sp+#3],r4
	MOV	r5,#1
	LSL	r5,#10
	ADD	r5,r4,r5
	LD	r4,#FlashDestination
	ST.w	[r4],r5
	MOV	r0,#6
	LJMP	r9
	ADD	r10,#1
	CMP	r10,#80
	JLS	.L44
.L63:
	MOV	r0,#21
	LD	r5,#Send_Byte
	LJMP	r5
	MOV	r0,#100
	ADD	sp,#16
	POP	{r6, r7, r8, r9, r10, r11, r12, pc}
.L37:
	MOV	r0,#6
	LJMP	r9
	MOV	r0,r10
	JMP	.L57
	.size	Ymodem_Receive, .-Ymodem_Receive
	.section .text$UpdateCRC16
	.align	1
	.export	UpdateCRC16
	.type	UpdateCRC16, @function
UpdateCRC16:
	ZXT.b	r1,r1
	ZXT.h	r0,r0
	MOV	r4,#255
	ADD	r4,r4,#1
	ORL	r5,r1,r4
	MOV	r2,#255
	ADD	r2,r2,#1
	MOV	r4,#1
	LSL	r4,#16
	LD	r1,#4129
.L67:
	ADD	r0,r0,r0
	ADD	r5,r5,r5
	ANL	r3,r5,r2
	JZ	.L65
	ADD	r0,r0,#1
.L65:
	ANL	r3,r0,r4
	JZ	.L66
	XRL	r0,r0,r1
.L66:
	ANL	r3,r5,r4
	JZ	.L67
	ZXT.h	r0,r0
	JMP	lr
	.size	UpdateCRC16, .-UpdateCRC16
	.section .text$Cal_CRC16
	.align	1
	.export	Cal_CRC16
	.type	Cal_CRC16, @function
Cal_CRC16:
	PUSH	{r6, r7, r8}
	ADD	r7,r0,r1
	MOV	r5,#0
	CMP	r7,r0
	JLS	.L79
	MOV	r1,#255
	ADD	r1,r1,#1
	MOV	r3,#1
	LSL	r3,#16
	LD	r6,#4129
	LD	r4,#65535
	MOV	r8,r4
.L83:
	LD.b	r4,[r0++]
	SET	r4,#8
.L82:
	ADD	r5,r5,r5
	ADD	r4,r4,r4
	ANL	r2,r4,r1
	JZ	.L80
	ADD	r5,r5,#1
.L80:
	ANL	r2,r5,r3
	JZ	.L81
	XRL	r5,r5,r6
.L81:
	ANL	r2,r4,r3
	JZ	.L82
	ANL	r5,r8
	CMP	r0,r7
	JNZ	.L83
.L79:
	MOV	r4,#8
	MOV	r2,#1
	LSL	r2,#16
	LD	r1,#4129
.L85:
	ADD	r5,r5,r5
	ANL	r3,r5,r2
	JZ	.L84
	XRL	r5,r5,r1
.L84:
	SUB	r4,r4,#1
	JNZ	.L85
	ZXT.h	r0,r5
	MOV	r4,#8
	MOV	r2,#1
	LSL	r2,#16
	LD	r1,#4129
.L87:
	ADD	r0,r0,r0
	ANL	r3,r0,r2
	JZ	.L86
	XRL	r0,r0,r1
.L86:
	SUB	r4,r4,#1
	JNZ	.L87
	ZXT.h	r0,r0
	POP	{r6, r7, r8}
	JMP	lr
	.size	Cal_CRC16, .-Cal_CRC16
	.section .text$CalChecksum
	.align	1
	.export	CalChecksum
	.type	CalChecksum, @function
CalChecksum:
	ADD	r1,r0,r1
	CMP	r1,r0
	JLS	.L111
	MOV	r5,#0
.L110:
	LD.b	r4,[r0++]
	ADD	r5,r5,r4
	CMP	r0,r1
	JNZ	.L110
	ZXT.b	r0,r5
	JMP	lr
.L111:
	MOV	r0,#0
	JMP	lr
	.size	CalChecksum, .-CalChecksum
	.comm	test,1024
	.export	FlashDestination
	.section .data$FlashDestination
	.align	2
	.type	FlashDestination, @object
	.size	FlashDestination, 4
FlashDestination:
	.long	32768
	.comm	file_name,256
