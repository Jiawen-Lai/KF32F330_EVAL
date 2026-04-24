	.file	"kf32f_basic_can.c"
	.section .text$CAN_Reset
	.align	1
	.export	CAN_Reset
	.type	CAN_Reset, @function
CAN_Reset:
	PUSH	{r6, lr}
	LD	r5,#1073746176
	CMP	r0,r5
	JZ	.L6
	LD	r5,#1073746304
	CMP	r0,r5
	JZ	.L7
	LD	r5,#1073748224
	CMP	r0,r5
	JZ	.L8
.L1:
	POP	{r6, pc}
.L8:
	MOV	r0,#1
	LSL	r0,#18
	MOV	r1,#1
	LD	r6,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#18
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#18
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	POP	{r6, pc}
.L6:
	MOV	r0,#4
	MOV	r1,#1
	LD	r6,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#4
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#4
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L7:
	MOV	r0,#8
	MOV	r1,#1
	LD	r6,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#8
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#8
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
	.size	CAN_Reset, .-CAN_Reset
	.section .text$CAN_Configuration
	.align	1
	.export	CAN_Configuration
	.type	CAN_Configuration, @function
CAN_Configuration:
	LD.w	r3,[r0]
	LD.w	r2,[r1+#1]
	LD.w	r4,[r1+#2]
	ORL	r5,r2,r4
	SET	r5,#0
	LD.w	r4,[r1]
	LSL	r4,#7
	ORL	r5,r5,r4
	MOV	r4,#231
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r5,r5,r4
	ST.w	[r0],r5
	LD.w	r3,[r0+#1]
	LD.b	r5,[r1+#12]
	LD	r4,#-65536
	ANL	r4,r3,r4
	ORL	r4,r5,r4
	LD.w	r5,[r1+#4]
	ORL	r4,r4,r5
	LD.b	r5,[r1+#13]
	LSL	r5,#6
	ORL	r5,r4,r5
	LD.b	r4,[r1+#14]
	LSL	r4,#8
	ORL	r5,r5,r4
	LD.b	r4,[r1+#15]
	LSL	r4,#12
	ORL	r5,r5,r4
	ST.w	[r0+#1],r5
	LD.w	r2,[r1+#5]
	ST.w	[r0+#4],r2
	LD.w	r5,[r1+#6]
	ST.w	[r0+#5],r5
// inline asm begin
	// 176 "../src/kf32f_basic_can.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
	.size	CAN_Configuration, .-CAN_Configuration
	.section .text$CAN_Struct_Init
	.align	1
	.export	CAN_Struct_Init
	.type	CAN_Struct_Init, @function
CAN_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.b	[r0+#12],r5
	ST.b	[r0+#13],r5
	ST.b	[r0+#14],r5
	ST.b	[r0+#15],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	ST.w	[r0+#6],r5
	JMP	lr
	.size	CAN_Struct_Init, .-CAN_Struct_Init
	.section .text$CAN_Get_Receive_Message_Counter
	.align	1
	.export	CAN_Get_Receive_Message_Counter
	.type	CAN_Get_Receive_Message_Counter, @function
CAN_Get_Receive_Message_Counter:
	LD.w	r0,[r0]
	LD	r5,#520093696
	ANL	r0,r0,r5
	LSR	r0,#24
	JMP	lr
	.size	CAN_Get_Receive_Message_Counter, .-CAN_Get_Receive_Message_Counter
	.section .text$CAN_Get_Transmit_Status
	.align	1
	.export	CAN_Get_Transmit_Status
	.type	CAN_Get_Transmit_Status, @function
CAN_Get_Transmit_Status:
	LD.w	r5,[r0]
	ANL	r1,r1,r5
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
	LSR	r0,#31
	JMP	lr
	.size	CAN_Get_Transmit_Status, .-CAN_Get_Transmit_Status
	.section .text$CAN_Cmd
	.align	1
	.export	CAN_Cmd
	.type	CAN_Cmd, @function
CAN_Cmd:
	CMP	r1,#0
	JNZ	.L16
// inline asm begin
	// 309 "../src/kf32f_basic_can.c" 1
	CLR [r0], #7
// inline asm end
	JMP	lr
.L16:
// inline asm begin
	// 304 "../src/kf32f_basic_can.c" 1
	SET [r0], #7
// inline asm end
	JMP	lr
	.size	CAN_Cmd, .-CAN_Cmd
	.section .text$CAN_Clock_Source_Config
	.align	1
	.export	CAN_Clock_Source_Config
	.type	CAN_Clock_Source_Config, @function
CAN_Clock_Source_Config:
	LD.w	r5,[r0]
	CLR	r5,#5
	CLR	r5,#6
	ORL	r1,r1,r5
	ST.w	[r0],r1
	JMP	lr
	.size	CAN_Clock_Source_Config, .-CAN_Clock_Source_Config
	.section .text$CAN_Sleep_Mode_Enable
	.align	1
	.export	CAN_Sleep_Mode_Enable
	.type	CAN_Sleep_Mode_Enable, @function
CAN_Sleep_Mode_Enable:
	CMP	r1,#0
	JNZ	.L21
// inline asm begin
	// 355 "../src/kf32f_basic_can.c" 1
	CLR [r0], #3
// inline asm end
	JMP	lr
.L21:
// inline asm begin
	// 350 "../src/kf32f_basic_can.c" 1
	SET [r0], #3
// inline asm end
	JMP	lr
	.size	CAN_Sleep_Mode_Enable, .-CAN_Sleep_Mode_Enable
	.section .text$CAN_Reset_Mode_Enable
	.align	1
	.export	CAN_Reset_Mode_Enable
	.type	CAN_Reset_Mode_Enable, @function
CAN_Reset_Mode_Enable:
	CMP	r1,#0
	JNZ	.L25
// inline asm begin
	// 381 "../src/kf32f_basic_can.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L25:
// inline asm begin
	// 376 "../src/kf32f_basic_can.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	CAN_Reset_Mode_Enable, .-CAN_Reset_Mode_Enable
	.section .text$CAN_Work_Mode_Config
	.align	1
	.export	CAN_Work_Mode_Config
	.type	CAN_Work_Mode_Config, @function
CAN_Work_Mode_Config:
	LD.w	r5,[r0]
	CLR	r5,#1
	CLR	r5,#2
	ORL	r1,r1,r5
	ST.w	[r0],r1
	JMP	lr
	.size	CAN_Work_Mode_Config, .-CAN_Work_Mode_Config
	.section .text$CAN_Bus_Sample_Times_Config
	.align	1
	.export	CAN_Bus_Sample_Times_Config
	.type	CAN_Bus_Sample_Times_Config, @function
CAN_Bus_Sample_Times_Config:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L30
// inline asm begin
	// 432 "../src/kf32f_basic_can.c" 1
	CLR [r0], #15
// inline asm end
	JMP	lr
.L30:
// inline asm begin
	// 427 "../src/kf32f_basic_can.c" 1
	SET [r0], #15
// inline asm end
	JMP	lr
	.size	CAN_Bus_Sample_Times_Config, .-CAN_Bus_Sample_Times_Config
	.section .text$CAN_Time_Segment_Config
	.align	1
	.export	CAN_Time_Segment_Config
	.type	CAN_Time_Segment_Config, @function
CAN_Time_Segment_Config:
	LD.w	r5,[r0+#1]
	LSL	r1,#8
	LD	r4,#-32513
	ANL	r5,r5,r4
	ORL	r5,r1,r5
	LSL	r2,#12
	ORL	r5,r5,r2
	ST.w	[r0+#1],r5
	JMP	lr
	.size	CAN_Time_Segment_Config, .-CAN_Time_Segment_Config
	.section .text$CAN_Sync_Jump_Width_Config
	.align	1
	.export	CAN_Sync_Jump_Width_Config
	.type	CAN_Sync_Jump_Width_Config, @function
CAN_Sync_Jump_Width_Config:
	LD.w	r5,[r0+#1]
	LSL	r1,#6
	CLR	r5,#6
	CLR	r5,#7
	ORL	r5,r1,r5
	ST.w	[r0+#1],r5
	JMP	lr
	.size	CAN_Sync_Jump_Width_Config, .-CAN_Sync_Jump_Width_Config
	.section .text$CAN_Baud_Rate_Preset_Config
	.align	1
	.export	CAN_Baud_Rate_Preset_Config
	.type	CAN_Baud_Rate_Preset_Config, @function
CAN_Baud_Rate_Preset_Config:
	LD.w	r4,[r0+#1]
	MOV	r5,#63
	NOT	r5,r5
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	CAN_Baud_Rate_Preset_Config, .-CAN_Baud_Rate_Preset_Config
	.section .text$CAN_Get_Error_Code
	.align	1
	.export	CAN_Get_Error_Code
	.type	CAN_Get_Error_Code, @function
CAN_Get_Error_Code:
	LD.w	r5,[r0+#2]
	LD	r4,#49152
	ANL	r4,r5,r4
	LSR	r4,#14
	ST.b	[r1],r4
	MOV	r4,#1
	LSL	r4,#13
	ANL	r4,r5,r4
	LSR	r4,#13
	ST.b	[r1+#1],r4
	LD	r4,#7936
	ANL	r4,r5,r4
	LSR	r4,#8
	ST.b	[r1+#2],r4
	MOV	r4,#31
	ANL	r5,r5,r4
	ST.b	[r1+#3],r5
	JMP	lr
	.size	CAN_Get_Error_Code, .-CAN_Get_Error_Code
	.section .text$CAN_Get_Error_Warning_Limit
	.align	1
	.export	CAN_Get_Error_Warning_Limit
	.type	CAN_Get_Error_Warning_Limit, @function
CAN_Get_Error_Warning_Limit:
	LD.w	r0,[r0+#3]
	ZXT.b	r0,r0
	JMP	lr
	.size	CAN_Get_Error_Warning_Limit, .-CAN_Get_Error_Warning_Limit
	.section .text$CAN_Get_Error_Counter
	.align	1
	.export	CAN_Get_Error_Counter
	.type	CAN_Get_Error_Counter, @function
CAN_Get_Error_Counter:
	LD.w	r0,[r0+#3]
	CMP	r1,#0
	JNZ	.L39
	LD	r5,#65280
	ANL	r0,r0,r5
	LSR	r0,#8
	JMP	lr
.L39:
	ZXT.b	r0,r0
	JMP	lr
	.size	CAN_Get_Error_Counter, .-CAN_Get_Error_Counter
	.section .text$CAN_Error_Warning_Limit_Config
	.align	1
	.export	CAN_Error_Warning_Limit_Config
	.type	CAN_Error_Warning_Limit_Config, @function
CAN_Error_Warning_Limit_Config:
	ZXT.b	r1,r1
	LD.w	r3,[r0+#3]
	MOV	r4,#16
	LSL	r5,r1,r4
	LD	r4,#-16711681
	ANL	r1,r3,r4
	ORL	r1,r5,r1
	ST.w	[r0+#3],r1
	JMP	lr
	.size	CAN_Error_Warning_Limit_Config, .-CAN_Error_Warning_Limit_Config
	.section .text$CAN_Error_Counter_Config
	.align	1
	.export	CAN_Error_Counter_Config
	.type	CAN_Error_Counter_Config, @function
CAN_Error_Counter_Config:
	ZXT.b	r2,r2
	CMP	r1,#0
	JNZ	.L44
	LSL	r2,#8
	LD	r4,#-65281
	LD.w	r5,[r0+#3]
	ANL	r5,r4,r5
	ORL	r2,r5,r2
	ST.w	[r0+#3],r2
	JMP	lr
.L44:
	MOV	r4,#255
	NOT	r4,r4
	LD.w	r5,[r0+#3]
	ANL	r5,r4,r5
	ORL	r2,r5,r2
	ST.w	[r0+#3],r2
	JMP	lr
	.size	CAN_Error_Counter_Config, .-CAN_Error_Counter_Config
	.section .text$CAN_Acceptance_Config
	.align	1
	.export	CAN_Acceptance_Config
	.type	CAN_Acceptance_Config, @function
CAN_Acceptance_Config:
	ST.w	[r0+#4],r1
	JMP	lr
	.size	CAN_Acceptance_Config, .-CAN_Acceptance_Config
	.section .text$CAN_Get_Acceptance
	.align	1
	.export	CAN_Get_Acceptance
	.type	CAN_Get_Acceptance, @function
CAN_Get_Acceptance:
	LD.w	r0,[r0+#4]
	JMP	lr
	.size	CAN_Get_Acceptance, .-CAN_Get_Acceptance
	.section .text$CAN_Acceptance_Mask_Config
	.align	1
	.export	CAN_Acceptance_Mask_Config
	.type	CAN_Acceptance_Mask_Config, @function
CAN_Acceptance_Mask_Config:
	ST.w	[r0+#5],r1
	JMP	lr
	.size	CAN_Acceptance_Mask_Config, .-CAN_Acceptance_Mask_Config
	.section .text$CAN_Get_Acceptance_Mask
	.align	1
	.export	CAN_Get_Acceptance_Mask
	.type	CAN_Get_Acceptance_Mask, @function
CAN_Get_Acceptance_Mask:
	LD.w	r0,[r0+#5]
	JMP	lr
	.size	CAN_Get_Acceptance_Mask, .-CAN_Get_Acceptance_Mask
	.section .text$CAN_Transmit_Message_Configuration
	.align	1
	.export	CAN_Transmit_Message_Configuration
	.type	CAN_Transmit_Message_Configuration, @function
CAN_Transmit_Message_Configuration:
	LD.w	r5,[r1]
	LD.w	r2,[r0+#8]
	MOV	r4,#7
	LSL	r3,r5,r4
	LD.w	r4,[r1+#1]
	LSL	r4,#6
	ORL	r3,r3,r4
	LD.w	r4,[r1+#2]
	ORL	r3,r3,r4
	MOV	r4,#207
	NOT	r4,r4
	ANL	r4,r2,r4
	ORL	r4,r3,r4
	ST.w	[r0+#8],r4
	CMP	r5,#1
	JZ	.L50
	LD.w	r3,[r0+#9]
	LD.b	r4,[r1+#21]
	LD.w	r5,[r1+#3]
	LSL	r5,#21
	ORL	r4,r4,r5
	LD	r5,#2031616
	ANL	r5,r3,r5
	ORL	r5,r4,r5
	LD.b	r4,[r1+#20]
	LSL	r4,#8
	ORL	r5,r5,r4
	ST.w	[r0+#9],r5
	LD.b	r4,[r1+#22]
	LSL	r4,#24
	LD.b	r5,[r1+#23]
	LSL	r5,#16
	ORL	r5,r4,r5
	LD.b	r4,[r1+#25]
	ORL	r5,r5,r4
	LD.b	r4,[r1+#24]
	LSL	r4,#8
	ORL	r5,r5,r4
	ST.w	[r0+#10],r5
	LD.w	r4,[r0+#11]
	LD.b	r3,[r1+#26]
	LSL	r3,#24
	LD.b	r5,[r1+#27]
	LSL	r5,#16
	ORL	r5,r3,r5
	ZXT.h	r4,r4
	ORL	r5,r5,r4
	ST.w	[r0+#11],r5
	JMP	lr
.L50:
	LD.w	r4,[r0+#9]
	MOV	r5,#7
	ANL	r5,r4,r5
	LD.w	r4,[r1+#4]
	LSL	r4,#3
	ORL	r5,r5,r4
	ST.w	[r0+#9],r5
	LD.b	r4,[r1+#20]
	LSL	r4,#24
	LD.b	r5,[r1+#21]
	LSL	r5,#16
	ORL	r5,r4,r5
	LD.b	r4,[r1+#23]
	ORL	r5,r5,r4
	LD.b	r4,[r1+#22]
	LSL	r4,#8
	ORL	r5,r5,r4
	ST.w	[r0+#10],r5
	LD.b	r4,[r1+#24]
	LSL	r4,#24
	LD.b	r5,[r1+#25]
	LSL	r5,#16
	ORL	r5,r4,r5
	LD.b	r4,[r1+#27]
	ORL	r5,r5,r4
	LD.b	r4,[r1+#26]
	LSL	r4,#8
	ORL	r5,r5,r4
	ST.w	[r0+#11],r5
	JMP	lr
	.size	CAN_Transmit_Message_Configuration, .-CAN_Transmit_Message_Configuration
	.section .text$CAN_Receive_Message_Configuration
	.align	1
	.export	CAN_Receive_Message_Configuration
	.type	CAN_Receive_Message_Configuration, @function
CAN_Receive_Message_Configuration:
	PUSH	r6
	SUB	sp,#8
	MOV	r5,#1
	ST.b	[sp],r5
	MOV	r5,#0
	ST.b	[sp+#1],r5
	MOV	r4,#7
	ST.b	[sp+#2],r4
	MOV	r4,#6
	ST.b	[sp+#3],r4
	MOV	r4,#5
	ST.b	[sp+#4],r4
	MOV	r4,#4
	ST.b	[sp+#5],r4
	MOV	r4,#11
	ST.b	[sp+#6],r4
	MOV	r4,#10
	ST.b	[sp+#7],r4
	LD	r4,#1073746304
	CMP	r0,r4
	JZ	.L55
	LD	r4,#1073748224
	CMP	r0,r4
	JZ	.L56
	LD	r4,#1073746176
	CMP	r0,r4
	JZ	.L67
.L54:
	ADD	r0,r5,r1
	LD.w	r5,[r5+r1]
	MOV	r3,#128
	ANL	r3,r5,r3
	LSR	r3,#7
	ST.w	[r2],r3
	MOV	r4,#64
	ANL	r4,r5,r4
	LSR	r4,#6
	ST.w	[r2+#1],r4
	CMP	r4,#0
	JNZ	.L52
	MOV	r1,#15
	ANL	r1,r5,r1
	ST.w	[r2+#2],r1
	CMP	r3,#1
	JZ	.L58
	ADD	r3,r0,#4
	LD.w	r5,[r0+#1]
	LSR	r5,#21
	ST.w	[r2+#3],r5
	CMP	r1,#0
	JZ	.L52
	ADD	r2,#20
	MOV	r4,sp
	ADD	r5,r4,#1
	ADD	r1,sp
	MOV	r4,#1
	JMP	.L62
.L77:
	LD.b	r4,[r5++]
.L62:
	LD.b	r4,[r3+r4]
	ST.b	[r2++],r4
	CMP	r5,r1
	JNZ	.L77
.L52:
	ADD	sp,#8
	POP	r6
	JMP	lr
.L55:
	LD	r5,#536803584
	JMP	.L54
.L67:
	LD	r5,#536803328
	JMP	.L54
.L56:
	LD	r5,#536803840
	JMP	.L54
.L58:
	LD.w	r5,[r0+#1]
	LSR	r5,#3
	ST.w	[r2+#4],r5
	CMP	r1,#3
	JHI	.L63
	CMP	r1,#0
	JZ	.L52
	ADD	r0,#11
.L64:
	SUB	r5,r0,r4
	LD.b	r3,[r5]
	ADD	r5,r2,r4
	ST.b	[r5+#20],r3
	ADD	r4,r4,#1
	CMP	r4,r1
	JNZ	.L64
	JMP	.L52
.L63:
	MOV	r5,#11
	ADD	r6,r0,r5
.L65:
	SUB	r5,r6,r4
	LD.b	r3,[r5]
	ADD	r5,r2,r4
	ST.b	[r5+#20],r3
	ADD	r4,r4,#1
	CMP	r4,#4
	JNZ	.L65
	CMP	r1,#4
	JZ	.L52
	ADD	r0,#19
.L66:
	SUB	r5,r0,r4
	LD.b	r3,[r5]
	ADD	r5,r2,r4
	ST.b	[r5+#20],r3
	ADD	r4,r4,#1
	CMP	r4,r1
	JNZ	.L66
	JMP	.L52
	.size	CAN_Receive_Message_Configuration, .-CAN_Receive_Message_Configuration
	.section .text$CAN_Message_Struct_Init
	.align	1
	.export	CAN_Message_Struct_Init
	.type	CAN_Message_Struct_Init, @function
CAN_Message_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.b	[r0+#20],r5
	ST.b	[r0+#21],r5
	ST.b	[r0+#22],r5
	ST.b	[r0+#23],r5
	ST.b	[r0+#24],r5
	ST.b	[r0+#25],r5
	ST.b	[r0+#26],r5
	ST.b	[r0+#27],r5
	JMP	lr
	.size	CAN_Message_Struct_Init, .-CAN_Message_Struct_Init
	.section .text$CAN_Clear_Buffer_Overflow_Flag
	.align	1
	.export	CAN_Clear_Buffer_Overflow_Flag
	.type	CAN_Clear_Buffer_Overflow_Flag, @function
CAN_Clear_Buffer_Overflow_Flag:
// inline asm begin
	// 994 "../src/kf32f_basic_can.c" 1
	SET [r0], #10
// inline asm end
	MOV	r4,#1
	LSL	r4,#16
.L80:
	LD.w	r5,[r0]
	ANL	r5,r5,r4
	JZ	.L80
// inline asm begin
	// 996 "../src/kf32f_basic_can.c" 1
	CLR [r0], #10
	// 998 "../src/kf32f_basic_can.c" 1
	SET [r0], #11
// inline asm end
	MOV	r4,#1
	LSL	r4,#17
.L81:
	LD.w	r5,[r0]
	ANL	r5,r5,r4
	JNZ	.L81
// inline asm begin
	// 1000 "../src/kf32f_basic_can.c" 1
	CLR [r0], #11
// inline asm end
	JMP	lr
	.size	CAN_Clear_Buffer_Overflow_Flag, .-CAN_Clear_Buffer_Overflow_Flag
	.section .text$CAN_Release_Receive_Buffer
	.align	1
	.export	CAN_Release_Receive_Buffer
	.type	CAN_Release_Receive_Buffer, @function
CAN_Release_Receive_Buffer:
	CMP	r1,#0
	JZ	.L87
	LD.w	r4,[r0]
	LD	r3,#520093696
	ANL	r4,r4,r3
	LSR	r4,#24
	CMP	r4,#0
	JZ	.L87
	MOV	r2,#0
.L89:
// inline asm begin
	// 1026 "../src/kf32f_basic_can.c" 1
	SET [r0], #10
// inline asm end
.L90:
	LD.w	r5,[r0]
	ANL	r5,r5,r3
	LSR	r5,#24
	SUB	r5,r4,r5
	CMP	r5,#1
	JNZ	.L90
// inline asm begin
	// 1028 "../src/kf32f_basic_can.c" 1
	CLR [r0], #10
// inline asm end
	ADD	r2,r2,#1
	CMP	r2,r1
	JZ	.L87
	LD.w	r4,[r0]
	ANL	r4,r4,r3
	LSR	r4,#24
	CMP	r4,#0
	JNZ	.L89
.L87:
	JMP	lr
	.size	CAN_Release_Receive_Buffer, .-CAN_Release_Receive_Buffer
	.section .text$CAN_Transmit_Single
	.align	1
	.export	CAN_Transmit_Single
	.type	CAN_Transmit_Single, @function
CAN_Transmit_Single:
	LD.w	r5,[r0]
	SET	r5,#8
	SET	r5,#9
	ST.w	[r0],r5
	MOV	r4,#1
	LSL	r4,#21
.L103:
	LD.w	r5,[r0]
	ANL	r5,r5,r4
	JNZ	.L103
// inline asm begin
	// 1050 "../src/kf32f_basic_can.c" 1
	CLR [r0], #8
	// 1051 "../src/kf32f_basic_can.c" 1
	CLR [r0], #9
// inline asm end
	JMP	lr
	.size	CAN_Transmit_Single, .-CAN_Transmit_Single
	.section .text$CAN_Transmit_Repeat
	.align	1
	.export	CAN_Transmit_Repeat
	.type	CAN_Transmit_Repeat, @function
CAN_Transmit_Repeat:
// inline asm begin
	// 1068 "../src/kf32f_basic_can.c" 1
	CLR [r0], #9
	// 1069 "../src/kf32f_basic_can.c" 1
	CLR [r0], #8
	// 1070 "../src/kf32f_basic_can.c" 1
	SET [r0], #8
// inline asm end
	MOV	r4,#1
	LSL	r4,#21
.L106:
	LD.w	r5,[r0]
	ANL	r5,r5,r4
	JNZ	.L106
// inline asm begin
	// 1072 "../src/kf32f_basic_can.c" 1
	CLR [r0], #8
// inline asm end
	JMP	lr
	.size	CAN_Transmit_Repeat, .-CAN_Transmit_Repeat
	.section .text$CAN_Frame_Format_Config
	.align	1
	.export	CAN_Frame_Format_Config
	.type	CAN_Frame_Format_Config, @function
CAN_Frame_Format_Config:
	ADD	r0,#32
	CMP	r1,#0
	JNZ	.L111
// inline asm begin
	// 1099 "../src/kf32f_basic_can.c" 1
	CLR [r0], #7
// inline asm end
	JMP	lr
.L111:
// inline asm begin
	// 1094 "../src/kf32f_basic_can.c" 1
	SET [r0], #7
// inline asm end
	JMP	lr
	.size	CAN_Frame_Format_Config, .-CAN_Frame_Format_Config
	.section .text$CAN_Remote_Request_Config
	.align	1
	.export	CAN_Remote_Request_Config
	.type	CAN_Remote_Request_Config, @function
CAN_Remote_Request_Config:
	ADD	r0,#32
	CMP	r1,#0
	JNZ	.L115
// inline asm begin
	// 1127 "../src/kf32f_basic_can.c" 1
	CLR [r0], #6
// inline asm end
	JMP	lr
.L115:
// inline asm begin
	// 1122 "../src/kf32f_basic_can.c" 1
	SET [r0], #6
// inline asm end
	JMP	lr
	.size	CAN_Remote_Request_Config, .-CAN_Remote_Request_Config
	.section .text$CAN_Data_Length_Config
	.align	1
	.export	CAN_Data_Length_Config
	.type	CAN_Data_Length_Config, @function
CAN_Data_Length_Config:
	LD.w	r4,[r0+#3]
	MOV	r5,#15
	NOT	r5,r5
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#3],r1
	JMP	lr
	.size	CAN_Data_Length_Config, .-CAN_Data_Length_Config
	.section .text$CAN_Identification_Code_Config
	.align	1
	.export	CAN_Identification_Code_Config
	.type	CAN_Identification_Code_Config, @function
CAN_Identification_Code_Config:
	LD.w	r4,[r0+#9]
	CMP	r1,#0
	JNZ	.L120
	LSL	r2,#21
	LD	r5,#2097151
	ANL	r5,r4,r5
	ORL	r2,r2,r5
	ST.w	[r0+#9],r2
	JMP	lr
.L120:
	LSL	r2,#3
	MOV	r5,#7
	ANL	r5,r4,r5
	ORL	r2,r2,r5
	ST.w	[r0+#9],r2
	JMP	lr
	.size	CAN_Identification_Code_Config, .-CAN_Identification_Code_Config
	.section .text$CAN_Get_INT_Flag
	.align	1
	.export	CAN_Get_INT_Flag
	.type	CAN_Get_INT_Flag, @function
CAN_Get_INT_Flag:
	LD.w	r5,[r0+#7]
	ANL	r1,r1,r5
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
	LSR	r0,#31
	JMP	lr
	.size	CAN_Get_INT_Flag, .-CAN_Get_INT_Flag
	.section .text$CAN_Clear_INT_Flag
	.align	1
	.export	CAN_Clear_INT_Flag
	.type	CAN_Clear_INT_Flag, @function
CAN_Clear_INT_Flag:
	LD.w	r5,[r0+#6]
	MOV	r3,#16
	LSL	r4,r1,r3
	ORL	r5,r4,r5
	ST.w	[r0+#6],r5
.L123:
	LD.w	r5,[r0+#7]
	ANL	r5,r1,r5
	JNZ	.L123
	LD.w	r5,[r0+#6]
	NOT	r4,r4
	ANL	r4,r4,r5
	ST.w	[r0+#6],r4
	JMP	lr
	.size	CAN_Clear_INT_Flag, .-CAN_Clear_INT_Flag
	.section .text$CAN_Set_INT_Enable
	.align	1
	.export	CAN_Set_INT_Enable
	.type	CAN_Set_INT_Enable, @function
CAN_Set_INT_Enable:
	LD.w	r5,[r0+#6]
	CMP	r2,#0
	JNZ	.L128
	NOT	r1,r1
	ANL	r1,r1,r5
	ST.w	[r0+#6],r1
	JMP	lr
.L128:
	ORL	r1,r1,r5
	ST.w	[r0+#6],r1
	JMP	lr
	.size	CAN_Set_INT_Enable, .-CAN_Set_INT_Enable
