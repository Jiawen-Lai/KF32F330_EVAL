	.file	"kf32f_basic_cfgl.c"
	.section .text$CFGL_Reset
	.align	1
	.export	CFGL_Reset
	.type	CFGL_Reset, @function
CFGL_Reset:
	PUSH	{r6, r7, lr}
	MOV	r6,#1
	LSL	r6,#19
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
	.size	CFGL_Reset, .-CFGL_Reset
	.section .text$CFGL_Configuration
	.align	1
	.export	CFGL_Configuration
	.type	CFGL_Configuration, @function
CFGL_Configuration:
	LD.w	r3,[r0]
	LD.w	r2,[r1+#1]
	LD.w	r5,[r1]
	ORL	r4,r2,r5
	LD.w	r2,[r1+#2]
	ORL	r4,r4,r2
	LD.w	r5,[r1+#3]
	ORL	r4,r4,r5
	LD.w	r2,[r1+#4]
	ORL	r4,r4,r2
	LD.w	r5,[r1+#5]
	ORL	r4,r4,r5
	LD.w	r2,[r1+#6]
	ORL	r4,r4,r2
	LD.w	r5,[r1+#7]
	ORL	r4,r4,r5
	LD.w	r2,[r1+#8]
	ORL	r4,r4,r2
	LD.w	r5,[r1+#9]
	ORL	r4,r4,r5
	LD.w	r2,[r1+#10]
	ORL	r4,r4,r2
	LD.w	r5,[r1+#11]
	ORL	r4,r4,r5
	LD.w	r2,[r1+#12]
	ORL	r4,r4,r2
	LD.w	r5,[r1+#13]
	ORL	r4,r4,r5
	LD.w	r2,[r1+#14]
	ORL	r4,r4,r2
	LD.w	r5,[r1+#15]
	ORL	r4,r4,r5
	LD	r5,#559232
	ANL	r5,r3,r5
	ORL	r5,r4,r5
	ST.w	[r0],r5
	LD.w	r4,[r1+#16]
	LSL	r4,#31
	LD.w	r5,[r1+#17]
	LSL	r5,#30
	ORL	r4,r4,r5
	MOV	r5,#188
	LD.w	r5,[r1+r5]
	ORL	r4,r4,r5
	LD.w	r5,[r1+#18]
	LSL	r5,#29
	ORL	r4,r4,r5
	LD.w	r5,[r1+#19]
	LSL	r5,#28
	ORL	r4,r4,r5
	LD.w	r5,[r1+#20]
	LSL	r5,#27
	ORL	r4,r4,r5
	LD.w	r5,[r1+#21]
	LSL	r5,#26
	ORL	r4,r4,r5
	LD.w	r5,[r1+#22]
	LSL	r5,#25
	ORL	r4,r4,r5
	LD.w	r5,[r1+#23]
	LSL	r5,#24
	ORL	r4,r4,r5
	LD.w	r5,[r1+#24]
	LSL	r5,#23
	ORL	r4,r4,r5
	LD.w	r5,[r1+#25]
	LSL	r5,#22
	ORL	r4,r4,r5
	LD.w	r5,[r1+#26]
	LSL	r5,#21
	ORL	r4,r4,r5
	LD.w	r5,[r1+#27]
	LSL	r5,#20
	ORL	r4,r4,r5
	LD.w	r5,[r1+#28]
	LSL	r5,#19
	ORL	r4,r4,r5
	LD.w	r5,[r1+#29]
	LSL	r5,#18
	ORL	r4,r4,r5
	LD.w	r5,[r1+#30]
	LSL	r5,#17
	ORL	r4,r4,r5
	LD.w	r5,[r1+#31]
	LSL	r5,#16
	ORL	r4,r4,r5
	MOV	r5,#128
	LD.w	r5,[r1+r5]
	LSL	r5,#15
	ORL	r4,r4,r5
	MOV	r5,#132
	LD.w	r5,[r1+r5]
	LSL	r5,#14
	ORL	r4,r4,r5
	MOV	r5,#136
	LD.w	r5,[r1+r5]
	LSL	r5,#13
	ORL	r4,r4,r5
	MOV	r5,#140
	LD.w	r5,[r1+r5]
	LSL	r5,#12
	ORL	r4,r4,r5
	MOV	r5,#144
	LD.w	r5,[r1+r5]
	LSL	r5,#11
	ORL	r4,r4,r5
	MOV	r5,#148
	LD.w	r5,[r1+r5]
	LSL	r5,#10
	ORL	r4,r4,r5
	MOV	r5,#152
	LD.w	r5,[r1+r5]
	LSL	r5,#9
	ORL	r4,r4,r5
	MOV	r5,#156
	LD.w	r5,[r1+r5]
	LSL	r5,#8
	ORL	r4,r4,r5
	MOV	r5,#160
	LD.w	r5,[r1+r5]
	LSL	r5,#7
	ORL	r4,r4,r5
	MOV	r5,#164
	LD.w	r5,[r1+r5]
	LSL	r5,#6
	ORL	r4,r4,r5
	MOV	r5,#168
	LD.w	r5,[r1+r5]
	LSL	r5,#5
	ORL	r4,r4,r5
	MOV	r5,#172
	LD.w	r5,[r1+r5]
	LSL	r5,#4
	ORL	r4,r4,r5
	MOV	r5,#176
	LD.w	r3,[r1+r5]
	LSL	r3,#3
	ORL	r4,r4,r3
	MOV	r5,#180
	LD.w	r3,[r1+r5]
	LSL	r3,#2
	ORL	r4,r4,r3
	MOV	r5,#184
	LD.w	r5,[r1+r5]
	ADD	r5,r5,r5
	ORL	r5,r4,r5
	LD.w	r4,[r0+#1]
	ST.w	[r0+#1],r5
	JMP	lr
	.size	CFGL_Configuration, .-CFGL_Configuration
	.section .text$CFGL_Struct_Init
	.align	1
	.export	CFGL_Struct_Init
	.type	CFGL_Struct_Init, @function
CFGL_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	ST.w	[r0+#6],r5
	ST.w	[r0+#7],r5
	ST.w	[r0+#8],r5
	ST.w	[r0+#9],r5
	LD	r4,#458752
	ST.w	[r0+#10],r4
	LD	r4,#28672
	ST.w	[r0+#11],r4
	LD	r4,#1792
	ST.w	[r0+#12],r4
	MOV	r4,#112
	ST.w	[r0+#13],r4
	ST.w	[r0+#14],r5
	MOV	r4,#7
	ST.w	[r0+#15],r4
	ST.w	[r0+#16],r5
	ST.w	[r0+#17],r5
	ST.w	[r0+#18],r5
	ST.w	[r0+#19],r5
	ST.w	[r0+#20],r5
	ST.w	[r0+#21],r5
	ST.w	[r0+#22],r5
	ST.w	[r0+#23],r5
	ST.w	[r0+#24],r5
	ST.w	[r0+#25],r5
	ST.w	[r0+#26],r5
	ST.w	[r0+#27],r5
	ST.w	[r0+#28],r5
	ST.w	[r0+#29],r5
	ST.w	[r0+#30],r5
	ST.w	[r0+#31],r5
	MOV	r4,#128
	ST.w	[r0+r4],r5
	MOV	r4,#132
	ST.w	[r0+r4],r5
	MOV	r4,#136
	ST.w	[r0+r4],r5
	MOV	r4,#140
	ST.w	[r0+r4],r5
	MOV	r4,#144
	ST.w	[r0+r4],r5
	MOV	r4,#148
	ST.w	[r0+r4],r5
	MOV	r4,#152
	ST.w	[r0+r4],r5
	MOV	r4,#156
	ST.w	[r0+r4],r5
	MOV	r4,#160
	ST.w	[r0+r4],r5
	MOV	r4,#164
	ST.w	[r0+r4],r5
	MOV	r4,#168
	ST.w	[r0+r4],r5
	MOV	r4,#172
	ST.w	[r0+r4],r5
	MOV	r4,#176
	ST.w	[r0+r4],r5
	MOV	r4,#180
	ST.w	[r0+r4],r5
	MOV	r4,#184
	ST.w	[r0+r4],r5
	MOV	r4,#188
	ST.w	[r0+r4],r5
	JMP	lr
	.size	CFGL_Struct_Init, .-CFGL_Struct_Init
	.section .text$CFGL2_OUT_SYNCHRO_Enable
	.align	1
	.export	CFGL2_OUT_SYNCHRO_Enable
	.type	CFGL2_OUT_SYNCHRO_Enable, @function
CFGL2_OUT_SYNCHRO_Enable:
	LD	r5,#1073752464
	CMP	r0,#0
	JNZ	.L8
// inline asm begin
	// 322 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #31
// inline asm end
	JMP	lr
.L8:
// inline asm begin
	// 316 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #31
// inline asm end
	JMP	lr
	.size	CFGL2_OUT_SYNCHRO_Enable, .-CFGL2_OUT_SYNCHRO_Enable
	.section .text$CFGL1_OUT_SYNCHRO_Enable
	.align	1
	.export	CFGL1_OUT_SYNCHRO_Enable
	.type	CFGL1_OUT_SYNCHRO_Enable, @function
CFGL1_OUT_SYNCHRO_Enable:
	LD	r5,#1073752464
	CMP	r0,#0
	JNZ	.L12
// inline asm begin
	// 346 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #30
// inline asm end
	JMP	lr
.L12:
// inline asm begin
	// 340 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #30
// inline asm end
	JMP	lr
	.size	CFGL1_OUT_SYNCHRO_Enable, .-CFGL1_OUT_SYNCHRO_Enable
	.section .text$CFGL2_FALLINT_Enable
	.align	1
	.export	CFGL2_FALLINT_Enable
	.type	CFGL2_FALLINT_Enable, @function
CFGL2_FALLINT_Enable:
	LD	r5,#1073752456
	CMP	r0,#0
	JNZ	.L16
// inline asm begin
	// 372 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #28
// inline asm end
	LD	r5,#1073752464
// inline asm begin
	// 373 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #29
// inline asm end
	JMP	lr
.L16:
// inline asm begin
	// 365 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #28
// inline asm end
	LD	r5,#1073752464
// inline asm begin
	// 366 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #29
// inline asm end
	JMP	lr
	.size	CFGL2_FALLINT_Enable, .-CFGL2_FALLINT_Enable
	.section .text$CFGL2_RISEINT_Enable
	.align	1
	.export	CFGL2_RISEINT_Enable
	.type	CFGL2_RISEINT_Enable, @function
CFGL2_RISEINT_Enable:
	LD	r5,#1073752456
	CMP	r0,#0
	JNZ	.L20
// inline asm begin
	// 399 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #29
// inline asm end
	LD	r5,#1073752464
// inline asm begin
	// 400 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #29
// inline asm end
	JMP	lr
.L20:
// inline asm begin
	// 392 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #29
// inline asm end
	LD	r5,#1073752464
// inline asm begin
	// 393 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #29
// inline asm end
	JMP	lr
	.size	CFGL2_RISEINT_Enable, .-CFGL2_RISEINT_Enable
	.section .text$CFGL1_FALLINT_Enable
	.align	1
	.export	CFGL1_FALLINT_Enable
	.type	CFGL1_FALLINT_Enable, @function
CFGL1_FALLINT_Enable:
	LD	r5,#1073752448
	CMP	r0,#0
	JNZ	.L24
// inline asm begin
	// 426 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #28
// inline asm end
	LD	r5,#1073752464
// inline asm begin
	// 427 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #28
// inline asm end
	JMP	lr
.L24:
// inline asm begin
	// 419 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #28
// inline asm end
	LD	r5,#1073752464
// inline asm begin
	// 420 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #28
// inline asm end
	JMP	lr
	.size	CFGL1_FALLINT_Enable, .-CFGL1_FALLINT_Enable
	.section .text$CFGL1_RISEINT_Enable
	.align	1
	.export	CFGL1_RISEINT_Enable
	.type	CFGL1_RISEINT_Enable, @function
CFGL1_RISEINT_Enable:
	LD	r5,#1073752448
	CMP	r0,#0
	JNZ	.L28
// inline asm begin
	// 453 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #29
// inline asm end
	LD	r5,#1073752464
// inline asm begin
	// 454 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #28
// inline asm end
	JMP	lr
.L28:
// inline asm begin
	// 446 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #29
// inline asm end
	LD	r5,#1073752464
// inline asm begin
	// 447 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #28
// inline asm end
	JMP	lr
	.size	CFGL1_RISEINT_Enable, .-CFGL1_RISEINT_Enable
	.section .text$CFGL1_Get_INT_Flag
	.align	1
	.export	CFGL1_Get_INT_Flag
	.type	CFGL1_Get_INT_Flag, @function
CFGL1_Get_INT_Flag:
	LD	r5,#1073752456
	LD.w	r0,[r5+#2]
	LSR	r0,#8
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	CFGL1_Get_INT_Flag, .-CFGL1_Get_INT_Flag
	.section .text$CFGL2_Get_INT_Flag
	.align	1
	.export	CFGL2_Get_INT_Flag
	.type	CFGL2_Get_INT_Flag, @function
CFGL2_Get_INT_Flag:
	LD	r5,#1073752456
	LD.w	r0,[r5+#2]
	LSR	r0,#9
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	CFGL2_Get_INT_Flag, .-CFGL2_Get_INT_Flag
	.section .text$CFGL1_Clear_RISEINT_Flag
	.align	1
	.export	CFGL1_Clear_RISEINT_Flag
	.type	CFGL1_Clear_RISEINT_Flag, @function
CFGL1_Clear_RISEINT_Flag:
	LD	r5,#1073752448
// inline asm begin
	// 506 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #29
// inline asm end
	LD	r3,#1073752456
	MOV	r4,#255
	ADD	r4,r4,#1
.L32:
	LD.w	r5,[r3+#2]
	ANL	r5,r5,r4
	JNZ	.L32
	LD	r5,#1073752448
// inline asm begin
	// 508 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #29
// inline asm end
	JMP	lr
	.size	CFGL1_Clear_RISEINT_Flag, .-CFGL1_Clear_RISEINT_Flag
	.section .text$CFGL1_Clear_FALLINT_Flag
	.align	1
	.export	CFGL1_Clear_FALLINT_Flag
	.type	CFGL1_Clear_FALLINT_Flag, @function
CFGL1_Clear_FALLINT_Flag:
	LD	r5,#1073752448
// inline asm begin
	// 519 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #28
// inline asm end
	LD	r3,#1073752456
	MOV	r4,#255
	ADD	r4,r4,#1
.L35:
	LD.w	r5,[r3+#2]
	ANL	r5,r5,r4
	JNZ	.L35
	LD	r5,#1073752448
// inline asm begin
	// 521 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #28
// inline asm end
	JMP	lr
	.size	CFGL1_Clear_FALLINT_Flag, .-CFGL1_Clear_FALLINT_Flag
	.section .text$CFGL1_Clear_RISEFALLINT_Flag
	.align	1
	.export	CFGL1_Clear_RISEFALLINT_Flag
	.type	CFGL1_Clear_RISEFALLINT_Flag, @function
CFGL1_Clear_RISEFALLINT_Flag:
	LD	r5,#1073752448
// inline asm begin
	// 532 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #28
	// 533 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #29
// inline asm end
	LD	r3,#1073752456
	MOV	r4,#255
	ADD	r4,r4,#1
.L38:
	LD.w	r5,[r3+#2]
	ANL	r5,r5,r4
	JNZ	.L38
	LD	r5,#1073752448
// inline asm begin
	// 535 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #28
	// 536 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #29
// inline asm end
	JMP	lr
	.size	CFGL1_Clear_RISEFALLINT_Flag, .-CFGL1_Clear_RISEFALLINT_Flag
	.section .text$CFGL2_Clear_RISEINT_Flag
	.align	1
	.export	CFGL2_Clear_RISEINT_Flag
	.type	CFGL2_Clear_RISEINT_Flag, @function
CFGL2_Clear_RISEINT_Flag:
	LD	r5,#1073752456
// inline asm begin
	// 547 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #29
// inline asm end
	LD	r3,#1073752456
	MOV	r4,#1
	LSL	r4,#9
.L41:
	LD.w	r5,[r3+#2]
	ANL	r5,r5,r4
	JNZ	.L41
	LD	r5,#1073752456
// inline asm begin
	// 549 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #29
// inline asm end
	JMP	lr
	.size	CFGL2_Clear_RISEINT_Flag, .-CFGL2_Clear_RISEINT_Flag
	.section .text$CFGL2_Clear_FALLINT_Flag
	.align	1
	.export	CFGL2_Clear_FALLINT_Flag
	.type	CFGL2_Clear_FALLINT_Flag, @function
CFGL2_Clear_FALLINT_Flag:
	LD	r5,#1073752456
// inline asm begin
	// 560 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #28
// inline asm end
	LD	r3,#1073752456
	MOV	r4,#1
	LSL	r4,#9
.L44:
	LD.w	r5,[r3+#2]
	ANL	r5,r5,r4
	JNZ	.L44
	LD	r5,#1073752456
// inline asm begin
	// 562 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #28
// inline asm end
	JMP	lr
	.size	CFGL2_Clear_FALLINT_Flag, .-CFGL2_Clear_FALLINT_Flag
	.section .text$CFGL2_Clear_RISEFALLINT_Flag
	.align	1
	.export	CFGL2_Clear_RISEFALLINT_Flag
	.type	CFGL2_Clear_RISEFALLINT_Flag, @function
CFGL2_Clear_RISEFALLINT_Flag:
	LD	r5,#1073752456
// inline asm begin
	// 573 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #28
	// 574 "../src/kf32f_basic_cfgl.c" 1
	CLR [r5], #29
// inline asm end
	LD	r3,#1073752456
	MOV	r4,#1
	LSL	r4,#9
.L47:
	LD.w	r5,[r3+#2]
	ANL	r5,r5,r4
	JNZ	.L47
	LD	r5,#1073752456
// inline asm begin
	// 576 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #28
	// 577 "../src/kf32f_basic_cfgl.c" 1
	SET [r5], #29
// inline asm end
	JMP	lr
	.size	CFGL2_Clear_RISEFALLINT_Flag, .-CFGL2_Clear_RISEFALLINT_Flag
	.section .text$CFGL2_OUT_STATE
	.align	1
	.export	CFGL2_OUT_STATE
	.type	CFGL2_OUT_STATE, @function
CFGL2_OUT_STATE:
	LD	r5,#1073752456
	LD.w	r0,[r5+#2]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	CFGL2_OUT_STATE, .-CFGL2_OUT_STATE
	.section .text$CFGL1_OUT_STATE
	.align	1
	.export	CFGL1_OUT_STATE
	.type	CFGL1_OUT_STATE, @function
CFGL1_OUT_STATE:
	LD	r5,#1073752456
	LD.w	r0,[r5+#2]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	CFGL1_OUT_STATE, .-CFGL1_OUT_STATE
