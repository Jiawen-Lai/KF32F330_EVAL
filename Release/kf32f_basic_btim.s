	.file	"kf32f_basic_btim.c"
	.section .text$TIM_Reset
	.align	1
	.export	TIM_Reset
	.type	TIM_Reset, @function
TIM_Reset:
	PUSH	{r6, r7, r8, lr}
	MOV	r6,r0
	LD	r5,#1073744000
	CMP	r0,r5
	JZ	.L22
	LD	r5,#1073742080
	CMP	r0,r5
	JZ	.L23
	LD	r5,#1073742208
	CMP	r0,r5
	JZ	.L24
	LD	r5,#1073742336
	CMP	r0,r5
	JZ	.L25
	LD	r5,#1073742464
	CMP	r0,r5
	JZ	.L26
.L9:
	LD	r5,#1073742592
	CMP	r6,r5
	JZ	.L27
.L6:
	LD	r5,#1073742848
	CMP	r6,r5
	JZ	.L19
	LD	r5,#1073747968
	CMP	r6,r5
	JZ	.L28
.L8:
	LD	r5,#1073748096
	CMP	r6,r5
	JZ	.L29
.L10:
	LD	r5,#1073748608
	CMP	r6,r5
	JZ	.L30
.L11:
	LD	r5,#1073748736
	CMP	r6,r5
	JZ	.L31
.L12:
	LD	r5,#1073748864
	CMP	r6,r5
	JZ	.L32
.L13:
	LD	r5,#1073748992
	CMP	r6,r5
	JZ	.L33
.L14:
	LD	r5,#1073749120
	CMP	r6,r5
	JZ	.L34
.L15:
	LD	r5,#1073749248
	CMP	r6,r5
	JZ	.L35
.L16:
	LD	r5,#1073743104
	CMP	r6,r5
	JZ	.L36
.L17:
	LD	r5,#1073741952
	CMP	r6,r5
	JZ	.L37
.L1:
	POP	{r6, r7, r8, pc}
.L37:
	MOV	r0,#2
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#2
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#2
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	POP	{r6, r7, r8, pc}
.L22:
	MOV	r0,#1
	LSL	r0,#17
	MOV	r1,#1
	LD	r7,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#17
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#17
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L9
.L23:
	MOV	r0,#4
	MOV	r1,#1
	LD	r7,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#4
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#4
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L9
.L24:
	MOV	r0,#8
	MOV	r1,#1
	LD	r7,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#8
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#8
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L6
.L25:
	MOV	r0,#16
	MOV	r1,#1
	LD	r7,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#16
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#16
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L8
.L26:
	MOV	r0,#32
	MOV	r1,#1
	LD	r7,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#32
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#32
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L10
.L27:
	MOV	r0,#64
	MOV	r1,#1
	LD	r7,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#64
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#64
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	MOV	r8,r5
	LJMP	r5
	MOV	r0,#64
	MOV	r1,#1
	LJMP	r7
	MOV	r0,#64
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#64
	MOV	r1,#1
	LJMP	r8
	JMP	.L11
.L19:
	MOV	r0,#255
	ADD	r0,r0,#1
	MOV	r1,#1
	LD	r7,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#255
	ADD	r0,r0,#1
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#255
	ADD	r0,r0,#1
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	MOV	r8,r5
	LJMP	r5
	MOV	r0,#255
	ADD	r0,r0,#1
	MOV	r1,#1
	LJMP	r7
	MOV	r0,#255
	ADD	r0,r0,#1
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#255
	ADD	r0,r0,#1
	MOV	r1,#1
	LJMP	r8
	JMP	.L12
