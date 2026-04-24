	.file	"kf32f_basic_atim.c"
	.section .text$ATIM_X_Configuration
	.align	1
	.export	ATIM_X_Configuration
	.type	ATIM_X_Configuration, @function
ATIM_X_Configuration:
	LD.h	r5,[r1]
	ST.w	[r0],r5
	LD.h	r5,[r1+#1]
	ST.w	[r0+#2],r5
	LD.h	r5,[r1+#2]
	ST.w	[r0+#4],r5
	LD.w	r3,[r0+#9]
	LD.h	r5,[r1+#8]
	LD	r4,#-58236
	ANL	r4,r3,r4
	ORL	r4,r5,r4
	LD.w	r5,[r1+#2]
	ORL	r4,r4,r5
	LD.h	r5,[r1+#3]
	LSL	r5,#3
	ORL	r5,r4,r5
	LD.h	r3,[r1+#7]
	LD.h	r4,[r1+#6]
	ORL	r4,r3,r4
	ZXT.h	r4,r4
	ORL	r5,r5,r4
	ST.w	[r0+#9],r5
	JMP	lr
	.size	ATIM_X_Configuration, .-ATIM_X_Configuration
	.section .text$ATIM_Z_Configuration
	.align	1
	.export	ATIM_Z_Configuration
	.type	ATIM_Z_Configuration, @function
ATIM_Z_Configuration:
	LD.h	r5,[r1]
	ST.w	[r0+#1],r5
	LD.h	r5,[r1+#1]
	ST.w	[r0+#3],r5
	LD.h	r5,[r1+#2]
	ST.w	[r0+#5],r5
	LD.w	r3,[r0+#10]
	LD.h	r5,[r1+#8]
	LD	r4,#-58236
	ANL	r4,r3,r4
	ORL	r4,r5,r4
	LD.w	r5,[r1+#2]
	ORL	r4,r4,r5
	LD.h	r5,[r1+#3]
	LSL	r5,#3
	ORL	r5,r4,r5
	LD.h	r3,[r1+#7]
	LD.h	r4,[r1+#6]
	ORL	r4,r3,r4
	ZXT.h	r4,r4
	ORL	r5,r5,r4
	ST.w	[r0+#10],r5
	JMP	lr
	.size	ATIM_Z_Configuration, .-ATIM_Z_Configuration
	.section .text$ATIM_Struct_Init
	.align	1
	.export	ATIM_Struct_Init
	.type	ATIM_Struct_Init, @function
ATIM_Struct_Init:
	MOV	r5,#0
	ST.h	[r0],r5
	MOV	r4,#0
	NOT	r4,r4
	ST.h	[r0+#1],r4
	ST.h	[r0+#2],r5
	ST.h	[r0+#3],r5
	MOV	r4,#1
	LSL	r4,#15
	ST.w	[r0+#2],r4
	ST.h	[r0+#6],r5
	ST.h	[r0+#7],r5
	ST.h	[r0+#8],r5
	JMP	lr
	.size	ATIM_Struct_Init, .-ATIM_Struct_Init
	.section .text$ATIM_X_Cmd
	.align	1
	.export	ATIM_X_Cmd
	.type	ATIM_X_Cmd, @function
ATIM_X_Cmd:
	ADD	r0,#36
	CMP	r1,#0
	JNZ	.L8
// inline asm begin
	// 195 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #2
// inline asm end
	JMP	lr
.L8:
// inline asm begin
	// 190 "../src/kf32f_basic_atim.c" 1
	SET [r0], #2
// inline asm end
	JMP	lr
	.size	ATIM_X_Cmd, .-ATIM_X_Cmd
	.section .text$ATIM_Z_Cmd
	.align	1
	.export	ATIM_Z_Cmd
	.type	ATIM_Z_Cmd, @function
ATIM_Z_Cmd:
	ADD	r0,#40
	CMP	r1,#0
	JNZ	.L12
// inline asm begin
	// 222 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #2
// inline asm end
	JMP	lr
.L12:
// inline asm begin
	// 217 "../src/kf32f_basic_atim.c" 1
	SET [r0], #2
// inline asm end
	JMP	lr
	.size	ATIM_Z_Cmd, .-ATIM_Z_Cmd
	.section .text$ATIM_X_Updata_Configuration
	.align	1
	.export	ATIM_X_Updata_Configuration
	.type	ATIM_X_Updata_Configuration, @function
ATIM_X_Updata_Configuration:
	ZXT.b	r1,r1
	MOV	r5,#196
	ST.w	[r0+r5],r1
	MOV	r5,#148
	LD.w	r4,[r0+r5]
	LSL	r2,#2
	CLR	r4,#2
	CLR	r4,#3
	ORL	r4,r2,r4
	LSL	r3,#3
	ORL	r4,r4,r3
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ATIM_X_Updata_Configuration, .-ATIM_X_Updata_Configuration
	.section .text$ATIM_Z_Updata_Configuration
	.align	1
	.export	ATIM_Z_Updata_Configuration
	.type	ATIM_Z_Updata_Configuration, @function
ATIM_Z_Updata_Configuration:
	ZXT.b	r1,r1
	MOV	r5,#200
	ST.w	[r0+r5],r1
	MOV	r5,#148
	LD.w	r4,[r0+r5]
	LSL	r2,#4
	CLR	r4,#4
	CLR	r4,#5
	ORL	r4,r2,r4
	LSL	r3,#5
	ORL	r4,r4,r3
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ATIM_Z_Updata_Configuration, .-ATIM_Z_Updata_Configuration
	.section .text$ATIM_X_Updata_Cmd
	.align	1
	.export	ATIM_X_Updata_Cmd
	.type	ATIM_X_Updata_Cmd, @function
ATIM_X_Updata_Cmd:
	MOV	r5,#148
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L18
// inline asm begin
	// 321 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L18:
// inline asm begin
	// 316 "../src/kf32f_basic_atim.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	ATIM_X_Updata_Cmd, .-ATIM_X_Updata_Cmd
	.section .text$ATIM_Z_Updata_Cmd
	.align	1
	.export	ATIM_Z_Updata_Cmd
	.type	ATIM_Z_Updata_Cmd, @function
ATIM_Z_Updata_Cmd:
	MOV	r5,#148
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L22
// inline asm begin
	// 348 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L22:
// inline asm begin
	// 343 "../src/kf32f_basic_atim.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	ATIM_Z_Updata_Cmd, .-ATIM_Z_Updata_Cmd
	.section .text$ATIM_X_Set_Counter
	.align	1
	.export	ATIM_X_Set_Counter
	.type	ATIM_X_Set_Counter, @function
ATIM_X_Set_Counter:
	ZXT.h	r1,r1
	ST.w	[r0],r1
	JMP	lr
	.size	ATIM_X_Set_Counter, .-ATIM_X_Set_Counter
	.section .text$ATIM_Z_Set_Counter
	.align	1
	.export	ATIM_Z_Set_Counter
	.type	ATIM_Z_Set_Counter, @function
ATIM_Z_Set_Counter:
	ZXT.h	r1,r1
	ST.w	[r0+#1],r1
	JMP	lr
	.size	ATIM_Z_Set_Counter, .-ATIM_Z_Set_Counter
	.section .text$ATIM_X_Set_Period
	.align	1
	.export	ATIM_X_Set_Period
	.type	ATIM_X_Set_Period, @function
ATIM_X_Set_Period:
	ZXT.h	r1,r1
	ST.w	[r0+#2],r1
	JMP	lr
	.size	ATIM_X_Set_Period, .-ATIM_X_Set_Period
	.section .text$ATIM_Z_Set_Period
	.align	1
	.export	ATIM_Z_Set_Period
	.type	ATIM_Z_Set_Period, @function
ATIM_Z_Set_Period:
	ZXT.h	r1,r1
	ST.w	[r0+#3],r1
	JMP	lr
	.size	ATIM_Z_Set_Period, .-ATIM_Z_Set_Period
	.section .text$ATIM_X_Set_Prescaler
	.align	1
	.export	ATIM_X_Set_Prescaler
	.type	ATIM_X_Set_Prescaler, @function
ATIM_X_Set_Prescaler:
	ZXT.h	r1,r1
	ST.w	[r0+#4],r1
	JMP	lr
	.size	ATIM_X_Set_Prescaler, .-ATIM_X_Set_Prescaler
	.section .text$ATIM_Z_Set_Prescaler
	.align	1
	.export	ATIM_Z_Set_Prescaler
	.type	ATIM_Z_Set_Prescaler, @function
ATIM_Z_Set_Prescaler:
	ZXT.h	r1,r1
	ST.w	[r0+#5],r1
	JMP	lr
	.size	ATIM_Z_Set_Prescaler, .-ATIM_Z_Set_Prescaler
	.section .text$ATIM_X_Counter_Mode_Config
	.align	1
	.export	ATIM_X_Counter_Mode_Config
	.type	ATIM_X_Counter_Mode_Config, @function
ATIM_X_Counter_Mode_Config:
	LD.w	r4,[r0+#9]
	LD	r5,#-57345
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#9],r1
	JMP	lr
	.size	ATIM_X_Counter_Mode_Config, .-ATIM_X_Counter_Mode_Config
	.section .text$ATIM_Z_Counter_Mode_Config
	.align	1
	.export	ATIM_Z_Counter_Mode_Config
	.type	ATIM_Z_Counter_Mode_Config, @function
ATIM_Z_Counter_Mode_Config:
	LD.w	r4,[r0+#10]
	LD	r5,#-57345
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#10],r1
	JMP	lr
	.size	ATIM_Z_Counter_Mode_Config, .-ATIM_Z_Counter_Mode_Config
	.section .text$ATIM_X_Clock_Config
	.align	1
	.export	ATIM_X_Clock_Config
	.type	ATIM_X_Clock_Config, @function
ATIM_X_Clock_Config:
	LD.w	r5,[r0+#9]
	CLR	r5,#8
	CLR	r5,#9
	ORL	r1,r1,r5
	ST.w	[r0+#9],r1
	JMP	lr
	.size	ATIM_X_Clock_Config, .-ATIM_X_Clock_Config
	.section .text$ATIM_Z_Clock_Config
	.align	1
	.export	ATIM_Z_Clock_Config
	.type	ATIM_Z_Clock_Config, @function
ATIM_Z_Clock_Config:
	LD.w	r5,[r0+#10]
	CLR	r5,#8
	CLR	r5,#9
	ORL	r1,r1,r5
	ST.w	[r0+#10],r1
	JMP	lr
	.size	ATIM_Z_Clock_Config, .-ATIM_Z_Clock_Config
	.section .text$ATIM_X_Postscaler_Config
	.align	1
	.export	ATIM_X_Postscaler_Config
	.type	ATIM_X_Postscaler_Config, @function
ATIM_X_Postscaler_Config:
	LD.w	r5,[r0+#9]
	LSL	r1,#3
	MOV	r4,#120
	NOT	r4,r4
	ANL	r5,r5,r4
	ORL	r5,r1,r5
	ST.w	[r0+#9],r5
	JMP	lr
	.size	ATIM_X_Postscaler_Config, .-ATIM_X_Postscaler_Config
	.section .text$ATIM_Z_Postscaler_Config
	.align	1
	.export	ATIM_Z_Postscaler_Config
	.type	ATIM_Z_Postscaler_Config, @function
ATIM_Z_Postscaler_Config:
	LD.w	r5,[r0+#10]
	LSL	r1,#3
	MOV	r4,#120
	NOT	r4,r4
	ANL	r5,r5,r4
	ORL	r5,r1,r5
	ST.w	[r0+#10],r5
	JMP	lr
	.size	ATIM_Z_Postscaler_Config, .-ATIM_Z_Postscaler_Config
	.section .text$ATIM_X_External_Pulse_Sync_Config
	.align	1
	.export	ATIM_X_External_Pulse_Sync_Config
	.type	ATIM_X_External_Pulse_Sync_Config, @function
ATIM_X_External_Pulse_Sync_Config:
	ADD	r0,#36
	CMP	r1,#0
	JNZ	.L38
// inline asm begin
	// 643 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L38:
// inline asm begin
	// 638 "../src/kf32f_basic_atim.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	ATIM_X_External_Pulse_Sync_Config, .-ATIM_X_External_Pulse_Sync_Config
	.section .text$ATIM_Z_External_Pulse_Sync_Config
	.align	1
	.export	ATIM_Z_External_Pulse_Sync_Config
	.type	ATIM_Z_External_Pulse_Sync_Config, @function
ATIM_Z_External_Pulse_Sync_Config:
	ADD	r0,#40
	CMP	r1,#0
	JNZ	.L42
// inline asm begin
	// 672 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L42:
// inline asm begin
	// 667 "../src/kf32f_basic_atim.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	ATIM_Z_External_Pulse_Sync_Config, .-ATIM_Z_External_Pulse_Sync_Config
	.section .text$ATIM_X_Work_Mode_Config
	.align	1
	.export	ATIM_X_Work_Mode_Config
	.type	ATIM_X_Work_Mode_Config, @function
ATIM_X_Work_Mode_Config:
	ADD	r0,#36
	CMP	r1,#0
	JNZ	.L46
// inline asm begin
	// 701 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L46:
// inline asm begin
	// 696 "../src/kf32f_basic_atim.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	ATIM_X_Work_Mode_Config, .-ATIM_X_Work_Mode_Config
	.section .text$ATIM_Z_Work_Mode_Config
	.align	1
	.export	ATIM_Z_Work_Mode_Config
	.type	ATIM_Z_Work_Mode_Config, @function
ATIM_Z_Work_Mode_Config:
	ADD	r0,#40
	CMP	r1,#0
	JNZ	.L50
// inline asm begin
	// 730 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L50:
// inline asm begin
	// 725 "../src/kf32f_basic_atim.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	ATIM_Z_Work_Mode_Config, .-ATIM_Z_Work_Mode_Config
	.section .text$ATIM_X_Get_Direction
	.align	1
	.export	ATIM_X_Get_Direction
	.type	ATIM_X_Get_Direction, @function
ATIM_X_Get_Direction:
	LD.w	r0,[r0+#9]
	LSR	r0,#7
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	ATIM_X_Get_Direction, .-ATIM_X_Get_Direction
	.section .text$ATIM_Z_Get_Direction
	.align	1
	.export	ATIM_Z_Get_Direction
	.type	ATIM_Z_Get_Direction, @function
ATIM_Z_Get_Direction:
	LD.w	r0,[r0+#10]
	LSR	r0,#7
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	ATIM_Z_Get_Direction, .-ATIM_Z_Get_Direction
	.section .text$ATIM_X_Overflow_AD_Enable
	.align	1
	.export	ATIM_X_Overflow_AD_Enable
	.type	ATIM_X_Overflow_AD_Enable, @function
ATIM_X_Overflow_AD_Enable:
	ADD	r0,#36
	CMP	r1,#0
	JNZ	.L56
// inline asm begin
	// 805 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #12
// inline asm end
	JMP	lr
.L56:
// inline asm begin
	// 800 "../src/kf32f_basic_atim.c" 1
	SET [r0], #12
// inline asm end
	JMP	lr
	.size	ATIM_X_Overflow_AD_Enable, .-ATIM_X_Overflow_AD_Enable
	.section .text$ATIM_Z_Overflow_AD_Enable
	.align	1
	.export	ATIM_Z_Overflow_AD_Enable
	.type	ATIM_Z_Overflow_AD_Enable, @function
ATIM_Z_Overflow_AD_Enable:
	ADD	r0,#40
	CMP	r1,#0
	JNZ	.L60
// inline asm begin
	// 832 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #12
// inline asm end
	JMP	lr
.L60:
// inline asm begin
	// 827 "../src/kf32f_basic_atim.c" 1
	SET [r0], #12
// inline asm end
	JMP	lr
	.size	ATIM_Z_Overflow_AD_Enable, .-ATIM_Z_Overflow_AD_Enable
	.section .text$ATIM_X_Underflow_AD_Enable
	.align	1
	.export	ATIM_X_Underflow_AD_Enable
	.type	ATIM_X_Underflow_AD_Enable, @function
ATIM_X_Underflow_AD_Enable:
	ADD	r0,#36
	CMP	r1,#0
	JNZ	.L64
// inline asm begin
	// 859 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #11
// inline asm end
	JMP	lr
.L64:
// inline asm begin
	// 854 "../src/kf32f_basic_atim.c" 1
	SET [r0], #11
// inline asm end
	JMP	lr
	.size	ATIM_X_Underflow_AD_Enable, .-ATIM_X_Underflow_AD_Enable
	.section .text$ATIM_Z_Underflow_AD_Enable
	.align	1
	.export	ATIM_Z_Underflow_AD_Enable
	.type	ATIM_Z_Underflow_AD_Enable, @function
ATIM_Z_Underflow_AD_Enable:
	ADD	r0,#40
	CMP	r1,#0
	JNZ	.L68
// inline asm begin
	// 886 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #11
// inline asm end
	JMP	lr
.L68:
// inline asm begin
	// 881 "../src/kf32f_basic_atim.c" 1
	SET [r0], #11
// inline asm end
	JMP	lr
	.size	ATIM_Z_Underflow_AD_Enable, .-ATIM_Z_Underflow_AD_Enable
	.section .text$ATIM_X_TriggerAD_Config
	.align	1
	.export	ATIM_X_TriggerAD_Config
	.type	ATIM_X_TriggerAD_Config, @function
ATIM_X_TriggerAD_Config:
	ADD	r0,#36
	CMP	r1,#0
	JNZ	.L72
// inline asm begin
	// 913 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #10
// inline asm end
	JMP	lr
.L72:
// inline asm begin
	// 908 "../src/kf32f_basic_atim.c" 1
	SET [r0], #10
// inline asm end
	JMP	lr
	.size	ATIM_X_TriggerAD_Config, .-ATIM_X_TriggerAD_Config
	.section .text$ATIM_Z_TriggerAD_Config
	.align	1
	.export	ATIM_Z_TriggerAD_Config
	.type	ATIM_Z_TriggerAD_Config, @function
ATIM_Z_TriggerAD_Config:
	ADD	r0,#40
	CMP	r1,#0
	JNZ	.L76
// inline asm begin
	// 940 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #10
// inline asm end
	JMP	lr
.L76:
// inline asm begin
	// 935 "../src/kf32f_basic_atim.c" 1
	SET [r0], #10
// inline asm end
	JMP	lr
	.size	ATIM_Z_TriggerAD_Config, .-ATIM_Z_TriggerAD_Config
	.section .text$ATIM_X_Set_TriggerAD_Signal
	.align	1
	.export	ATIM_X_Set_TriggerAD_Signal
	.type	ATIM_X_Set_TriggerAD_Signal, @function
ATIM_X_Set_TriggerAD_Signal:
	ZXT.h	r1,r1
	ZXT.h	r2,r2
	ST.w	[r0+#6],r1
	ST.w	[r0+#7],r2
	JMP	lr
	.size	ATIM_X_Set_TriggerAD_Signal, .-ATIM_X_Set_TriggerAD_Signal
	.section .text$ATIM_Z_Set_TriggerAD_Signal
	.align	1
	.export	ATIM_Z_Set_TriggerAD_Signal
	.type	ATIM_Z_Set_TriggerAD_Signal, @function
ATIM_Z_Set_TriggerAD_Signal:
	ZXT.h	r1,r1
	ST.w	[r0+#8],r1
	JMP	lr
	.size	ATIM_Z_Set_TriggerAD_Signal, .-ATIM_Z_Set_TriggerAD_Signal
	.section .text$ATIM_X_Updata_Immediately_Config
	.align	1
	.export	ATIM_X_Updata_Immediately_Config
	.type	ATIM_X_Updata_Immediately_Config, @function
ATIM_X_Updata_Immediately_Config:
	MOV	r5,#148
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L82
// inline asm begin
	// 1004 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #3
// inline asm end
	JMP	lr
.L82:
// inline asm begin
	// 999 "../src/kf32f_basic_atim.c" 1
	SET [r0], #3
// inline asm end
	JMP	lr
	.size	ATIM_X_Updata_Immediately_Config, .-ATIM_X_Updata_Immediately_Config
	.section .text$ATIM_Z_Updata_Immediately_Config
	.align	1
	.export	ATIM_Z_Updata_Immediately_Config
	.type	ATIM_Z_Updata_Immediately_Config, @function
ATIM_Z_Updata_Immediately_Config:
	MOV	r5,#148
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L86
// inline asm begin
	// 1032 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #5
// inline asm end
	JMP	lr
.L86:
// inline asm begin
	// 1027 "../src/kf32f_basic_atim.c" 1
	SET [r0], #5
// inline asm end
	JMP	lr
	.size	ATIM_Z_Updata_Immediately_Config, .-ATIM_Z_Updata_Immediately_Config
	.section .text$ATIM_X_Updata_Output_Ctl
	.align	1
	.export	ATIM_X_Updata_Output_Ctl
	.type	ATIM_X_Updata_Output_Ctl, @function
ATIM_X_Updata_Output_Ctl:
	MOV	r5,#148
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L90
// inline asm begin
	// 1060 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #2
// inline asm end
	JMP	lr
.L90:
// inline asm begin
	// 1055 "../src/kf32f_basic_atim.c" 1
	SET [r0], #2
// inline asm end
	JMP	lr
	.size	ATIM_X_Updata_Output_Ctl, .-ATIM_X_Updata_Output_Ctl
	.section .text$ATIM_Z_Updata_Output_Ctl
	.align	1
	.export	ATIM_Z_Updata_Output_Ctl
	.type	ATIM_Z_Updata_Output_Ctl, @function
ATIM_Z_Updata_Output_Ctl:
	MOV	r5,#148
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L94
// inline asm begin
	// 1089 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
.L94:
// inline asm begin
	// 1084 "../src/kf32f_basic_atim.c" 1
	SET [r0], #4
// inline asm end
	JMP	lr
	.size	ATIM_Z_Updata_Output_Ctl, .-ATIM_Z_Updata_Output_Ctl
	.section .text$ATIM_X_Updata_Enable
	.align	1
	.export	ATIM_X_Updata_Enable
	.type	ATIM_X_Updata_Enable, @function
ATIM_X_Updata_Enable:
	MOV	r5,#148
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L98
// inline asm begin
	// 1116 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L98:
// inline asm begin
	// 1111 "../src/kf32f_basic_atim.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	ATIM_X_Updata_Enable, .-ATIM_X_Updata_Enable
	.section .text$ATIM_Z_Updata_Enable
	.align	1
	.export	ATIM_Z_Updata_Enable
	.type	ATIM_Z_Updata_Enable, @function
ATIM_Z_Updata_Enable:
	MOV	r5,#148
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L102
// inline asm begin
	// 1143 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L102:
// inline asm begin
	// 1138 "../src/kf32f_basic_atim.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	ATIM_Z_Updata_Enable, .-ATIM_Z_Updata_Enable
	.section .text$ATIM_X_Set_Updata_Counter
	.align	1
	.export	ATIM_X_Set_Updata_Counter
	.type	ATIM_X_Set_Updata_Counter, @function
ATIM_X_Set_Updata_Counter:
	ZXT.b	r1,r1
	MOV	r5,#196
	ST.w	[r0+r5],r1
	JMP	lr
	.size	ATIM_X_Set_Updata_Counter, .-ATIM_X_Set_Updata_Counter
	.section .text$ATIM_Z_Set_Updata_Counter
	.align	1
	.export	ATIM_Z_Set_Updata_Counter
	.type	ATIM_Z_Set_Updata_Counter, @function
ATIM_Z_Set_Updata_Counter:
	ZXT.b	r1,r1
	MOV	r5,#200
	ST.w	[r0+r5],r1
	JMP	lr
	.size	ATIM_Z_Set_Updata_Counter, .-ATIM_Z_Set_Updata_Counter
	.section .text$ATIM_X_Slave_Mode_Config
	.align	1
	.export	ATIM_X_Slave_Mode_Config
	.type	ATIM_X_Slave_Mode_Config, @function
ATIM_X_Slave_Mode_Config:
	MOV	r5,#152
	LD.w	r4,[r0+r5]
	LSL	r1,#3
	MOV	r3,#56
	NOT	r3,r3
	ANL	r4,r4,r3
	ORL	r4,r1,r4
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ATIM_X_Slave_Mode_Config, .-ATIM_X_Slave_Mode_Config
	.section .text$ATIM_Z_Slave_Mode_Config
	.align	1
	.export	ATIM_Z_Slave_Mode_Config
	.type	ATIM_Z_Slave_Mode_Config, @function
ATIM_Z_Slave_Mode_Config:
	MOV	r5,#152
	LD.w	r4,[r0+r5]
	LSL	r1,#13
	LD	r3,#-57345
	ANL	r4,r4,r3
	ORL	r4,r1,r4
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ATIM_Z_Slave_Mode_Config, .-ATIM_Z_Slave_Mode_Config
	.section .text$ATIM_Master_Mode_Config
	.align	1
	.export	ATIM_Master_Mode_Config
	.type	ATIM_Master_Mode_Config, @function
ATIM_Master_Mode_Config:
	MOV	r5,#152
	LD.w	r3,[r0+r5]
	MOV	r4,#7
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r1,r1,r4
	ST.w	[r0+r5],r1
	JMP	lr
	.size	ATIM_Master_Mode_Config, .-ATIM_Master_Mode_Config
	.section .text$ATIM_Master_Slave_Snyc_Enable
	.align	1
	.export	ATIM_Master_Slave_Snyc_Enable
	.type	ATIM_Master_Slave_Snyc_Enable, @function
ATIM_Master_Slave_Snyc_Enable:
	MOV	r5,#152
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L111
// inline asm begin
	// 1285 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #9
// inline asm end
	JMP	lr
.L111:
// inline asm begin
	// 1280 "../src/kf32f_basic_atim.c" 1
	SET [r0], #9
// inline asm end
	JMP	lr
	.size	ATIM_Master_Slave_Snyc_Enable, .-ATIM_Master_Slave_Snyc_Enable
	.section .text$ATIM_Trigger_Select_Config
	.align	1
	.export	ATIM_Trigger_Select_Config
	.type	ATIM_Trigger_Select_Config, @function
ATIM_Trigger_Select_Config:
	MOV	r5,#152
	LD.w	r3,[r0+r5]
	LD	r4,#-449
	ANL	r4,r3,r4
	ORL	r1,r1,r4
	ST.w	[r0+r5],r1
	JMP	lr
	.size	ATIM_Trigger_Select_Config, .-ATIM_Trigger_Select_Config
	.section .text$ATIM_Timer_Unite_Enable
	.align	1
	.export	ATIM_Timer_Unite_Enable
	.type	ATIM_Timer_Unite_Enable, @function
ATIM_Timer_Unite_Enable:
	MOV	r5,#236
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L116
// inline asm begin
	// 1342 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L116:
// inline asm begin
	// 1337 "../src/kf32f_basic_atim.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	ATIM_Timer_Unite_Enable, .-ATIM_Timer_Unite_Enable
	.section .text$ATIM_X_Get_Counter
	.align	1
	.export	ATIM_X_Get_Counter
	.type	ATIM_X_Get_Counter, @function
ATIM_X_Get_Counter:
	LD.w	r0,[r0]
	ZXT.h	r0,r0
	JMP	lr
	.size	ATIM_X_Get_Counter, .-ATIM_X_Get_Counter
	.section .text$ATIM_Z_Get_Counter
	.align	1
	.export	ATIM_Z_Get_Counter
	.type	ATIM_Z_Get_Counter, @function
ATIM_Z_Get_Counter:
	LD.w	r0,[r0+#1]
	ZXT.h	r0,r0
	JMP	lr
	.size	ATIM_Z_Get_Counter, .-ATIM_Z_Get_Counter
	.section .text$ATIM_X_Get_Period
	.align	1
	.export	ATIM_X_Get_Period
	.type	ATIM_X_Get_Period, @function
ATIM_X_Get_Period:
	LD.w	r0,[r0+#2]
	ZXT.h	r0,r0
	JMP	lr
	.size	ATIM_X_Get_Period, .-ATIM_X_Get_Period
	.section .text$ATIM_Z_Get_Period
	.align	1
	.export	ATIM_Z_Get_Period
	.type	ATIM_Z_Get_Period, @function
ATIM_Z_Get_Period:
	LD.w	r0,[r0+#3]
	ZXT.h	r0,r0
	JMP	lr
	.size	ATIM_Z_Get_Period, .-ATIM_Z_Get_Period
	.section .text$ATIM_X_Get_Prescaler
	.align	1
	.export	ATIM_X_Get_Prescaler
	.type	ATIM_X_Get_Prescaler, @function
ATIM_X_Get_Prescaler:
	LD.w	r0,[r0+#4]
	ZXT.h	r0,r0
	JMP	lr
	.size	ATIM_X_Get_Prescaler, .-ATIM_X_Get_Prescaler
	.section .text$ATIM_Z_Get_Prescaler
	.align	1
	.export	ATIM_Z_Get_Prescaler
	.type	ATIM_Z_Get_Prescaler, @function
ATIM_Z_Get_Prescaler:
	LD.w	r0,[r0+#5]
	ZXT.h	r0,r0
	JMP	lr
	.size	ATIM_Z_Get_Prescaler, .-ATIM_Z_Get_Prescaler
	.section .text$ATIM_X_Updata_INT_Enable
	.align	1
	.export	ATIM_X_Updata_INT_Enable
	.type	ATIM_X_Updata_INT_Enable, @function
ATIM_X_Updata_INT_Enable:
	MOV	r5,#188
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L126
// inline asm begin
	// 1493 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #8
// inline asm end
	JMP	lr
.L126:
// inline asm begin
	// 1488 "../src/kf32f_basic_atim.c" 1
	SET [r0], #8
// inline asm end
	JMP	lr
	.size	ATIM_X_Updata_INT_Enable, .-ATIM_X_Updata_INT_Enable
	.section .text$ATIM_Z_Updata_INT_Enable
	.align	1
	.export	ATIM_Z_Updata_INT_Enable
	.type	ATIM_Z_Updata_INT_Enable, @function
ATIM_Z_Updata_INT_Enable:
	MOV	r5,#188
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L130
// inline asm begin
	// 1522 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #7
// inline asm end
	JMP	lr
.L130:
// inline asm begin
	// 1517 "../src/kf32f_basic_atim.c" 1
	SET [r0], #7
// inline asm end
	JMP	lr
	.size	ATIM_Z_Updata_INT_Enable, .-ATIM_Z_Updata_INT_Enable
	.section .text$ATIM_X_Overflow_INT_Enable
	.align	1
	.export	ATIM_X_Overflow_INT_Enable
	.type	ATIM_X_Overflow_INT_Enable, @function
ATIM_X_Overflow_INT_Enable:
	MOV	r5,#188
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L134
// inline asm begin
	// 1550 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
.L134:
// inline asm begin
	// 1545 "../src/kf32f_basic_atim.c" 1
	SET [r0], #6
// inline asm end
	JMP	lr
	.size	ATIM_X_Overflow_INT_Enable, .-ATIM_X_Overflow_INT_Enable
	.section .text$ATIM_Z_Overflow_INT_Enable
	.align	1
	.export	ATIM_Z_Overflow_INT_Enable
	.type	ATIM_Z_Overflow_INT_Enable, @function
ATIM_Z_Overflow_INT_Enable:
	MOV	r5,#188
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L138
// inline asm begin
	// 1578 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #5
// inline asm end
	JMP	lr
.L138:
// inline asm begin
	// 1573 "../src/kf32f_basic_atim.c" 1
	SET [r0], #5
// inline asm end
	JMP	lr
	.size	ATIM_Z_Overflow_INT_Enable, .-ATIM_Z_Overflow_INT_Enable
	.section .text$ATIM_X_Trigger_INT_Enable
	.align	1
	.export	ATIM_X_Trigger_INT_Enable
	.type	ATIM_X_Trigger_INT_Enable, @function
ATIM_X_Trigger_INT_Enable:
	MOV	r5,#188
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L142
// inline asm begin
	// 1606 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
.L142:
// inline asm begin
	// 1601 "../src/kf32f_basic_atim.c" 1
	SET [r0], #4
// inline asm end
	JMP	lr
	.size	ATIM_X_Trigger_INT_Enable, .-ATIM_X_Trigger_INT_Enable
	.section .text$ATIM_X_Updata_DMA_Enable
	.align	1
	.export	ATIM_X_Updata_DMA_Enable
	.type	ATIM_X_Updata_DMA_Enable, @function
ATIM_X_Updata_DMA_Enable:
	MOV	r5,#228
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L146
// inline asm begin
	// 1634 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #7
// inline asm end
	JMP	lr
.L146:
// inline asm begin
	// 1629 "../src/kf32f_basic_atim.c" 1
	SET [r0], #7
// inline asm end
	JMP	lr
	.size	ATIM_X_Updata_DMA_Enable, .-ATIM_X_Updata_DMA_Enable
	.section .text$ATIM_Z_Updata_DMA_Enable
	.align	1
	.export	ATIM_Z_Updata_DMA_Enable
	.type	ATIM_Z_Updata_DMA_Enable, @function
ATIM_Z_Updata_DMA_Enable:
	MOV	r5,#228
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L150
// inline asm begin
	// 1662 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
.L150:
// inline asm begin
	// 1657 "../src/kf32f_basic_atim.c" 1
	SET [r0], #6
// inline asm end
	JMP	lr
	.size	ATIM_Z_Updata_DMA_Enable, .-ATIM_Z_Updata_DMA_Enable
	.section .text$ATIM_X_Trigger_DMA_Enable
	.align	1
	.export	ATIM_X_Trigger_DMA_Enable
	.type	ATIM_X_Trigger_DMA_Enable, @function
ATIM_X_Trigger_DMA_Enable:
	MOV	r5,#228
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L154
// inline asm begin
	// 1690 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #5
// inline asm end
	JMP	lr
.L154:
// inline asm begin
	// 1685 "../src/kf32f_basic_atim.c" 1
	SET [r0], #5
// inline asm end
	JMP	lr
	.size	ATIM_X_Trigger_DMA_Enable, .-ATIM_X_Trigger_DMA_Enable
	.section .text$ATIM_X_Get_Updata_INT_Flag
	.align	1
	.export	ATIM_X_Get_Updata_INT_Flag
	.type	ATIM_X_Get_Updata_INT_Flag, @function
ATIM_X_Get_Updata_INT_Flag:
	MOV	r5,#192
	LD.w	r0,[r0+r5]
	LSR	r0,#14
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	ATIM_X_Get_Updata_INT_Flag, .-ATIM_X_Get_Updata_INT_Flag
	.section .text$ATIM_Z_Get_Updata_INT_Flag
	.align	1
	.export	ATIM_Z_Get_Updata_INT_Flag
	.type	ATIM_Z_Get_Updata_INT_Flag, @function
ATIM_Z_Get_Updata_INT_Flag:
	MOV	r5,#192
	LD.w	r0,[r0+r5]
	LSR	r0,#13
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	ATIM_Z_Get_Updata_INT_Flag, .-ATIM_Z_Get_Updata_INT_Flag
	.section .text$ATIM_X_Get_Overflow_INT_Flag
	.align	1
	.export	ATIM_X_Get_Overflow_INT_Flag
	.type	ATIM_X_Get_Overflow_INT_Flag, @function
ATIM_X_Get_Overflow_INT_Flag:
	MOV	r5,#192
	LD.w	r0,[r0+r5]
	LSR	r0,#12
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	ATIM_X_Get_Overflow_INT_Flag, .-ATIM_X_Get_Overflow_INT_Flag
	.section .text$ATIM_Z_Get_Overflow_INT_Flag
	.align	1
	.export	ATIM_Z_Get_Overflow_INT_Flag
	.type	ATIM_Z_Get_Overflow_INT_Flag, @function
ATIM_Z_Get_Overflow_INT_Flag:
	MOV	r5,#192
	LD.w	r0,[r0+r5]
	LSR	r0,#11
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	ATIM_Z_Get_Overflow_INT_Flag, .-ATIM_Z_Get_Overflow_INT_Flag
	.section .text$ATIM_X_Get_Trigger_INT_Flag
	.align	1
	.export	ATIM_X_Get_Trigger_INT_Flag
	.type	ATIM_X_Get_Trigger_INT_Flag, @function
ATIM_X_Get_Trigger_INT_Flag:
	MOV	r5,#192
	LD.w	r0,[r0+r5]
	LSR	r0,#10
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	ATIM_X_Get_Trigger_INT_Flag, .-ATIM_X_Get_Trigger_INT_Flag
	.section .text$ATIM_X_Generate_Trigger_Config
	.align	1
	.export	ATIM_X_Generate_Trigger_Config
	.type	ATIM_X_Generate_Trigger_Config, @function
ATIM_X_Generate_Trigger_Config:
	MOV	r5,#192
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L163
// inline asm begin
	// 1842 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #5
// inline asm end
	JMP	lr
.L163:
// inline asm begin
	// 1837 "../src/kf32f_basic_atim.c" 1
	SET [r0], #5
// inline asm end
	JMP	lr
	.size	ATIM_X_Generate_Trigger_Config, .-ATIM_X_Generate_Trigger_Config
	.section .text$ATIM_X_Get_Updata_DMA_INT_Flag
	.align	1
	.export	ATIM_X_Get_Updata_DMA_INT_Flag
	.type	ATIM_X_Get_Updata_DMA_INT_Flag, @function
ATIM_X_Get_Updata_DMA_INT_Flag:
	MOV	r5,#204
	LD.w	r0,[r0+r5]
	LSR	r0,#7
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	ATIM_X_Get_Updata_DMA_INT_Flag, .-ATIM_X_Get_Updata_DMA_INT_Flag
	.section .text$ATIM_Z_Get_Updata_DMA_INT_Flag
	.align	1
	.export	ATIM_Z_Get_Updata_DMA_INT_Flag
	.type	ATIM_Z_Get_Updata_DMA_INT_Flag, @function
ATIM_Z_Get_Updata_DMA_INT_Flag:
	MOV	r5,#204
	LD.w	r0,[r0+r5]
	LSR	r0,#6
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	ATIM_Z_Get_Updata_DMA_INT_Flag, .-ATIM_Z_Get_Updata_DMA_INT_Flag
	.section .text$ATIM_X_Get_Trigger_DMA_INT_Flag
	.align	1
	.export	ATIM_X_Get_Trigger_DMA_INT_Flag
	.type	ATIM_X_Get_Trigger_DMA_INT_Flag, @function
ATIM_X_Get_Trigger_DMA_INT_Flag:
	MOV	r5,#204
	LD.w	r0,[r0+r5]
	LSR	r0,#5
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	ATIM_X_Get_Trigger_DMA_INT_Flag, .-ATIM_X_Get_Trigger_DMA_INT_Flag
	.section .text$ATIM_X_Clear_Updata_INT_Flag
	.align	1
	.export	ATIM_X_Clear_Updata_INT_Flag
	.type	ATIM_X_Clear_Updata_INT_Flag, @function
ATIM_X_Clear_Updata_INT_Flag:
	MOV	r5,#232
	ADD	r5,r0,r5
// inline asm begin
	// 1934 "../src/kf32f_basic_atim.c" 1
	SET [r5], #8
// inline asm end
	MOV	r3,#192
	MOV	r4,#1
	LSL	r4,#14
.L168:
	LD.w	r5,[r0+r3]
	ANL	r5,r5,r4
	JNZ	.L168
	MOV	r5,#232
	ADD	r0,r0,r5
// inline asm begin
	// 1936 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #8
// inline asm end
	JMP	lr
	.size	ATIM_X_Clear_Updata_INT_Flag, .-ATIM_X_Clear_Updata_INT_Flag
	.section .text$ATIM_Z_Clear_Updata_INT_Flag
	.align	1
	.export	ATIM_Z_Clear_Updata_INT_Flag
	.type	ATIM_Z_Clear_Updata_INT_Flag, @function
ATIM_Z_Clear_Updata_INT_Flag:
	MOV	r5,#232
	ADD	r5,r0,r5
// inline asm begin
	// 1952 "../src/kf32f_basic_atim.c" 1
	SET [r5], #7
// inline asm end
	MOV	r3,#192
	MOV	r4,#1
	LSL	r4,#13
.L171:
	LD.w	r5,[r0+r3]
	ANL	r5,r5,r4
	JNZ	.L171
	MOV	r5,#232
	ADD	r0,r0,r5
// inline asm begin
	// 1954 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #7
// inline asm end
	JMP	lr
	.size	ATIM_Z_Clear_Updata_INT_Flag, .-ATIM_Z_Clear_Updata_INT_Flag
	.section .text$ATIM_X_Clear_Overflow_INT_Flag
	.align	1
	.export	ATIM_X_Clear_Overflow_INT_Flag
	.type	ATIM_X_Clear_Overflow_INT_Flag, @function
ATIM_X_Clear_Overflow_INT_Flag:
	MOV	r5,#232
	ADD	r5,r0,r5
// inline asm begin
	// 1970 "../src/kf32f_basic_atim.c" 1
	SET [r5], #6
// inline asm end
	MOV	r3,#192
	MOV	r4,#1
	LSL	r4,#12
.L174:
	LD.w	r5,[r0+r3]
	ANL	r5,r5,r4
	JNZ	.L174
	MOV	r5,#232
	ADD	r0,r0,r5
// inline asm begin
	// 1972 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
	.size	ATIM_X_Clear_Overflow_INT_Flag, .-ATIM_X_Clear_Overflow_INT_Flag
	.section .text$ATIM_Z_Clear_Overflow_INT_Flag
	.align	1
	.export	ATIM_Z_Clear_Overflow_INT_Flag
	.type	ATIM_Z_Clear_Overflow_INT_Flag, @function
ATIM_Z_Clear_Overflow_INT_Flag:
	MOV	r5,#232
	ADD	r5,r0,r5
// inline asm begin
	// 1988 "../src/kf32f_basic_atim.c" 1
	SET [r5], #5
// inline asm end
	MOV	r3,#192
	MOV	r4,#1
	LSL	r4,#11
.L177:
	LD.w	r5,[r0+r3]
	ANL	r5,r5,r4
	JNZ	.L177
	MOV	r5,#232
	ADD	r0,r0,r5
// inline asm begin
	// 1990 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #5
// inline asm end
	JMP	lr
	.size	ATIM_Z_Clear_Overflow_INT_Flag, .-ATIM_Z_Clear_Overflow_INT_Flag
	.section .text$ATIM_X_Clear_Trigger_INT_Flag
	.align	1
	.export	ATIM_X_Clear_Trigger_INT_Flag
	.type	ATIM_X_Clear_Trigger_INT_Flag, @function
ATIM_X_Clear_Trigger_INT_Flag:
	MOV	r5,#232
	ADD	r5,r0,r5
// inline asm begin
	// 2006 "../src/kf32f_basic_atim.c" 1
	SET [r5], #4
// inline asm end
	MOV	r3,#192
	MOV	r4,#1
	LSL	r4,#10
.L180:
	LD.w	r5,[r0+r3]
	ANL	r5,r5,r4
	JNZ	.L180
	MOV	r5,#232
	ADD	r0,r0,r5
// inline asm begin
	// 2008 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
	.size	ATIM_X_Clear_Trigger_INT_Flag, .-ATIM_X_Clear_Trigger_INT_Flag
	.section .text$ECCP_Compare_Configuration
	.align	1
	.export	ECCP_Compare_Configuration
	.type	ECCP_Compare_Configuration, @function
ECCP_Compare_Configuration:
	PUSH	r6
	ZXT.h	r3,r3
	LSL	r1,#2
	MOV	r5,#128
	LD.w	r6,[r0+r5]
	MOV	r4,#15
	LSL	r4,r4,r1
	NOT	r4,r4
	ANL	r4,r4,r6
	LSL	r2,r2,r1
	ORL	r4,r4,r2
	ST.w	[r0+r5],r4
	MOV	r5,#132
	ADD	r0,r0,r5
	ST.w	[r0+r1],r3
	POP	r6
	JMP	lr
	.size	ECCP_Compare_Configuration, .-ECCP_Compare_Configuration
	.section .text$ECCP_Capture_Configuration
	.align	1
	.export	ECCP_Capture_Configuration
	.type	ECCP_Capture_Configuration, @function
ECCP_Capture_Configuration:
	MOV	r5,#128
	LD.w	r2,[r0+r5]
	LDP.w	r4,[r1]	<<	#2
	MOV	r3,#15
	LSL	r3,r3,r4
	NOT	r3,r3
	ANL	r3,r3,r2
	LD.w	r2,[r1+#1]
	LSL	r4,r2,r4
	ORL	r4,r3,r4
	ST.w	[r0+r5],r4
	LD.w	r4,[r1+#2]
	MOV	r5,#152
	LD.w	r3,[r0+r5]
	MOV	r1,#11
	LSL	r2,r4,r1
	LSL	r4,#12
	ORL	r4,r2,r4
	CLR	r3,#11
	CLR	r3,#12
	ORL	r4,r4,r3
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ECCP_Capture_Configuration, .-ECCP_Capture_Configuration
	.section .text$ECCP_Capture_Struct_Init
	.align	1
	.export	ECCP_Capture_Struct_Init
	.type	ECCP_Capture_Struct_Init, @function
ECCP_Capture_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	JMP	lr
	.size	ECCP_Capture_Struct_Init, .-ECCP_Capture_Struct_Init
	.section .text$ECCP_PWM_Configuration
	.align	1
	.export	ECCP_PWM_Configuration
	.type	ECCP_PWM_Configuration, @function
ECCP_PWM_Configuration:
	PUSH	r6
	LDP.w	r5,[r1]	<<	#2
	MOV	r4,#128
	LD.w	r2,[r0+r4]
	MOV	r3,#15
	LSL	r3,r3,r5
	NOT	r3,r3
	ANL	r3,r3,r2
	LD.w	r6,[r1+#1]
	LSL	r2,r6,r5
	ORL	r3,r3,r2
	ST.w	[r0+r4],r3
	MOV	r4,#132
	ADD	r5,r5,r4
	LD.h	r4,[r1+#4]
	ST.w	[r5+r0],r4
	MOV	r5,#148
	LD.w	r4,[r0+r5]
	CLR	r4,#6
	LD.w	r2,[r1+#4]
	ORL	r4,r4,r2
	ST.w	[r0+r5],r4
	LD.w	r5,[r1]
	MOV	r4,#156
	CMP	r5,#3
	JZ	.L188
	LD.w	r2,[r0+r4]
	MOV	r3,#255
	NOT	r3,r3
	ANL	r3,r2,r3
	LD.b	r2,[r1+#10]
	ORL	r3,r3,r2
	ST.w	[r0+r4],r3
.L187:
	MOV	r4,#164
	LD.w	r2,[r0+r4]
	MOV	r3,#255
	ADD	r3,r3,#1
	LSL	r3,r3,r5
	NOT	r3,r3
	ANL	r3,r3,r2
	LD.b	r2,[r1+#11]
	LSL	r2,r2,r5
	ORL	r3,r3,r2
	ST.w	[r0+r4],r3
	MOV	r4,#160
	LD.w	r2,[r0+r4]
	LSL	r5,#2
	MOV	r3,#15
	LSL	r3,r3,r5
	NOT	r3,r3
	ANL	r3,r3,r2
	LD.h	r2,[r1+#6]
	LSL	r2,#2
	LD.h	r6,[r1+#7]
	ORL	r2,r2,r6
	LSL	r5,r2,r5
	ORL	r5,r3,r5
	ST.w	[r0+r4],r5
	MOV	r5,#152
	LD.w	r4,[r0+r5]
	CLR	r4,#10
	LD.w	r3,[r1+#5]
	LSL	r3,#10
	ORL	r4,r4,r3
	ST.w	[r0+r5],r4
	MOV	r5,#236
	LD.w	r4,[r0+r5]
	CLR	r4,#0
	LD.w	r3,[r1+#6]
	ORL	r4,r4,r3
	ST.w	[r0+r5],r4
	POP	r6
	JMP	lr
.L188:
	LD.w	r6,[r0+r4]
	LD.b	r2,[r1+#10]
	LSL	r2,#8
	LD	r3,#-65281
	ANL	r3,r6,r3
	ORL	r3,r2,r3
	ST.w	[r0+r4],r3
	JMP	.L187
	.size	ECCP_PWM_Configuration, .-ECCP_PWM_Configuration
	.section .text$ECCP_PWM_Struct_Init
	.align	1
	.export	ECCP_PWM_Struct_Init
	.type	ECCP_PWM_Struct_Init, @function
ECCP_PWM_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.h	[r0+#4],r5
	ST.b	[r0+#10],r5
	ST.b	[r0+#11],r5
	ST.h	[r0+#6],r5
	ST.h	[r0+#7],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	ST.w	[r0+#6],r5
	JMP	lr
	.size	ECCP_PWM_Struct_Init, .-ECCP_PWM_Struct_Init
	.section .text$ECCP_Capture_Mode_Config
	.align	1
	.export	ECCP_Capture_Mode_Config
	.type	ECCP_Capture_Mode_Config, @function
ECCP_Capture_Mode_Config:
	LSL	r1,#2
	MOV	r5,#128
	LD.w	r3,[r0+r5]
	MOV	r4,#15
	LSL	r4,r4,r1
	NOT	r4,r4
	ANL	r4,r4,r3
	LSL	r2,r2,r1
	ORL	r4,r4,r2
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ECCP_Capture_Mode_Config, .-ECCP_Capture_Mode_Config
	.section .text$ECCP_Compare_Mode_Config
	.align	1
	.export	ECCP_Compare_Mode_Config
	.type	ECCP_Compare_Mode_Config, @function
ECCP_Compare_Mode_Config:
	LSL	r1,#2
	MOV	r5,#128
	LD.w	r3,[r0+r5]
	MOV	r4,#15
	LSL	r4,r4,r1
	NOT	r4,r4
	ANL	r4,r4,r3
	LSL	r2,r2,r1
	ORL	r4,r4,r2
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ECCP_Compare_Mode_Config, .-ECCP_Compare_Mode_Config
	.section .text$ECCP_PWM_Mode_Config
	.align	1
	.export	ECCP_PWM_Mode_Config
	.type	ECCP_PWM_Mode_Config, @function
ECCP_PWM_Mode_Config:
	MOV	r5,#128
	LD.w	r3,[r0+r5]
	MOV	r4,#15
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r1,r1,r4
	ST.w	[r0+r5],r1
	JMP	lr
	.size	ECCP_PWM_Mode_Config, .-ECCP_PWM_Mode_Config
	.section .text$ECCP_Get_Capture_Result
	.align	1
	.export	ECCP_Get_Capture_Result
	.type	ECCP_Get_Capture_Result, @function
ECCP_Get_Capture_Result:
	MOV	r5,#208
	ADD	r0,r0,r5
	LSL	r1,#2
	LD.h	r0,[r0+r1]
	ZXT.h	r0,r0
	JMP	lr
	.size	ECCP_Get_Capture_Result, .-ECCP_Get_Capture_Result
	.section .text$ECCP_Set_Compare_Result
	.align	1
	.export	ECCP_Set_Compare_Result
	.type	ECCP_Set_Compare_Result, @function
ECCP_Set_Compare_Result:
	ZXT.h	r2,r2
	MOV	r5,#132
	ADD	r0,r0,r5
	LSL	r1,#2
	ST.w	[r0+r1],r2
	JMP	lr
	.size	ECCP_Set_Compare_Result, .-ECCP_Set_Compare_Result
	.section .text$ECCP_Generate_Trigger_Config
	.align	1
	.export	ECCP_Generate_Trigger_Config
	.type	ECCP_Generate_Trigger_Config, @function
ECCP_Generate_Trigger_Config:
	MOV	r5,#192
	LD.w	r4,[r0+r5]
	MOV	r3,#2
	LSL	r1,r3,r1
	CMP	r2,#0
	JNZ	.L198
	NOT	r1,r1
	ANL	r1,r1,r4
	ST.w	[r0+r5],r1
	JMP	lr
.L198:
	ORL	r1,r1,r4
	ST.w	[r0+r5],r1
	JMP	lr
	.size	ECCP_Generate_Trigger_Config, .-ECCP_Generate_Trigger_Config
	.section .text$ECCP_PWM_Input_Enable
	.align	1
	.export	ECCP_PWM_Input_Enable
	.type	ECCP_PWM_Input_Enable, @function
ECCP_PWM_Input_Enable:
	MOV	r5,#152
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L202
// inline asm begin
	// 2460 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #12
// inline asm end
	JMP	lr
.L202:
// inline asm begin
	// 2455 "../src/kf32f_basic_atim.c" 1
	SET [r0], #12
// inline asm end
	JMP	lr
	.size	ECCP_PWM_Input_Enable, .-ECCP_PWM_Input_Enable
	.section .text$ECCP_Input_XOR_Enable
	.align	1
	.export	ECCP_Input_XOR_Enable
	.type	ECCP_Input_XOR_Enable, @function
ECCP_Input_XOR_Enable:
	MOV	r5,#152
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L206
// inline asm begin
	// 2488 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #11
// inline asm end
	JMP	lr
.L206:
// inline asm begin
	// 2483 "../src/kf32f_basic_atim.c" 1
	SET [r0], #11
// inline asm end
	JMP	lr
	.size	ECCP_Input_XOR_Enable, .-ECCP_Input_XOR_Enable
	.section .text$ECCP_Single_Pulse_Enable
	.align	1
	.export	ECCP_Single_Pulse_Enable
	.type	ECCP_Single_Pulse_Enable, @function
ECCP_Single_Pulse_Enable:
	MOV	r5,#152
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L210
// inline asm begin
	// 2516 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #10
// inline asm end
	JMP	lr
.L210:
// inline asm begin
	// 2511 "../src/kf32f_basic_atim.c" 1
	SET [r0], #10
// inline asm end
	JMP	lr
	.size	ECCP_Single_Pulse_Enable, .-ECCP_Single_Pulse_Enable
	.section .text$ECCP_Single_Pulse_Shut_Enable
	.align	1
	.export	ECCP_Single_Pulse_Shut_Enable
	.type	ECCP_Single_Pulse_Shut_Enable, @function
ECCP_Single_Pulse_Shut_Enable:
	MOV	r5,#236
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L214
// inline asm begin
	// 2544 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L214:
// inline asm begin
	// 2539 "../src/kf32f_basic_atim.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	ECCP_Single_Pulse_Shut_Enable, .-ECCP_Single_Pulse_Shut_Enable
	.section .text$ECCP_PWM_Restart_Enable
	.align	1
	.export	ECCP_PWM_Restart_Enable
	.type	ECCP_PWM_Restart_Enable, @function
ECCP_PWM_Restart_Enable:
	MOV	r5,#236
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L218
// inline asm begin
	// 2572 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #2
// inline asm end
	JMP	lr
.L218:
// inline asm begin
	// 2567 "../src/kf32f_basic_atim.c" 1
	SET [r0], #2
// inline asm end
	JMP	lr
	.size	ECCP_PWM_Restart_Enable, .-ECCP_PWM_Restart_Enable
	.section .text$ECCP_Dead_Time_Config
	.align	1
	.export	ECCP_Dead_Time_Config
	.type	ECCP_Dead_Time_Config, @function
ECCP_Dead_Time_Config:
	ZXT.b	r2,r2
	MOV	r5,#156
	LD.w	r3,[r0+r5]
	CMP	r1,#3
	JZ	.L222
	MOV	r4,#255
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r2,r2,r4
	ST.w	[r0+r5],r2
	JMP	lr
.L222:
	LSL	r2,#8
	LD	r4,#-65281
	ANL	r4,r3,r4
	ORL	r2,r2,r4
	ST.w	[r0+r5],r2
	JMP	lr
	.size	ECCP_Dead_Time_Config, .-ECCP_Dead_Time_Config
	.section .text$ECCP_Channel_Output_Control
	.align	1
	.export	ECCP_Channel_Output_Control
	.type	ECCP_Channel_Output_Control, @function
ECCP_Channel_Output_Control:
	LSL	r1,#2
	ADD	r2,r2,r1
	MOV	r5,#160
	LD.w	r1,[r0+r5]
	MOV	r4,#3
	LSL	r4,r4,r2
	NOT	r4,r4
	ANL	r4,r4,r1
	LSL	r3,r3,r2
	ORL	r4,r4,r3
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ECCP_Channel_Output_Control, .-ECCP_Channel_Output_Control
	.section .text$ECCP_Channel_Output_Mode
	.align	1
	.export	ECCP_Channel_Output_Mode
	.type	ECCP_Channel_Output_Mode, @function
ECCP_Channel_Output_Mode:
	MOV	r5,#164
	LD.w	r3,[r0+r5]
	MOV	r4,#255
	ADD	r4,r4,#1
	LSL	r4,r4,r1
	NOT	r4,r4
	ANL	r4,r4,r3
	ADD	r1,#8
	LSL	r2,r2,r1
	ORL	r4,r4,r2
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ECCP_Channel_Output_Mode, .-ECCP_Channel_Output_Mode
	.section .text$ECCP_Channel_Work_State_Config
	.align	1
	.export	ECCP_Channel_Work_State_Config
	.type	ECCP_Channel_Work_State_Config, @function
ECCP_Channel_Work_State_Config:
	MOV	r5,#168
	LD.w	r3,[r0+r5]
	MOV	r4,#255
	ADD	r4,r4,#1
	LSL	r4,r4,r1
	NOT	r4,r4
	ANL	r4,r4,r3
	ADD	r1,#8
	LSL	r2,r2,r1
	ORL	r4,r4,r2
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ECCP_Channel_Work_State_Config, .-ECCP_Channel_Work_State_Config
	.section .text$ECCP_Get_Channel_Work_State
	.align	1
	.export	ECCP_Get_Channel_Work_State
	.type	ECCP_Get_Channel_Work_State, @function
ECCP_Get_Channel_Work_State:
	MOV	r5,#168
	LD.w	r5,[r0+r5]
	MOV	r4,#255
	ADD	r4,r4,#1
	LSL	r1,r4,r1
	ANL	r1,r1,r5
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
	LSR	r0,#31
	JMP	lr
	.size	ECCP_Get_Channel_Work_State, .-ECCP_Get_Channel_Work_State
	.section .text$ECCP_Channel_Shutdown_Signal
	.align	1
	.export	ECCP_Channel_Shutdown_Signal
	.type	ECCP_Channel_Shutdown_Signal, @function
ECCP_Channel_Shutdown_Signal:
	ADD	r1,r1,r1
	MOV	r5,#168
	LD.w	r3,[r0+r5]
	MOV	r4,#3
	LSL	r4,r4,r1
	NOT	r4,r4
	ANL	r4,r4,r3
	LSL	r2,r2,r1
	ORL	r4,r4,r2
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ECCP_Channel_Shutdown_Signal, .-ECCP_Channel_Shutdown_Signal
	.section .text$ECCP_Channel_Pin_Ctl
	.align	1
	.export	ECCP_Channel_Pin_Ctl
	.type	ECCP_Channel_Pin_Ctl, @function
ECCP_Channel_Pin_Ctl:
	PUSH	{r6, r7}
	MOV	r5,#172
	LD.w	r6,[r0+r5]
	ADD	r4,r1,r1
	ADD	r4,r4,r2
	MOV	r7,#3
	LSL	r4,r7,r4
	NOT	r4,r4
	ANL	r4,r4,r6
	LSL	r1,#2
	ADD	r2,r2,r1
	LSL	r3,r3,r2
	ORL	r4,r4,r3
	ST.w	[r0+r5],r4
	POP	{r6, r7}
	JMP	lr
	.size	ECCP_Channel_Pin_Ctl, .-ECCP_Channel_Pin_Ctl
	.section .text$ECCP_Zero_Clock_Config
	.align	1
	.export	ECCP_Zero_Clock_Config
	.type	ECCP_Zero_Clock_Config, @function
ECCP_Zero_Clock_Config:
	MOV	r5,#176
	LD.w	r3,[r0+r5]
	LD	r4,#-3841
	ANL	r4,r3,r4
	ORL	r1,r1,r4
	ST.w	[r0+r5],r1
	JMP	lr
	.size	ECCP_Zero_Clock_Config, .-ECCP_Zero_Clock_Config
	.section .text$ECCP_Channel_Pin_Tristate_Enable
	.align	1
	.export	ECCP_Channel_Pin_Tristate_Enable
	.type	ECCP_Channel_Pin_Tristate_Enable, @function
ECCP_Channel_Pin_Tristate_Enable:
	LSR	r2,#1
	ADD	r1,r1,r1
	ADD	r1,r2,r1
	MOV	r5,#184
	LD.w	r2,[r0+r5]
	MOV	r4,#255
	LSL	r4,r4,r1
	NOT	r4,r4
	ANL	r4,r4,r2
	LSL	r3,r3,r1
	ORL	r4,r4,r3
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ECCP_Channel_Pin_Tristate_Enable, .-ECCP_Channel_Pin_Tristate_Enable
	.section .text$ECCP_Channel_INT_Enable
	.align	1
	.export	ECCP_Channel_INT_Enable
	.type	ECCP_Channel_INT_Enable, @function
ECCP_Channel_INT_Enable:
	MOV	r5,#188
	LD.w	r4,[r0+r5]
	MOV	r3,#1
	LSL	r1,r3,r1
	CMP	r2,#0
	JNZ	.L234
	NOT	r1,r1
	ANL	r1,r1,r4
	ST.w	[r0+r5],r1
	JMP	lr
.L234:
	ORL	r1,r1,r4
	ST.w	[r0+r5],r1
	JMP	lr
	.size	ECCP_Channel_INT_Enable, .-ECCP_Channel_INT_Enable
	.section .text$ECCP_X_Turn_off_DMA_Enable
	.align	1
	.export	ECCP_X_Turn_off_DMA_Enable
	.type	ECCP_X_Turn_off_DMA_Enable, @function
ECCP_X_Turn_off_DMA_Enable:
	MOV	r5,#228
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L238
// inline asm begin
	// 2960 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
.L238:
// inline asm begin
	// 2955 "../src/kf32f_basic_atim.c" 1
	SET [r0], #4
// inline asm end
	JMP	lr
	.size	ECCP_X_Turn_off_DMA_Enable, .-ECCP_X_Turn_off_DMA_Enable
	.section .text$ECCP_Channel_DMA_Enable
	.align	1
	.export	ECCP_Channel_DMA_Enable
	.type	ECCP_Channel_DMA_Enable, @function
ECCP_Channel_DMA_Enable:
	MOV	r5,#228
	LD.w	r4,[r0+r5]
	MOV	r3,#1
	LSL	r1,r3,r1
	CMP	r2,#0
	JNZ	.L242
	NOT	r1,r1
	ANL	r1,r1,r4
	ST.w	[r0+r5],r1
	JMP	lr
.L242:
	ORL	r1,r1,r4
	ST.w	[r0+r5],r1
	JMP	lr
	.size	ECCP_Channel_DMA_Enable, .-ECCP_Channel_DMA_Enable
	.section .text$ECCP_Get_Channel_Trigger_INT_Flag
	.align	1
	.export	ECCP_Get_Channel_Trigger_INT_Flag
	.type	ECCP_Get_Channel_Trigger_INT_Flag, @function
ECCP_Get_Channel_Trigger_INT_Flag:
	MOV	r5,#192
	LD.w	r5,[r0+r5]
	MOV	r4,#64
	LSL	r1,r4,r1
	ANL	r1,r1,r5
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
	LSR	r0,#31
	JMP	lr
	.size	ECCP_Get_Channel_Trigger_INT_Flag, .-ECCP_Get_Channel_Trigger_INT_Flag
	.section .text$ECCP_X_Get_Turn_off_DMA_Flag
	.align	1
	.export	ECCP_X_Get_Turn_off_DMA_Flag
	.type	ECCP_X_Get_Turn_off_DMA_Flag, @function
ECCP_X_Get_Turn_off_DMA_Flag:
	MOV	r5,#204
	LD.w	r0,[r0+r5]
	LSR	r0,#4
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	ECCP_X_Get_Turn_off_DMA_Flag, .-ECCP_X_Get_Turn_off_DMA_Flag
	.section .text$ECCP_Get_Trigger_DMA_INT_Flag
	.align	1
	.export	ECCP_Get_Trigger_DMA_INT_Flag
	.type	ECCP_Get_Trigger_DMA_INT_Flag, @function
ECCP_Get_Trigger_DMA_INT_Flag:
	MOV	r5,#204
	LD.w	r5,[r0+r5]
	MOV	r4,#1
	LSL	r1,r4,r1
	ANL	r1,r1,r5
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
	LSR	r0,#31
	JMP	lr
	.size	ECCP_Get_Trigger_DMA_INT_Flag, .-ECCP_Get_Trigger_DMA_INT_Flag
	.section .text$ECCP_Clear_Channel_INT_Flag
	.align	1
	.export	ECCP_Clear_Channel_INT_Flag
	.type	ECCP_Clear_Channel_INT_Flag, @function
ECCP_Clear_Channel_INT_Flag:
	MOV	r2,#1
	LSL	r2,r2,r1
	MOV	r3,#64
	LSL	r3,r3,r1
	MOV	r5,#232
	LD.w	r4,[r0+r5]
	ORL	r4,r2,r4
	ST.w	[r0+r5],r4
	ADD	r1,r1,#6
	MOV	r4,#192
.L247:
	LD.w	r5,[r0+r4]
	ANL	r5,r3,r5
	LSR	r5,r5,r1
	CMP	r5,#0
	JNZ	.L247
	MOV	r5,#232
	LD.w	r4,[r0+r5]
	NOT	r2,r2
	ANL	r2,r2,r4
	ST.w	[r0+r5],r2
	JMP	lr
	.size	ECCP_Clear_Channel_INT_Flag, .-ECCP_Clear_Channel_INT_Flag
	.section .text$ECCP_PWM_Move_Phase_Enable
	.align	1
	.export	ECCP_PWM_Move_Phase_Enable
	.type	ECCP_PWM_Move_Phase_Enable, @function
ECCP_PWM_Move_Phase_Enable:
	MOV	r5,#148
	ADD	r0,r0,r5
	CMP	r1,#0
	JNZ	.L252
// inline asm begin
	// 3144 "../src/kf32f_basic_atim.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
.L252:
// inline asm begin
	// 3139 "../src/kf32f_basic_atim.c" 1
	SET [r0], #6
// inline asm end
	JMP	lr
	.size	ECCP_PWM_Move_Phase_Enable, .-ECCP_PWM_Move_Phase_Enable
	.section .text$ECCP_Channel_Zero_Detect_Sequential_Ctl
	.align	1
	.export	ECCP_Channel_Zero_Detect_Sequential_Ctl
	.type	ECCP_Channel_Zero_Detect_Sequential_Ctl, @function
ECCP_Channel_Zero_Detect_Sequential_Ctl:
	MOV	r5,#176
	LD.w	r3,[r0+r5]
	MOV	r4,#16
	LSL	r4,r4,r1
	NOT	r4,r4
	ANL	r4,r4,r3
	ADD	r1,r1,#4
	LSL	r2,r2,r1
	ORL	r4,r4,r2
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ECCP_Channel_Zero_Detect_Sequential_Ctl, .-ECCP_Channel_Zero_Detect_Sequential_Ctl
	.section .text$ECCP_Get_Channel_Zero_Detection_State
	.align	1
	.export	ECCP_Get_Channel_Zero_Detection_State
	.type	ECCP_Get_Channel_Zero_Detection_State, @function
ECCP_Get_Channel_Zero_Detection_State:
	MOV	r5,#176
	LD.w	r5,[r0+r5]
	MOV	r4,#1
	LSL	r1,r4,r1
	ANL	r1,r1,r5
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
	LSR	r0,#31
	JMP	lr
	.size	ECCP_Get_Channel_Zero_Detection_State, .-ECCP_Get_Channel_Zero_Detection_State
	.section .text$ECCP_Clear_Channel_Zero_Detection_State
	.align	1
	.export	ECCP_Clear_Channel_Zero_Detection_State
	.type	ECCP_Clear_Channel_Zero_Detection_State, @function
ECCP_Clear_Channel_Zero_Detection_State:
	MOV	r5,#176
	LD.w	r4,[r0+r5]
	MOV	r3,#1
	LSL	r1,r3,r1
	NOT	r3,r1
	ANL	r4,r3,r4
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ECCP_Clear_Channel_Zero_Detection_State, .-ECCP_Clear_Channel_Zero_Detection_State
	.section .text$ECCP_Channel_Zero_Detect_Enable
	.align	1
	.export	ECCP_Channel_Zero_Detect_Enable
	.type	ECCP_Channel_Zero_Detect_Enable, @function
ECCP_Channel_Zero_Detect_Enable:
	MOV	r5,#180
	LD.w	r3,[r0+r5]
	MOV	r4,#1
	LSL	r4,#12
	LSL	r4,r4,r1
	NOT	r4,r4
	ANL	r4,r4,r3
	ADD	r1,#12
	LSL	r2,r2,r1
	ORL	r4,r4,r2
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ECCP_Channel_Zero_Detect_Enable, .-ECCP_Channel_Zero_Detect_Enable
	.section .text$ECCP_Channel_Zero_Voltage_Config
	.align	1
	.export	ECCP_Channel_Zero_Voltage_Config
	.type	ECCP_Channel_Zero_Voltage_Config, @function
ECCP_Channel_Zero_Voltage_Config:
	MOV	r5,#3
	MULS	r1,r1,r5
	MOV	r5,#180
	LD.w	r3,[r0+r5]
	MOV	r4,#7
	LSL	r4,r4,r1
	NOT	r4,r4
	ANL	r4,r4,r3
	LSL	r2,r2,r1
	ORL	r4,r4,r2
	ST.w	[r0+r5],r4
	JMP	lr
	.size	ECCP_Channel_Zero_Voltage_Config, .-ECCP_Channel_Zero_Voltage_Config
