	.file	"kf32f_basic_gpio.c"
	.section .text$GPIO_Reset
	.align	1
	.export	GPIO_Reset
	.type	GPIO_Reset, @function
GPIO_Reset:
	PUSH	{r6, lr}
	LD	r5,#1342177280
	CMP	r0,r5
	JZ	.L11
	LD	r5,#1342177344
	CMP	r0,r5
	JZ	.L12
	LD	r5,#1342177408
	CMP	r0,r5
	JZ	.L13
	LD	r5,#1342177472
	CMP	r0,r5
	JZ	.L14
	LD	r5,#1342177536
	CMP	r0,r5
	JZ	.L15
	LD	r5,#1342177600
	CMP	r0,r5
	JZ	.L16
	LD	r5,#1342177664
	CMP	r0,r5
	JZ	.L17
	LD	r5,#1342177728
	CMP	r0,r5
	JZ	.L18
.L1:
	POP	{r6, pc}
.L18:
	MOV	r0,#128
	MOV	r1,#1
	LD	r6,#RST_CTL0_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#128
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#128
	MOV	r1,#1
	LD	r5,#PCLK_CTL0_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L11:
	MOV	r0,#1
	MOV	r1,r0
	LD	r6,#RST_CTL0_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	MOV	r1,r0
	LD	r5,#PCLK_CTL0_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L12:
	MOV	r0,#2
	MOV	r1,#1
	LD	r6,#RST_CTL0_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#2
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#2
	MOV	r1,#1
	LD	r5,#PCLK_CTL0_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L13:
	MOV	r0,#4
	MOV	r1,#1
	LD	r6,#RST_CTL0_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#4
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#4
	MOV	r1,#1
	LD	r5,#PCLK_CTL0_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L14:
	MOV	r0,#8
	MOV	r1,#1
	LD	r6,#RST_CTL0_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#8
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#8
	MOV	r1,#1
	LD	r5,#PCLK_CTL0_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L15:
	MOV	r0,#16
	MOV	r1,#1
	LD	r6,#RST_CTL0_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#16
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#16
	MOV	r1,#1
	LD	r5,#PCLK_CTL0_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L16:
	MOV	r0,#32
	MOV	r1,#1
	LD	r6,#RST_CTL0_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#32
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#32
	MOV	r1,#1
	LD	r5,#PCLK_CTL0_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L17:
	MOV	r0,#64
	MOV	r1,#1
	LD	r6,#RST_CTL0_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#64
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#64
	MOV	r1,#1
	LD	r5,#PCLK_CTL0_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
	.size	GPIO_Reset, .-GPIO_Reset
	.section .text$GPIO_Configuration
	.align	1
	.export	GPIO_Configuration
	.type	GPIO_Configuration, @function
GPIO_Configuration:
	PUSH	{r6, r7, r8, r9, r10}
	LD.w	r6,[r1]
	MOV	r5,#0
	MOV	r2,#1
	MOV	r10,#3
	JMP	.L23
.L20:
	ADD	r5,r5,#1
	CMP	r5,#16
	JZ	.L25
