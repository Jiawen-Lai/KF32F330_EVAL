	.file	"kf32f_basic_btim.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$TIM_Reset
	.type	.text$TIM_Reset$scode_local_1, @function
	.text$TIM_Reset$scode_local_1:
	.align	1
	.export	TIM_Reset
	.type	TIM_Reset, @function
TIM_Reset:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
	PUSH	{r6, lr}
	.cfi_def_cfa_offset 8
	MOV	r6,r0
.LM2:
	LD	r5,#1073744000
	CMP	r0,r5
	JZ	.L18
.LM3:
	LD	r5,#1073742080
	CMP	r0,r5
	JZ	.L19
.LM4:
	LD	r5,#1073742208
	CMP	r0,r5
	JZ	.L20
.LM5:
	LD	r5,#1073742336
	CMP	r0,r5
	JZ	.L21
.LM6:
	LD	r5,#1073742464
	CMP	r0,r5
	JZ	.L22
.LVL1:
.L9:
.LM7:
	LD	r5,#1073742592
	CMP	r6,r5
	JZ	.L23
.L6:
.LM8:
	LD	r5,#1073742848
	CMP	r6,r5
	JZ	.L15
.LM9:
	LD	r5,#1073747968
	CMP	r6,r5
	JZ	.L24
.L8:
.LM10:
	LD	r5,#1073748096
	CMP	r6,r5
	JZ	.L25
.L10:
.LM11:
	LD	r5,#1073748608
	CMP	r6,r5
	JZ	.L26
.L11:
.LM12:
	LD	r5,#1073748736
	CMP	r6,r5
	JZ	.L27
.L12:
.LM13:
	LD	r5,#1073743104
	CMP	r6,r5
	JZ	.L28
.L13:
.LM14:
	LD	r5,#1073741952
	CMP	r6,r5
	JZ	.L29
.L1:
.LM15:
	POP	r6
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL2:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL3:
.L29:
	.cfi_restore_state
.LM16:
	MOV	r0,#2
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL4:
.LM17:
	MOV	r0,#2
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL5:
.LM18:
	MOV	r0,#2
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL6:
.LM19:
	POP	r6
	.cfi_remember_state
	.cfi_def_cfa_offset 4
.LVL7:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL8:
.L18:
	.cfi_restore_state
.LM20:
	MOV	r0,#1
.LVL9:
	LSL	r0,#17
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL10:
.LM21:
	MOV	r0,#1
	LSL	r0,#17
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL11:
.LM22:
	MOV	r0,#1
	LSL	r0,#17
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL12:
	JMP	.L9
.LVL13:
.L19:
.LM23:
	MOV	r0,#4
.LVL14:
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL15:
.LM24:
	MOV	r0,#4
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL16:
.LM25:
	MOV	r0,#4
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL17:
	JMP	.L9
.LVL18:
.L20:
.LM26:
	MOV	r0,#8
.LVL19:
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL20:
.LM27:
	MOV	r0,#8
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL21:
.LM28:
	MOV	r0,#8
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL22:
	JMP	.L6
.LVL23:
.L21:
.LM29:
	MOV	r0,#16
.LVL24:
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL25:
.LM30:
	MOV	r0,#16
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL26:
.LM31:
	MOV	r0,#16
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL27:
	JMP	.L8
.LVL28:
.L22:
.LM32:
	MOV	r0,#32
.LVL29:
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL30:
.LM33:
	MOV	r0,#32
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL31:
.LM34:
	MOV	r0,#32
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL32:
	JMP	.L10
.L23:
.LM35:
	MOV	r0,#64
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL33:
.LM36:
	MOV	r0,#64
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL34:
.LM37:
	MOV	r0,#64
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL35:
.LM38:
	MOV	r0,#64
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL36:
.LM39:
	MOV	r0,#64
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL37:
.LM40:
	MOV	r0,#64
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL38:
	JMP	.L11
.L15:
.LM41:
	MOV	r0,#255
	ADD	r0,r0,#1
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL39:
.LM42:
	MOV	r0,#255
	ADD	r0,r0,#1
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL40:
.LM43:
	MOV	r0,#255
	ADD	r0,r0,#1
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL41:
.LM44:
	MOV	r0,#255
	ADD	r0,r0,#1
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL42:
.LM45:
	MOV	r0,#255
	ADD	r0,r0,#1
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL43:
.LM46:
	MOV	r0,#255
	ADD	r0,r0,#1
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL44:
	JMP	.L12
.L24:
.LM47:
	MOV	r0,#1
	LSL	r0,#16
	MOV	r1,#1
	LJMP	RST_CTL2_Peripheral_Reset_Enable
.LVL45:
.LM48:
	MOV	r0,#1
	LSL	r0,#16
	MOV	r1,#0
	LJMP	RST_CTL2_Peripheral_Reset_Enable
.LVL46:
.LM49:
	MOV	r0,#1
	LSL	r0,#16
	MOV	r1,#1
	LJMP	PCLK_CTL2_Peripheral_Clock_Enable
.LVL47:
	JMP	.L13
.L25:
.LM50:
	MOV	r0,#1
	LSL	r0,#17
	MOV	r1,#1
	LJMP	RST_CTL2_Peripheral_Reset_Enable
.LVL48:
.LM51:
	MOV	r0,#1
	LSL	r0,#17
	MOV	r1,#0
	LJMP	RST_CTL2_Peripheral_Reset_Enable
.LVL49:
.LM52:
	MOV	r0,#1
	LSL	r0,#17
	MOV	r1,#1
	LJMP	PCLK_CTL2_Peripheral_Clock_Enable
.LVL50:
	JMP	.L1
.L26:
.LM53:
	MOV	r0,#1
	LSL	r0,#21
	MOV	r1,#1
	LJMP	RST_CTL2_Peripheral_Reset_Enable
.LVL51:
.LM54:
	MOV	r0,#1
	LSL	r0,#21
	MOV	r1,#0
	LJMP	RST_CTL2_Peripheral_Reset_Enable
.LVL52:
.LM55:
	MOV	r0,#1
	LSL	r0,#21
	MOV	r1,#1
	LJMP	PCLK_CTL2_Peripheral_Clock_Enable
.LVL53:
	JMP	.L1
.L27:
.LM56:
	MOV	r0,#1
	LSL	r0,#22
	MOV	r1,#1
	LJMP	RST_CTL2_Peripheral_Reset_Enable
.LVL54:
.LM57:
	MOV	r0,#1
	LSL	r0,#22
	MOV	r1,#0
	LJMP	RST_CTL2_Peripheral_Reset_Enable
.LVL55:
.LM58:
	MOV	r0,#1
	LSL	r0,#22
	MOV	r1,#1
	LJMP	PCLK_CTL2_Peripheral_Clock_Enable
.LVL56:
	JMP	.L1
.L28:
.LM59:
	MOV	r0,#1
	LSL	r0,#10
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL57:
.LM60:
	MOV	r0,#1
	LSL	r0,#10
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL58:
.LM61:
	MOV	r0,#1
	LSL	r0,#10
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL59:
	JMP	.L1
	.cfi_endproc
.LFE1:
	.size	TIM_Reset, .-TIM_Reset
	.section .text$BTIM_Configuration
	.type	.text$BTIM_Configuration$scode_local_2, @function
	.text$BTIM_Configuration$scode_local_2:
	.align	1
	.export	BTIM_Configuration
	.type	BTIM_Configuration, @function
BTIM_Configuration:
.LFB2:
.LM62:
	.cfi_startproc
.LVL60:
.LM63:
	LD.h	r5,[r1]
	ST.w	[r0],r5
