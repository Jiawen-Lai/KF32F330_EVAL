	.file	"kf32f_basic_int.c"
	.section .text$INT_Get_Interrupt_Action
	.align	1
	.export	INT_Get_Interrupt_Action
	.type	INT_Get_Interrupt_Action, @function
INT_Get_Interrupt_Action:
	LD	r5,#1075838976
	LD.w	r0,[r5]
	LD	r5,#2130706432
	ANL	r0,r0,r5
	LSR	r0,#24
	JMP	lr
	.size	INT_Get_Interrupt_Action, .-INT_Get_Interrupt_Action
	.section .text$INT_Get_Priority_Pending_Action
	.align	1
	.export	INT_Get_Priority_Pending_Action
	.type	INT_Get_Priority_Pending_Action, @function
INT_Get_Priority_Pending_Action:
	LD	r5,#1075838976
	LD.w	r0,[r5]
	LD	r5,#8323072
	ANL	r0,r0,r5
	LSR	r0,#16
	JMP	lr
	.size	INT_Get_Priority_Pending_Action, .-INT_Get_Priority_Pending_Action
	.section .text$INT_Priority_Base
	.align	1
	.export	INT_Priority_Base
	.type	INT_Priority_Base, @function
INT_Priority_Base:
	ZXT.b	r0,r0
	LD	r5,#1075838976
	LD.w	r2,[r5]
	MOV	r3,#12
	LSL	r4,r0,r3
	LD	r3,#-61441
	ANL	r0,r2,r3
	ORL	r0,r4,r0
	ST.w	[r5],r0
	JMP	lr
	.size	INT_Priority_Base, .-INT_Priority_Base
	.section .text$INT_Get_Priority_Base
	.align	1
	.export	INT_Get_Priority_Base
	.type	INT_Get_Priority_Base, @function
INT_Get_Priority_Base:
	LD	r5,#1075838976
	LD.w	r0,[r5]
	LD	r5,#61440
	ANL	r0,r0,r5
	LSR	r0,#12
	JMP	lr
	.size	INT_Get_Priority_Base, .-INT_Get_Priority_Base
	.section .text$INT_Stack_Align_Config
	.align	1
	.export	INT_Stack_Align_Config
	.type	INT_Stack_Align_Config, @function
INT_Stack_Align_Config:
	LD	r5,#1075838976
	CMP	r0,#0
	JNZ	.L9
// inline asm begin
	// 124 "../src/kf32f_basic_int.c" 1
	CLR [r5], #7
// inline asm end
	JMP	lr
.L9:
// inline asm begin
	// 119 "../src/kf32f_basic_int.c" 1
	SET [r5], #7
// inline asm end
	JMP	lr
	.size	INT_Stack_Align_Config, .-INT_Stack_Align_Config
	.section .text$INT_Fault_Masking_Config
	.align	1
	.export	INT_Fault_Masking_Config
	.type	INT_Fault_Masking_Config, @function
INT_Fault_Masking_Config:
	LD	r5,#1075838976
	CMP	r0,#0
	JNZ	.L13
// inline asm begin
	// 148 "../src/kf32f_basic_int.c" 1
	CLR [r5], #6
// inline asm end
	JMP	lr
.L13:
// inline asm begin
	// 143 "../src/kf32f_basic_int.c" 1
	SET [r5], #6
// inline asm end
	JMP	lr
	.size	INT_Fault_Masking_Config, .-INT_Fault_Masking_Config
	.section .text$INT_Get_Pre_Empty
	.align	1
	.export	INT_Get_Pre_Empty
	.type	INT_Get_Pre_Empty, @function
INT_Get_Pre_Empty:
	LD	r5,#1075838976
	LD.w	r0,[r5]
	LSR	r0,#5
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	INT_Get_Pre_Empty, .-INT_Get_Pre_Empty
	.section .text$INT_Get_Pending_Flag
	.align	1
	.export	INT_Get_Pending_Flag
	.type	INT_Get_Pending_Flag, @function
INT_Get_Pending_Flag:
	LD	r5,#1075838976
	LD.w	r0,[r5]
	LSR	r0,#4
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	INT_Get_Pending_Flag, .-INT_Get_Pending_Flag
	.section .text$INT_Priority_Group_Config
	.align	1
	.export	INT_Priority_Group_Config
	.type	INT_Priority_Group_Config, @function
