	.file	"kf32f_basic_gptim.c"
	.section .text$GPTIM_Configuration
	.align	1
	.export	GPTIM_Configuration
	.type	GPTIM_Configuration, @function
GPTIM_Configuration:
	LD	r5,#1073748864
	CMP	r0,r5
	JZ	.L2
	LD	r5,#1073748992
	CMP	r0,r5
	JZ	.L2
	LD.h	r5,[r1]
	ST.w	[r0],r5
	LD.h	r5,[r1+#2]
	ST.w	[r0+#4],r5
	LD.h	r5,[r1+#4]
	ST.w	[r0+#3],r5
.L4:
	LD.w	r3,[r0+#1]
	LD.h	r2,[r1+#7]
	LD.h	r5,[r1+#6]
	ORL	r4,r2,r5
	LD.h	r2,[r1+#8]
	ORL	r4,r4,r2
	LD.h	r5,[r1+#11]
	ORL	r4,r4,r5
	ZXT.h	r4,r4
	LD	r5,#-1899
	ANL	r5,r3,r5
	ORL	r5,r4,r5
	ST.w	[r0+#1],r5
	LD.w	r3,[r0+#2]
	LD.h	r2,[r1+#10]
	LD.h	r5,[r1+#9]
	ORL	r4,r2,r5
	ZXT.h	r4,r4
	LD.h	r5,[r1+#12]
	LSL	r5,#12
	ORL	r5,r4,r5
	LD	r4,#-4349
	ANL	r4,r3,r4
	ORL	r5,r5,r4
	ST.w	[r0+#2],r5
	JMP	lr
.L2:
	LD.w	r5,[r1]
	ST.w	[r0],r5
	LD.w	r2,[r1+#1]
	ST.w	[r0+#4],r2
	LD.w	r5,[r1+#2]
	ST.w	[r0+#3],r5
	JMP	.L4
	.size	GPTIM_Configuration, .-GPTIM_Configuration
	.section .text$GPTIM_Struct_Init
	.align	1
	.export	GPTIM_Struct_Init
	.type	GPTIM_Struct_Init, @function
GPTIM_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	NOT	r4,r5
	ST.w	[r0+#1],r4
	ST.w	[r0+#2],r5
	MOV	r4,#1
	LSL	r4,#10
	ST.h	[r0+#6],r4
	ST.h	[r0+#7],r5
	ST.h	[r0+#8],r5
	ST.h	[r0+#9],r5
	ST.h	[r0+#10],r5
	ST.h	[r0+#11],r5
	ST.h	[r0+#12],r5
	JMP	lr
	.size	GPTIM_Struct_Init, .-GPTIM_Struct_Init
	.section .text$GPTIM_Cmd
	.align	1
	.export	GPTIM_Cmd
	.type	GPTIM_Cmd, @function
GPTIM_Cmd:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L10
// inline asm begin
	// 174 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L10:
// inline asm begin
	// 169 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	GPTIM_Cmd, .-GPTIM_Cmd
	.section .text$GPTIM_Set_Counter
	.align	1
	.export	GPTIM_Set_Counter
	.type	GPTIM_Set_Counter, @function
GPTIM_Set_Counter:
	LD	r5,#1073748864
	CMP	r0,r5
	JZ	.L15
	LD	r5,#1073748992
	CMP	r0,r5
	JZ	.L15
	ZXT.h	r1,r1
.L15:
	ST.w	[r0],r1
	JMP	lr
	.size	GPTIM_Set_Counter, .-GPTIM_Set_Counter
	.section .text$GPTIM_Set_Period
	.align	1
	.export	GPTIM_Set_Period
	.type	GPTIM_Set_Period, @function
GPTIM_Set_Period:
	LD	r5,#1073748864
	CMP	r0,r5
	JZ	.L20
	LD	r5,#1073748992
	CMP	r0,r5
	JZ	.L20
	ZXT.h	r1,r1
.L20:
	ST.w	[r0+#4],r1
	JMP	lr
	.size	GPTIM_Set_Period, .-GPTIM_Set_Period
	.section .text$GPTIM_Set_Prescaler
	.align	1
	.export	GPTIM_Set_Prescaler
	.type	GPTIM_Set_Prescaler, @function
GPTIM_Set_Prescaler:
	LD	r5,#1073748864
	CMP	r0,r5
	JZ	.L25
	LD	r5,#1073748992
	CMP	r0,r5
	JZ	.L25
	ZXT.h	r1,r1
.L25:
	ST.w	[r0+#3],r1
	JMP	lr
	.size	GPTIM_Set_Prescaler, .-GPTIM_Set_Prescaler
	.section .text$GPTIM_Counter_Mode_Config
	.align	1
	.export	GPTIM_Counter_Mode_Config
	.type	GPTIM_Counter_Mode_Config, @function
GPTIM_Counter_Mode_Config:
	LD.w	r4,[r0+#1]
	LD	r5,#-1793
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	GPTIM_Counter_Mode_Config, .-GPTIM_Counter_Mode_Config
	.section .text$GPTIM_Clock_Config
	.align	1
	.export	GPTIM_Clock_Config
	.type	GPTIM_Clock_Config, @function
GPTIM_Clock_Config:
	LD.w	r5,[r0+#1]
	CLR	r5,#5
	CLR	r5,#6
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	GPTIM_Clock_Config, .-GPTIM_Clock_Config
	.section .text$GPTIM_External_Pulse_Sync_Config
	.align	1
	.export	GPTIM_External_Pulse_Sync_Config
	.type	GPTIM_External_Pulse_Sync_Config, @function
GPTIM_External_Pulse_Sync_Config:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L31
// inline asm begin
	// 335 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #3
// inline asm end
	JMP	lr
.L31:
// inline asm begin
	// 330 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #3
// inline asm end
	JMP	lr
	.size	GPTIM_External_Pulse_Sync_Config, .-GPTIM_External_Pulse_Sync_Config
	.section .text$GPTIM_Work_Mode_Config
	.align	1
	.export	GPTIM_Work_Mode_Config
	.type	GPTIM_Work_Mode_Config, @function
GPTIM_Work_Mode_Config:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L35
// inline asm begin
	// 366 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L35:
// inline asm begin
	// 361 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	GPTIM_Work_Mode_Config, .-GPTIM_Work_Mode_Config
	.section .text$GPTIM_Updata_Immediately_Config
	.align	1
	.export	GPTIM_Updata_Immediately_Config
	.type	GPTIM_Updata_Immediately_Config, @function
GPTIM_Updata_Immediately_Config:
	ADD	r0,#8
	CMP	r1,#0
	JNZ	.L39
// inline asm begin
	// 396 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #13
// inline asm end
	JMP	lr
.L39:
// inline asm begin
	// 391 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #13
// inline asm end
	JMP	lr
	.size	GPTIM_Updata_Immediately_Config, .-GPTIM_Updata_Immediately_Config
	.section .text$GPTIM_Master_Slave_Snyc_Config
	.align	1
	.export	GPTIM_Master_Slave_Snyc_Config
	.type	GPTIM_Master_Slave_Snyc_Config, @function
GPTIM_Master_Slave_Snyc_Config:
	ADD	r0,#8
	CMP	r1,#0
	JNZ	.L43
// inline asm begin
	// 426 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #12
// inline asm end
	JMP	lr
.L43:
// inline asm begin
	// 421 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #12
// inline asm end
	JMP	lr
	.size	GPTIM_Master_Slave_Snyc_Config, .-GPTIM_Master_Slave_Snyc_Config
	.section .text$GPTIM_Trigger_Select_Config
	.align	1
	.export	GPTIM_Trigger_Select_Config
	.type	GPTIM_Trigger_Select_Config, @function
GPTIM_Trigger_Select_Config:
	LD.w	r4,[r0+#2]
	LD	r5,#-3841
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#2],r1
	JMP	lr
	.size	GPTIM_Trigger_Select_Config, .-GPTIM_Trigger_Select_Config
	.section .text$GPTIM_Slave_Mode_Config
	.align	1
	.export	GPTIM_Slave_Mode_Config
	.type	GPTIM_Slave_Mode_Config, @function
GPTIM_Slave_Mode_Config:
	LD.w	r4,[r0+#2]
	MOV	r5,#224
	NOT	r5,r5
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#2],r1
	JMP	lr
	.size	GPTIM_Slave_Mode_Config, .-GPTIM_Slave_Mode_Config
	.section .text$GPTIM_Master_Mode_Config
	.align	1
	.export	GPTIM_Master_Mode_Config
	.type	GPTIM_Master_Mode_Config, @function
GPTIM_Master_Mode_Config:
	LD.w	r4,[r0+#2]
	MOV	r5,#28
	NOT	r5,r5
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#2],r1
	JMP	lr
	.size	GPTIM_Master_Mode_Config, .-GPTIM_Master_Mode_Config
	.section .text$GPTIM_Updata_Rising_Edge_Config
	.align	1
	.export	GPTIM_Updata_Rising_Edge_Config
	.type	GPTIM_Updata_Rising_Edge_Config, @function
GPTIM_Updata_Rising_Edge_Config:
	ADD	r0,#8
	CMP	r1,#0
	JNZ	.L50
// inline asm begin
	// 554 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L50:
// inline asm begin
	// 549 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	GPTIM_Updata_Rising_Edge_Config, .-GPTIM_Updata_Rising_Edge_Config
	.section .text$GPTIM_Updata_Enable
	.align	1
	.export	GPTIM_Updata_Enable
	.type	GPTIM_Updata_Enable, @function
GPTIM_Updata_Enable:
	ADD	r0,#8
	CMP	r1,#0
	JNZ	.L54
// inline asm begin
	// 585 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L54:
// inline asm begin
	// 580 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	GPTIM_Updata_Enable, .-GPTIM_Updata_Enable
	.section .text$GPTIM_Trigger_DMA_Enable
	.align	1
	.export	GPTIM_Trigger_DMA_Enable
	.type	GPTIM_Trigger_DMA_Enable, @function
GPTIM_Trigger_DMA_Enable:
	ADD	r0,#88
	CMP	r1,#0
	JNZ	.L58
// inline asm begin
	// 616 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #11
// inline asm end
	JMP	lr
.L58:
// inline asm begin
	// 611 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #11
// inline asm end
	JMP	lr
	.size	GPTIM_Trigger_DMA_Enable, .-GPTIM_Trigger_DMA_Enable
	.section .text$GPTIM_Updata_DMA_Enable
	.align	1
	.export	GPTIM_Updata_DMA_Enable
	.type	GPTIM_Updata_DMA_Enable, @function
GPTIM_Updata_DMA_Enable:
	ADD	r0,#88
	CMP	r1,#0
	JNZ	.L62
// inline asm begin
	// 647 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
.L62:
// inline asm begin
	// 642 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #6
// inline asm end
	JMP	lr
	.size	GPTIM_Updata_DMA_Enable, .-GPTIM_Updata_DMA_Enable
	.section .text$GPTIM_Updata_INT_Enable
	.align	1
	.export	GPTIM_Updata_INT_Enable
	.type	GPTIM_Updata_INT_Enable, @function
GPTIM_Updata_INT_Enable:
	ADD	r0,#88
	CMP	r1,#0
	JNZ	.L66
// inline asm begin
	// 679 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #5
// inline asm end
	JMP	lr
.L66:
// inline asm begin
	// 674 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #5
// inline asm end
	JMP	lr
	.size	GPTIM_Updata_INT_Enable, .-GPTIM_Updata_INT_Enable
	.section .text$GPTIM_Trigger_INT_Enable
	.align	1
	.export	GPTIM_Trigger_INT_Enable
	.type	GPTIM_Trigger_INT_Enable, @function
GPTIM_Trigger_INT_Enable:
	ADD	r0,#88
	CMP	r1,#0
	JNZ	.L70
// inline asm begin
	// 710 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
.L70:
// inline asm begin
	// 705 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #4
// inline asm end
	JMP	lr
	.size	GPTIM_Trigger_INT_Enable, .-GPTIM_Trigger_INT_Enable
	.section .text$GPTIM_Generate_Trigger_Config
	.align	1
	.export	GPTIM_Generate_Trigger_Config
	.type	GPTIM_Generate_Trigger_Config, @function
GPTIM_Generate_Trigger_Config:
	ADD	r0,#92
	CMP	r1,#0
	JNZ	.L74
// inline asm begin
	// 741 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #5
// inline asm end
	JMP	lr
.L74:
// inline asm begin
	// 736 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #5
// inline asm end
	JMP	lr
	.size	GPTIM_Generate_Trigger_Config, .-GPTIM_Generate_Trigger_Config
	.section .text$GPTIM_Get_Direction
	.align	1
	.export	GPTIM_Get_Direction
	.type	GPTIM_Get_Direction, @function
GPTIM_Get_Direction:
	LD.w	r0,[r0+#1]
	LSR	r0,#7
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	GPTIM_Get_Direction, .-GPTIM_Get_Direction
	.section .text$GPTIM_Get_Counter
	.align	1
	.export	GPTIM_Get_Counter
	.type	GPTIM_Get_Counter, @function
GPTIM_Get_Counter:
	LD	r5,#1073748864
	CMP	r0,r5
	JZ	.L77
	LD	r5,#1073748992
	CMP	r0,r5
	JZ	.L77
	LD.w	r0,[r0]
	ZXT.h	r0,r0
	JMP	lr
.L77:
	LD.w	r0,[r0]
	JMP	lr
	.size	GPTIM_Get_Counter, .-GPTIM_Get_Counter
	.section .text$GPTIM_Get_Period
	.align	1
	.export	GPTIM_Get_Period
	.type	GPTIM_Get_Period, @function
GPTIM_Get_Period:
	LD	r5,#1073748864
	CMP	r0,r5
	JZ	.L81
	LD	r5,#1073748992
	CMP	r0,r5
	JZ	.L81
	LD.w	r0,[r0+#4]
	ZXT.h	r0,r0
	JMP	lr
.L81:
	LD.w	r0,[r0+#4]
	JMP	lr
	.size	GPTIM_Get_Period, .-GPTIM_Get_Period
	.section .text$GPTIM_Get_Prescaler
	.align	1
	.export	GPTIM_Get_Prescaler
	.type	GPTIM_Get_Prescaler, @function
GPTIM_Get_Prescaler:
	LD	r5,#1073748864
	CMP	r0,r5
	JZ	.L85
	LD	r5,#1073748992
	CMP	r0,r5
	JZ	.L85
	LD.w	r0,[r0+#3]
	ZXT.h	r0,r0
	JMP	lr
.L85:
	LD.w	r0,[r0+#3]
	JMP	lr
	.size	GPTIM_Get_Prescaler, .-GPTIM_Get_Prescaler
	.section .text$GPTIM_Overflow_INT_Enable
	.align	1
	.export	GPTIM_Overflow_INT_Enable
	.type	GPTIM_Overflow_INT_Enable, @function
GPTIM_Overflow_INT_Enable:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L91
// inline asm begin
	// 889 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #12
// inline asm end
	JMP	lr
.L91:
// inline asm begin
	// 884 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #12
// inline asm end
	JMP	lr
	.size	GPTIM_Overflow_INT_Enable, .-GPTIM_Overflow_INT_Enable
	.section .text$GPTIM_Clear_Overflow_INT_Flag
	.align	1
	.export	GPTIM_Clear_Overflow_INT_Flag
	.type	GPTIM_Clear_Overflow_INT_Flag, @function
GPTIM_Clear_Overflow_INT_Flag:
	MOV	r5,#48
	ADD	r3,r0,r5
// inline asm begin
	// 909 "../src/kf32f_basic_gptim.c" 1
	SET [r3], #6
// inline asm end
	MOV	r4,#1
	LSL	r4,#13
.L93:
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L93
// inline asm begin
	// 911 "../src/kf32f_basic_gptim.c" 1
	CLR [r3], #6
// inline asm end
	JMP	lr
	.size	GPTIM_Clear_Overflow_INT_Flag, .-GPTIM_Clear_Overflow_INT_Flag
	.section .text$GPTIM_Clear_Updata_INT_Flag
	.align	1
	.export	GPTIM_Clear_Updata_INT_Flag
	.type	GPTIM_Clear_Updata_INT_Flag, @function
GPTIM_Clear_Updata_INT_Flag:
	MOV	r5,#48
	ADD	r3,r0,r5
// inline asm begin
	// 930 "../src/kf32f_basic_gptim.c" 1
	SET [r3], #5
// inline asm end
	MOV	r4,#1
	LSL	r4,#11
.L96:
	LD.w	r5,[r0+#23]
	ANL	r5,r5,r4
	JNZ	.L96
// inline asm begin
	// 932 "../src/kf32f_basic_gptim.c" 1
	CLR [r3], #5
// inline asm end
	JMP	lr
	.size	GPTIM_Clear_Updata_INT_Flag, .-GPTIM_Clear_Updata_INT_Flag
	.section .text$GPTIM_Clear_Trigger_INT_Flag
	.align	1
	.export	GPTIM_Clear_Trigger_INT_Flag
	.type	GPTIM_Clear_Trigger_INT_Flag, @function
GPTIM_Clear_Trigger_INT_Flag:
	MOV	r5,#48
	ADD	r3,r0,r5
// inline asm begin
	// 951 "../src/kf32f_basic_gptim.c" 1
	SET [r3], #4
// inline asm end
	MOV	r4,#1
	LSL	r4,#10
.L99:
	LD.w	r5,[r0+#23]
	ANL	r5,r5,r4
	JNZ	.L99
// inline asm begin
	// 953 "../src/kf32f_basic_gptim.c" 1
	CLR [r3], #4
// inline asm end
	JMP	lr
	.size	GPTIM_Clear_Trigger_INT_Flag, .-GPTIM_Clear_Trigger_INT_Flag
	.section .text$GPTIM_Get_Overflow_INT_Flag
	.align	1
	.export	GPTIM_Get_Overflow_INT_Flag
	.type	GPTIM_Get_Overflow_INT_Flag, @function
GPTIM_Get_Overflow_INT_Flag:
	LD.w	r0,[r0+#1]
	LSR	r0,#13
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	GPTIM_Get_Overflow_INT_Flag, .-GPTIM_Get_Overflow_INT_Flag
	.section .text$GPTIM_Get_Updata_INT_Flag
	.align	1
	.export	GPTIM_Get_Updata_INT_Flag
	.type	GPTIM_Get_Updata_INT_Flag, @function
GPTIM_Get_Updata_INT_Flag:
	LD.w	r0,[r0+#23]
	LSR	r0,#11
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	GPTIM_Get_Updata_INT_Flag, .-GPTIM_Get_Updata_INT_Flag
	.section .text$GPTIM_Get_Trigger_INT_Flag
	.align	1
	.export	GPTIM_Get_Trigger_INT_Flag
	.type	GPTIM_Get_Trigger_INT_Flag, @function
GPTIM_Get_Trigger_INT_Flag:
	LD.w	r0,[r0+#23]
	LSR	r0,#10
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	GPTIM_Get_Trigger_INT_Flag, .-GPTIM_Get_Trigger_INT_Flag
	.section .text$GPTIM_Get_Updata_DMA_INT_Flag
	.align	1
	.export	GPTIM_Get_Updata_DMA_INT_Flag
	.type	GPTIM_Get_Updata_DMA_INT_Flag, @function
GPTIM_Get_Updata_DMA_INT_Flag:
	LD.w	r0,[r0+#13]
	LSR	r0,#5
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	GPTIM_Get_Updata_DMA_INT_Flag, .-GPTIM_Get_Updata_DMA_INT_Flag
	.section .text$GPTIM_Get_Trigger_DMA_INT_Flag
	.align	1
	.export	GPTIM_Get_Trigger_DMA_INT_Flag
	.type	GPTIM_Get_Trigger_DMA_INT_Flag, @function
GPTIM_Get_Trigger_DMA_INT_Flag:
	LD.w	r0,[r0+#13]
	LSR	r0,#4
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	GPTIM_Get_Trigger_DMA_INT_Flag, .-GPTIM_Get_Trigger_DMA_INT_Flag
	.section .text$CCP_Compare_Configuration
	.align	1
	.export	CCP_Compare_Configuration
	.type	CCP_Compare_Configuration, @function
CCP_Compare_Configuration:
	LDP.h	r5,[r1]	<<	#2
	LD.w	r3,[r0+#16]
	MOV	r4,#15
	LSL	r4,r4,r5
	NOT	r4,r4
	ANL	r4,r4,r3
	LD.h	r3,[r1+#1]
	LSL	r3,r3,r5
	ORL	r4,r4,r3
	ST.w	[r0+#16],r4
	ADD	r5,r0,r5
	LD	r4,#1073748864
	CMP	r0,r4
	JZ	.L107
	LD	r4,#1073748992
	CMP	r0,r4
	JZ	.L107
	LD.h	r4,[r1+#2]
	ST.w	[r5+#17],r4
	JMP	lr
.L107:
	LD.w	r4,[r1+#1]
	ST.w	[r5+#17],r4
	JMP	lr
	.size	CCP_Compare_Configuration, .-CCP_Compare_Configuration
	.section .text$CCP_Compare_Struct_Init
	.align	1
	.export	CCP_Compare_Struct_Init
	.type	CCP_Compare_Struct_Init, @function
CCP_Compare_Struct_Init:
	MOV	r5,#0
	ST.h	[r0],r5
	ST.h	[r0+#1],r5
	MOV	r5,#0
	ST.w	[r0+#1],r5
	JMP	lr
	.size	CCP_Compare_Struct_Init, .-CCP_Compare_Struct_Init
	.section .text$CCP_Capture_Configuration
	.align	1
	.export	CCP_Capture_Configuration
	.type	CCP_Capture_Configuration, @function
CCP_Capture_Configuration:
	LDP.h	r5,[r1]	<<	#2
	LD.w	r3,[r0+#16]
	MOV	r4,#15
	LSL	r4,r4,r5
	NOT	r4,r4
	ANL	r4,r4,r3
	LD.h	r3,[r1+#1]
	LSL	r5,r3,r5
	ORL	r5,r4,r5
	ST.w	[r0+#16],r5
	LD.w	r5,[r0+#21]
	CLR	r5,#15
	LD.w	r4,[r1+#3]
	ORL	r5,r5,r4
	ST.w	[r0+#21],r5
	LD.w	r4,[r0+#22]
	LD.w	r3,[r1+#2]
	LSL	r3,#13
	LD.w	r5,[r1+#1]
	LSL	r5,#14
	ORL	r5,r3,r5
	CLR	r4,#13
	CLR	r4,#14
	ORL	r5,r5,r4
	ST.w	[r0+#22],r5
	JMP	lr
	.size	CCP_Capture_Configuration, .-CCP_Capture_Configuration
	.section .text$CCP_Capture_Struct_Init
	.align	1
	.export	CCP_Capture_Struct_Init
	.type	CCP_Capture_Struct_Init, @function
CCP_Capture_Struct_Init:
	MOV	r5,#0
	ST.h	[r0],r5
	ST.h	[r0+#1],r5
	MOV	r5,#0
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	JMP	lr
	.size	CCP_Capture_Struct_Init, .-CCP_Capture_Struct_Init
	.section .text$CCP_PWM_Configuration
	.align	1
	.export	CCP_PWM_Configuration
	.type	CCP_PWM_Configuration, @function
CCP_PWM_Configuration:
	LD.h	r5,[r1]
	MOV	r3,#2
	LSL	r4,r5,r3
	LD.w	r2,[r0+#16]
	MOV	r3,#15
	LSL	r3,r3,r4
	NOT	r3,r3
	ANL	r3,r3,r2
	LD.h	r2,[r1+#1]
	LSL	r2,r2,r4
	ORL	r3,r3,r2
	ST.w	[r0+#16],r3
	ADD	r4,r0,r4
	LD	r3,#1073748864
	CMP	r0,r3
	JZ	.L114
	LD	r3,#1073748992
	CMP	r0,r3
	JZ	.L114
	LD.h	r3,[r1+#2]
	ST.w	[r4+#17],r3
.L116:
	ADD	r5,r5,r5
	LD.w	r3,[r0+#21]
	MOV	r4,#3
	LSL	r4,r4,r5
	NOT	r4,r4
	ANL	r4,r4,r3
	LD.w	r3,[r1+#2]
	LSL	r5,r3,r5
	ORL	r5,r4,r5
	ST.w	[r0+#21],r5
	LD.w	r4,[r0+#22]
	LD.w	r3,[r1+#4]
	LSL	r3,#15
	LD.w	r5,[r1+#3]
	LSL	r5,#12
	ORL	r5,r3,r5
	CLR	r4,#12
	CLR	r4,#15
	ORL	r5,r5,r4
	ST.w	[r0+#22],r5
	JMP	lr
.L114:
	LD.w	r3,[r1+#1]
	ST.w	[r4+#17],r3
	JMP	.L116
	.size	CCP_PWM_Configuration, .-CCP_PWM_Configuration
	.section .text$CCP_PWM_Struct_Init
	.align	1
	.export	CCP_PWM_Struct_Init
	.type	CCP_PWM_Struct_Init, @function
CCP_PWM_Struct_Init:
	MOV	r5,#0
	ST.h	[r0],r5
	ST.h	[r0+#1],r5
	MOV	r5,#0
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	JMP	lr
	.size	CCP_PWM_Struct_Init, .-CCP_PWM_Struct_Init
	.section .text$CCP_Capture_Mode_Config
	.align	1
	.export	CCP_Capture_Mode_Config
	.type	CCP_Capture_Mode_Config, @function
CCP_Capture_Mode_Config:
	LSL	r1,#2
	LD.w	r4,[r0+#16]
	MOV	r5,#15
	LSL	r5,r5,r1
	NOT	r5,r5
	ANL	r5,r5,r4
	LSL	r2,r2,r1
	ORL	r5,r5,r2
	ST.w	[r0+#16],r5
	JMP	lr
	.size	CCP_Capture_Mode_Config, .-CCP_Capture_Mode_Config
	.section .text$CCP_Compare_Mode_Config
	.align	1
	.export	CCP_Compare_Mode_Config
	.type	CCP_Compare_Mode_Config, @function
CCP_Compare_Mode_Config:
	LSL	r1,#2
	LD.w	r4,[r0+#16]
	MOV	r5,#15
	LSL	r5,r5,r1
	NOT	r5,r5
	ANL	r5,r5,r4
	LSL	r2,r2,r1
	ORL	r5,r5,r2
	ST.w	[r0+#16],r5
	JMP	lr
	.size	CCP_Compare_Mode_Config, .-CCP_Compare_Mode_Config
	.section .text$CCP_PWM_Mode_Config
	.align	1
	.export	CCP_PWM_Mode_Config
	.type	CCP_PWM_Mode_Config, @function
CCP_PWM_Mode_Config:
	LSL	r1,#2
	LD.w	r4,[r0+#16]
	MOV	r5,#15
	LSL	r5,r5,r1
	NOT	r5,r5
	ANL	r5,r5,r4
	LSL	r2,r2,r1
	ORL	r5,r5,r2
	ST.w	[r0+#16],r5
	JMP	lr
	.size	CCP_PWM_Mode_Config, .-CCP_PWM_Mode_Config
	.section .text$CCP_Get_Capture_Result
	.align	1
	.export	CCP_Get_Capture_Result
	.type	CCP_Get_Capture_Result, @function
CCP_Get_Capture_Result:
	MOV	r5,#32
	ADD	r4,r0,r5
	LSL	r1,#2
	LD	r5,#1073748864
	CMP	r0,r5
	JZ	.L122
	LD	r5,#1073748992
	CMP	r0,r5
	JZ	.L122
	LD.w	r0,[r4+r1]
	ZXT.h	r0,r0
	JMP	lr
.L122:
	LD.w	r0,[r4+r1]
	JMP	lr
	.size	CCP_Get_Capture_Result, .-CCP_Get_Capture_Result
	.section .text$CCP_Set_Compare_Result
	.align	1
	.export	CCP_Set_Compare_Result
	.type	CCP_Set_Compare_Result, @function
CCP_Set_Compare_Result:
	MOV	r5,#68
	ADD	r4,r0,r5
	LSL	r1,#2
	LD	r5,#1073748864
	CMP	r0,r5
	JZ	.L129
	LD	r5,#1073748992
	CMP	r0,r5
	JZ	.L129
	ZXT.h	r2,r2
.L129:
	ST.w	[r4+r1],r2
	JMP	lr
	.size	CCP_Set_Compare_Result, .-CCP_Set_Compare_Result
	.section .text$CCP_Get_Compare_Result
	.align	1
	.export	CCP_Get_Compare_Result
	.type	CCP_Get_Compare_Result, @function
CCP_Get_Compare_Result:
	MOV	r5,#68
	ADD	r4,r0,r5
	LSL	r1,#2
	LD	r5,#1073748864
	CMP	r0,r5
	JZ	.L131
	LD	r5,#1073748992
	CMP	r0,r5
	JZ	.L131
	LD.w	r0,[r4+r1]
	ZXT.h	r0,r0
	JMP	lr
.L131:
	LD.w	r0,[r4+r1]
	JMP	lr
	.size	CCP_Get_Compare_Result, .-CCP_Get_Compare_Result
	.section .text$CCP_Compare_PWM_Signal_Clear
	.align	1
	.export	CCP_Compare_PWM_Signal_Clear
	.type	CCP_Compare_PWM_Signal_Clear, @function
CCP_Compare_PWM_Signal_Clear:
	LD.w	r4,[r0+#21]
	MOV	r5,#1
	LSL	r5,#12
	LSL	r5,r5,r1
	NOT	r5,r5
	ANL	r5,r5,r4
	ADD	r1,#12
	LSL	r2,r2,r1
	ORL	r5,r5,r2
	ST.w	[r0+#21],r5
	JMP	lr
	.size	CCP_Compare_PWM_Signal_Clear, .-CCP_Compare_PWM_Signal_Clear
	.section .text$CCP_Compare_Check_Config
	.align	1
	.export	CCP_Compare_Check_Config
	.type	CCP_Compare_Check_Config, @function
CCP_Compare_Check_Config:
	LD.w	r5,[r0+#21]
	CLR	r5,#10
	CLR	r5,#11
	ORL	r1,r1,r5
	ST.w	[r0+#21],r1
	JMP	lr
	.size	CCP_Compare_Check_Config, .-CCP_Compare_Check_Config
	.section .text$CCP_Channel_Output_Control
	.align	1
	.export	CCP_Channel_Output_Control
	.type	CCP_Channel_Output_Control, @function
CCP_Channel_Output_Control:
	ADD	r1,r1,r1
	LD.w	r4,[r0+#21]
	MOV	r5,#3
	LSL	r5,r5,r1
	NOT	r5,r5
	ANL	r5,r5,r4
	LSL	r2,r2,r1
	ORL	r5,r5,r2
	ST.w	[r0+#21],r5
	JMP	lr
	.size	CCP_Channel_Output_Control, .-CCP_Channel_Output_Control
	.section .text$CCP_Single_Pulse_Shut_Enable
	.align	1
	.export	CCP_Single_Pulse_Shut_Enable
	.type	CCP_Single_Pulse_Shut_Enable, @function
CCP_Single_Pulse_Shut_Enable:
	ADD	r0,#88
	CMP	r1,#0
	JNZ	.L140
// inline asm begin
	// 1660 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #15
// inline asm end
	JMP	lr
.L140:
// inline asm begin
	// 1655 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #15
// inline asm end
	JMP	lr
	.size	CCP_Single_Pulse_Shut_Enable, .-CCP_Single_Pulse_Shut_Enable
	.section .text$CCP_Single_Pulse_Enable
	.align	1
	.export	CCP_Single_Pulse_Enable
	.type	CCP_Single_Pulse_Enable, @function
CCP_Single_Pulse_Enable:
	ADD	r0,#88
	CMP	r1,#0
	JNZ	.L144
// inline asm begin
	// 1691 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #12
// inline asm end
	JMP	lr
.L144:
// inline asm begin
	// 1686 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #12
// inline asm end
	JMP	lr
	.size	CCP_Single_Pulse_Enable, .-CCP_Single_Pulse_Enable
	.section .text$CCP_PWM_Input_Measurement_Config
	.align	1
	.export	CCP_PWM_Input_Measurement_Config
	.type	CCP_PWM_Input_Measurement_Config, @function
CCP_PWM_Input_Measurement_Config:
	ADD	r0,#88
	CMP	r1,#0
	JNZ	.L148
// inline asm begin
	// 1722 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #14
// inline asm end
	JMP	lr
.L148:
// inline asm begin
	// 1717 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #14
// inline asm end
	JMP	lr
	.size	CCP_PWM_Input_Measurement_Config, .-CCP_PWM_Input_Measurement_Config
	.section .text$CCP_Input_XOR_Config
	.align	1
	.export	CCP_Input_XOR_Config
	.type	CCP_Input_XOR_Config, @function
CCP_Input_XOR_Config:
	ADD	r0,#88
	CMP	r1,#0
	JNZ	.L152
// inline asm begin
	// 1753 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #13
// inline asm end
	JMP	lr
.L152:
// inline asm begin
	// 1748 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #13
// inline asm end
	JMP	lr
	.size	CCP_Input_XOR_Config, .-CCP_Input_XOR_Config
	.section .text$CCP_Channel_DMA_Config
	.align	1
	.export	CCP_Channel_DMA_Config
	.type	CCP_Channel_DMA_Config, @function
CCP_Channel_DMA_Config:
	LD.w	r5,[r0+#22]
	MOV	r4,#128
	LSL	r1,r4,r1
	CMP	r2,#0
	JNZ	.L156
	NOT	r1,r1
	ANL	r1,r1,r5
	ST.w	[r0+#22],r1
	JMP	lr
.L156:
	ORL	r1,r1,r5
	ST.w	[r0+#22],r1
	JMP	lr
	.size	CCP_Channel_DMA_Config, .-CCP_Channel_DMA_Config
	.section .text$CCP_Generate_Trigger_Config
	.align	1
	.export	CCP_Generate_Trigger_Config
	.type	CCP_Generate_Trigger_Config, @function
CCP_Generate_Trigger_Config:
	LD.w	r5,[r0+#23]
	MOV	r4,#2
	LSL	r1,r4,r1
	CMP	r2,#0
	JNZ	.L160
	NOT	r1,r1
	ANL	r1,r1,r5
	ST.w	[r0+#23],r1
	JMP	lr
.L160:
	ORL	r1,r1,r5
	ST.w	[r0+#23],r1
	JMP	lr
	.size	CCP_Generate_Trigger_Config, .-CCP_Generate_Trigger_Config
	.section .text$CCP_USART_Receive_Config
	.align	1
	.export	CCP_USART_Receive_Config
	.type	CCP_USART_Receive_Config, @function
CCP_USART_Receive_Config:
	ADD	r0,#92
	CMP	r1,#0
	JNZ	.L164
// inline asm begin
	// 1859 "../src/kf32f_basic_gptim.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L164:
// inline asm begin
	// 1854 "../src/kf32f_basic_gptim.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	CCP_USART_Receive_Config, .-CCP_USART_Receive_Config
	.section .text$CCP_Get_Channel_Trigger_INT_Flag
	.align	1
	.export	CCP_Get_Channel_Trigger_INT_Flag
	.type	CCP_Get_Channel_Trigger_INT_Flag, @function
CCP_Get_Channel_Trigger_INT_Flag:
	LD.w	r5,[r0+#23]
	MOV	r4,#64
	LSL	r1,r4,r1
	ANL	r1,r1,r5
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
	LSR	r0,#31
	JMP	lr
	.size	CCP_Get_Channel_Trigger_INT_Flag, .-CCP_Get_Channel_Trigger_INT_Flag
	.section .text$CCP_Get_Trigger_DMA_INT_Flag
	.align	1
	.export	CCP_Get_Trigger_DMA_INT_Flag
	.type	CCP_Get_Trigger_DMA_INT_Flag, @function
CCP_Get_Trigger_DMA_INT_Flag:
	LD.w	r5,[r0+#13]
	MOV	r4,#1
	LSL	r1,r4,r1
	ANL	r1,r1,r5
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
	LSR	r0,#31
	JMP	lr
	.size	CCP_Get_Trigger_DMA_INT_Flag, .-CCP_Get_Trigger_DMA_INT_Flag
	.section .text$CCP_Channel_INT_Config
	.align	1
	.export	CCP_Channel_INT_Config
	.type	CCP_Channel_INT_Config, @function
CCP_Channel_INT_Config:
	LD.w	r5,[r0+#22]
	MOV	r4,#1
	LSL	r1,r4,r1
	CMP	r2,#0
	JNZ	.L170
	NOT	r1,r1
	ANL	r1,r1,r5
	ST.w	[r0+#22],r1
	JMP	lr
.L170:
	ORL	r1,r1,r5
	ST.w	[r0+#22],r1
	JMP	lr
	.size	CCP_Channel_INT_Config, .-CCP_Channel_INT_Config
	.section .text$CCP_Clear_Channel_INT_Flag
	.align	1
	.export	CCP_Clear_Channel_INT_Flag
	.type	CCP_Clear_Channel_INT_Flag, @function
CCP_Clear_Channel_INT_Flag:
	MOV	r4,#64
	LSL	r4,r4,r1
	LD.w	r5,[r0+#12]
	MOV	r3,#1
	LSL	r3,r3,r1
	ORL	r5,r3,r5
	ST.w	[r0+#12],r5
	ADD	r1,r1,#6
.L172:
	LD.w	r5,[r0+#23]
	ANL	r5,r4,r5
	LSR	r5,r5,r1
	CMP	r5,#0
	JNZ	.L172
	LD.w	r5,[r0+#12]
	NOT	r3,r3
	ANL	r3,r3,r5
	ST.w	[r0+#12],r3
	JMP	lr
	.size	CCP_Clear_Channel_INT_Flag, .-CCP_Clear_Channel_INT_Flag