.L28:
	MOV	r0,#1
	LSL	r0,#16
	MOV	r1,#1
	LD	r7,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#16
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#16
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L13
.L29:
	MOV	r0,#1
	LSL	r0,#17
	MOV	r1,#1
	LD	r7,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#17
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#17
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L14
.L30:
	MOV	r0,#1
	LSL	r0,#21
	MOV	r1,#1
	LD	r7,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#21
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#21
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L15
.L31:
	MOV	r0,#1
	LSL	r0,#22
	MOV	r1,#1
	LD	r7,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#22
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#22
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L16
.L32:
	MOV	r0,#1
	LSL	r0,#23
	MOV	r1,#1
	LD	r7,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#23
	MOV	r1,#0
	LJMP	r7
	MOV	r0,#1
	LSL	r0,#23
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L17
.L33:
	MOV	r0,#1
	LSL	r0,#24
	MOV	r1,#1
	LD	r6,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#24
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#24
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L34:
	MOV	r0,#1
	LSL	r0,#25
	MOV	r1,#1
	LD	r6,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#25
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#25
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L35:
	MOV	r0,#1
	LSL	r0,#26
	MOV	r1,#1
	LD	r6,#RST_CTL2_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#26
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#26
	MOV	r1,#1
	LD	r5,#PCLK_CTL2_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L36:
	MOV	r0,#1
	LSL	r0,#10
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#10
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#10
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
	.size	TIM_Reset, .-TIM_Reset
	.section .text$BTIM_Configuration
	.align	1
	.export	BTIM_Configuration
	.type	BTIM_Configuration, @function