INT_Priority_Group_Config:
	LD	r5,#1075838976
	LD.w	r4,[r5]
	CLR	r4,#1
	CLR	r4,#2
	ORL	r0,r0,r4
	ST.w	[r5],r0
	JMP	lr
	.size	INT_Priority_Group_Config, .-INT_Priority_Group_Config
	.section .text$INT_Get_Priority_Group
	.align	1
	.export	INT_Get_Priority_Group
	.type	INT_Get_Priority_Group, @function
INT_Get_Priority_Group:
	LD	r5,#1075838976
	LD.w	r0,[r5]
	MOV	r5,#6
	ANL	r0,r0,r5
	JMP	lr
	.size	INT_Get_Priority_Group, .-INT_Get_Priority_Group
	.section .text$INT_All_Enable
	.align	1
	.export	INT_All_Enable
	.type	INT_All_Enable, @function
INT_All_Enable:
	LD	r5,#1075838976
	CMP	r0,#0
	JNZ	.L21
// inline asm begin
	// 260 "../src/kf32f_basic_int.c" 1
	CLR [r5], #0
// inline asm end
	JMP	lr
.L21:
// inline asm begin
	// 255 "../src/kf32f_basic_int.c" 1
	SET [r5], #0
// inline asm end
	JMP	lr
	.size	INT_All_Enable, .-INT_All_Enable
	.section .text$INT_Interrupt_Enable
	.align	1
	.export	INT_Interrupt_Enable
	.type	INT_Interrupt_Enable, @function
