	.file	"startup.c"
	.section .text$startup
	.align	2
	.export	startup
	.type	startup, @function
startup:
	PUSH	lr
	LD	r5,#__data_start__
	LD	r1,#__bss_start__
	CMP	r1,r5
	JLS	.L6
	LD	r4,#__text_end__
	LD	r3,#__data_start__+4
	LD	r2,#__bss_start__+3
	SUB	r2,r2,r3
	LSR	r2,#2
	ADD	r2,r2,#1
	LSL	r2,#2
	ADD	r2,r2,r5
.L5:
	LD.w	r3,[r4++]
	ST.w	[r5++],r3
	CMP	r5,r2
	JNZ	.L5
.L6:
	LD	r5,#__bss_start__
	LD	r4,#__bss_end__
	CMP	r4,r1
	JLS	.L4
	LD	r4,#__bss_start__+4
	LD	r3,#__bss_end__+3
	SUB	r3,r3,r4
	LSR	r3,#2
	ADD	r3,r3,#1
	LSL	r3,#2
	ADD	r3,r3,r5
	MOV	r4,#0
.L7:
	ST.w	[r5++],r4
	CMP	r5,r3
	JNZ	.L7
.L4:
	LD	r5,#main
	LJMP	r5
	POP	lr
	JMP	lr
	.size	startup, .-startup