BTIM_Configuration:
	LD.h	r5,[r1]
	ST.w	[r0],r5
	LD.h	r5,[r1+#1]
	ST.w	[r0+#4],r5
	LD.h	r5,[r1+#2]
	ST.w	[r0+#3],r5
	LD.w	r3,[r0+#1]
	LD.h	r2,[r1+#4]
	LD.h	r5,[r1+#3]
	ORL	r4,r2,r5
	LD.h	r2,[r1+#5]
	ORL	r4,r4,r2
	LD.h	r5,[r1+#8]
	ORL	r4,r4,r5
	ZXT.h	r4,r4
	LD	r5,#-479
	ANL	r5,r3,r5
	ORL	r5,r4,r5
	ST.w	[r0+#1],r5
	LD.w	r3,[r0+#2]
	LD.h	r2,[r1+#7]
	LD.h	r5,[r1+#6]
	ORL	r4,r2,r5
	ZXT.h	r4,r4
	LD.h	r5,[r1+#9]
	LSL	r5,#11
	ORL	r5,r4,r5
	LD	r4,#-2173
	ANL	r4,r3,r4
	ORL	r5,r5,r4
	ST.w	[r0+#2],r5
	JMP	lr
	.size	BTIM_Configuration, .-BTIM_Configuration
	.section .text$BTIM_Struct_Init
	.align	1
	.export	BTIM_Struct_Init
	.type	BTIM_Struct_Init, @function
BTIM_Struct_Init:
	MOV	r5,#0
	ST.h	[r0],r5
	MOV	r4,#0
	NOT	r4,r4
	ST.h	[r0+#1],r4
	ST.h	[r0+#2],r5
	MOV	r4,#255
	ADD	r4,r4,#1
	ST.h	[r0+#3],r4
	ST.h	[r0+#4],r5
	ST.h	[r0+#5],r5
	ST.h	[r0+#6],r5
	ST.h	[r0+#7],r5
	ST.h	[r0+#8],r5
	ST.h	[r0+#9],r5
	JMP	lr
	.size	BTIM_Struct_Init, .-BTIM_Struct_Init
	.section .text$BTIM_Cmd
	.align	1
	.export	BTIM_Cmd
	.type	BTIM_Cmd, @function
BTIM_Cmd:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L43
// inline asm begin
	// 322 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L43:
// inline asm begin
	// 317 "../src/kf32f_basic_btim.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	BTIM_Cmd, .-BTIM_Cmd
	.section .text$BTIM_Set_Counter
	.align	1
	.export	BTIM_Set_Counter
	.type	BTIM_Set_Counter, @function
BTIM_Set_Counter:
	ZXT.h	r1,r1
	ST.w	[r0],r1
	JMP	lr
	.size	BTIM_Set_Counter, .-BTIM_Set_Counter
	.section .text$BTIM_Set_Period
	.align	1
	.export	BTIM_Set_Period
	.type	BTIM_Set_Period, @function
BTIM_Set_Period:
	ZXT.h	r1,r1
	ST.w	[r0+#4],r1
	JMP	lr
	.size	BTIM_Set_Period, .-BTIM_Set_Period
	.section .text$BTIM_Set_Prescaler
	.align	1
	.export	BTIM_Set_Prescaler
	.type	BTIM_Set_Prescaler, @function
BTIM_Set_Prescaler:
	ZXT.h	r1,r1
	ST.w	[r0+#3],r1
	JMP	lr
	.size	BTIM_Set_Prescaler, .-BTIM_Set_Prescaler
	.section .text$BTIM_Counter_Mode_Config
	.align	1
	.export	BTIM_Counter_Mode_Config
	.type	BTIM_Counter_Mode_Config, @function
BTIM_Counter_Mode_Config:
	LD.w	r4,[r0+#1]
	LD	r5,#-449
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	BTIM_Counter_Mode_Config, .-BTIM_Counter_Mode_Config
	.section .text$BTIM_Clock_Config
	.align	1
	.export	BTIM_Clock_Config
	.type	BTIM_Clock_Config, @function
BTIM_Clock_Config:
	LD.w	r5,[r0+#1]
	CLR	r5,#3
	CLR	r5,#4
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	BTIM_Clock_Config, .-BTIM_Clock_Config
	.section .text$BTIM_External_Pulse_Sync_Config
	.align	1
	.export	BTIM_External_Pulse_Sync_Config
	.type	BTIM_External_Pulse_Sync_Config, @function
BTIM_External_Pulse_Sync_Config:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L52
// inline asm begin
	// 447 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #2
// inline asm end
	JMP	lr
.L52:
// inline asm begin
	// 442 "../src/kf32f_basic_btim.c" 1
	SET [r0], #2
// inline asm end
	JMP	lr
	.size	BTIM_External_Pulse_Sync_Config, .-BTIM_External_Pulse_Sync_Config
	.section .text$BTIM_Work_Mode_Config
	.align	1
	.export	BTIM_Work_Mode_Config
	.type	BTIM_Work_Mode_Config, @function
BTIM_Work_Mode_Config:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L56
// inline asm begin
	// 476 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L56:
// inline asm begin
	// 471 "../src/kf32f_basic_btim.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	BTIM_Work_Mode_Config, .-BTIM_Work_Mode_Config
	.section .text$BTIM_Generate_Trigger_Config
	.align	1
	.export	BTIM_Generate_Trigger_Config
	.type	BTIM_Generate_Trigger_Config, @function
BTIM_Generate_Trigger_Config:
	ADD	r0,#8
	CMP	r1,#0
	JNZ	.L60
// inline asm begin
	// 503 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #15
// inline asm end
	JMP	lr
.L60:
// inline asm begin
	// 498 "../src/kf32f_basic_btim.c" 1
	SET [r0], #15
// inline asm end
	JMP	lr
	.size	BTIM_Generate_Trigger_Config, .-BTIM_Generate_Trigger_Config
	.section .text$BTIM_Single_Pulse_Enable
	.align	1
	.export	BTIM_Single_Pulse_Enable
	.type	BTIM_Single_Pulse_Enable, @function
BTIM_Single_Pulse_Enable:
	ADD	r0,#8
	CMP	r1,#0
	JNZ	.L64
// inline asm begin
	// 530 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #14
// inline asm end
	JMP	lr
.L64:
// inline asm begin
	// 525 "../src/kf32f_basic_btim.c" 1
	SET [r0], #14
// inline asm end
	JMP	lr
	.size	BTIM_Single_Pulse_Enable, .-BTIM_Single_Pulse_Enable
	.section .text$BTIM_Single_Pulse_Shut_Enable
	.align	1
	.export	BTIM_Single_Pulse_Shut_Enable
	.type	BTIM_Single_Pulse_Shut_Enable, @function
BTIM_Single_Pulse_Shut_Enable:
	ADD	r0,#8
	CMP	r1,#0
	JNZ	.L68
// inline asm begin
	// 558 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #13
// inline asm end
	JMP	lr
.L68:
// inline asm begin
	// 553 "../src/kf32f_basic_btim.c" 1
	SET [r0], #13
// inline asm end
	JMP	lr
	.size	BTIM_Single_Pulse_Shut_Enable, .-BTIM_Single_Pulse_Shut_Enable
	.section .text$BTIM_Updata_Immediately_Config
	.align	1
	.export	BTIM_Updata_Immediately_Config
	.type	BTIM_Updata_Immediately_Config, @function
BTIM_Updata_Immediately_Config:
	ADD	r0,#8
	CMP	r1,#0
	JNZ	.L72
// inline asm begin
	// 586 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #12
// inline asm end
	JMP	lr
.L72:
// inline asm begin
	// 581 "../src/kf32f_basic_btim.c" 1
	SET [r0], #12
// inline asm end
	JMP	lr
	.size	BTIM_Updata_Immediately_Config, .-BTIM_Updata_Immediately_Config
	.section .text$BTIM_Master_Slave_Snyc_Config
	.align	1
	.export	BTIM_Master_Slave_Snyc_Config
	.type	BTIM_Master_Slave_Snyc_Config, @function
BTIM_Master_Slave_Snyc_Config:
	ADD	r0,#8
	CMP	r1,#0
	JNZ	.L76
// inline asm begin
	// 614 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #11
// inline asm end
	JMP	lr
.L76:
// inline asm begin
	// 609 "../src/kf32f_basic_btim.c" 1
	SET [r0], #11
// inline asm end
	JMP	lr
	.size	BTIM_Master_Slave_Snyc_Config, .-BTIM_Master_Slave_Snyc_Config
	.section .text$BTIM_Trigger_Select_Config
	.align	1
	.export	BTIM_Trigger_Select_Config
	.type	BTIM_Trigger_Select_Config, @function
BTIM_Trigger_Select_Config:
	LD.w	r4,[r0+#2]
	LD	r5,#-1921
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#2],r1
	JMP	lr
	.size	BTIM_Trigger_Select_Config, .-BTIM_Trigger_Select_Config
	.section .text$BTIM_Slave_Mode_Config
	.align	1
	.export	BTIM_Slave_Mode_Config
	.type	BTIM_Slave_Mode_Config, @function
BTIM_Slave_Mode_Config:
	LD.w	r4,[r0+#2]
	MOV	r5,#112
	NOT	r5,r5
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#2],r1
	JMP	lr
	.size	BTIM_Slave_Mode_Config, .-BTIM_Slave_Mode_Config
	.section .text$BTIM_Master_Mode_Config
	.align	1
	.export	BTIM_Master_Mode_Config
	.type	BTIM_Master_Mode_Config, @function
BTIM_Master_Mode_Config:
	LD.w	r5,[r0+#2]
	CLR	r5,#2
	CLR	r5,#3
	ORL	r1,r1,r5
	ST.w	[r0+#2],r1
	JMP	lr
	.size	BTIM_Master_Mode_Config, .-BTIM_Master_Mode_Config
	.section .text$BTIM_Updata_Rising_Edge_Config
	.align	1
	.export	BTIM_Updata_Rising_Edge_Config
	.type	BTIM_Updata_Rising_Edge_Config, @function
BTIM_Updata_Rising_Edge_Config:
	ADD	r0,#8
	CMP	r1,#0
	JNZ	.L83
// inline asm begin
	// 728 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L83:
// inline asm begin
	// 723 "../src/kf32f_basic_btim.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	BTIM_Updata_Rising_Edge_Config, .-BTIM_Updata_Rising_Edge_Config
	.section .text$BTIM_Updata_Enable
	.align	1
	.export	BTIM_Updata_Enable
	.type	BTIM_Updata_Enable, @function
BTIM_Updata_Enable:
	ADD	r0,#8
	CMP	r1,#0
	JNZ	.L87
// inline asm begin
	// 758 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L87:
// inline asm begin
	// 753 "../src/kf32f_basic_btim.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	BTIM_Updata_Enable, .-BTIM_Updata_Enable
	.section .text$BTIM_Get_Direction
	.align	1
	.export	BTIM_Get_Direction
	.type	BTIM_Get_Direction, @function
BTIM_Get_Direction:
	LD.w	r0,[r0+#1]
	LSR	r0,#5
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	BTIM_Get_Direction, .-BTIM_Get_Direction
	.section .text$BTIM_Get_Counter
	.align	1
	.export	BTIM_Get_Counter
	.type	BTIM_Get_Counter, @function
BTIM_Get_Counter:
	LD.w	r0,[r0]
	ZXT.h	r0,r0
	JMP	lr
	.size	BTIM_Get_Counter, .-BTIM_Get_Counter
	.section .text$BTIM_Get_Period
	.align	1
	.export	BTIM_Get_Period
	.type	BTIM_Get_Period, @function
BTIM_Get_Period:
	LD.w	r0,[r0+#4]
	ZXT.h	r0,r0
	JMP	lr
	.size	BTIM_Get_Period, .-BTIM_Get_Period
	.section .text$BTIM_Get_Prescaler
	.align	1
	.export	BTIM_Get_Prescaler
	.type	BTIM_Get_Prescaler, @function
BTIM_Get_Prescaler:
	LD.w	r0,[r0+#3]
	ZXT.h	r0,r0
	JMP	lr
	.size	BTIM_Get_Prescaler, .-BTIM_Get_Prescaler
	.section .text$BTIM_Trigger_DMA_Enable
	.align	1
	.export	BTIM_Trigger_DMA_Enable
	.type	BTIM_Trigger_DMA_Enable, @function
BTIM_Trigger_DMA_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L95
// inline asm begin
	// 863 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #4
// inline asm end
	JMP	lr
.L95:
// inline asm begin
	// 858 "../src/kf32f_basic_btim.c" 1
	SET [r0], #4
// inline asm end
	JMP	lr
	.size	BTIM_Trigger_DMA_Enable, .-BTIM_Trigger_DMA_Enable
	.section .text$BTIM_Updata_DMA_Enable
	.align	1
	.export	BTIM_Updata_DMA_Enable
	.type	BTIM_Updata_DMA_Enable, @function
BTIM_Updata_DMA_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L99
// inline asm begin
	// 891 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #3
// inline asm end
	JMP	lr
.L99:
// inline asm begin
	// 886 "../src/kf32f_basic_btim.c" 1
	SET [r0], #3
// inline asm end
	JMP	lr
	.size	BTIM_Updata_DMA_Enable, .-BTIM_Updata_DMA_Enable
	.section .text$BTIM_Overflow_INT_Enable
	.align	1
	.export	BTIM_Overflow_INT_Enable
	.type	BTIM_Overflow_INT_Enable, @function
BTIM_Overflow_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L103
// inline asm begin
	// 919 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #2
// inline asm end
	JMP	lr
.L103:
// inline asm begin
	// 914 "../src/kf32f_basic_btim.c" 1
	SET [r0], #2
// inline asm end
	JMP	lr
	.size	BTIM_Overflow_INT_Enable, .-BTIM_Overflow_INT_Enable
	.section .text$BTIM_Trigger_INT_Enable
	.align	1
	.export	BTIM_Trigger_INT_Enable
	.type	BTIM_Trigger_INT_Enable, @function
BTIM_Trigger_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L107
// inline asm begin
	// 947 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #1
// inline asm end
	JMP	lr
.L107:
// inline asm begin
	// 942 "../src/kf32f_basic_btim.c" 1
	SET [r0], #1
// inline asm end
	JMP	lr
	.size	BTIM_Trigger_INT_Enable, .-BTIM_Trigger_INT_Enable
	.section .text$BTIM_Updata_INT_Enable
	.align	1
	.export	BTIM_Updata_INT_Enable
	.type	BTIM_Updata_INT_Enable, @function
BTIM_Updata_INT_Enable:
	ADD	r0,#20
	CMP	r1,#0
	JNZ	.L111
// inline asm begin
	// 975 "../src/kf32f_basic_btim.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L111:
// inline asm begin
	// 970 "../src/kf32f_basic_btim.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	BTIM_Updata_INT_Enable, .-BTIM_Updata_INT_Enable
	.section .text$BTIM_Get_Trigger_DMA_INT_Status
	.align	1
	.export	BTIM_Get_Trigger_DMA_INT_Status
	.type	BTIM_Get_Trigger_DMA_INT_Status, @function
BTIM_Get_Trigger_DMA_INT_Status:
	LD.w	r0,[r0+#5]
	LSR	r0,#4
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	BTIM_Get_Trigger_DMA_INT_Status, .-BTIM_Get_Trigger_DMA_INT_Status
	.section .text$BTIM_Get_Updata_DMA_INT_Status
	.align	1
	.export	BTIM_Get_Updata_DMA_INT_Status
	.type	BTIM_Get_Updata_DMA_INT_Status, @function
BTIM_Get_Updata_DMA_INT_Status:
	LD.w	r0,[r0+#5]
	LSR	r0,#3
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	BTIM_Get_Updata_DMA_INT_Status, .-BTIM_Get_Updata_DMA_INT_Status
	.section .text$BTIM_Get_Overflow_INT_Status
	.align	1
	.export	BTIM_Get_Overflow_INT_Status
	.type	BTIM_Get_Overflow_INT_Status, @function
BTIM_Get_Overflow_INT_Status:
	LD.w	r0,[r0+#5]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	BTIM_Get_Overflow_INT_Status, .-BTIM_Get_Overflow_INT_Status
	.section .text$BTIM_Get_Trigger_INT_Status
	.align	1
	.export	BTIM_Get_Trigger_INT_Status
	.type	BTIM_Get_Trigger_INT_Status, @function
BTIM_Get_Trigger_INT_Status:
	LD.w	r0,[r0+#5]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	BTIM_Get_Trigger_INT_Status, .-BTIM_Get_Trigger_INT_Status
	.section .text$BTIM_Get_Updata_INT_Status
	.align	1
	.export	BTIM_Get_Updata_INT_Status
	.type	BTIM_Get_Updata_INT_Status, @function
BTIM_Get_Updata_INT_Status:
	LD.w	r0,[r0+#5]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	BTIM_Get_Updata_INT_Status, .-BTIM_Get_Updata_INT_Status
	.section .text$BTIM_Get_Trigger_DMA_INT_Flag
	.align	1
	.export	BTIM_Get_Trigger_DMA_INT_Flag
	.type	BTIM_Get_Trigger_DMA_INT_Flag, @function
BTIM_Get_Trigger_DMA_INT_Flag:
	LD.w	r0,[r0+#6]
	LSR	r0,#4
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	BTIM_Get_Trigger_DMA_INT_Flag, .-BTIM_Get_Trigger_DMA_INT_Flag
	.section .text$BTIM_Get_Updata_DMA_INT_Flag
	.align	1
	.export	BTIM_Get_Updata_DMA_INT_Flag
	.type	BTIM_Get_Updata_DMA_INT_Flag, @function
BTIM_Get_Updata_DMA_INT_Flag:
	LD.w	r0,[r0+#6]
	LSR	r0,#3
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	BTIM_Get_Updata_DMA_INT_Flag, .-BTIM_Get_Updata_DMA_INT_Flag
	.section .text$BTIM_Get_Overflow_INT_Flag
	.align	1
	.export	BTIM_Get_Overflow_INT_Flag
	.type	BTIM_Get_Overflow_INT_Flag, @function
BTIM_Get_Overflow_INT_Flag:
	LD.w	r0,[r0+#6]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	BTIM_Get_Overflow_INT_Flag, .-BTIM_Get_Overflow_INT_Flag
	.section .text$BTIM_Get_Trigger_INT_Flag
	.align	1
	.export	BTIM_Get_Trigger_INT_Flag
	.type	BTIM_Get_Trigger_INT_Flag, @function
BTIM_Get_Trigger_INT_Flag:
	LD.w	r0,[r0+#6]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	BTIM_Get_Trigger_INT_Flag, .-BTIM_Get_Trigger_INT_Flag
	.section .text$BTIM_Get_Updata_INT_Flag
	.align	1
	.export	BTIM_Get_Updata_INT_Flag
	.type	BTIM_Get_Updata_INT_Flag, @function
BTIM_Get_Updata_INT_Flag:
	LD.w	r0,[r0+#6]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	BTIM_Get_Updata_INT_Flag, .-BTIM_Get_Updata_INT_Flag
	.section .text$BTIM_Clear_Overflow_INT_Flag
	.align	1
	.export	BTIM_Clear_Overflow_INT_Flag
	.type	BTIM_Clear_Overflow_INT_Flag, @function
BTIM_Clear_Overflow_INT_Flag:
	MOV	r5,#28
	ADD	r3,r0,r5
// inline asm begin
	// 1231 "../src/kf32f_basic_btim.c" 1
	SET [r3], #2
// inline asm end
	MOV	r4,#4
.L123:
	LD.w	r5,[r0+#6]
	ANL	r5,r5,r4
	JNZ	.L123
// inline asm begin
	// 1233 "../src/kf32f_basic_btim.c" 1
	CLR [r3], #2
// inline asm end
	JMP	lr
	.size	BTIM_Clear_Overflow_INT_Flag, .-BTIM_Clear_Overflow_INT_Flag
	.section .text$BTIM_Clear_Trigger_INT_Flag
	.align	1
	.export	BTIM_Clear_Trigger_INT_Flag
	.type	BTIM_Clear_Trigger_INT_Flag, @function
BTIM_Clear_Trigger_INT_Flag:
	MOV	r5,#28
	ADD	r3,r0,r5
// inline asm begin
	// 1248 "../src/kf32f_basic_btim.c" 1
	SET [r3], #1
// inline asm end
	MOV	r4,#2
.L126:
	LD.w	r5,[r0+#6]
	ANL	r5,r5,r4
	JNZ	.L126
// inline asm begin
	// 1250 "../src/kf32f_basic_btim.c" 1
	CLR [r3], #1
// inline asm end
	JMP	lr
	.size	BTIM_Clear_Trigger_INT_Flag, .-BTIM_Clear_Trigger_INT_Flag
	.section .text$BTIM_Clear_Updata_INT_Flag
	.align	1
	.export	BTIM_Clear_Updata_INT_Flag
	.type	BTIM_Clear_Updata_INT_Flag, @function
BTIM_Clear_Updata_INT_Flag:
	MOV	r5,#28
	ADD	r3,r0,r5
// inline asm begin
	// 1265 "../src/kf32f_basic_btim.c" 1
	SET [r3], #0
// inline asm end
	MOV	r4,#1
.L129:
	LD.w	r5,[r0+#6]
	ANL	r5,r5,r4
	JNZ	.L129
// inline asm begin
	// 1267 "../src/kf32f_basic_btim.c" 1
	CLR [r3], #0
// inline asm end
	JMP	lr
	.size	BTIM_Clear_Updata_INT_Flag, .-BTIM_Clear_Updata_INT_Flag