INT_Interrupt_Enable:
	CMP	r0,#15
	JLS	.L26
	CMP	r0,#47
	JLS	.L27
	CMP	r0,#79
	JHI	.L22
	SUB	r0,#48
	LD	r5,#1075838976
	LD.w	r3,[r5+#5]
	MOV	r4,#1
	LSL	r4,r4,r0
	NOT	r4,r4
	ANL	r4,r4,r3
	LSL	r0,r1,r0
	ORL	r0,r4,r0
	ST.w	[r5+#5],r0
.L22:
	JMP	lr
.L27:
	SUB	r0,#16
	LD	r5,#1075838976
	LD.w	r3,[r5+#3]
	MOV	r4,#1
	LSL	r4,r4,r0
	NOT	r4,r4
	ANL	r4,r4,r3
	LSL	r0,r1,r0
	ORL	r0,r4,r0
	ST.w	[r5+#3],r0
	JMP	lr
.L26:
	LD	r5,#1075838976
	LD.w	r3,[r5+#1]
	SUB	r4,r0,#5
	MOV	r2,#32
	LSL	r4,r2,r4
	NOT	r4,r4
	ANL	r4,r4,r3
	LSL	r0,r1,r0
	ORL	r1,r4,r0
	ST.w	[r5+#1],r1
	JMP	lr
	.size	INT_Interrupt_Enable, .-INT_Interrupt_Enable
	.section .text$INT_Set_Systick_Flag
	.align	1
	.export	INT_Set_Systick_Flag
	.type	INT_Set_Systick_Flag, @function
INT_Set_Systick_Flag:
	LD	r5,#1075839004
// inline asm begin
	// 325 "../src/kf32f_basic_int.c" 1
	SET [r5], #15
// inline asm end
	JMP	lr
	.size	INT_Set_Systick_Flag, .-INT_Set_Systick_Flag
	.section .text$INT_Set_PendSV_Flag
	.align	1
	.export	INT_Set_PendSV_Flag
	.type	INT_Set_PendSV_Flag, @function
INT_Set_PendSV_Flag:
	LD	r5,#1075839004
// inline asm begin
	// 336 "../src/kf32f_basic_int.c" 1
	SET [r5], #14
// inline asm end
	JMP	lr
	.size	INT_Set_PendSV_Flag, .-INT_Set_PendSV_Flag
	.section .text$INT_Get_Interrupt_Flag
	.align	1
	.export	INT_Get_Interrupt_Flag
	.type	INT_Get_Interrupt_Flag, @function
INT_Get_Interrupt_Flag:
	CMP	r0,#15
	JHI	.L31
	LD	r5,#1075838976
	LD.w	r4,[r5+#7]
	LD.w	r5,[r5+#7]
	SUB	r0,r0,#2
	MOV	r4,#4
.L36:
	LSL	r0,r4,r0
	ANL	r0,r0,r5
	MOV	r5,#0
	SUB	r5,r5,r0
	ORL	r0,r5,r0
	LSR	r0,#31
	JMP	lr
.L31:
	CMP	r0,#47
	JHI	.L33
	LD	r5,#1075838976
	LD.w	r4,[r5+#9]
	LD.w	r5,[r5+#9]
	SUB	r0,#16
	MOV	r4,#1
	JMP	.L36
.L33:
	CMP	r0,#79
	JHI	.L34
	LD	r5,#1075838976
	LD.w	r5,[r5+#11]
	LD.w	r4,[r5]
	SUB	r0,#48
	MOV	r5,#1
	LSL	r5,r5,r0
	ANL	r5,r5,r4
	MOV	r0,#0
	SUB	r0,r0,r5
	ORL	r0,r0,r5
	LSR	r0,#31
	JMP	lr
.L34:
	MOV	r0,#0
	LD.w	r5,[r0]
	JMP	lr
	.size	INT_Get_Interrupt_Flag, .-INT_Get_Interrupt_Flag
	.section .text$INT_Clear_Interrupt_Flag
	.align	1
	.export	INT_Clear_Interrupt_Flag
	.type	INT_Clear_Interrupt_Flag, @function
INT_Clear_Interrupt_Flag:
	CMP	r0,#15
	JLS	.L42
	CMP	r0,#47
	JLS	.L43
	CMP	r0,#79
	JHI	.L41
	LD	r5,#1075838976
	LD.w	r5,[r5+#11]
	SUB	r0,#48
	MOV	r4,#1
	LSL	r0,r4,r0
	NOT	r0,r0
	LD.w	r4,[r5]
	ANL	r0,r4,r0
	ST.w	[r5],r0
	JMP	lr
.L43:
	LD	r5,#1075838976
	LD.w	r5,[r5+#9]
	SUB	r0,#16
	MOV	r4,#1
	LSL	r0,r4,r0
	NOT	r0,r0
	LD.w	r4,[r5]
	ANL	r0,r4,r0
	ST.w	[r5],r0
	JMP	lr
.L42:
	LD	r5,#1075838976
	LD.w	r5,[r5+#7]
	SUB	r0,r0,#2
	MOV	r4,#4
	LSL	r0,r4,r0
	NOT	r0,r0
	LD.w	r4,[r5]
	ANL	r0,r4,r0
	ST.w	[r5],r0
	JMP	lr
.L41:
	MOV	r0,#0
	NOT	r0,r0
	MOV	r5,#0
	LD.w	r4,[r5]
	ANL	r0,r4,r0
	ST.w	[r5],r0
	JMP	lr
	.size	INT_Clear_Interrupt_Flag, .-INT_Clear_Interrupt_Flag
	.section .text$INT_Interrupt_Priority_Config
	.align	1
	.export	INT_Interrupt_Priority_Config
	.type	INT_Interrupt_Priority_Config, @function
INT_Interrupt_Priority_Config:
	LD	r5,#1075838976
	LD.w	r4,[r5]
	MOV	r5,#6
	ANL	r5,r4,r5
	CMP	r5,#2
	JZ	.L47
	CMP	r5,#2
	JLS	.L53
	CMP	r5,#4
	JZ	.L48
	CMP	r5,#6
	JZ	.L49
.L45:
	MOV	r4,#3
	ANL	r4,r0,r4
	LSL	r4,#3
	ADD	r4,r4,#4
	MOV	r3,#0
.L51:
	CMP	r0,#79
	JHI	.L52
	SUB	r5,r0,#4
	LSR	r5,#2
	LSL	r5,#2
	LD	r2,#1075839028
	ADD	r5,r5,r2
.L52:
	LD.w	r2,[r5]
	MOV	r1,#15
	LSL	r4,r1,r4
	NOT	r4,r4
	ANL	r4,r2,r4
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
.L53:
	CMP	r5,#0
	JNZ	.L45
	MOV	r4,#3
	ANL	r4,r0,r4
	LSL	r4,#3
	ADD	r4,r4,#4
	MOV	r3,#1
	ANL	r3,r2,r3
	ADD	r1,r1,r1
	ORL	r3,r3,r1
	LSL	r3,r3,r4
	JMP	.L51
.L49:
	MOV	r4,#3
	ANL	r4,r0,r4
	LSL	r4,#3
	ADD	r4,r4,#4
	MOV	r3,#15
	ANL	r3,r2,r3
	LSL	r3,r3,r4
	JMP	.L51
.L47:
	MOV	r3,#3
	ANL	r4,r0,r3
	LSL	r4,r4,r3
	ADD	r4,r4,#4
	ANL	r3,r2,r3
	LSL	r1,#2
	ORL	r3,r3,r1
	LSL	r3,r3,r4
	JMP	.L51
.L48:
	MOV	r4,#3
	ANL	r4,r0,r4
	LSL	r4,#3
	ADD	r4,r4,#4
	MOV	r3,#7
	ANL	r3,r2,r3
	LSL	r1,#3
	ORL	r3,r3,r1
	LSL	r3,r3,r4
	JMP	.L51
	.size	INT_Interrupt_Priority_Config, .-INT_Interrupt_Priority_Config
	.section .text$INT_Stack_Delay_Enable
	.align	1
	.export	INT_Stack_Delay_Enable
	.type	INT_Stack_Delay_Enable, @function
INT_Stack_Delay_Enable:
	ZXT.b	r0,r0
	LD	r4,#1075838976
	MOV	r5,#156
	LD.w	r2,[r4+r5]
	MOV	r3,#255
	NOT	r3,r3
	ANL	r3,r2,r3
	ORL	r0,r0,r3
	ST.w	[r4+r5],r0
	JMP	lr
	.size	INT_Stack_Delay_Enable, .-INT_Stack_Delay_Enable
	.section .text$INT_External_Configuration
	.align	1
	.export	INT_External_Configuration
	.type	INT_External_Configuration, @function
INT_External_Configuration:
	PUSH	{r6, r7}
	LD.w	r5,[r0]
	LD	r4,#1075838976
	MOV	r2,#132
	LD.w	r1,[r4+r2]
	MOV	r3,#1
	LSL	r3,r3,r5
	NOT	r3,r3
	ANL	r1,r3,r1
	LD.w	r7,[r0+#2]
	LSL	r6,r7,r5
	ORL	r1,r1,r6
	ST.w	[r4+r2],r1
	MOV	r2,#136
	LD.w	r1,[r4+r2]
	ANL	r1,r3,r1
	LD.w	r7,[r0+#3]
	LSL	r6,r7,r5
	ORL	r1,r1,r6
	ST.w	[r4+r2],r1
	CMP	r5,#7
	JLS	.L59
	CMP	r5,#15
	JHI	.L57
	MOV	r2,#152
	LD.w	r7,[r4+r2]
	MOV	r6,#2
	LSL	r1,r5,r6
	SUB	r1,#32
.L58:
	MOV	r6,#7
	LSL	r6,r6,r1
	NOT	r6,r6
	ANL	r6,r6,r7
	LD.w	r7,[r0+#4]
	LSL	r1,r7,r1
	ORL	r1,r6,r1
	ST.w	[r4+r2],r1
.L57:
	LD	r2,#1075838976
	MOV	r4,#128
	LD.w	r1,[r2+r4]
	ANL	r3,r3,r1
	LD.w	r1,[r0+#1]
	LSL	r5,r1,r5
	ORL	r5,r3,r5
	ST.w	[r2+r4],r5
	POP	{r6, r7}
	JMP	lr
.L59:
	MOV	r2,#148
	LD.w	r7,[r4+r2]
	MOV	r6,#2
	LSL	r1,r5,r6
	JMP	.L58
	.size	INT_External_Configuration, .-INT_External_Configuration
	.section .text$INT_External_Struct_Init
	.align	1
	.export	INT_External_Struct_Init
	.type	INT_External_Struct_Init, @function
INT_External_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	JMP	lr
	.size	INT_External_Struct_Init, .-INT_External_Struct_Init
	.section .text$INT_External_Mask_Enable
	.align	1
	.export	INT_External_Mask_Enable
	.type	INT_External_Mask_Enable, @function
INT_External_Mask_Enable:
	LD	r4,#1075838976
	MOV	r5,#128
	LD.w	r3,[r4+r5]
	CMP	r1,#0
	JNZ	.L64
	NOT	r0,r0
	ANL	r0,r0,r3
	ST.w	[r4+r5],r0
	JMP	lr
.L64:
	ORL	r0,r0,r3
	ST.w	[r4+r5],r0
	JMP	lr
	.size	INT_External_Mask_Enable, .-INT_External_Mask_Enable
	.section .text$INT_External_Rise_Enable
	.align	1
	.export	INT_External_Rise_Enable
	.type	INT_External_Rise_Enable, @function
INT_External_Rise_Enable:
	LD	r4,#1075838976
	MOV	r5,#132
	LD.w	r3,[r4+r5]
	CMP	r1,#0
	JNZ	.L68
	NOT	r0,r0
	ANL	r0,r0,r3
	ST.w	[r4+r5],r0
	JMP	lr
.L68:
	ORL	r0,r0,r3
	ST.w	[r4+r5],r0
	JMP	lr
	.size	INT_External_Rise_Enable, .-INT_External_Rise_Enable
	.section .text$INT_External_Fall_Enable
	.align	1
	.export	INT_External_Fall_Enable
	.type	INT_External_Fall_Enable, @function
INT_External_Fall_Enable:
	LD	r4,#1075838976
	MOV	r5,#136
	LD.w	r3,[r4+r5]
	CMP	r1,#0
	JNZ	.L72
	NOT	r0,r0
	ANL	r0,r0,r3
	ST.w	[r4+r5],r0
	JMP	lr
.L72:
	ORL	r0,r0,r3
	ST.w	[r4+r5],r0
	JMP	lr
	.size	INT_External_Fall_Enable, .-INT_External_Fall_Enable
	.section .text$INT_Get_External_Flag
	.align	1
	.export	INT_Get_External_Flag
	.type	INT_Get_External_Flag, @function
INT_Get_External_Flag:
	MOV	r5,#140
	LD	r4,#1075838976
	LD.w	r5,[r4+r5]
	MOV	r4,#1
	LSL	r0,r4,r0
	ANL	r0,r0,r5
	MOV	r5,#0
	SUB	r5,r5,r0
	ORL	r0,r5,r0
	LSR	r0,#31
	JMP	lr
	.size	INT_Get_External_Flag, .-INT_Get_External_Flag
	.section .text$INT_External_Clear_Flag
	.align	1
	.export	INT_External_Clear_Flag
	.type	INT_External_Clear_Flag, @function
INT_External_Clear_Flag:
	MOV	r3,#1
	LSL	r3,r3,r0
	LD	r4,#1075838976
	MOV	r5,#140
	LD.w	r1,[r4+r5]
	ANL	r1,r3,r1
	LSR	r1,r1,r0
	NOT	r2,r3
	ADD	r5,r4,r5
	CMP	r1,#0
	JZ	.L74
.L78:
	LD.w	r4,[r5]
	ANL	r4,r2,r4
	ST.w	[r5],r4
	LD.w	r4,[r5]
	ANL	r4,r3,r4
	LSR	r4,r4,r0
	CMP	r4,#0
	JNZ	.L78
.L74:
	JMP	lr
	.size	INT_External_Clear_Flag, .-INT_External_Clear_Flag
	.section .text$INT_External_Source_Enable
	.align	1
	.export	INT_External_Source_Enable
	.type	INT_External_Source_Enable, @function
INT_External_Source_Enable:
	MOV	r5,#7
	ANL	r4,r0,r5
	LSL	r4,#2
	CMP	r0,r5
	JLS	.L84
	CMP	r0,#15
	JHI	.L80
	LD	r2,#1075838976
	MOV	r3,#152
.L83:
	LD.w	r0,[r2+r3]
	LSL	r5,r5,r4
	NOT	r5,r5
	ANL	r5,r5,r0
	LSL	r1,r1,r4
	ORL	r4,r5,r1
	ST.w	[r2+r3],r4
.L80:
	JMP	lr
.L84:
	LD	r2,#1075838976
	MOV	r3,#148
	JMP	.L83
	.size	INT_External_Source_Enable, .-INT_External_Source_Enable
