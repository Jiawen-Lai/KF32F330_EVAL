	.file	"kf32f_basic_dac.c"
	.section .text$DAC_Reset
	.align	1
	.export	DAC_Reset
	.type	DAC_Reset, @function
DAC_Reset:
	PUSH	{r6, lr}
	LD	r5,#1073743616
	CMP	r0,r5
	JZ	.L5
	LD	r5,#1073743744
	CMP	r0,r5
	JZ	.L6
.L1:
	POP	{r6, pc}
.L6:
	MOV	r0,#1
	LSL	r0,#15
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#15
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#15
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	POP	{r6, pc}
.L5:
	MOV	r0,#1
	LSL	r0,#14
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#14
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#14
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
	.size	DAC_Reset, .-DAC_Reset
	.section .text$DAC_Configuration
	.align	1
	.export	DAC_Configuration
	.type	DAC_Configuration, @function
DAC_Configuration:
	LD.w	r3,[r0]
	LD.w	r2,[r1+#3]
	LD.w	r5,[r1+#1]
	ORL	r4,r2,r5
	LD.w	r2,[r1+#4]
	ORL	r4,r4,r2
	LDP.w	r2,[r1]	<<	#3
	ORL	r4,r4,r2
	LD.w	r5,[r1+#2]
	ADD	r5,r5,r5
	ORL	r5,r4,r5
	LD	r4,#-16379
	ANL	r4,r3,r4
	ORL	r5,r5,r4
	ST.w	[r0],r5
	LD.w	r3,[r0+#3]
	LD.w	r4,[r1+#6]
	LD.w	r2,[r1+#5]
	ORL	r5,r4,r2
	LD.w	r4,[r1+#8]
	ORL	r5,r5,r4
	LD.w	r4,[r1+#7]
	LSL	r4,#6
	ORL	r5,r5,r4
	MOV	r4,#83
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r5,r5,r4
	ST.w	[r0+#3],r5
	LD.w	r4,[r0+#1]
	LD	r5,#-4096
	ANL	r5,r4,r5
	LD.w	r4,[r1+#9]
	ORL	r5,r5,r4
	ST.w	[r0+#1],r5
	JMP	lr
	.size	DAC_Configuration, .-DAC_Configuration
	.section .text$DAC_Struct_Init
	.align	1
	.export	DAC_Struct_Init
	.type	DAC_Struct_Init, @function
DAC_Struct_Init:
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
	JMP	lr
	.size	DAC_Struct_Init, .-DAC_Struct_Init
	.section .text$DAC_Cmd
	.align	1
	.export	DAC_Cmd
	.type	DAC_Cmd, @function
DAC_Cmd:
	CMP	r1,#0
	JNZ	.L12
// inline asm begin
	// 180 "../src/kf32f_basic_dac.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L12:
// inline asm begin
	// 175 "../src/kf32f_basic_dac.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	DAC_Cmd, .-DAC_Cmd
	.section .text$DAC_Software_Trigger_Cmd
	.align	1
	.export	DAC_Software_Trigger_Cmd
	.type	DAC_Software_Trigger_Cmd, @function
DAC_Software_Trigger_Cmd:
	CMP	r1,#0
	JNZ	.L16
// inline asm begin
	// 206 "../src/kf32f_basic_dac.c" 1
	CLR [r0], #14
// inline asm end
	JMP	lr
.L16:
// inline asm begin
	// 201 "../src/kf32f_basic_dac.c" 1
	SET [r0], #14
// inline asm end
	JMP	lr
	.size	DAC_Software_Trigger_Cmd, .-DAC_Software_Trigger_Cmd
	.section .text$DAC_DMA_Cmd
	.align	1
	.export	DAC_DMA_Cmd
	.type	DAC_DMA_Cmd, @function
DAC_DMA_Cmd:
	CMP	r1,#0
	JNZ	.L20
// inline asm begin
	// 232 "../src/kf32f_basic_dac.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L20:
// inline asm begin
	// 227 "../src/kf32f_basic_dac.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	DAC_DMA_Cmd, .-DAC_DMA_Cmd
	.section .text$DAC_Output_Buffer_Config
	.align	1
	.export	DAC_Output_Buffer_Config
	.type	DAC_Output_Buffer_Config, @function
DAC_Output_Buffer_Config:
	ADD	r0,#12
	CMP	r1,#0
	JNZ	.L24
// inline asm begin
	// 258 "../src/kf32f_basic_dac.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
.L24:
// inline asm begin
	// 253 "../src/kf32f_basic_dac.c" 1
	SET [r0], #6
// inline asm end
	JMP	lr
	.size	DAC_Output_Buffer_Config, .-DAC_Output_Buffer_Config
	.section .text$DAC_Output_Port_Config
	.align	1
	.export	DAC_Output_Port_Config
	.type	DAC_Output_Port_Config, @function
DAC_Output_Port_Config:
	ADD	r0,#12
	CMP	r1,#0
	JNZ	.L28
// inline asm begin
	// 284 "../src/kf32f_basic_dac.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L28:
// inline asm begin
	// 279 "../src/kf32f_basic_dac.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	DAC_Output_Port_Config, .-DAC_Output_Port_Config
	.section .text$DAC_Write_Output_Data
	.align	1
	.export	DAC_Write_Output_Data
	.type	DAC_Write_Output_Data, @function
DAC_Write_Output_Data:
	ST.w	[r0+#1],r1
	JMP	lr
	.size	DAC_Write_Output_Data, .-DAC_Write_Output_Data
	.section .text$DAC_Read_Output_Data
	.align	1
	.export	DAC_Read_Output_Data
	.type	DAC_Read_Output_Data, @function
DAC_Read_Output_Data:
	LD.w	r5,[r0+#2]
	MOV	r4,#0
	SUB	r4,r4,r5
	ORL	r0,r4,r5
	LSR	r0,#31
	JMP	lr
	.size	DAC_Read_Output_Data, .-DAC_Read_Output_Data
	.section .text$DAC_Calibration_Config
	.align	1
	.export	DAC_Calibration_Config
	.type	DAC_Calibration_Config, @function
DAC_Calibration_Config:
	LD.w	r3,[r0+#5]
	LD.w	r4,[r1+#1]
	LSL	r4,#24
	LD.w	r5,[r1]
	LSL	r5,#28
	ORL	r5,r4,r5
	LD.w	r4,[r1+#2]
	LSL	r4,#20
	ORL	r5,r5,r4
	LD.w	r4,[r1+#3]
	LSL	r4,#16
	ORL	r5,r5,r4
	LD.w	r4,[r1+#4]
	LSL	r4,#15
	ORL	r5,r5,r4
	LD	r4,#32767
	ANL	r4,r3,r4
	ORL	r5,r5,r4
	ST.w	[r0+#5],r5
	JMP	lr
	.size	DAC_Calibration_Config, .-DAC_Calibration_Config
	.section .text$DAC_Calibration_Struct_Init
	.align	1
	.export	DAC_Calibration_Struct_Init
	.type	DAC_Calibration_Struct_Init, @function
DAC_Calibration_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	JMP	lr
	.size	DAC_Calibration_Struct_Init, .-DAC_Calibration_Struct_Init