.L23:
	LSL	r4,r2,r5
	ANL	r3,r4,r6
	CMP	r3,r4
	JNZ	.L20
	ADD	r4,r5,r5
	LD.w	r7,[r0+#5]
	MOV	r9,r7
	MOV	r7,r10
	LSL	r7,r7,r4
	NOT	r8,r7
	ANL	r8,r9
	LD.w	r7,[r1+#1]
	LSL	r7,r7,r4
	ORL	r8,r7
	MOV	r7,r8
	ST.w	[r0+#5],r7
	LD.w	r7,[r1+#1]
	SUB	r7,r7,#1
	CMP	r7,#1
	JLS	.L21
	NOT	r3,r3
.L22:
	LD.w	r7,[r0+#6]
	MOV	r9,r7
	LSL	r7,r2,r4
	NOT	r8,r7
	ANL	r8,r9
	LD.w	r7,[r1+#2]
	LSL	r4,r7,r4
	MOV	r7,r8
	ORL	r4,r7,r4
	ST.w	[r0+#6],r4
	LD.w	r4,[r0+#2]
	ANL	r4,r3,r4
	MOV	r8,r4
	LD.w	r7,[r1+#4]
	LSL	r4,r7,r5
	MOV	r7,r8
	ORL	r4,r7,r4
	ST.w	[r0+#2],r4
	LD.w	r4,[r0+#3]
	ANL	r3,r3,r4
	LD.w	r7,[r1+#5]
	LSL	r4,r7,r5
	ORL	r3,r3,r4
	ST.w	[r0+#3],r3
	ADD	r5,r5,#1
	CMP	r5,#16
	JNZ	.L23
.L25:
	POP	{r6, r7, r8, r9, r10}
	JMP	lr
.L21:
	LD.w	r7,[r0+#4]
	MOV	r8,r7
	NOT	r3,r3
	MOV	r7,r3
	ANL	r7,r8
	MOV	r8,r7
	LD.w	r7,[r1+#3]
	LSL	r7,r7,r5
	ORL	r8,r7
	MOV	r7,r8
	ST.w	[r0+#4],r7
	JMP	.L22
	.size	GPIO_Configuration, .-GPIO_Configuration
	.section .text$GPIO_Struct_Init
	.align	1
	.export	GPIO_Struct_Init
	.type	GPIO_Struct_Init, @function
GPIO_Struct_Init:
	LD	r5,#65535
	ST.w	[r0],r5
	MOV	r5,#3
	ST.w	[r0+#1],r5
	MOV	r5,#0
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	JMP	lr
	.size	GPIO_Struct_Init, .-GPIO_Struct_Init
	.section .text$GPIO_Pin_Lock_Config
	.align	1
	.export	GPIO_Pin_Lock_Config
	.type	GPIO_Pin_Lock_Config, @function
GPIO_Pin_Lock_Config:
	ZXT.h	r1,r1
	LD.w	r4,[r0+#7]
	LD	r5,#1549402112
	ORL	r5,r4,r5
	CMP	r2,#0
	JNZ	.L30
	NOT	r1,r1
	ANL	r5,r1,r5
	ST.w	[r0+#7],r5
	JMP	lr
.L30:
	ORL	r5,r1,r5
	ST.w	[r0+#7],r5
	JMP	lr
	.size	GPIO_Pin_Lock_Config, .-GPIO_Pin_Lock_Config
	.section .text$GPIO_Pull_Up_Enable
	.align	1
	.export	GPIO_Pull_Up_Enable
	.type	GPIO_Pull_Up_Enable, @function
GPIO_Pull_Up_Enable:
	ZXT.h	r1,r1
	LD.w	r5,[r0+#2]
	CMP	r2,#0
	JNZ	.L34
	NOT	r1,r1
	ANL	r1,r1,r5
	ST.w	[r0+#2],r1
	JMP	lr
.L34:
	ORL	r1,r1,r5
	ST.w	[r0+#2],r1
	JMP	lr
	.size	GPIO_Pull_Up_Enable, .-GPIO_Pull_Up_Enable
	.section .text$GPIO_Toggle_Pull_Up_Config
	.align	1
	.export	GPIO_Toggle_Pull_Up_Config
	.type	GPIO_Toggle_Pull_Up_Config, @function
GPIO_Toggle_Pull_Up_Config:
	ZXT.h	r1,r1
	LD.w	r5,[r0+#2]
	XRL	r1,r1,r5
	ST.w	[r0+#2],r1
	JMP	lr
	.size	GPIO_Toggle_Pull_Up_Config, .-GPIO_Toggle_Pull_Up_Config
	.section .text$GPIO_Pull_Down_Enable
	.align	1
	.export	GPIO_Pull_Down_Enable
	.type	GPIO_Pull_Down_Enable, @function
GPIO_Pull_Down_Enable:
	ZXT.h	r1,r1
	LD.w	r5,[r0+#3]
	CMP	r2,#0
	JNZ	.L39
	NOT	r1,r1
	ANL	r1,r1,r5
	ST.w	[r0+#3],r1
	JMP	lr
.L39:
	ORL	r1,r1,r5
	ST.w	[r0+#3],r1
	JMP	lr
	.size	GPIO_Pull_Down_Enable, .-GPIO_Pull_Down_Enable
	.section .text$GPIO_Toggle_Pull_Down_Config
	.align	1
	.export	GPIO_Toggle_Pull_Down_Config
	.type	GPIO_Toggle_Pull_Down_Config, @function
GPIO_Toggle_Pull_Down_Config:
	ZXT.h	r1,r1
	LD.w	r5,[r0+#3]
	XRL	r1,r1,r5
	ST.w	[r0+#3],r1
	JMP	lr
	.size	GPIO_Toggle_Pull_Down_Config, .-GPIO_Toggle_Pull_Down_Config
	.section .text$GPIO_Open_Drain_Enable
	.align	1
	.export	GPIO_Open_Drain_Enable
	.type	GPIO_Open_Drain_Enable, @function
GPIO_Open_Drain_Enable:
	ZXT.h	r1,r1
	LD.w	r5,[r0+#4]
	CMP	r2,#0
	JNZ	.L44
	NOT	r1,r1
	ANL	r1,r1,r5
	ST.w	[r0+#4],r1
	JMP	lr
.L44:
	ORL	r1,r1,r5
	ST.w	[r0+#4],r1
	JMP	lr
	.size	GPIO_Open_Drain_Enable, .-GPIO_Open_Drain_Enable
	.section .text$GPIO_Toggle_Open_Drain_Config
	.align	1
	.export	GPIO_Toggle_Open_Drain_Config
	.type	GPIO_Toggle_Open_Drain_Config, @function
GPIO_Toggle_Open_Drain_Config:
	ZXT.h	r1,r1
	LD.w	r5,[r0+#4]
	XRL	r1,r1,r5
	ST.w	[r0+#4],r1
	JMP	lr
	.size	GPIO_Toggle_Open_Drain_Config, .-GPIO_Toggle_Open_Drain_Config
	.section .text$GPIO_Write_Mode_Bits
	.align	1
	.export	GPIO_Write_Mode_Bits
	.type	GPIO_Write_Mode_Bits, @function
GPIO_Write_Mode_Bits:
	PUSH	{r6, r7}
	ZXT.h	r1,r1
	LD.w	r3,[r0+#5]
	CMP	r1,#0
	JZ	.L47
	MOV	r5,#0
	MOV	r6,#1
	MOV	r7,#3
.L49:
	ANL	r4,r1,r6
	JZ	.L48
	LSL	r4,r7,r5
	NOT	r4,r4
	ANL	r3,r4,r3
	LSL	r4,r2,r5
	ORL	r3,r3,r4
.L48:
	LSR	r1,#1
	ADD	r5,r5,#2
	CMP	r1,#0
	JNZ	.L49
.L47:
	ST.w	[r0+#5],r3
	POP	{r6, r7}
	JMP	lr
	.size	GPIO_Write_Mode_Bits, .-GPIO_Write_Mode_Bits
	.section .text$GPIO_Speed_Config
	.align	1
	.export	GPIO_Speed_Config
	.type	GPIO_Speed_Config, @function
GPIO_Speed_Config:
	PUSH	r6
	ZXT.h	r1,r1
	LD.w	r6,[r0+#6]
	CMP	r1,#0
	JZ	.L58
	MOV	r5,#0
	MOV	r3,#1
.L60:
	ANL	r4,r1,r3
	JZ	.L59
	LSL	r4,r3,r5
	NOT	r4,r4
	ANL	r6,r4,r6
	LSL	r4,r2,r5
	ORL	r6,r6,r4
.L59:
	LSR	r1,#1
	ADD	r5,r5,#2
	CMP	r1,#0
	JNZ	.L60
.L58:
	ST.w	[r0+#6],r6
	POP	r6
	JMP	lr
	.size	GPIO_Speed_Config, .-GPIO_Speed_Config
	.section .text$GPIO_Toggle_Speed_Config
	.align	1
	.export	GPIO_Toggle_Speed_Config
	.type	GPIO_Toggle_Speed_Config, @function
GPIO_Toggle_Speed_Config:
	ZXT.h	r1,r1
	LD.w	r2,[r0+#6]
	CMP	r1,#0
	JZ	.L69
	MOV	r5,#0
	MOV	r3,#1
.L71:
	ANL	r4,r1,r3
	JZ	.L70
	LSL	r4,r3,r5
	XRL	r2,r2,r4
.L70:
	LSR	r1,#1
	ADD	r5,r5,#2
	CMP	r1,#0
	JNZ	.L71
.L69:
	ST.w	[r0+#6],r2
	JMP	lr
	.size	GPIO_Toggle_Speed_Config, .-GPIO_Toggle_Speed_Config
	.section .text$GPIO_Read_Input_Data_Bit
	.align	1
	.export	GPIO_Read_Input_Data_Bit
	.type	GPIO_Read_Input_Data_Bit, @function
GPIO_Read_Input_Data_Bit:
	ZXT.h	r1,r1
	LD.w	r5,[r0]
	ANL	r0,r1,r5
	MOV	r5,#0
	SUB	r0,r5,r0
	LSR	r0,#31
	JMP	lr
	.size	GPIO_Read_Input_Data_Bit, .-GPIO_Read_Input_Data_Bit
	.section .text$GPIO_Read_Input_Data
	.align	1
	.export	GPIO_Read_Input_Data
	.type	GPIO_Read_Input_Data, @function
GPIO_Read_Input_Data:
	LD.w	r0,[r0]
	ZXT.h	r0,r0
	JMP	lr
	.size	GPIO_Read_Input_Data, .-GPIO_Read_Input_Data
	.section .text$GPIO_Read_Output_Data_Bit
	.align	1
	.export	GPIO_Read_Output_Data_Bit
	.type	GPIO_Read_Output_Data_Bit, @function
GPIO_Read_Output_Data_Bit:
	ZXT.h	r1,r1
	LD.w	r5,[r0+#1]
	ANL	r0,r1,r5
	MOV	r5,#0
	SUB	r0,r5,r0
	LSR	r0,#31
	JMP	lr
	.size	GPIO_Read_Output_Data_Bit, .-GPIO_Read_Output_Data_Bit
	.section .text$GPIO_Read_Output_Data
	.align	1
	.export	GPIO_Read_Output_Data
	.type	GPIO_Read_Output_Data, @function
GPIO_Read_Output_Data:
	LD.w	r0,[r0+#1]
	ZXT.h	r0,r0
	JMP	lr
	.size	GPIO_Read_Output_Data, .-GPIO_Read_Output_Data
	.section .text$GPIO_Set_Output_Data_Bits
	.align	1
	.export	GPIO_Set_Output_Data_Bits
	.type	GPIO_Set_Output_Data_Bits, @function
GPIO_Set_Output_Data_Bits:
	ZXT.h	r1,r1
	LD.w	r5,[r0+#1]
	CMP	r2,#0
	JNZ	.L86
	NOT	r1,r1
	ANL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
.L86:
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	GPIO_Set_Output_Data_Bits, .-GPIO_Set_Output_Data_Bits
	.section .text$GPIO_Toggle_Output_Data_Config
	.align	1
	.export	GPIO_Toggle_Output_Data_Config
	.type	GPIO_Toggle_Output_Data_Config, @function
GPIO_Toggle_Output_Data_Config:
	ZXT.h	r1,r1
	LD.w	r5,[r0+#1]
	XRL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	GPIO_Toggle_Output_Data_Config, .-GPIO_Toggle_Output_Data_Config
	.section .text$GPIO_Pin_RMP_Config
	.align	1
	.export	GPIO_Pin_RMP_Config
	.type	GPIO_Pin_RMP_Config, @function
GPIO_Pin_RMP_Config:
	ZXT.h	r1,r1
	ZXT.b	r2,r2
	MOV	r4,#3
	LSR	r5,r1,r4
	ADD	r5,#8
	LSL	r5,#2
	LD.w	r3,[r0+r5]
	MOV	r4,#7
	ANL	r1,r1,r4
	LSL	r1,#2
	MOV	r4,#15
	LSL	r4,r4,r1
	NOT	r4,r4
	ANL	r4,r4,r3
	LSL	r1,r2,r1
	ORL	r1,r4,r1
	ST.w	[r0+r5],r1
	JMP	lr
	.size	GPIO_Pin_RMP_Config, .-GPIO_Pin_RMP_Config