.LM64:
	LD.h	r5,[r1+#1]
	ST.w	[r0+#4],r5
.LM65:
	LD.h	r5,[r1+#2]
	ST.w	[r0+#3],r5
.LVL61:
.LM66:
	LD.w	r3,[r0+#1]
.LVL62:
.LM67:
	LD.h	r2,[r1+#4]
	LD.h	r5,[r1+#3]
	ORL	r4,r2,r5
	LD.h	r2,[r1+#5]
	ORL	r4,r4,r2
	LD.h	r5,[r1+#8]
	ORL	r4,r4,r5
.LM68:
	ZXT.h	r4,r4
.LBB16:
.LBB17:
.LM69:
	LD	r5,#-479
	ANL	r5,r3,r5
	ORL	r5,r4,r5
.LBE17:
.LBE16:
.LM70:
	ST.w	[r0+#1],r5
.LVL63:
.LM71:
	LD.w	r3,[r0+#2]
.LVL64:
.LM72:
	LD.h	r2,[r1+#7]
	LD.h	r5,[r1+#6]
	ORL	r4,r2,r5
	ZXT.h	r4,r4
.LM73:
	LD.h	r5,[r1+#9]
	LSL	r5,#11
.LM74:
	ORL	r5,r4,r5
.LBB18:
.LBB19:
.LM75:
	LD	r4,#-2173
	ANL	r4,r3,r4
	ORL	r5,r5,r4
.LBE19:
.LBE18:
.LM76:
	ST.w	[r0+#2],r5
.LM77:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	BTIM_Configuration, .-BTIM_Configuration
	.section .text$BTIM_Struct_Init
	.type	.text$BTIM_Struct_Init$scode_local_3, @function
	.text$BTIM_Struct_Init$scode_local_3:
	.align	1
	.export	BTIM_Struct_Init
	.type	BTIM_Struct_Init, @function
BTIM_Struct_Init:
.LFB3:
.LM78:
	.cfi_startproc
.LVL65:
.LM79:
	MOV	r5,#0
	ST.h	[r0],r5
.LM80:
	MOV	r4,#0
	NOT	r4,r4
	ST.h	[r0+#1],r4
.LM81:
	ST.h	[r0+#2],r5
.LM82:
	MOV	r4,#255
	ADD	r4,r4,#1
	ST.h	[r0+#3],r4
.LM83:
	ST.h	[r0+#4],r5
.LM84:
	ST.h	[r0+#5],r5
.LM85:
	ST.h	[r0+#6],r5
.LM86:
	ST.h	[r0+#7],r5
.LM87:
	ST.h	[r0+#8],r5
.LM88:
	ST.h	[r0+#9],r5
.LM89:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	BTIM_Struct_Init, .-BTIM_Struct_Init
	.section .text$BTIM_Cmd
	.type	.text$BTIM_Cmd$scode_local_4, @function
	.text$BTIM_Cmd$scode_local_4:
	.align	1
	.export	BTIM_Cmd
	.type	BTIM_Cmd, @function
BTIM_Cmd:
.LFB4:
.LM90:
	.cfi_startproc
.LVL66:
.LM91:
	ADD	r0,r0,#4
.LVL67:
.LM92:
	CMP	r1,#0
	JNZ	.L35
.LM93:
// inline asm begin
	// 322 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #0
	// 0 "" 2
.LM94:
// inline asm end
	JMP	lr
.L35:
.LM95:
// inline asm begin
	// 317 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #0
	// 0 "" 2
.LM96:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	BTIM_Cmd, .-BTIM_Cmd
	.section .text$BTIM_Set_Counter
	.type	.text$BTIM_Set_Counter$scode_local_5, @function
	.text$BTIM_Set_Counter$scode_local_5:
	.align	1
	.export	BTIM_Set_Counter
	.type	BTIM_Set_Counter, @function
BTIM_Set_Counter:
.LFB5:
.LM97:
	.cfi_startproc
.LVL68:
	ZXT.h	r1,r1
.LM98:
	ST.w	[r0],r1
.LM99:
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	BTIM_Set_Counter, .-BTIM_Set_Counter
	.section .text$BTIM_Set_Period
	.type	.text$BTIM_Set_Period$scode_local_6, @function
	.text$BTIM_Set_Period$scode_local_6:
	.align	1
	.export	BTIM_Set_Period
	.type	BTIM_Set_Period, @function
BTIM_Set_Period:
.LFB6:
.LM100:
	.cfi_startproc
.LVL69:
	ZXT.h	r1,r1
.LM101:
	ST.w	[r0+#4],r1
.LM102:
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	BTIM_Set_Period, .-BTIM_Set_Period
	.section .text$BTIM_Set_Prescaler
	.type	.text$BTIM_Set_Prescaler$scode_local_7, @function
	.text$BTIM_Set_Prescaler$scode_local_7:
	.align	1
	.export	BTIM_Set_Prescaler
	.type	BTIM_Set_Prescaler, @function
BTIM_Set_Prescaler:
.LFB7:
.LM103:
	.cfi_startproc
.LVL70:
	ZXT.h	r1,r1
.LM104:
	ST.w	[r0+#3],r1
.LM105:
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	BTIM_Set_Prescaler, .-BTIM_Set_Prescaler
	.section .text$BTIM_Counter_Mode_Config
	.type	.text$BTIM_Counter_Mode_Config$scode_local_8, @function
	.text$BTIM_Counter_Mode_Config$scode_local_8:
	.align	1
	.export	BTIM_Counter_Mode_Config
	.type	BTIM_Counter_Mode_Config, @function
BTIM_Counter_Mode_Config:
.LFB8:
.LM106:
	.cfi_startproc
.LVL71:
.LM107:
	LD.w	r4,[r0+#1]
.LVL72:
.LBB20:
.LBB21:
.LM108:
	LD	r5,#-449
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL73:
.LBE21:
.LBE20:
.LM109:
	ST.w	[r0+#1],r1
.LM110:
	JMP	lr
	.cfi_endproc
.LFE8:
	.size	BTIM_Counter_Mode_Config, .-BTIM_Counter_Mode_Config
	.section .text$BTIM_Clock_Config
	.type	.text$BTIM_Clock_Config$scode_local_9, @function
	.text$BTIM_Clock_Config$scode_local_9:
	.align	1
	.export	BTIM_Clock_Config
	.type	BTIM_Clock_Config, @function
BTIM_Clock_Config:
.LFB9:
.LM111:
	.cfi_startproc
.LVL74:
.LM112:
	LD.w	r5,[r0+#1]
.LVL75:
.LBB22:
.LBB23:
.LM113:
	CLR	r5,#3
	CLR	r5,#4
.LVL76:
	ORL	r1,r1,r5
.LVL77:
.LBE23:
.LBE22:
.LM114:
	ST.w	[r0+#1],r1
.LM115:
	JMP	lr
	.cfi_endproc
.LFE9:
	.size	BTIM_Clock_Config, .-BTIM_Clock_Config
	.section .text$BTIM_External_Pulse_Sync_Config
	.type	.text$BTIM_External_Pulse_Sync_Config$scode_local_10, @function
	.text$BTIM_External_Pulse_Sync_Config$scode_local_10:
	.align	1
	.export	BTIM_External_Pulse_Sync_Config
	.type	BTIM_External_Pulse_Sync_Config, @function
BTIM_External_Pulse_Sync_Config:
.LFB10:
.LM116:
	.cfi_startproc
.LVL78:
.LM117:
	ADD	r0,r0,#4
.LVL79:
.LM118:
	CMP	r1,#0
	JNZ	.L44
.LM119:
// inline asm begin
	// 447 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #2
	// 0 "" 2
.LM120:
// inline asm end
	JMP	lr
.L44:
.LM121:
// inline asm begin
	// 442 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #2
	// 0 "" 2
.LM122:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE10:
	.size	BTIM_External_Pulse_Sync_Config, .-BTIM_External_Pulse_Sync_Config
	.section .text$BTIM_Work_Mode_Config
	.type	.text$BTIM_Work_Mode_Config$scode_local_11, @function
	.text$BTIM_Work_Mode_Config$scode_local_11:
	.align	1
	.export	BTIM_Work_Mode_Config
	.type	BTIM_Work_Mode_Config, @function
BTIM_Work_Mode_Config:
.LFB11:
.LM123:
	.cfi_startproc
.LVL80:
.LM124:
	ADD	r0,r0,#4
.LVL81:
.LM125:
	CMP	r1,#0
	JNZ	.L48
.LM126:
// inline asm begin
	// 476 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #1
	// 0 "" 2
.LM127:
// inline asm end
	JMP	lr
.L48:
.LM128:
// inline asm begin
	// 471 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #1
	// 0 "" 2
.LM129:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE11:
	.size	BTIM_Work_Mode_Config, .-BTIM_Work_Mode_Config
	.section .text$BTIM_Generate_Trigger_Config
	.type	.text$BTIM_Generate_Trigger_Config$scode_local_12, @function
	.text$BTIM_Generate_Trigger_Config$scode_local_12:
	.align	1
	.export	BTIM_Generate_Trigger_Config
	.type	BTIM_Generate_Trigger_Config, @function
BTIM_Generate_Trigger_Config:
.LFB12:
.LM130:
	.cfi_startproc
.LVL82:
.LM131:
	ADD	r0,#8
.LVL83:
.LM132:
	CMP	r1,#0
	JNZ	.L52
.LM133:
// inline asm begin
	// 503 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #15
	// 0 "" 2
.LM134:
// inline asm end
	JMP	lr
.L52:
.LM135:
// inline asm begin
	// 498 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #15
	// 0 "" 2
.LM136:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE12:
	.size	BTIM_Generate_Trigger_Config, .-BTIM_Generate_Trigger_Config
	.section .text$BTIM_Single_Pulse_Enable
	.type	.text$BTIM_Single_Pulse_Enable$scode_local_13, @function
	.text$BTIM_Single_Pulse_Enable$scode_local_13:
	.align	1
	.export	BTIM_Single_Pulse_Enable
	.type	BTIM_Single_Pulse_Enable, @function
BTIM_Single_Pulse_Enable:
.LFB13:
.LM137:
	.cfi_startproc
.LVL84:
.LM138:
	ADD	r0,#8
.LVL85:
.LM139:
	CMP	r1,#0
	JNZ	.L56
.LM140:
// inline asm begin
	// 530 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #14
	// 0 "" 2
.LM141:
// inline asm end
	JMP	lr
.L56:
.LM142:
// inline asm begin
	// 525 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #14
	// 0 "" 2
.LM143:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE13:
	.size	BTIM_Single_Pulse_Enable, .-BTIM_Single_Pulse_Enable
	.section .text$BTIM_Single_Pulse_Shut_Enable
	.type	.text$BTIM_Single_Pulse_Shut_Enable$scode_local_14, @function
	.text$BTIM_Single_Pulse_Shut_Enable$scode_local_14:
	.align	1
	.export	BTIM_Single_Pulse_Shut_Enable
	.type	BTIM_Single_Pulse_Shut_Enable, @function
BTIM_Single_Pulse_Shut_Enable:
.LFB14:
.LM144:
	.cfi_startproc
.LVL86:
.LM145:
	ADD	r0,#8
.LVL87:
.LM146:
	CMP	r1,#0
	JNZ	.L60
.LM147:
// inline asm begin
	// 558 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #13
	// 0 "" 2
.LM148:
// inline asm end
	JMP	lr
.L60:
.LM149:
// inline asm begin
	// 553 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #13
	// 0 "" 2
.LM150:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE14:
	.size	BTIM_Single_Pulse_Shut_Enable, .-BTIM_Single_Pulse_Shut_Enable
	.section .text$BTIM_Updata_Immediately_Config
	.type	.text$BTIM_Updata_Immediately_Config$scode_local_15, @function
	.text$BTIM_Updata_Immediately_Config$scode_local_15:
	.align	1
	.export	BTIM_Updata_Immediately_Config
	.type	BTIM_Updata_Immediately_Config, @function
BTIM_Updata_Immediately_Config:
.LFB15:
.LM151:
	.cfi_startproc
.LVL88:
.LM152:
	ADD	r0,#8
.LVL89:
.LM153:
	CMP	r1,#0
	JNZ	.L64
.LM154:
// inline asm begin
	// 586 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #12
	// 0 "" 2
.LM155:
// inline asm end
	JMP	lr
.L64:
.LM156:
// inline asm begin
	// 581 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #12
	// 0 "" 2
.LM157:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE15:
	.size	BTIM_Updata_Immediately_Config, .-BTIM_Updata_Immediately_Config
	.section .text$BTIM_Master_Slave_Snyc_Config
	.type	.text$BTIM_Master_Slave_Snyc_Config$scode_local_16, @function
	.text$BTIM_Master_Slave_Snyc_Config$scode_local_16:
	.align	1
	.export	BTIM_Master_Slave_Snyc_Config
	.type	BTIM_Master_Slave_Snyc_Config, @function
BTIM_Master_Slave_Snyc_Config:
.LFB16:
.LM158:
	.cfi_startproc
.LVL90:
.LM159:
	ADD	r0,#8
.LVL91:
.LM160:
	CMP	r1,#0
	JNZ	.L68
.LM161:
// inline asm begin
	// 614 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #11
	// 0 "" 2
.LM162:
// inline asm end
	JMP	lr
.L68:
.LM163:
// inline asm begin
	// 609 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #11
	// 0 "" 2
.LM164:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE16:
	.size	BTIM_Master_Slave_Snyc_Config, .-BTIM_Master_Slave_Snyc_Config
	.section .text$BTIM_Trigger_Select_Config
	.type	.text$BTIM_Trigger_Select_Config$scode_local_17, @function
	.text$BTIM_Trigger_Select_Config$scode_local_17:
	.align	1
	.export	BTIM_Trigger_Select_Config
	.type	BTIM_Trigger_Select_Config, @function
BTIM_Trigger_Select_Config:
.LFB17:
.LM165:
	.cfi_startproc
.LVL92:
.LM166:
	LD.w	r4,[r0+#2]
.LVL93:
.LBB24:
.LBB25:
.LM167:
	LD	r5,#-1921
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL94:
.LBE25:
.LBE24:
.LM168:
	ST.w	[r0+#2],r1
.LM169:
	JMP	lr
	.cfi_endproc
.LFE17:
	.size	BTIM_Trigger_Select_Config, .-BTIM_Trigger_Select_Config
	.section .text$BTIM_Slave_Mode_Config
	.type	.text$BTIM_Slave_Mode_Config$scode_local_18, @function
	.text$BTIM_Slave_Mode_Config$scode_local_18:
	.align	1
	.export	BTIM_Slave_Mode_Config
	.type	BTIM_Slave_Mode_Config, @function
BTIM_Slave_Mode_Config:
.LFB18:
.LM170:
	.cfi_startproc
.LVL95:
.LM171:
	LD.w	r4,[r0+#2]
.LVL96:
.LBB26:
.LBB27:
.LM172:
	MOV	r5,#112
	NOT	r5,r5
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL97:
.LBE27:
.LBE26:
.LM173:
	ST.w	[r0+#2],r1
.LM174:
	JMP	lr
	.cfi_endproc
.LFE18:
	.size	BTIM_Slave_Mode_Config, .-BTIM_Slave_Mode_Config
	.section .text$BTIM_Master_Mode_Config
	.type	.text$BTIM_Master_Mode_Config$scode_local_19, @function
	.text$BTIM_Master_Mode_Config$scode_local_19:
	.align	1
	.export	BTIM_Master_Mode_Config
	.type	BTIM_Master_Mode_Config, @function
BTIM_Master_Mode_Config:
.LFB19:
.LM175:
	.cfi_startproc
.LVL98:
.LM176:
	LD.w	r5,[r0+#2]
.LVL99:
.LBB28:
.LBB29:
.LM177:
	CLR	r5,#2
	CLR	r5,#3
.LVL100:
	ORL	r1,r1,r5
.LVL101:
.LBE29:
.LBE28:
.LM178:
	ST.w	[r0+#2],r1
.LM179:
	JMP	lr
	.cfi_endproc
.LFE19:
	.size	BTIM_Master_Mode_Config, .-BTIM_Master_Mode_Config
	.section .text$BTIM_Updata_Rising_Edge_Config
	.type	.text$BTIM_Updata_Rising_Edge_Config$scode_local_20, @function
	.text$BTIM_Updata_Rising_Edge_Config$scode_local_20:
	.align	1
	.export	BTIM_Updata_Rising_Edge_Config
	.type	BTIM_Updata_Rising_Edge_Config, @function
BTIM_Updata_Rising_Edge_Config:
.LFB20:
.LM180:
	.cfi_startproc
.LVL102:
.LM181:
	ADD	r0,#8
.LVL103:
.LM182:
	CMP	r1,#0
	JNZ	.L75
.LM183:
// inline asm begin
	// 728 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #1
	// 0 "" 2
.LM184:
// inline asm end
	JMP	lr
.L75:
.LM185:
// inline asm begin
	// 723 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #1
	// 0 "" 2
.LM186:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE20:
	.size	BTIM_Updata_Rising_Edge_Config, .-BTIM_Updata_Rising_Edge_Config
	.section .text$BTIM_Updata_Enable
	.type	.text$BTIM_Updata_Enable$scode_local_21, @function
	.text$BTIM_Updata_Enable$scode_local_21:
	.align	1
	.export	BTIM_Updata_Enable
	.type	BTIM_Updata_Enable, @function
BTIM_Updata_Enable:
.LFB21:
.LM187:
	.cfi_startproc
.LVL104:
.LM188:
	ADD	r0,#8
.LVL105:
.LM189:
	CMP	r1,#0
	JNZ	.L79
.LM190:
// inline asm begin
	// 758 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #0
	// 0 "" 2
.LM191:
// inline asm end
	JMP	lr
.L79:
.LM192:
// inline asm begin
	// 753 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #0
	// 0 "" 2
.LM193:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE21:
	.size	BTIM_Updata_Enable, .-BTIM_Updata_Enable
	.section .text$BTIM_Get_Direction
	.type	.text$BTIM_Get_Direction$scode_local_22, @function
	.text$BTIM_Get_Direction$scode_local_22:
	.align	1
	.export	BTIM_Get_Direction
	.type	BTIM_Get_Direction, @function
BTIM_Get_Direction:
.LFB22:
.LM194:
	.cfi_startproc
.LVL106:
.LM195:
	LD.w	r0,[r0+#1]
.LVL107:
	LSR	r0,#5
.LM196:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE22:
	.size	BTIM_Get_Direction, .-BTIM_Get_Direction
	.section .text$BTIM_Get_Counter
	.type	.text$BTIM_Get_Counter$scode_local_23, @function
	.text$BTIM_Get_Counter$scode_local_23:
	.align	1
	.export	BTIM_Get_Counter
	.type	BTIM_Get_Counter, @function
BTIM_Get_Counter:
.LFB23:
.LM197:
	.cfi_startproc
.LVL108:
.LM198:
	LD.w	r0,[r0]
.LVL109:
.LM199:
	ZXT.h	r0,r0
	JMP	lr
	.cfi_endproc
.LFE23:
	.size	BTIM_Get_Counter, .-BTIM_Get_Counter
	.section .text$BTIM_Get_Period
	.type	.text$BTIM_Get_Period$scode_local_24, @function
	.text$BTIM_Get_Period$scode_local_24:
	.align	1
	.export	BTIM_Get_Period
	.type	BTIM_Get_Period, @function
BTIM_Get_Period:
.LFB24:
.LM200:
	.cfi_startproc
.LVL110:
.LM201:
	LD.w	r0,[r0+#4]
.LVL111:
.LM202:
	ZXT.h	r0,r0
	JMP	lr
	.cfi_endproc
.LFE24:
	.size	BTIM_Get_Period, .-BTIM_Get_Period
	.section .text$BTIM_Get_Prescaler
	.type	.text$BTIM_Get_Prescaler$scode_local_25, @function
	.text$BTIM_Get_Prescaler$scode_local_25:
	.align	1
	.export	BTIM_Get_Prescaler
	.type	BTIM_Get_Prescaler, @function
BTIM_Get_Prescaler:
.LFB25:
.LM203:
	.cfi_startproc
.LVL112:
.LM204:
	LD.w	r0,[r0+#3]
.LVL113:
.LM205:
	ZXT.h	r0,r0
	JMP	lr
	.cfi_endproc
.LFE25:
	.size	BTIM_Get_Prescaler, .-BTIM_Get_Prescaler
	.section .text$BTIM_Trigger_DMA_Enable
	.type	.text$BTIM_Trigger_DMA_Enable$scode_local_26, @function
	.text$BTIM_Trigger_DMA_Enable$scode_local_26:
	.align	1
	.export	BTIM_Trigger_DMA_Enable
	.type	BTIM_Trigger_DMA_Enable, @function
BTIM_Trigger_DMA_Enable:
.LFB26:
.LM206:
	.cfi_startproc
.LVL114:
.LM207:
	ADD	r0,#20
.LVL115:
.LM208:
	CMP	r1,#0
	JNZ	.L87
.LM209:
// inline asm begin
	// 863 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #4
	// 0 "" 2
.LM210:
// inline asm end
	JMP	lr
.L87:
.LM211:
// inline asm begin
	// 858 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #4
	// 0 "" 2
.LM212:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE26:
	.size	BTIM_Trigger_DMA_Enable, .-BTIM_Trigger_DMA_Enable
	.section .text$BTIM_Updata_DMA_Enable
	.type	.text$BTIM_Updata_DMA_Enable$scode_local_27, @function
	.text$BTIM_Updata_DMA_Enable$scode_local_27:
	.align	1
	.export	BTIM_Updata_DMA_Enable
	.type	BTIM_Updata_DMA_Enable, @function
BTIM_Updata_DMA_Enable:
.LFB27:
.LM213:
	.cfi_startproc
.LVL116:
.LM214:
	ADD	r0,#20
.LVL117:
.LM215:
	CMP	r1,#0
	JNZ	.L91
.LM216:
// inline asm begin
	// 891 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #3
	// 0 "" 2
.LM217:
// inline asm end
	JMP	lr
.L91:
.LM218:
// inline asm begin
	// 886 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #3
	// 0 "" 2
.LM219:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE27:
	.size	BTIM_Updata_DMA_Enable, .-BTIM_Updata_DMA_Enable
	.section .text$BTIM_Overflow_INT_Enable
	.type	.text$BTIM_Overflow_INT_Enable$scode_local_28, @function
	.text$BTIM_Overflow_INT_Enable$scode_local_28:
	.align	1
	.export	BTIM_Overflow_INT_Enable
	.type	BTIM_Overflow_INT_Enable, @function
BTIM_Overflow_INT_Enable:
.LFB28:
.LM220:
	.cfi_startproc
.LVL118:
.LM221:
	ADD	r0,#20
.LVL119:
.LM222:
	CMP	r1,#0
	JNZ	.L95
.LM223:
// inline asm begin
	// 919 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #2
	// 0 "" 2
.LM224:
// inline asm end
	JMP	lr
.L95:
.LM225:
// inline asm begin
	// 914 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #2
	// 0 "" 2
.LM226:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE28:
	.size	BTIM_Overflow_INT_Enable, .-BTIM_Overflow_INT_Enable
	.section .text$BTIM_Trigger_INT_Enable
	.type	.text$BTIM_Trigger_INT_Enable$scode_local_29, @function
	.text$BTIM_Trigger_INT_Enable$scode_local_29:
	.align	1
	.export	BTIM_Trigger_INT_Enable
	.type	BTIM_Trigger_INT_Enable, @function
BTIM_Trigger_INT_Enable:
.LFB29:
.LM227:
	.cfi_startproc
.LVL120:
.LM228:
	ADD	r0,#20
.LVL121:
.LM229:
	CMP	r1,#0
	JNZ	.L99
.LM230:
// inline asm begin
	// 947 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #1
	// 0 "" 2
.LM231:
// inline asm end
	JMP	lr
.L99:
.LM232:
// inline asm begin
	// 942 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #1
	// 0 "" 2
.LM233:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE29:
	.size	BTIM_Trigger_INT_Enable, .-BTIM_Trigger_INT_Enable
	.section .text$BTIM_Updata_INT_Enable
	.type	.text$BTIM_Updata_INT_Enable$scode_local_30, @function
	.text$BTIM_Updata_INT_Enable$scode_local_30:
	.align	1
	.export	BTIM_Updata_INT_Enable
	.type	BTIM_Updata_INT_Enable, @function
BTIM_Updata_INT_Enable:
.LFB30:
.LM234:
	.cfi_startproc
.LVL122:
.LM235:
	ADD	r0,#20
.LVL123:
.LM236:
	CMP	r1,#0
	JNZ	.L103
.LM237:
// inline asm begin
	// 975 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r0], #0
	// 0 "" 2
.LM238:
// inline asm end
	JMP	lr
.L103:
.LM239:
// inline asm begin
	// 970 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r0], #0
	// 0 "" 2
.LM240:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE30:
	.size	BTIM_Updata_INT_Enable, .-BTIM_Updata_INT_Enable
	.section .text$BTIM_Get_Trigger_DMA_INT_Status
	.type	.text$BTIM_Get_Trigger_DMA_INT_Status$scode_local_31, @function
	.text$BTIM_Get_Trigger_DMA_INT_Status$scode_local_31:
	.align	1
	.export	BTIM_Get_Trigger_DMA_INT_Status
	.type	BTIM_Get_Trigger_DMA_INT_Status, @function
BTIM_Get_Trigger_DMA_INT_Status:
.LFB31:
.LM241:
	.cfi_startproc
.LVL124:
.LM242:
	LD.w	r0,[r0+#5]
.LVL125:
	LSR	r0,#4
.LM243:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE31:
	.size	BTIM_Get_Trigger_DMA_INT_Status, .-BTIM_Get_Trigger_DMA_INT_Status
	.section .text$BTIM_Get_Updata_DMA_INT_Status
	.type	.text$BTIM_Get_Updata_DMA_INT_Status$scode_local_32, @function
	.text$BTIM_Get_Updata_DMA_INT_Status$scode_local_32:
	.align	1
	.export	BTIM_Get_Updata_DMA_INT_Status
	.type	BTIM_Get_Updata_DMA_INT_Status, @function
BTIM_Get_Updata_DMA_INT_Status:
.LFB32:
.LM244:
	.cfi_startproc
.LVL126:
.LM245:
	LD.w	r0,[r0+#5]
.LVL127:
	LSR	r0,#3
.LM246:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE32:
	.size	BTIM_Get_Updata_DMA_INT_Status, .-BTIM_Get_Updata_DMA_INT_Status
	.section .text$BTIM_Get_Overflow_INT_Status
	.type	.text$BTIM_Get_Overflow_INT_Status$scode_local_33, @function
	.text$BTIM_Get_Overflow_INT_Status$scode_local_33:
	.align	1
	.export	BTIM_Get_Overflow_INT_Status
	.type	BTIM_Get_Overflow_INT_Status, @function
BTIM_Get_Overflow_INT_Status:
.LFB33:
.LM247:
	.cfi_startproc
.LVL128:
.LM248:
	LD.w	r0,[r0+#5]
.LVL129:
	LSR	r0,#2
.LM249:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE33:
	.size	BTIM_Get_Overflow_INT_Status, .-BTIM_Get_Overflow_INT_Status
	.section .text$BTIM_Get_Trigger_INT_Status
	.type	.text$BTIM_Get_Trigger_INT_Status$scode_local_34, @function
	.text$BTIM_Get_Trigger_INT_Status$scode_local_34:
	.align	1
	.export	BTIM_Get_Trigger_INT_Status
	.type	BTIM_Get_Trigger_INT_Status, @function
BTIM_Get_Trigger_INT_Status:
.LFB34:
.LM250:
	.cfi_startproc
.LVL130:
.LM251:
	LD.w	r0,[r0+#5]
.LVL131:
	LSR	r0,#1
.LM252:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE34:
	.size	BTIM_Get_Trigger_INT_Status, .-BTIM_Get_Trigger_INT_Status
	.section .text$BTIM_Get_Updata_INT_Status
	.type	.text$BTIM_Get_Updata_INT_Status$scode_local_35, @function
	.text$BTIM_Get_Updata_INT_Status$scode_local_35:
	.align	1
	.export	BTIM_Get_Updata_INT_Status
	.type	BTIM_Get_Updata_INT_Status, @function
BTIM_Get_Updata_INT_Status:
.LFB35:
.LM253:
	.cfi_startproc
.LVL132:
.LM254:
	LD.w	r0,[r0+#5]
.LVL133:
.LM255:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE35:
	.size	BTIM_Get_Updata_INT_Status, .-BTIM_Get_Updata_INT_Status
	.section .text$BTIM_Get_Trigger_DMA_INT_Flag
	.type	.text$BTIM_Get_Trigger_DMA_INT_Flag$scode_local_36, @function
	.text$BTIM_Get_Trigger_DMA_INT_Flag$scode_local_36:
	.align	1
	.export	BTIM_Get_Trigger_DMA_INT_Flag
	.type	BTIM_Get_Trigger_DMA_INT_Flag, @function
BTIM_Get_Trigger_DMA_INT_Flag:
.LFB36:
.LM256:
	.cfi_startproc
.LVL134:
.LM257:
	LD.w	r0,[r0+#6]
.LVL135:
	LSR	r0,#4
.LM258:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE36:
	.size	BTIM_Get_Trigger_DMA_INT_Flag, .-BTIM_Get_Trigger_DMA_INT_Flag
	.section .text$BTIM_Get_Updata_DMA_INT_Flag
	.type	.text$BTIM_Get_Updata_DMA_INT_Flag$scode_local_37, @function
	.text$BTIM_Get_Updata_DMA_INT_Flag$scode_local_37:
	.align	1
	.export	BTIM_Get_Updata_DMA_INT_Flag
	.type	BTIM_Get_Updata_DMA_INT_Flag, @function
BTIM_Get_Updata_DMA_INT_Flag:
.LFB37:
.LM259:
	.cfi_startproc
.LVL136:
.LM260:
	LD.w	r0,[r0+#6]
.LVL137:
	LSR	r0,#3
.LM261:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE37:
	.size	BTIM_Get_Updata_DMA_INT_Flag, .-BTIM_Get_Updata_DMA_INT_Flag
	.section .text$BTIM_Get_Overflow_INT_Flag
	.type	.text$BTIM_Get_Overflow_INT_Flag$scode_local_38, @function
	.text$BTIM_Get_Overflow_INT_Flag$scode_local_38:
	.align	1
	.export	BTIM_Get_Overflow_INT_Flag
	.type	BTIM_Get_Overflow_INT_Flag, @function
BTIM_Get_Overflow_INT_Flag:
.LFB38:
.LM262:
	.cfi_startproc
.LVL138:
.LM263:
	LD.w	r0,[r0+#6]
.LVL139:
	LSR	r0,#2
.LM264:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE38:
	.size	BTIM_Get_Overflow_INT_Flag, .-BTIM_Get_Overflow_INT_Flag
	.section .text$BTIM_Get_Trigger_INT_Flag
	.type	.text$BTIM_Get_Trigger_INT_Flag$scode_local_39, @function
	.text$BTIM_Get_Trigger_INT_Flag$scode_local_39:
	.align	1
	.export	BTIM_Get_Trigger_INT_Flag
	.type	BTIM_Get_Trigger_INT_Flag, @function
BTIM_Get_Trigger_INT_Flag:
.LFB39:
.LM265:
	.cfi_startproc
.LVL140:
.LM266:
	LD.w	r0,[r0+#6]
.LVL141:
	LSR	r0,#1
.LM267:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE39:
	.size	BTIM_Get_Trigger_INT_Flag, .-BTIM_Get_Trigger_INT_Flag
	.section .text$BTIM_Get_Updata_INT_Flag
	.type	.text$BTIM_Get_Updata_INT_Flag$scode_local_40, @function
	.text$BTIM_Get_Updata_INT_Flag$scode_local_40:
	.align	1
	.export	BTIM_Get_Updata_INT_Flag
	.type	BTIM_Get_Updata_INT_Flag, @function
BTIM_Get_Updata_INT_Flag:
.LFB40:
.LM268:
	.cfi_startproc
.LVL142:
.LM269:
	LD.w	r0,[r0+#6]
.LVL143:
.LM270:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE40:
	.size	BTIM_Get_Updata_INT_Flag, .-BTIM_Get_Updata_INT_Flag
	.section .text$BTIM_Clear_Overflow_INT_Flag
	.type	.text$BTIM_Clear_Overflow_INT_Flag$scode_local_41, @function
	.text$BTIM_Clear_Overflow_INT_Flag$scode_local_41:
	.align	1
	.export	BTIM_Clear_Overflow_INT_Flag
	.type	BTIM_Clear_Overflow_INT_Flag, @function
BTIM_Clear_Overflow_INT_Flag:
.LFB41:
.LM271:
	.cfi_startproc
.LVL144:
.LM272:
	MOV	r5,#28
	ADD	r3,r0,r5
// inline asm begin
	// 1231 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r3], #2
	// 0 "" 2
.LM273:
// inline asm end
	MOV	r4,#4
.L115:
.LM274:
	LD.w	r5,[r0+#6]
	ANL	r5,r5,r4
	JNZ	.L115
.LM275:
// inline asm begin
	// 1233 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r3], #2
	// 0 "" 2
.LM276:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE41:
	.size	BTIM_Clear_Overflow_INT_Flag, .-BTIM_Clear_Overflow_INT_Flag
	.section .text$BTIM_Clear_Trigger_INT_Flag
	.type	.text$BTIM_Clear_Trigger_INT_Flag$scode_local_42, @function
	.text$BTIM_Clear_Trigger_INT_Flag$scode_local_42:
	.align	1
	.export	BTIM_Clear_Trigger_INT_Flag
	.type	BTIM_Clear_Trigger_INT_Flag, @function
BTIM_Clear_Trigger_INT_Flag:
.LFB42:
.LM277:
	.cfi_startproc
.LVL145:
.LM278:
	MOV	r5,#28
	ADD	r3,r0,r5
// inline asm begin
	// 1248 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r3], #1
	// 0 "" 2
.LM279:
// inline asm end
	MOV	r4,#2
.L118:
.LM280:
	LD.w	r5,[r0+#6]
	ANL	r5,r5,r4
	JNZ	.L118
.LM281:
// inline asm begin
	// 1250 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r3], #1
	// 0 "" 2
.LM282:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE42:
	.size	BTIM_Clear_Trigger_INT_Flag, .-BTIM_Clear_Trigger_INT_Flag
	.section .text$BTIM_Clear_Updata_INT_Flag
	.type	.text$BTIM_Clear_Updata_INT_Flag$scode_local_43, @function
	.text$BTIM_Clear_Updata_INT_Flag$scode_local_43:
	.align	1
	.export	BTIM_Clear_Updata_INT_Flag
	.type	BTIM_Clear_Updata_INT_Flag, @function
BTIM_Clear_Updata_INT_Flag:
.LFB43:
.LM283:
	.cfi_startproc
.LVL146:
.LM284:
	MOV	r5,#28
	ADD	r3,r0,r5
// inline asm begin
	// 1266 "../Peripherals/src/kf32f_basic_btim.c" 1
	SET [r3], #0
	// 0 "" 2
.LM285:
// inline asm end
	MOV	r4,#1
.L121:
.LM286:
	LD.w	r5,[r0+#6]
	ANL	r5,r5,r4
	JNZ	.L121
.LM287:
// inline asm begin
	// 1268 "../Peripherals/src/kf32f_basic_btim.c" 1
	CLR [r3], #0
	// 0 "" 2
.LM288:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE43:
	.size	BTIM_Clear_Updata_INT_Flag, .-BTIM_Clear_Updata_INT_Flag
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_44, @function
	.debug_info$scode_local_44:
.Ldebug_info0:
	.long	0xfda
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF95
	.byte	0x1
	.long	.LASF96
	.long	.LASF97
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF5
	.byte	0x3
	.byte	0x18
	.long	0x37
	.uleb128 0x4
	.long	.LASF6
	.byte	0x3
	.byte	0x1a
	.long	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x25
	.long	0x93
	.uleb128 0x6
	.long	.LASF10
	.sleb128 0
	.uleb128 0x6
	.long	.LASF11
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x28
	.long	0x7e
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x2d
	.long	0xb3
	.uleb128 0x6
	.long	.LASF13
	.sleb128 0
	.uleb128 0x7
	.string	"SET"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x30
	.long	0x9e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x30
	.long	0x9e
	.uleb128 0x8
	.long	0xce
	.uleb128 0x9
	.long	0x5e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF16
	.uleb128 0xa
	.long	.LASF98
	.byte	0x20
	.byte	0x2
	.short	0x129f
	.long	0x14f
	.uleb128 0xb
	.string	"CNT"
	.byte	0x2
	.short	0x12a0
	.long	0xce
	.byte	0
	.uleb128 0xc
	.long	.LASF17
	.byte	0x2
	.short	0x12a1
	.long	0xce
	.byte	0x4
	.uleb128 0xc
	.long	.LASF18
	.byte	0x2
	.short	0x12a2
	.long	0xce
	.byte	0x8
	.uleb128 0xc
	.long	.LASF19
	.byte	0x2
	.short	0x12a3
	.long	0xce
	.byte	0xc
	.uleb128 0xb
	.string	"PPX"
	.byte	0x2
	.short	0x12a4
	.long	0xce
	.byte	0x10
	.uleb128 0xc
	.long	.LASF20
	.byte	0x2
	.short	0x12a5
	.long	0xce
	.byte	0x14
	.uleb128 0xb
	.string	"SR"
	.byte	0x2
	.short	0x12a6
	.long	0xc9
	.byte	0x18
	.uleb128 0xc
	.long	.LASF21
	.byte	0x2
	.short	0x12a7
	.long	0xce
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.long	.LASF22
	.byte	0x2
	.short	0x12a8
	.long	0xda
	.uleb128 0xe
	.byte	0x14
	.byte	0x4
	.byte	0xa9
	.long	0x1dc
	.uleb128 0xf
	.long	.LASF23
	.byte	0x4
	.byte	0xab
	.long	0x53
	.byte	0
	.uleb128 0xf
	.long	.LASF24
	.byte	0x4
	.byte	0xac
	.long	0x53
	.byte	0x2
	.uleb128 0xf
	.long	.LASF25
	.byte	0x4
	.byte	0xad
	.long	0x53
	.byte	0x4
	.uleb128 0xf
	.long	.LASF26
	.byte	0x4
	.byte	0xae
	.long	0x53
	.byte	0x6
	.uleb128 0xf
	.long	.LASF27
	.byte	0x4
	.byte	0xb0
	.long	0x53
	.byte	0x8
	.uleb128 0xf
	.long	.LASF28
	.byte	0x4
	.byte	0xb2
	.long	0x53
	.byte	0xa
	.uleb128 0xf
	.long	.LASF29
	.byte	0x4
	.byte	0xb4
	.long	0x53
	.byte	0xc
	.uleb128 0xf
	.long	.LASF30
	.byte	0x4
	.byte	0xb6
	.long	0x53
	.byte	0xe
	.uleb128 0xf
	.long	.LASF31
	.byte	0x4
	.byte	0xb8
	.long	0x53
	.byte	0x10
	.uleb128 0xf
	.long	.LASF32
	.byte	0x4
	.byte	0xba
	.long	0x53
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.long	.LASF33
	.byte	0x4
	.byte	0xbc
	.long	0x15b
	.uleb128 0x10
	.byte	0x4
	.byte	0x4
	.short	0x11d
	.long	0x1fd
	.uleb128 0x6
	.long	.LASF34
	.sleb128 0
	.uleb128 0x6
	.long	.LASF35
	.sleb128 1
	.byte	0
	.uleb128 0xd
	.long	.LASF36
	.byte	0x4
	.short	0x120
	.long	0x1e7
	.uleb128 0x11
	.long	.LASF99
	.byte	0x2
	.short	0x3416
	.byte	0x1
	.long	0x5e
	.byte	0x3
	.long	0x240
	.uleb128 0x12
	.long	.LASF37
	.byte	0x2
	.short	0x3416
	.long	0x5e
	.uleb128 0x12
	.long	.LASF38
	.byte	0x2
	.short	0x3416
	.long	0x5e
	.uleb128 0x12
	.long	.LASF39
	.byte	0x2
	.short	0x3416
	.long	0x5e
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x621
	.uleb128 0x14
	.long	.LASF42
	.byte	0x1
	.byte	0x2b
	.long	0x621
	.long	.LLST0
	.uleb128 0x15
	.long	.LVL4
	.long	0x27b
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x15
	.long	.LVL5
	.long	0x28f
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x15
	.long	.LVL6
	.long	0x2a3
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x15
	.long	.LVL10
	.long	0x2b9
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL11
	.long	0x2cf
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL12
	.long	0x2e5
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL15
	.long	0x2f9
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x15
	.long	.LVL16
	.long	0x30d
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x15
	.long	.LVL17
	.long	0x321
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x15
	.long	.LVL20
	.long	0x335
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x15
	.long	.LVL21
	.long	0x349
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x15
	.long	.LVL22
	.long	0x35d
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x15
	.long	.LVL25
	.long	0x371
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.long	.LVL26
	.long	0x385
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.long	.LVL27
	.long	0x399
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.long	.LVL30
	.long	0x3ae
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.long	.LVL31
	.long	0x3c3
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.long	.LVL32
	.long	0x3d8
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.long	.LVL33
	.long	0x3ed
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.long	.LVL34
	.long	0x402
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.long	.LVL35
	.long	0x417
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.long	.LVL36
	.long	0x42c
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.long	.LVL37
	.long	0x441
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.long	.LVL38
	.long	0x456
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.long	.LVL39
	.long	0x46c
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x100
	.byte	0
	.uleb128 0x15
	.long	.LVL40
	.long	0x482
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x100
	.byte	0
	.uleb128 0x15
	.long	.LVL41
	.long	0x498
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x100
	.byte	0
	.uleb128 0x15
	.long	.LVL42
	.long	0x4ae
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x100
	.byte	0
	.uleb128 0x15
	.long	.LVL43
	.long	0x4c4
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x100
	.byte	0
	.uleb128 0x15
	.long	.LVL44
	.long	0x4da
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x100
	.byte	0
	.uleb128 0x15
	.long	.LVL45
	.long	0x4f0
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL46
	.long	0x506
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL47
	.long	0x51c
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL48
	.long	0x532
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL49
	.long	0x548
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL50
	.long	0x55e
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL51
	.long	0x574
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x41
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL52
	.long	0x58a
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x41
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL53
	.long	0x5a0
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x41
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL54
	.long	0x5b6
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL55
	.long	0x5cc
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL56
	.long	0x5e2
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL57
	.long	0x5f8
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x400
	.byte	0
	.uleb128 0x15
	.long	.LVL58
	.long	0x60e
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x400
	.byte	0
	.uleb128 0x17
	.long	.LVL59
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x400
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uleb128 0x13
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x6e5
	.uleb128 0x19
	.long	.LASF43
	.byte	0x1
	.byte	0xdc
	.long	0x6e5
	.byte	0x1
	.byte	0x50
	.uleb128 0x19
	.long	.LASF44
	.byte	0x1
	.byte	0xdd
	.long	0x6eb
	.byte	0x1
	.byte	0x51
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.byte	0xdf
	.long	0x5e
	.long	.LLST1
	.uleb128 0x1b
	.long	0x209
	.long	.LBB16
	.long	.LBE16
	.byte	0x1
	.byte	0xfd
	.long	0x6a6
	.uleb128 0x1c
	.long	0x233
	.byte	0x18
	.byte	0x71
	.sleb128 8
	.byte	0x94
	.byte	0x2
	.byte	0x71
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0x21
	.byte	0x71
	.sleb128 10
	.byte	0x94
	.byte	0x2
	.byte	0x21
	.byte	0x71
	.sleb128 16
	.byte	0x94
	.byte	0x2
	.byte	0x21
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x1d
	.long	0x227
	.sleb128 -479
	.uleb128 0x1e
	.long	0x21b
	.long	.LLST2
	.byte	0
	.uleb128 0x1f
	.long	0x209
	.long	.LBB18
	.long	.LBE18
	.byte	0x1
	.short	0x108
	.uleb128 0x1c
	.long	0x233
	.byte	0x19
	.byte	0x71
	.sleb128 18
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x3b
	.byte	0x24
	.byte	0x71
	.sleb128 14
	.byte	0x94
	.byte	0x2
	.byte	0x71
	.sleb128 12
	.byte	0x94
	.byte	0x2
	.byte	0x21
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.uleb128 0x1d
	.long	0x227
	.sleb128 -2173
	.uleb128 0x1c
	.long	0x21b
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.long	0x14f
	.uleb128 0x20
	.byte	0x4
	.long	0x1dc
	.uleb128 0x21
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.short	0x113
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x719
	.uleb128 0x22
	.long	.LASF44
	.byte	0x1
	.short	0x113
	.long	0x6eb
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.short	0x133
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x751
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x133
	.long	0x6e5
	.long	.LLST3
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x133
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.short	0x14d
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x787
	.uleb128 0x22
	.long	.LASF43
	.byte	0x1
	.short	0x14d
	.long	0x6e5
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.long	.LASF49
	.byte	0x1
	.short	0x14d
	.long	0x53
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.short	0x15d
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7bd
	.uleb128 0x22
	.long	.LASF43
	.byte	0x1
	.short	0x15d
	.long	0x6e5
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.long	.LASF51
	.byte	0x1
	.short	0x15d
	.long	0x53
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.short	0x16d
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7f3
	.uleb128 0x22
	.long	.LASF43
	.byte	0x1
	.short	0x16d
	.long	0x6e5
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.long	.LASF53
	.byte	0x1
	.short	0x16d
	.long	0x53
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.short	0x183
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x853
	.uleb128 0x22
	.long	.LASF43
	.byte	0x1
	.short	0x183
	.long	0x6e5
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF55
	.byte	0x1
	.short	0x183
	.long	0x5e
	.long	.LLST4
	.uleb128 0x1f
	.long	0x209
	.long	.LBB20
	.long	.LBE20
	.byte	0x1
	.short	0x18a
	.uleb128 0x1e
	.long	0x233
	.long	.LLST5
	.uleb128 0x1d
	.long	0x227
	.sleb128 -449
	.uleb128 0x1c
	.long	0x21b
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.short	0x19a
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8b4
	.uleb128 0x22
	.long	.LASF43
	.byte	0x1
	.short	0x19a
	.long	0x6e5
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF57
	.byte	0x1
	.short	0x19a
	.long	0x5e
	.long	.LLST6
	.uleb128 0x1f
	.long	0x209
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.short	0x1a1
	.uleb128 0x1e
	.long	0x233
	.long	.LLST7
	.uleb128 0x1d
	.long	0x227
	.sleb128 -25
	.uleb128 0x1e
	.long	0x21b
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.short	0x1b0
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8ec
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x1b0
	.long	0x6e5
	.long	.LLST9
	.uleb128 0x22
	.long	.LASF59
	.byte	0x1
	.short	0x1b0
	.long	0x5e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.short	0x1cd
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x924
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x1cd
	.long	0x6e5
	.long	.LLST10
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x1cd
	.long	0x5e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.short	0x1e8
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x95c
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x1e8
	.long	0x6e5
	.long	.LLST11
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x1e8
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.short	0x203
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x994
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x203
	.long	0x6e5
	.long	.LLST12
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x203
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.short	0x21e
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9cc
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x21e
	.long	0x6e5
	.long	.LLST13
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x21f
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.short	0x23a
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa04
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x23a
	.long	0x6e5
	.long	.LLST14
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x23b
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.short	0x256
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa3c
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x256
	.long	0x6e5
	.long	.LLST15
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x257
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.short	0x27f
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa9c
	.uleb128 0x22
	.long	.LASF43
	.byte	0x1
	.short	0x27f
	.long	0x6e5
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF67
	.byte	0x1
	.short	0x280
	.long	0x5e
	.long	.LLST16
	.uleb128 0x1f
	.long	0x209
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.short	0x287
	.uleb128 0x1e
	.long	0x233
	.long	.LLST17
	.uleb128 0x1d
	.long	0x227
	.sleb128 -1921
	.uleb128 0x1c
	.long	0x21b
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.short	0x299
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xafc
	.uleb128 0x22
	.long	.LASF43
	.byte	0x1
	.short	0x299
	.long	0x6e5
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF69
	.byte	0x1
	.short	0x29a
	.long	0x5e
	.long	.LLST18
	.uleb128 0x1f
	.long	0x209
	.long	.LBB26
	.long	.LBE26
	.byte	0x1
	.short	0x2a1
	.uleb128 0x1e
	.long	0x233
	.long	.LLST19
	.uleb128 0x1d
	.long	0x227
	.sleb128 -113
	.uleb128 0x1c
	.long	0x21b
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.short	0x2b1
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb5d
	.uleb128 0x22
	.long	.LASF43
	.byte	0x1
	.short	0x2b1
	.long	0x6e5
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF71
	.byte	0x1
	.short	0x2b2
	.long	0x5e
	.long	.LLST20
	.uleb128 0x1f
	.long	0x209
	.long	.LBB28
	.long	.LBE28
	.byte	0x1
	.short	0x2b9
	.uleb128 0x1e
	.long	0x233
	.long	.LLST21
	.uleb128 0x1d
	.long	0x227
	.sleb128 -13
	.uleb128 0x1e
	.long	0x21b
	.long	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.short	0x2c8
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb95
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x2c8
	.long	0x6e5
	.long	.LLST23
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x2c9
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.short	0x2e6
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbcd
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x2e6
	.long	0x6e5
	.long	.LLST24
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x2e7
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.short	0x300
	.byte	0x1
	.long	0x1fd
	.long	.LFB22
	.long	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbfb
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x300
	.long	0x6e5
	.long	.LLST25
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.short	0x318
	.byte	0x1
	.long	0x53
	.long	.LFB23
	.long	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc29
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x318
	.long	0x6e5
	.long	.LLST26
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.short	0x327
	.byte	0x1
	.long	0x53
	.long	.LFB24
	.long	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc57
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x327
	.long	0x6e5
	.long	.LLST27
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.short	0x336
	.byte	0x1
	.long	0x53
	.long	.LFB25
	.long	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc85
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x336
	.long	0x6e5
	.long	.LLST28
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF78
	.byte	0x1
	.short	0x34f
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xcbd
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x34f
	.long	0x6e5
	.long	.LLST29
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x350
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.short	0x36b
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xcf5
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x36b
	.long	0x6e5
	.long	.LLST30
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x36c
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.short	0x387
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd2d
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x387
	.long	0x6e5
	.long	.LLST31
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x388
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.short	0x3a3
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd65
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x3a3
	.long	0x6e5
	.long	.LLST32
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x3a4
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.short	0x3bf
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd9d
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x3bf
	.long	0x6e5
	.long	.LLST33
	.uleb128 0x22
	.long	.LASF47
	.byte	0x1
	.short	0x3c0
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.short	0x3d9
	.byte	0x1
	.long	0xbe
	.long	.LFB31
	.long	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xdcb
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x3d9
	.long	0x6e5
	.long	.LLST34
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.short	0x3f1
	.byte	0x1
	.long	0xbe
	.long	.LFB32
	.long	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xdf9
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x3f1
	.long	0x6e5
	.long	.LLST35
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.short	0x409
	.byte	0x1
	.long	0xbe
	.long	.LFB33
	.long	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe27
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x409
	.long	0x6e5
	.long	.LLST36
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.short	0x421
	.byte	0x1
	.long	0xbe
	.long	.LFB34
	.long	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe55
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x421
	.long	0x6e5
	.long	.LLST37
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF87
	.byte	0x1
	.short	0x439
	.byte	0x1
	.long	0xbe
	.long	.LFB35
	.long	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe83
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x439
	.long	0x6e5
	.long	.LLST38
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.short	0x451
	.byte	0x1
	.long	0xb3
	.long	.LFB36
	.long	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xeb1
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x451
	.long	0x6e5
	.long	.LLST39
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.short	0x469
	.byte	0x1
	.long	0xb3
	.long	.LFB37
	.long	.LFE37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xedf
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x469
	.long	0x6e5
	.long	.LLST40
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.short	0x481
	.byte	0x1
	.long	0xb3
	.long	.LFB38
	.long	.LFE38
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf0d
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x481
	.long	0x6e5
	.long	.LLST41
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.short	0x499
	.byte	0x1
	.long	0xb3
	.long	.LFB39
	.long	.LFE39
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf3b
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x499
	.long	0x6e5
	.long	.LLST42
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF92
	.byte	0x1
	.short	0x4b1
	.byte	0x1
	.long	0xb3
	.long	.LFB40
	.long	.LFE40
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf69
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x4b1
	.long	0x6e5
	.long	.LLST43
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF93
	.byte	0x1
	.short	0x4c9
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf91
	.uleb128 0x22
	.long	.LASF43
	.byte	0x1
	.short	0x4c9
	.long	0x6e5
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF94
	.byte	0x1
	.short	0x4da
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xfb9
	.uleb128 0x22
	.long	.LASF43
	.byte	0x1
	.short	0x4da
	.long	0x6e5
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF101
	.byte	0x1
	.short	0x4ec
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x22
	.long	.LASF43
	.byte	0x1
	.short	0x4ec
	.long	0x6e5
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_45, @function
	.debug_abbrev$scode_local_45:
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_46, @function
	.debug_loc$scode_local_46:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.short	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LVL2
	.short	0x1
	.byte	0x56
	.long	.LVL2
	.long	.LVL3
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL3
	.long	.LVL7
	.short	0x1
	.byte	0x56
	.long	.LVL7
	.long	.LVL8
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.short	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LVL13
	.short	0x1
	.byte	0x56
	.long	.LVL13
	.long	.LVL14
	.short	0x1
	.byte	0x50
	.long	.LVL14
	.long	.LVL18
	.short	0x1
	.byte	0x56
	.long	.LVL18
	.long	.LVL19
	.short	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LVL23
	.short	0x1
	.byte	0x56
	.long	.LVL23
	.long	.LVL24
	.short	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LVL28
	.short	0x1
	.byte	0x56
	.long	.LVL28
	.long	.LVL29
	.short	0x1
	.byte	0x50
	.long	.LVL29
	.long	.LFE1
	.short	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST1:
	.long	.LVL60
	.long	.LVL61
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL61
	.long	.LVL63
	.short	0x18
	.byte	0x71
	.sleb128 8
	.byte	0x94
	.byte	0x2
	.byte	0x71
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0x21
	.byte	0x71
	.sleb128 10
	.byte	0x94
	.byte	0x2
	.byte	0x21
	.byte	0x71
	.sleb128 16
	.byte	0x94
	.byte	0x2
	.byte	0x21
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL63
	.long	.LFE2
	.short	0x19
	.byte	0x71
	.sleb128 18
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x3b
	.byte	0x24
	.byte	0x71
	.sleb128 14
	.byte	0x94
	.byte	0x2
	.byte	0x71
	.sleb128 12
	.byte	0x94
	.byte	0x2
	.byte	0x21
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL62
	.long	.LVL64
	.short	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL66
	.long	.LVL67
	.short	0x1
	.byte	0x50
	.long	.LVL67
	.long	.LFE4
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL71
	.long	.LVL73
	.short	0x1
	.byte	0x51
	.long	.LVL73
	.long	.LFE8
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL72
	.long	.LVL73
	.short	0x1
	.byte	0x51
	.long	.LVL73
	.long	.LFE8
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL74
	.long	.LVL77
	.short	0x1
	.byte	0x51
	.long	.LVL77
	.long	.LFE9
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL75
	.long	.LVL77
	.short	0x1
	.byte	0x51
	.long	.LVL77
	.long	.LFE9
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL75
	.long	.LVL76
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST9:
	.long	.LVL78
	.long	.LVL79
	.short	0x1
	.byte	0x50
	.long	.LVL79
	.long	.LFE10
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL80
	.long	.LVL81
	.short	0x1
	.byte	0x50
	.long	.LVL81
	.long	.LFE11
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL82
	.long	.LVL83
	.short	0x1
	.byte	0x50
	.long	.LVL83
	.long	.LFE12
	.short	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL84
	.long	.LVL85
	.short	0x1
	.byte	0x50
	.long	.LVL85
	.long	.LFE13
	.short	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL86
	.long	.LVL87
	.short	0x1
	.byte	0x50
	.long	.LVL87
	.long	.LFE14
	.short	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL88
	.long	.LVL89
	.short	0x1
	.byte	0x50
	.long	.LVL89
	.long	.LFE15
	.short	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL90
	.long	.LVL91
	.short	0x1
	.byte	0x50
	.long	.LVL91
	.long	.LFE16
	.short	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL92
	.long	.LVL94
	.short	0x1
	.byte	0x51
	.long	.LVL94
	.long	.LFE17
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL93
	.long	.LVL94
	.short	0x1
	.byte	0x51
	.long	.LVL94
	.long	.LFE17
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL95
	.long	.LVL97
	.short	0x1
	.byte	0x51
	.long	.LVL97
	.long	.LFE18
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL96
	.long	.LVL97
	.short	0x1
	.byte	0x51
	.long	.LVL97
	.long	.LFE18
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL98
	.long	.LVL101
	.short	0x1
	.byte	0x51
	.long	.LVL101
	.long	.LFE19
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL99
	.long	.LVL101
	.short	0x1
	.byte	0x51
	.long	.LVL101
	.long	.LFE19
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL99
	.long	.LVL100
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST23:
	.long	.LVL102
	.long	.LVL103
	.short	0x1
	.byte	0x50
	.long	.LVL103
	.long	.LFE20
	.short	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL104
	.long	.LVL105
	.short	0x1
	.byte	0x50
	.long	.LVL105
	.long	.LFE21
	.short	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL106
	.long	.LVL107
	.short	0x1
	.byte	0x50
	.long	.LVL107
	.long	.LFE22
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL108
	.long	.LVL109
	.short	0x1
	.byte	0x50
	.long	.LVL109
	.long	.LFE23
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL110
	.long	.LVL111
	.short	0x1
	.byte	0x50
	.long	.LVL111
	.long	.LFE24
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL112
	.long	.LVL113
	.short	0x1
	.byte	0x50
	.long	.LVL113
	.long	.LFE25
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL114
	.long	.LVL115
	.short	0x1
	.byte	0x50
	.long	.LVL115
	.long	.LFE26
	.short	0x3
	.byte	0x70
	.sleb128 -20
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL116
	.long	.LVL117
	.short	0x1
	.byte	0x50
	.long	.LVL117
	.long	.LFE27
	.short	0x3
	.byte	0x70
	.sleb128 -20
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL118
	.long	.LVL119
	.short	0x1
	.byte	0x50
	.long	.LVL119
	.long	.LFE28
	.short	0x3
	.byte	0x70
	.sleb128 -20
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL120
	.long	.LVL121
	.short	0x1
	.byte	0x50
	.long	.LVL121
	.long	.LFE29
	.short	0x3
	.byte	0x70
	.sleb128 -20
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL122
	.long	.LVL123
	.short	0x1
	.byte	0x50
	.long	.LVL123
	.long	.LFE30
	.short	0x3
	.byte	0x70
	.sleb128 -20
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL124
	.long	.LVL125
	.short	0x1
	.byte	0x50
	.long	.LVL125
	.long	.LFE31
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL126
	.long	.LVL127
	.short	0x1
	.byte	0x50
	.long	.LVL127
	.long	.LFE32
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL128
	.long	.LVL129
	.short	0x1
	.byte	0x50
	.long	.LVL129
	.long	.LFE33
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL130
	.long	.LVL131
	.short	0x1
	.byte	0x50
	.long	.LVL131
	.long	.LFE34
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL132
	.long	.LVL133
	.short	0x1
	.byte	0x50
	.long	.LVL133
	.long	.LFE35
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL134
	.long	.LVL135
	.short	0x1
	.byte	0x50
	.long	.LVL135
	.long	.LFE36
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL136
	.long	.LVL137
	.short	0x1
	.byte	0x50
	.long	.LVL137
	.long	.LFE37
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL138
	.long	.LVL139
	.short	0x1
	.byte	0x50
	.long	.LVL139
	.long	.LFE38
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL140
	.long	.LVL141
	.short	0x1
	.byte	0x50
	.long	.LVL141
	.long	.LFE39
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL142
	.long	.LVL143
	.short	0x1
	.byte	0x50
	.long	.LVL143
	.long	.LFE40
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_47, @function
	.debug_aranges$scode_local_47:
	.long	0x16c
	.short	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.short	0
	.short	0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_48, @function
	.debug_ranges$scode_local_48:
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB31
	.long	.LFE31
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	.LFB39
	.long	.LFE39
	.long	.LFB40
	.long	.LFE40
	.long	.LFB41
	.long	.LFE41
	.long	.LFB42
	.long	.LFE42
	.long	.LFB43
	.long	.LFE43
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_49, @function
	.debug_line$scode_local_49:
.Ldebug_line0:
	.long	.LELT0-.LSLT0
.LSLT0:
	.short	0x3
	.long	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.ascii	"../Peripherals/src"
	.byte	0
	.ascii	"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys"
	.byte	0
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\"
	.ascii	"inc"
	.byte	0
	.byte	0
	.string	"kf32f_basic_btim.c"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"KF32F_BASIC.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.string	"stdint.h"
	.uleb128 0x2
	.uleb128 0
	.uleb128 0
	.string	"kf32f_basic_tim.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x42
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x43
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x3
	.sleb128 -154
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x41
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE1
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0xf4
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13087
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13083
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM74
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13075
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13072
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE2
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM78
	.byte	0x3
	.sleb128 275
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM79
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM80
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM81
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM84
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM85
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM86
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM87
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM88
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM89
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE3
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM90
	.byte	0x3
	.sleb128 307
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM91
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM92
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM95
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM96
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM97
	.byte	0x3
	.sleb128 333
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE5
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM100
	.byte	0x3
	.sleb128 349
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM101
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM102
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE6
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM103
	.byte	0x3
	.sleb128 365
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM104
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM105
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE7
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM106
	.byte	0x3
	.sleb128 387
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM107
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM108
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12942
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM109
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12942
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM110
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE8
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM111
	.byte	0x3
	.sleb128 410
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM112
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM113
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12919
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM114
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12919
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM115
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE9
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM116
	.byte	0x3
	.sleb128 432
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM117
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM118
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM119
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM120
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM121
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM122
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE10
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM123
	.byte	0x3
	.sleb128 461
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM124
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM125
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM126
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM127
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM128
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM129
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE11
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM130
	.byte	0x3
	.sleb128 488
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM131
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM132
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM133
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM134
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM135
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM136
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE12
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM137
	.byte	0x3
	.sleb128 515
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM138
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM139
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM140
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM141
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM142
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM143
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE13
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM144
	.byte	0x3
	.sleb128 543
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM145
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM146
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM147
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM148
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM149
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM150
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE14
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM151
	.byte	0x3
	.sleb128 571
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM152
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM153
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM154
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM155
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM156
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM157
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE15
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM158
	.byte	0x3
	.sleb128 599
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM159
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM160
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM161
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM162
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM163
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM164
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE16
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM165
	.byte	0x3
	.sleb128 640
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM166
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM167
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12689
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM168
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12689
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM169
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE17
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM170
	.byte	0x3
	.sleb128 666
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM171
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM172
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12663
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM173
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12663
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM174
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE18
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM175
	.byte	0x3
	.sleb128 690
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM176
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM177
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12639
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM178
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12639
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM179
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE19
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM180
	.byte	0x3
	.sleb128 713
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM181
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM182
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM183
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM184
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM185
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM186
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE20
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM187
	.byte	0x3
	.sleb128 743
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM188
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM189
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM190
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM191
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM192
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM193
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE21
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM194
	.byte	0x3
	.sleb128 768
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM195
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM196
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE22
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM197
	.byte	0x3
	.sleb128 792
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM198
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM199
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE23
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM200
	.byte	0x3
	.sleb128 807
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM201
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM202
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE24
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM203
	.byte	0x3
	.sleb128 822
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM204
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM205
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE25
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM206
	.byte	0x3
	.sleb128 848
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM207
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM208
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM209
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM210
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM211
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM212
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE26
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM213
	.byte	0x3
	.sleb128 876
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM214
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM215
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM216
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM217
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM218
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM219
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE27
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM220
	.byte	0x3
	.sleb128 904
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM221
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM222
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM223
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM224
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM225
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM226
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE28
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM227
	.byte	0x3
	.sleb128 932
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM228
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM229
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM230
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM231
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM232
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM233
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE29
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM234
	.byte	0x3
	.sleb128 960
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM235
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM236
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM237
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM238
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM239
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM240
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE30
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM241
	.byte	0x3
	.sleb128 985
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM242
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM243
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE31
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM244
	.byte	0x3
	.sleb128 1009
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM245
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM246
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE32
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM247
	.byte	0x3
	.sleb128 1033
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM248
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM249
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE33
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM250
	.byte	0x3
	.sleb128 1057
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM251
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM252
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE34
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM253
	.byte	0x3
	.sleb128 1081
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM254
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM255
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE35
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM256
	.byte	0x3
	.sleb128 1105
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM257
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM258
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE36
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM259
	.byte	0x3
	.sleb128 1129
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM260
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM261
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE37
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM262
	.byte	0x3
	.sleb128 1153
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM263
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM264
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE38
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM265
	.byte	0x3
	.sleb128 1177
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM266
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM267
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE39
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM268
	.byte	0x3
	.sleb128 1201
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM269
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM270
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE40
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM271
	.byte	0x3
	.sleb128 1225
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM272
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM273
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM274
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM275
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM276
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE41
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM277
	.byte	0x3
	.sleb128 1242
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM278
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM279
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM280
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM281
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM282
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE42
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM283
	.byte	0x3
	.sleb128 1260
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM284
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM285
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM286
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM287
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM288
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE43
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_50, @function
	.debug_str$scode_local_50:
.LASF28:
	.string	"m_WorkMode"
.LASF54:
	.string	"BTIM_Counter_Mode_Config"
.LASF90:
	.string	"BTIM_Get_Overflow_INT_Flag"
.LASF42:
	.string	"TIMx"
.LASF70:
	.string	"BTIM_Master_Mode_Config"
.LASF15:
	.string	"INTStatus"
.LASF73:
	.string	"BTIM_Updata_Enable"
.LASF94:
	.string	"BTIM_Clear_Trigger_INT_Flag"
.LASF92:
	.string	"BTIM_Get_Updata_INT_Flag"
.LASF10:
	.string	"FALSE"
.LASF87:
	.string	"BTIM_Get_Updata_INT_Status"
.LASF72:
	.string	"BTIM_Updata_Rising_Edge_Config"
.LASF48:
	.string	"BTIM_Set_Counter"
.LASF16:
	.string	"sizetype"
.LASF25:
	.string	"m_Prescaler"
.LASF49:
	.string	"Counter"
.LASF64:
	.string	"BTIM_Updata_Immediately_Config"
.LASF36:
	.string	"DIRStatus"
.LASF66:
	.string	"BTIM_Trigger_Select_Config"
.LASF76:
	.string	"BTIM_Get_Period"
.LASF4:
	.string	"short int"
.LASF86:
	.string	"BTIM_Get_Trigger_INT_Status"
.LASF62:
	.string	"BTIM_Single_Pulse_Enable"
.LASF34:
	.string	"DIR_DOWN"
.LASF26:
	.string	"m_CounterMode"
.LASF96:
	.string	"../Peripherals/src/kf32f_basic_btim.c"
.LASF47:
	.string	"NewState"
.LASF77:
	.string	"BTIM_Get_Prescaler"
.LASF30:
	.string	"m_SlaveMode"
.LASF82:
	.string	"BTIM_Updata_INT_Enable"
.LASF93:
	.string	"BTIM_Clear_Overflow_INT_Flag"
.LASF74:
	.string	"BTIM_Get_Direction"
.LASF7:
	.string	"long long int"
.LASF19:
	.string	"PRSC"
.LASF60:
	.string	"BTIM_Work_Mode_Config"
.LASF91:
	.string	"BTIM_Get_Trigger_INT_Flag"
.LASF32:
	.string	"m_MasterSlaveSync"
.LASF78:
	.string	"BTIM_Trigger_DMA_Enable"
.LASF99:
	.string	"SFR_Config"
.LASF45:
	.string	"BTIM_Struct_Init"
.LASF39:
	.string	"WriteVal"
.LASF21:
	.string	"SRIC"
.LASF100:
	.string	"tmpreg"
.LASF53:
	.string	"Prescaler"
.LASF80:
	.string	"BTIM_Overflow_INT_Enable"
.LASF24:
	.string	"m_Period"
.LASF52:
	.string	"BTIM_Set_Prescaler"
.LASF3:
	.string	"unsigned char"
.LASF27:
	.string	"m_Clock"
.LASF98:
	.string	"BTIM_MemMap"
.LASF61:
	.string	"BTIM_Generate_Trigger_Config"
.LASF2:
	.string	"signed char"
.LASF43:
	.string	"BTIMx"
.LASF8:
	.string	"long long unsigned int"
.LASF88:
	.string	"BTIM_Get_Trigger_DMA_INT_Flag"
.LASF6:
	.string	"uint32_t"
.LASF37:
	.string	"SfrMem"
.LASF0:
	.string	"unsigned int"
.LASF68:
	.string	"BTIM_Slave_Mode_Config"
.LASF95:
	.string	"GNU C 4.7.0"
.LASF97:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF33:
	.string	"BTIM_InitTypeDef"
.LASF20:
	.string	"DIER"
.LASF22:
	.string	"BTIM_SFRmap"
.LASF71:
	.string	"MasterMode"
.LASF51:
	.string	"Period"
.LASF89:
	.string	"BTIM_Get_Updata_DMA_INT_Flag"
.LASF44:
	.string	"btimInitStruct"
.LASF9:
	.string	"char"
.LASF5:
	.string	"uint16_t"
.LASF69:
	.string	"SlaveMode"
.LASF1:
	.string	"short unsigned int"
.LASF38:
	.string	"SfrMask"
.LASF55:
	.string	"CounterMode"
.LASF59:
	.string	"PulseSync"
.LASF79:
	.string	"BTIM_Updata_DMA_Enable"
.LASF63:
	.string	"BTIM_Single_Pulse_Shut_Enable"
.LASF35:
	.string	"DIR_UP"
.LASF31:
	.string	"m_EXPulseSync"
.LASF85:
	.string	"BTIM_Get_Overflow_INT_Status"
.LASF83:
	.string	"BTIM_Get_Trigger_DMA_INT_Status"
.LASF56:
	.string	"BTIM_Clock_Config"
.LASF75:
	.string	"BTIM_Get_Counter"
.LASF12:
	.string	"FunctionalState"
.LASF46:
	.string	"BTIM_Cmd"
.LASF17:
	.string	"CTL1"
.LASF18:
	.string	"CTL2"
.LASF23:
	.string	"m_Counter"
.LASF50:
	.string	"BTIM_Set_Period"
.LASF13:
	.string	"RESET"
.LASF84:
	.string	"BTIM_Get_Updata_DMA_INT_Status"
.LASF101:
	.string	"BTIM_Clear_Updata_INT_Flag"
.LASF29:
	.string	"m_MasterMode"
.LASF40:
	.string	"TIM_Reset"
.LASF11:
	.string	"TRUE"
.LASF58:
	.string	"BTIM_External_Pulse_Sync_Config"
.LASF65:
	.string	"BTIM_Master_Slave_Snyc_Config"
.LASF57:
	.string	"NewClock"
.LASF41:
	.string	"BTIM_Configuration"
.LASF14:
	.string	"FlagStatus"
.LASF67:
	.string	"TriggerSelect"
.LASF81:
	.string	"BTIM_Trigger_INT_Enable"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
