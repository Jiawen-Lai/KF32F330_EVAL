	.file	"kf32f_basic_dma.c"
	.section .text$DMA_Reset
	.align	1
	.export	DMA_Reset
	.type	DMA_Reset, @function
DMA_Reset:
	PUSH	{r6, lr}
	LD	r5,#1073747456
	CMP	r0,r5
	JZ	.L5
	LD	r5,#1073747712
	CMP	r0,r5
	JZ	.L6
.L1:
	POP	{r6, pc}
.L6:
	MOV	r0,#1
	LSL	r0,#14
	MOV	r1,#1
	LD	r6,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#14
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#14
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	POP	{r6, pc}
.L5:
	MOV	r0,#1
	LSL	r0,#12
	MOV	r1,#1
	LD	r6,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#12
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#12
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
	.size	DMA_Reset, .-DMA_Reset
	.section .text$DMA_Configuration
	.align	1
	.export	DMA_Configuration
	.type	DMA_Configuration, @function
DMA_Configuration:
	PUSH	r6
	LD.b	r5,[r1]
	MOV	r2,#2
	LSL	r4,r5,r2
	LD.w	r6,[r0+r4]
	LD.h	r2,[r1+#2]
	LD.w	r3,[r1+#2]
	LSL	r3,#7
	ORL	r3,r2,r3
	LD.w	r2,[r1+#5]
	ORL	r3,r3,r2
	LD.w	r2,[r1+#3]
	LSL	r2,#6
	ORL	r3,r3,r2
	LD.w	r2,[r1+#4]
	LSL	r2,#5
	ORL	r3,r3,r2
	LD.b	r2,[r1+#1]
	ORL	r3,r3,r2
	LD.h	r2,[r1+#3]
	LSL	r2,#16
	ORL	r3,r3,r2
	LD.b	r2,[r1+#2]
	LSL	r2,#10
	ORL	r3,r3,r2
	LD.b	r2,[r1+#3]
	LSL	r2,#8
	ORL	r3,r3,r2
	LD	r2,#36871
	ANL	r2,r6,r2
	ORL	r3,r3,r2
	ST.w	[r0+r4],r3
	MOV	r3,#8
	ADD	r4,r5,r3
	LSL	r4,#2
	LD.w	r2,[r1+#6]
	ST.w	[r0+r4],r2
	LD.w	r4,[r1+#7]
	ADD	r5,#16
	LSL	r5,#2
	ST.w	[r0+r5],r4
	POP	r6
	JMP	lr
	.size	DMA_Configuration, .-DMA_Configuration
	.section .text$DMA_Struct_Init
	.align	1
	.export	DMA_Struct_Init
	.type	DMA_Struct_Init, @function
DMA_Struct_Init:
	MOV	r5,#0
	ST.b	[r0],r5
	ST.h	[r0+#2],r5
	ST.b	[r0+#1],r5
	ST.b	[r0+#2],r5
	ST.b	[r0+#3],r5
	ST.h	[r0+#3],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	ST.w	[r0+#6],r5
	ST.w	[r0+#7],r5
	JMP	lr
	.size	DMA_Struct_Init, .-DMA_Struct_Init
	.section .text$DMA_Transfer_Number_Config
	.align	1
	.export	DMA_Transfer_Number_Config
	.type	DMA_Transfer_Number_Config, @function
DMA_Transfer_Number_Config:
	LSL	r1,#2
	LD.w	r5,[r0+r1]
	LSL	r2,#16
	ZXT.h	r5,r5
	ORL	r5,r2,r5
	ST.w	[r0+r1],r5
	JMP	lr
	.size	DMA_Transfer_Number_Config, .-DMA_Transfer_Number_Config
	.section .text$DMA_Memory_To_Memory_Enable
	.align	1
	.export	DMA_Memory_To_Memory_Enable
	.type	DMA_Memory_To_Memory_Enable, @function
DMA_Memory_To_Memory_Enable:
	LSL	r1,#2
	ADD	r0,r0,r1
	CMP	r2,#0
	JNZ	.L13
// inline asm begin
	// 224 "../src/kf32f_basic_dma.c" 1
	CLR [r0], #15
// inline asm end
	JMP	lr
.L13:
// inline asm begin
	// 219 "../src/kf32f_basic_dma.c" 1
	SET [r0], #15
// inline asm end
	JMP	lr
	.size	DMA_Memory_To_Memory_Enable, .-DMA_Memory_To_Memory_Enable
	.section .text$DMA_Channel_Priority_Config
	.align	1
	.export	DMA_Channel_Priority_Config
	.type	DMA_Channel_Priority_Config, @function
DMA_Channel_Priority_Config:
	LSL	r1,#2
	LD.w	r5,[r0+r1]
	CLR	r5,#13
	CLR	r5,#14
	LSL	r2,#13
	ORL	r5,r5,r2
	ST.w	[r0+r1],r5
	JMP	lr
	.size	DMA_Channel_Priority_Config, .-DMA_Channel_Priority_Config
	.section .text$DMA_Peripheral_Data_Width_Config
	.align	1
	.export	DMA_Peripheral_Data_Width_Config
	.type	DMA_Peripheral_Data_Width_Config, @function
DMA_Peripheral_Data_Width_Config:
	LSL	r1,#2
	LD.w	r5,[r0+r1]
	CLR	r5,#10
	CLR	r5,#11
	LSL	r2,#10
	ORL	r5,r5,r2
	ST.w	[r0+r1],r5
	JMP	lr
	.size	DMA_Peripheral_Data_Width_Config, .-DMA_Peripheral_Data_Width_Config
	.section .text$DMA_Memory_Data_Width_Config
	.align	1
	.export	DMA_Memory_Data_Width_Config
	.type	DMA_Memory_Data_Width_Config, @function
DMA_Memory_Data_Width_Config:
	LSL	r1,#2
	LD.w	r5,[r0+r1]
	CLR	r5,#8
	CLR	r5,#9
	LSL	r2,#8
	ORL	r5,r5,r2
	ST.w	[r0+r1],r5
	JMP	lr
	.size	DMA_Memory_Data_Width_Config, .-DMA_Memory_Data_Width_Config
	.section .text$DMA_Peripheral_addr_increase_Enable
	.align	1
	.export	DMA_Peripheral_addr_increase_Enable
	.type	DMA_Peripheral_addr_increase_Enable, @function
DMA_Peripheral_addr_increase_Enable:
	LSL	r1,#2
	ADD	r0,r0,r1
	CMP	r2,#0
	JNZ	.L20
// inline asm begin
	// 366 "../src/kf32f_basic_dma.c" 1
	CLR [r0], #7
// inline asm end
	JMP	lr
.L20:
// inline asm begin
	// 361 "../src/kf32f_basic_dma.c" 1
	SET [r0], #7
// inline asm end
	JMP	lr
	.size	DMA_Peripheral_addr_increase_Enable, .-DMA_Peripheral_addr_increase_Enable
	.section .text$DMA_Memory_addr_increase_Enable
	.align	1
	.export	DMA_Memory_addr_increase_Enable
	.type	DMA_Memory_addr_increase_Enable, @function
DMA_Memory_addr_increase_Enable:
	LSL	r1,#2
	ADD	r0,r0,r1
	CMP	r2,#0
	JNZ	.L24
// inline asm begin
	// 402 "../src/kf32f_basic_dma.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
.L24:
// inline asm begin
	// 397 "../src/kf32f_basic_dma.c" 1
	SET [r0], #6
// inline asm end
	JMP	lr
	.size	DMA_Memory_addr_increase_Enable, .-DMA_Memory_addr_increase_Enable
	.section .text$DMA_Loop_Mode_Enable
	.align	1
	.export	DMA_Loop_Mode_Enable
	.type	DMA_Loop_Mode_Enable, @function
DMA_Loop_Mode_Enable:
	LSL	r1,#2
	ADD	r0,r0,r1
	CMP	r2,#0
	JNZ	.L28
// inline asm begin
	// 438 "../src/kf32f_basic_dma.c" 1
	CLR [r0], #5
// inline asm end
	JMP	lr
.L28:
// inline asm begin
	// 433 "../src/kf32f_basic_dma.c" 1
	SET [r0], #5
// inline asm end
	JMP	lr
	.size	DMA_Loop_Mode_Enable, .-DMA_Loop_Mode_Enable
	.section .text$DMA_Transfer_Direction_Config
	.align	1
	.export	DMA_Transfer_Direction_Config
	.type	DMA_Transfer_Direction_Config, @function
DMA_Transfer_Direction_Config:
	LSL	r1,#2
	ADD	r0,r0,r1
	CMP	r2,#0
	JNZ	.L32
// inline asm begin
	// 476 "../src/kf32f_basic_dma.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
.L32:
// inline asm begin
	// 471 "../src/kf32f_basic_dma.c" 1
	SET [r0], #4
// inline asm end
	JMP	lr
	.size	DMA_Transfer_Direction_Config, .-DMA_Transfer_Direction_Config
	.section .text$DMA_Transfer_Mode_Config
	.align	1
	.export	DMA_Transfer_Mode_Config
	.type	DMA_Transfer_Mode_Config, @function
DMA_Transfer_Mode_Config:
	LSL	r1,#2
	ADD	r0,r0,r1
	CMP	r2,#0
	JNZ	.L36
// inline asm begin
	// 514 "../src/kf32f_basic_dma.c" 1
	CLR [r0], #3
// inline asm end
	JMP	lr
.L36:
// inline asm begin
	// 509 "../src/kf32f_basic_dma.c" 1
	SET [r0], #3
// inline asm end
	JMP	lr
	.size	DMA_Transfer_Mode_Config, .-DMA_Transfer_Mode_Config
	.section .text$DMA_Channel_Enable
	.align	1
	.export	DMA_Channel_Enable
	.type	DMA_Channel_Enable, @function
DMA_Channel_Enable:
	LSL	r1,#2
	ADD	r0,r0,r1
	CMP	r2,#0
	JNZ	.L40
// inline asm begin
	// 550 "../src/kf32f_basic_dma.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L40:
// inline asm begin
	// 545 "../src/kf32f_basic_dma.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	DMA_Channel_Enable, .-DMA_Channel_Enable
	.section .text$DMA_Peripheral_Start_Address_Config
	.align	1
	.export	DMA_Peripheral_Start_Address_Config
	.type	DMA_Peripheral_Start_Address_Config, @function
DMA_Peripheral_Start_Address_Config:
	ADD	r1,#8
	LSL	r1,#2
	ST.w	[r0+r1],r2
	JMP	lr
	.size	DMA_Peripheral_Start_Address_Config, .-DMA_Peripheral_Start_Address_Config
	.section .text$DMA_Memory_Start_Address_Config
	.align	1
	.export	DMA_Memory_Start_Address_Config
	.type	DMA_Memory_Start_Address_Config, @function
DMA_Memory_Start_Address_Config:
	ADD	r1,#16
	LSL	r1,#2
	ST.w	[r0+r1],r2
	JMP	lr
	.size	DMA_Memory_Start_Address_Config, .-DMA_Memory_Start_Address_Config
	.section .text$DMA_Get_Peripheral_Current_Address
	.align	1
	.export	DMA_Get_Peripheral_Current_Address
	.type	DMA_Get_Peripheral_Current_Address, @function
DMA_Get_Peripheral_Current_Address:
	ADD	r1,#24
	LSL	r1,#2
	LD.w	r0,[r0+r1]
	JMP	lr
	.size	DMA_Get_Peripheral_Current_Address, .-DMA_Get_Peripheral_Current_Address
	.section .text$DMA_Get_Memory_Current_Address
	.align	1
	.export	DMA_Get_Memory_Current_Address
	.type	DMA_Get_Memory_Current_Address, @function
DMA_Get_Memory_Current_Address:
	ADD	r1,#32
	LSL	r1,#2
	LD.w	r0,[r0+r1]
	JMP	lr
	.size	DMA_Get_Memory_Current_Address, .-DMA_Get_Memory_Current_Address
	.section .text$DMA_Get_Transfer_Number_Remain
	.align	1
	.export	DMA_Get_Transfer_Number_Remain
	.type	DMA_Get_Transfer_Number_Remain, @function
DMA_Get_Transfer_Number_Remain:
	ADD	r1,#40
	LSL	r1,#2
	LD.w	r0,[r0+r1]
	LSR	r0,#16
	JMP	lr
	.size	DMA_Get_Transfer_Number_Remain, .-DMA_Get_Transfer_Number_Remain
	.section .text$DMA_Get_INT_Flag
	.align	1
	.export	DMA_Get_INT_Flag
	.type	DMA_Get_INT_Flag, @function
DMA_Get_INT_Flag:
	MOV	r5,#192
	LD.w	r5,[r0+r5]
	MOV	r4,#3
	MULS	r1,r1,r4
	LSL	r2,r2,r1
	ANL	r2,r2,r5
	MOV	r5,#0
	SUB	r5,r5,r2
	ORL	r0,r5,r2
	LSR	r0,#31
	JMP	lr
	.size	DMA_Get_INT_Flag, .-DMA_Get_INT_Flag
	.section .text$DMA_Clear_INT_Flag
	.align	1
	.export	DMA_Clear_INT_Flag
	.type	DMA_Clear_INT_Flag, @function
DMA_Clear_INT_Flag:
	MOV	r5,#192
	LD.w	r4,[r0+r5]
	MOV	r3,#3
	MULS	r1,r1,r3
	LSL	r2,r2,r1
	NOT	r3,r2
	ANL	r4,r3,r4
	ST.w	[r0+r5],r4
	JMP	lr
	.size	DMA_Clear_INT_Flag, .-DMA_Clear_INT_Flag
	.section .text$DMA_Set_INT_Enable
	.align	1
	.export	DMA_Set_INT_Enable
	.type	DMA_Set_INT_Enable, @function
DMA_Set_INT_Enable:
	MOV	r5,#3
	MULS	r1,r1,r5
	LSL	r2,r2,r1
	MOV	r4,#196
	CMP	r3,#0
	JNZ	.L51
	LD.w	r3,[r0+r4]
	NOT	r5,r2
	ANL	r5,r5,r3
	ST.w	[r0+r4],r5
	JMP	lr
.L51:
	LD.w	r3,[r0+r4]
	ORL	r5,r2,r3
	ST.w	[r0+r4],r5
	JMP	lr
	.size	DMA_Set_INT_Enable, .-DMA_Set_INT_Enable
	.section .text$DMA_Get_Error_Transfer_INT_Flag
	.align	1
	.export	DMA_Get_Error_Transfer_INT_Flag
	.type	DMA_Get_Error_Transfer_INT_Flag, @function
DMA_Get_Error_Transfer_INT_Flag:
	MOV	r5,#192
	LD.w	r5,[r0+r5]
	MOV	r4,#3
	MULS	r1,r1,r4
	MOV	r4,#4
	LSL	r1,r4,r1
	ANL	r1,r1,r5
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
	LSR	r0,#31
	JMP	lr
	.size	DMA_Get_Error_Transfer_INT_Flag, .-DMA_Get_Error_Transfer_INT_Flag
	.section .text$DMA_Get_Half_Transfer_INT_Flag
	.align	1
	.export	DMA_Get_Half_Transfer_INT_Flag
	.type	DMA_Get_Half_Transfer_INT_Flag, @function
DMA_Get_Half_Transfer_INT_Flag:
	MOV	r5,#192
	LD.w	r5,[r0+r5]
	MOV	r4,#3
	MULS	r1,r1,r4
	MOV	r4,#2
	LSL	r1,r4,r1
	ANL	r1,r1,r5
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
	LSR	r0,#31
	JMP	lr
	.size	DMA_Get_Half_Transfer_INT_Flag, .-DMA_Get_Half_Transfer_INT_Flag
	.section .text$DMA_Get_Finish_Transfer_INT_Flag
	.align	1
	.export	DMA_Get_Finish_Transfer_INT_Flag
	.type	DMA_Get_Finish_Transfer_INT_Flag, @function
DMA_Get_Finish_Transfer_INT_Flag:
	MOV	r5,#192
	LD.w	r5,[r0+r5]
	MOV	r4,#3
	MULS	r1,r1,r4
	MOV	r4,#1
	LSL	r1,r4,r1
	ANL	r1,r1,r5
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
	LSR	r0,#31
	JMP	lr
	.size	DMA_Get_Finish_Transfer_INT_Flag, .-DMA_Get_Finish_Transfer_INT_Flag
	.section .text$DMA_Error_Transfer_INT_Enable
	.align	1
	.export	DMA_Error_Transfer_INT_Enable
	.type	DMA_Error_Transfer_INT_Enable, @function
DMA_Error_Transfer_INT_Enable:
	MOV	r5,#3
	MULS	r1,r1,r5
	MOV	r4,#4
	LSL	r5,r4,r1
	MOV	r4,#196
	LD.w	r3,[r0+r4]
	CMP	r2,#0
	JNZ	.L58
	NOT	r5,r5
	ANL	r5,r5,r3
	ST.w	[r0+r4],r5
	JMP	lr
.L58:
	ORL	r5,r5,r3
	ST.w	[r0+r4],r5
	JMP	lr
	.size	DMA_Error_Transfer_INT_Enable, .-DMA_Error_Transfer_INT_Enable
	.section .text$DMA_Half_Transfer_INT_Enable
	.align	1
	.export	DMA_Half_Transfer_INT_Enable
	.type	DMA_Half_Transfer_INT_Enable, @function
DMA_Half_Transfer_INT_Enable:
	MOV	r5,#3
	MULS	r1,r1,r5
	MOV	r4,#2
	LSL	r5,r4,r1
	MOV	r4,#196
	LD.w	r3,[r0+r4]
	CMP	r2,#0
	JNZ	.L62
	NOT	r5,r5
	ANL	r5,r5,r3
	ST.w	[r0+r4],r5
	JMP	lr
.L62:
	ORL	r5,r5,r3
	ST.w	[r0+r4],r5
	JMP	lr
	.size	DMA_Half_Transfer_INT_Enable, .-DMA_Half_Transfer_INT_Enable
	.section .text$DMA_Finish_Transfer_INT_Enable
	.align	1
	.export	DMA_Finish_Transfer_INT_Enable
	.type	DMA_Finish_Transfer_INT_Enable, @function
DMA_Finish_Transfer_INT_Enable:
	MOV	r5,#3
	MULS	r1,r1,r5
	MOV	r4,#1
	LSL	r5,r4,r1
	MOV	r4,#196
	LD.w	r3,[r0+r4]
	CMP	r2,#0
	JNZ	.L66
	NOT	r5,r5
	ANL	r5,r5,r3
	ST.w	[r0+r4],r5
	JMP	lr
.L66:
	ORL	r5,r5,r3
	ST.w	[r0+r4],r5
	JMP	lr
	.size	DMA_Finish_Transfer_INT_Enable, .-DMA_Finish_Transfer_INT_Enable
