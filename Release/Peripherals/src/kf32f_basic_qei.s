	.file	"kf32f_basic_qei.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$QEI_Reset
	.type	.text$QEI_Reset$scode_local_1, @function
	.text$QEI_Reset$scode_local_1:
	.align	1
	.export	QEI_Reset
	.type	QEI_Reset, @function
QEI_Reset:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
	PUSH	lr
	.cfi_def_cfa_offset 4
.LM2:
	LD	r5,#1073743104
	CMP	r0,r5
	JZ	.L5
.LM3:
	LD	r5,#1073741952
	CMP	r0,r5
	JZ	.L6
.LVL1:
.L1:
.LM4:
	POP	lr
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL2:
.L6:
	.cfi_restore_state
.LM5:
	MOV	r0,#2
.LVL3:
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL4:
.LM6:
	MOV	r0,#2
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL5:
.LM7:
	MOV	r0,#2
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL6:
.LM8:
	POP	lr
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL7:
.L5:
	.cfi_restore_state
.LM9:
	MOV	r0,#1
.LVL8:
	LSL	r0,#10
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL9:
.LM10:
	MOV	r0,#1
	LSL	r0,#10
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL10:
.LM11:
	MOV	r0,#1
	LSL	r0,#10
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL11:
	JMP	.L1
	.cfi_endproc
.LFE1:
	.size	QEI_Reset, .-QEI_Reset
	.section .text$QEI_Configuration
	.type	.text$QEI_Configuration$scode_local_2, @function
	.text$QEI_Configuration$scode_local_2:
	.align	1
	.export	QEI_Configuration
	.type	QEI_Configuration, @function
QEI_Configuration:
.LFB2:
.LM12:
	.cfi_startproc
.LVL12:
.LM13:
	LD.h	r5,[r1+#12]
	ST.w	[r0+#2],r5
.LM14:
	LD.h	r5,[r1+#13]
	ST.w	[r0+#3],r5
.LM15:
	LD.h	r5,[r1+#14]
	ST.w	[r0+#4],r5
.LVL13:
.LM16:
	LD.w	r3,[r0+#1]
.LVL14:
.LM17:
	LD.w	r2,[r1+#4]
	LD.w	r4,[r1+#2]
	ORL	r5,r2,r4
.LM18:
	LD.w	r2,[r1+#5]
	ORL	r5,r5,r2
.LM19:
	LD.w	r4,[r1+#3]
	LSL	r4,#4
.LM20:
	ORL	r5,r5,r4
.LBB20:
.LBB21:
.LM21:
	MOV	r4,#127
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r5,r5,r4
.LBE21:
.LBE20:
.LM22:
	ST.w	[r0+#1],r5
.LVL15:
.LM23:
	LD.w	r4,[r0]
.LVL16:
.LM24:
	LD.w	r5,[r1+#1]
	ADD	r5,r5,r5
.LM25:
	LD.w	r3,[r1]
.LVL17:
	LSL	r3,#4
	ORL	r5,r5,r3
.LBB22:
.LBB23:
.LM26:
	CLR	r4,#1
	CLR	r4,#4
.LVL18:
	ORL	r5,r5,r4
.LBE23:
.LBE22:
.LM27:
	ST.w	[r0],r5
.LM28:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	QEI_Configuration, .-QEI_Configuration
	.section .text$QEI_Timer_Configuration
	.type	.text$QEI_Timer_Configuration$scode_local_3, @function
	.text$QEI_Timer_Configuration$scode_local_3:
	.align	1
	.export	QEI_Timer_Configuration
	.type	QEI_Timer_Configuration, @function
QEI_Timer_Configuration:
.LFB3:
.LM29:
	.cfi_startproc
.LVL19:
.LM30:
	LD.h	r5,[r1]
	ST.w	[r0+#2],r5
.LM31:
	LD.h	r5,[r1+#1]
	ST.w	[r0+#3],r5
.LM32:
	LD.h	r5,[r1+#2]
	ST.w	[r0+#4],r5
.LVL20:
.LM33:
	LD.w	r4,[r0]
.LVL21:
.LM34:
	LD.w	r3,[r1+#3]
	LD.w	r5,[r1+#2]
	ORL	r5,r3,r5
.LVL22:
.LBB24:
.LBB25:
.LM35:
	CLR	r4,#0
	CLR	r4,#3
.LVL23:
	ORL	r5,r5,r4
.LVL24:
.LBE25:
.LBE24:
.LM36:
	ST.w	[r0],r5
.LM37:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	QEI_Timer_Configuration, .-QEI_Timer_Configuration
	.section .text$QEI_Struct_Init
	.type	.text$QEI_Struct_Init$scode_local_4, @function
	.text$QEI_Struct_Init$scode_local_4:
	.align	1
	.export	QEI_Struct_Init
	.type	QEI_Struct_Init, @function
QEI_Struct_Init:
.LFB4:
.LM38:
	.cfi_startproc
.LVL25:
.LM39:
	MOV	r5,#0
	ST.w	[r0],r5
.LM40:
	ST.w	[r0+#1],r5
.LM41:
	ST.w	[r0+#2],r5
.LM42:
	ST.w	[r0+#3],r5
.LM43:
	ST.w	[r0+#4],r5
.LM44:
	ST.w	[r0+#5],r5
.LM45:
	ST.h	[r0+#12],r5
.LM46:
	ST.h	[r0+#13],r5
.LM47:
	ST.h	[r0+#14],r5
.LM48:
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	QEI_Struct_Init, .-QEI_Struct_Init
	.section .text$QEI_Timer_Struct_Init
	.type	.text$QEI_Timer_Struct_Init$scode_local_5, @function
	.text$QEI_Timer_Struct_Init$scode_local_5:
	.align	1
	.export	QEI_Timer_Struct_Init
	.type	QEI_Timer_Struct_Init, @function
QEI_Timer_Struct_Init:
.LFB5:
.LM49:
	.cfi_startproc
.LVL26:
.LM50:
	MOV	r5,#0
	ST.h	[r0],r5
.LM51:
	ST.h	[r0+#1],r5
.LM52:
	ST.h	[r0+#2],r5
.LM53:
	MOV	r5,#0
	ST.w	[r0+#2],r5
.LM54:
	ST.w	[r0+#3],r5
.LM55:
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	QEI_Timer_Struct_Init, .-QEI_Timer_Struct_Init
	.section .text$QEI_Encoder_Mode_Config
	.type	.text$QEI_Encoder_Mode_Config$scode_local_6, @function
	.text$QEI_Encoder_Mode_Config$scode_local_6:
	.align	1
	.export	QEI_Encoder_Mode_Config
	.type	QEI_Encoder_Mode_Config, @function
QEI_Encoder_Mode_Config:
.LFB6:
.LM56:
	.cfi_startproc
.LVL27:
.LM57:
	LD.w	r5,[r0]
.LVL28:
.LM58:
	LSL	r1,#5
.LVL29:
.LBB26:
.LBB27:
.LM59:
	MOV	r4,#224
	NOT	r4,r4
	ANL	r5,r5,r4
.LVL30:
	ORL	r5,r1,r5
.LBE27:
.LBE26:
.LM60:
	ST.w	[r0],r5
.LM61:
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	QEI_Encoder_Mode_Config, .-QEI_Encoder_Mode_Config
	.section .text$QEI_Location_Counter_Reset_Enable
	.type	.text$QEI_Location_Counter_Reset_Enable$scode_local_7, @function
	.text$QEI_Location_Counter_Reset_Enable$scode_local_7:
	.align	1
	.export	QEI_Location_Counter_Reset_Enable
	.type	QEI_Location_Counter_Reset_Enable, @function
QEI_Location_Counter_Reset_Enable:
.LFB7:
.LM62:
	.cfi_startproc
.LVL31:
.LM63:
	CMP	r1,#0
	JNZ	.L15
.LM64:
// inline asm begin
	// 258 "../Peripherals/src/kf32f_basic_qei.c" 1
	CLR [r0], #4
	// 0 "" 2
.LM65:
// inline asm end
	JMP	lr
.L15:
.LM66:
// inline asm begin
	// 253 "../Peripherals/src/kf32f_basic_qei.c" 1
	SET [r0], #4
	// 0 "" 2
.LM67:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	QEI_Location_Counter_Reset_Enable, .-QEI_Location_Counter_Reset_Enable
	.section .text$QEI_Timer_Source_Clock_Config
	.type	.text$QEI_Timer_Source_Clock_Config$scode_local_8, @function
	.text$QEI_Timer_Source_Clock_Config$scode_local_8:
	.align	1
	.export	QEI_Timer_Source_Clock_Config
	.type	QEI_Timer_Source_Clock_Config, @function
QEI_Timer_Source_Clock_Config:
.LFB8:
.LM68:
	.cfi_startproc
.LVL32:
.LM69:
	CMP	r1,#0
	JNZ	.L19
.LM70:
// inline asm begin
	// 286 "../Peripherals/src/kf32f_basic_qei.c" 1
	CLR [r0], #3
	// 0 "" 2
.LM71:
// inline asm end
	JMP	lr
.L19:
.LM72:
// inline asm begin
	// 281 "../Peripherals/src/kf32f_basic_qei.c" 1
	SET [r0], #3
	// 0 "" 2
.LM73:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE8:
	.size	QEI_Timer_Source_Clock_Config, .-QEI_Timer_Source_Clock_Config
	.section .text$QEI_Get_Index_Pin_State
	.type	.text$QEI_Get_Index_Pin_State$scode_local_9, @function
	.text$QEI_Get_Index_Pin_State$scode_local_9:
	.align	1
	.export	QEI_Get_Index_Pin_State
	.type	QEI_Get_Index_Pin_State, @function
QEI_Get_Index_Pin_State:
.LFB9:
.LM74:
	.cfi_startproc
.LVL33:
.LM75:
	LD.w	r0,[r0]
.LVL34:
	LSR	r0,#2
.LM76:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE9:
	.size	QEI_Get_Index_Pin_State, .-QEI_Get_Index_Pin_State
	.section .text$QEI_Location_Counter_Output_Enable
	.type	.text$QEI_Location_Counter_Output_Enable$scode_local_10, @function
	.text$QEI_Location_Counter_Output_Enable$scode_local_10:
	.align	1
	.export	QEI_Location_Counter_Output_Enable
	.type	QEI_Location_Counter_Output_Enable, @function
QEI_Location_Counter_Output_Enable:
.LFB10:
.LM77:
	.cfi_startproc
.LVL35:
.LM78:
	CMP	r1,#0
	JNZ	.L24
.LM79:
// inline asm begin
	// 336 "../Peripherals/src/kf32f_basic_qei.c" 1
	CLR [r0], #1
	// 0 "" 2
.LM80:
// inline asm end
	JMP	lr
.L24:
.LM81:
// inline asm begin
	// 331 "../Peripherals/src/kf32f_basic_qei.c" 1
	SET [r0], #1
	// 0 "" 2
.LM82:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE10:
	.size	QEI_Location_Counter_Output_Enable, .-QEI_Location_Counter_Output_Enable
	.section .text$QEI_Location_Counter_Direction_Config
	.type	.text$QEI_Location_Counter_Direction_Config$scode_local_11, @function
	.text$QEI_Location_Counter_Direction_Config$scode_local_11:
	.align	1
	.export	QEI_Location_Counter_Direction_Config
	.type	QEI_Location_Counter_Direction_Config, @function
QEI_Location_Counter_Direction_Config:
.LFB11:
.LM83:
	.cfi_startproc
.LVL36:
.LM84:
	CMP	r1,#0
	JNZ	.L28
.LM85:
// inline asm begin
	// 364 "../Peripherals/src/kf32f_basic_qei.c" 1
	CLR [r0], #0
	// 0 "" 2
.LM86:
// inline asm end
	JMP	lr
.L28:
.LM87:
// inline asm begin
	// 359 "../Peripherals/src/kf32f_basic_qei.c" 1
	SET [r0], #0
	// 0 "" 2
.LM88:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE11:
	.size	QEI_Location_Counter_Direction_Config, .-QEI_Location_Counter_Direction_Config
	.section .text$QEI_Get_Location_Counter_Direction
	.type	.text$QEI_Get_Location_Counter_Direction$scode_local_12, @function
	.text$QEI_Get_Location_Counter_Direction$scode_local_12:
	.align	1
	.export	QEI_Get_Location_Counter_Direction
	.type	QEI_Get_Location_Counter_Direction, @function
QEI_Get_Location_Counter_Direction:
.LFB12:
.LM89:
	.cfi_startproc
.LVL37:
.LM90:
	LD.w	r0,[r0]
.LVL38:
.LM91:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE12:
	.size	QEI_Get_Location_Counter_Direction, .-QEI_Get_Location_Counter_Direction
	.section .text$QEI_Source_Clock_Config
	.type	.text$QEI_Source_Clock_Config$scode_local_13, @function
	.text$QEI_Source_Clock_Config$scode_local_13:
	.align	1
	.export	QEI_Source_Clock_Config
	.type	QEI_Source_Clock_Config, @function
QEI_Source_Clock_Config:
.LFB13:
.LM92:
	.cfi_startproc
.LVL39:
.LM93:
	LD.w	r5,[r0+#1]
.LVL40:
.LBB28:
.LBB29:
.LM94:
	CLR	r5,#5
	CLR	r5,#6
.LVL41:
	ORL	r1,r1,r5
.LVL42:
.LBE29:
.LBE28:
.LM95:
	ST.w	[r0+#1],r1
.LM96:
	JMP	lr
	.cfi_endproc
.LFE13:
	.size	QEI_Source_Clock_Config, .-QEI_Source_Clock_Config
	.section .text$QEI_Digital_Filter_Output_Enable
	.type	.text$QEI_Digital_Filter_Output_Enable$scode_local_14, @function
	.text$QEI_Digital_Filter_Output_Enable$scode_local_14:
	.align	1
	.export	QEI_Digital_Filter_Output_Enable
	.type	QEI_Digital_Filter_Output_Enable, @function
QEI_Digital_Filter_Output_Enable:
.LFB14:
.LM97:
	.cfi_startproc
.LVL43:
.LM98:
	ADD	r0,r0,#4
.LVL44:
.LM99:
	CMP	r1,#0
	JNZ	.L34
.LM100:
// inline asm begin
	// 436 "../Peripherals/src/kf32f_basic_qei.c" 1
	CLR [r0], #4
	// 0 "" 2
.LM101:
// inline asm end
	JMP	lr
.L34:
.LM102:
// inline asm begin
	// 431 "../Peripherals/src/kf32f_basic_qei.c" 1
	SET [r0], #4
	// 0 "" 2
.LM103:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE14:
	.size	QEI_Digital_Filter_Output_Enable, .-QEI_Digital_Filter_Output_Enable
	.section .text$QEI_Digital_Filter_Clock_Config
	.type	.text$QEI_Digital_Filter_Clock_Config$scode_local_15, @function
	.text$QEI_Digital_Filter_Clock_Config$scode_local_15:
	.align	1
	.export	QEI_Digital_Filter_Clock_Config
	.type	QEI_Digital_Filter_Clock_Config, @function
QEI_Digital_Filter_Clock_Config:
.LFB15:
.LM104:
	.cfi_startproc
.LVL45:
.LM105:
	LD.w	r4,[r0+#1]
.LVL46:
.LBB30:
.LBB31:
.LM106:
	MOV	r5,#14
	NOT	r5,r5
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL47:
.LBE31:
.LBE30:
.LM107:
	ST.w	[r0+#1],r1
.LM108:
	JMP	lr
	.cfi_endproc
.LFE15:
	.size	QEI_Digital_Filter_Clock_Config, .-QEI_Digital_Filter_Clock_Config
	.section .text$QEI_Swap_Phase_AB_Enable
	.type	.text$QEI_Swap_Phase_AB_Enable$scode_local_16, @function
	.text$QEI_Swap_Phase_AB_Enable$scode_local_16:
	.align	1
	.export	QEI_Swap_Phase_AB_Enable
	.type	QEI_Swap_Phase_AB_Enable, @function
QEI_Swap_Phase_AB_Enable:
.LFB16:
.LM109:
	.cfi_startproc
.LVL48:
.LM110:
	ADD	r0,r0,#4
.LVL49:
.LM111:
	CMP	r1,#0
	JNZ	.L39
.LM112:
// inline asm begin
	// 490 "../Peripherals/src/kf32f_basic_qei.c" 1
	CLR [r0], #0
	// 0 "" 2
.LM113:
// inline asm end
	JMP	lr
.L39:
.LM114:
// inline asm begin
	// 485 "../Peripherals/src/kf32f_basic_qei.c" 1
	SET [r0], #0
	// 0 "" 2
.LM115:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE16:
	.size	QEI_Swap_Phase_AB_Enable, .-QEI_Swap_Phase_AB_Enable
	.section .text$QEI_Timer_Counter_Config
	.type	.text$QEI_Timer_Counter_Config$scode_local_17, @function
	.text$QEI_Timer_Counter_Config$scode_local_17:
	.align	1
	.export	QEI_Timer_Counter_Config
	.type	QEI_Timer_Counter_Config, @function
QEI_Timer_Counter_Config:
.LFB17:
.LM116:
	.cfi_startproc
.LVL50:
	ZXT.h	r1,r1
.LVL51:
.LM117:
	LD.w	r4,[r0+#2]
.LVL52:
.LBB32:
.LBB33:
.LM118:
	LD	r5,#-65536
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL53:
.LBE33:
.LBE32:
.LM119:
	ST.w	[r0+#2],r1
.LM120:
	JMP	lr
	.cfi_endproc
.LFE17:
	.size	QEI_Timer_Counter_Config, .-QEI_Timer_Counter_Config
	.section .text$QEI_Get_Timer_Counter
	.type	.text$QEI_Get_Timer_Counter$scode_local_18, @function
	.text$QEI_Get_Timer_Counter$scode_local_18:
	.align	1
	.export	QEI_Get_Timer_Counter
	.type	QEI_Get_Timer_Counter, @function
QEI_Get_Timer_Counter:
.LFB18:
.LM121:
	.cfi_startproc
.LVL54:
.LM122:
	LD.w	r0,[r0+#2]
.LVL55:
.LM123:
	ZXT.h	r0,r0
.LVL56:
	JMP	lr
	.cfi_endproc
.LFE18:
	.size	QEI_Get_Timer_Counter, .-QEI_Get_Timer_Counter
	.section .text$QEI_Timer_Period_Config
	.type	.text$QEI_Timer_Period_Config$scode_local_19, @function
	.text$QEI_Timer_Period_Config$scode_local_19:
	.align	1
	.export	QEI_Timer_Period_Config
	.type	QEI_Timer_Period_Config, @function
QEI_Timer_Period_Config:
.LFB19:
.LM124:
	.cfi_startproc
.LVL57:
	ZXT.h	r1,r1
.LVL58:
.LM125:
	LD.w	r4,[r0+#3]
.LVL59:
.LBB34:
.LBB35:
.LM126:
	LD	r5,#-65536
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL60:
.LBE35:
.LBE34:
.LM127:
	ST.w	[r0+#3],r1
.LM128:
	JMP	lr
	.cfi_endproc
.LFE19:
	.size	QEI_Timer_Period_Config, .-QEI_Timer_Period_Config
	.section .text$QEI_Get_Timer_Period
	.type	.text$QEI_Get_Timer_Period$scode_local_20, @function
	.text$QEI_Get_Timer_Period$scode_local_20:
	.align	1
	.export	QEI_Get_Timer_Period
	.type	QEI_Get_Timer_Period, @function
QEI_Get_Timer_Period:
.LFB20:
.LM129:
	.cfi_startproc
.LVL61:
.LM130:
	LD.w	r0,[r0+#3]
.LVL62:
.LM131:
	ZXT.h	r0,r0
.LVL63:
	JMP	lr
	.cfi_endproc
.LFE20:
	.size	QEI_Get_Timer_Period, .-QEI_Get_Timer_Period
	.section .text$QEI_Timer_Prescaler_Config
	.type	.text$QEI_Timer_Prescaler_Config$scode_local_21, @function
	.text$QEI_Timer_Prescaler_Config$scode_local_21:
	.align	1
	.export	QEI_Timer_Prescaler_Config
	.type	QEI_Timer_Prescaler_Config, @function
QEI_Timer_Prescaler_Config:
.LFB21:
.LM132:
	.cfi_startproc
.LVL64:
	ZXT.h	r1,r1
.LVL65:
.LM133:
	LD.w	r4,[r0+#4]
.LVL66:
.LBB36:
.LBB37:
.LM134:
	LD	r5,#-65536
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL67:
.LBE37:
.LBE36:
.LM135:
	ST.w	[r0+#4],r1
.LM136:
	JMP	lr
	.cfi_endproc
.LFE21:
	.size	QEI_Timer_Prescaler_Config, .-QEI_Timer_Prescaler_Config
	.section .text$QEI_Get_INT_Flag
	.type	.text$QEI_Get_INT_Flag$scode_local_22, @function
	.text$QEI_Get_INT_Flag$scode_local_22:
	.align	1
	.export	QEI_Get_INT_Flag
	.type	QEI_Get_INT_Flag, @function
QEI_Get_INT_Flag:
.LFB22:
.LM137:
	.cfi_startproc
.LVL68:
.LM138:
	LD.w	r5,[r0]
.LM139:
	LSL	r1,#8
.LVL69:
.LM140:
	ANL	r1,r1,r5
.LVL70:
	MOV	r5,#0
	SUB	r5,r5,r1
	ORL	r0,r5,r1
.LVL71:
.LM141:
	LSR	r0,#31
	JMP	lr
	.cfi_endproc
.LFE22:
	.size	QEI_Get_INT_Flag, .-QEI_Get_INT_Flag
	.section .text$QEI_Clear_INT_Flag
	.type	.text$QEI_Clear_INT_Flag$scode_local_23, @function
	.text$QEI_Clear_INT_Flag$scode_local_23:
	.align	1
	.export	QEI_Clear_INT_Flag
	.type	QEI_Clear_INT_Flag, @function
QEI_Clear_INT_Flag:
.LFB23:
.LM142:
	.cfi_startproc
.LVL72:
.LM143:
	MOV	r5,#8
	LSL	r4,r1,r5
.LVL73:
.LM144:
	LSL	r1,#3
.LVL74:
.LM145:
	LD.w	r5,[r0+#5]
	ORL	r5,r1,r5
	ST.w	[r0+#5],r5
.L47:
.LM146:
	LD.w	r5,[r0]
	ANL	r5,r4,r5
	JNZ	.L47
.LM147:
	LD.w	r5,[r0+#5]
	NOT	r1,r1
.LVL75:
	ANL	r1,r1,r5
.LVL76:
	ST.w	[r0+#5],r1
.LM148:
	JMP	lr
	.cfi_endproc
.LFE23:
	.size	QEI_Clear_INT_Flag, .-QEI_Clear_INT_Flag
	.section .text$QEI_Set_INT_Enable
	.type	.text$QEI_Set_INT_Enable$scode_local_24, @function
	.text$QEI_Set_INT_Enable$scode_local_24:
	.align	1
	.export	QEI_Set_INT_Enable
	.type	QEI_Set_INT_Enable, @function
QEI_Set_INT_Enable:
.LFB24:
.LM149:
	.cfi_startproc
.LVL77:
.LM150:
	LD.w	r5,[r0+#5]
.LM151:
	CMP	r2,#0
	JNZ	.L52
.LM152:
	NOT	r1,r1
.LVL78:
	ANL	r1,r1,r5
.LVL79:
	ST.w	[r0+#5],r1
.LM153:
	JMP	lr
.LVL80:
.L52:
.LM154:
	ORL	r1,r1,r5
.LVL81:
	ST.w	[r0+#5],r1
.LM155:
	JMP	lr
	.cfi_endproc
.LFE24:
	.size	QEI_Set_INT_Enable, .-QEI_Set_INT_Enable
	.section .text$QEI_Get_Counter_Overflow_INT_Flag
	.type	.text$QEI_Get_Counter_Overflow_INT_Flag$scode_local_25, @function
	.text$QEI_Get_Counter_Overflow_INT_Flag$scode_local_25:
	.align	1
	.export	QEI_Get_Counter_Overflow_INT_Flag
	.type	QEI_Get_Counter_Overflow_INT_Flag, @function
QEI_Get_Counter_Overflow_INT_Flag:
.LFB25:
.LM156:
	.cfi_startproc
.LVL82:
.LM157:
	LD.w	r0,[r0]
.LVL83:
	LSR	r0,#10
.LM158:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE25:
	.size	QEI_Get_Counter_Overflow_INT_Flag, .-QEI_Get_Counter_Overflow_INT_Flag
	.section .text$QEI_Get_Phase_Error_INT_Flag
	.type	.text$QEI_Get_Phase_Error_INT_Flag$scode_local_26, @function
	.text$QEI_Get_Phase_Error_INT_Flag$scode_local_26:
	.align	1
	.export	QEI_Get_Phase_Error_INT_Flag
	.type	QEI_Get_Phase_Error_INT_Flag, @function
QEI_Get_Phase_Error_INT_Flag:
.LFB26:
.LM159:
	.cfi_startproc
.LVL84:
.LM160:
	LD.w	r0,[r0]
.LVL85:
	LSR	r0,#9
.LM161:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE26:
	.size	QEI_Get_Phase_Error_INT_Flag, .-QEI_Get_Phase_Error_INT_Flag
	.section .text$QEI_Get_Count_Error_INT_Flag
	.type	.text$QEI_Get_Count_Error_INT_Flag$scode_local_27, @function
	.text$QEI_Get_Count_Error_INT_Flag$scode_local_27:
	.align	1
	.export	QEI_Get_Count_Error_INT_Flag
	.type	QEI_Get_Count_Error_INT_Flag, @function
QEI_Get_Count_Error_INT_Flag:
.LFB27:
.LM162:
	.cfi_startproc
.LVL86:
.LM163:
	LD.w	r0,[r0]
.LVL87:
	LSR	r0,#8
.LM164:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE27:
	.size	QEI_Get_Count_Error_INT_Flag, .-QEI_Get_Count_Error_INT_Flag
	.section .text$QEI_Clear_Timer_Overflow_INT_Flag
	.type	.text$QEI_Clear_Timer_Overflow_INT_Flag$scode_local_28, @function
	.text$QEI_Clear_Timer_Overflow_INT_Flag$scode_local_28:
	.align	1
	.export	QEI_Clear_Timer_Overflow_INT_Flag
	.type	QEI_Clear_Timer_Overflow_INT_Flag, @function
QEI_Clear_Timer_Overflow_INT_Flag:
.LFB28:
.LM165:
	.cfi_startproc
.LVL88:
.LM166:
	MOV	r5,#20
	ADD	r3,r0,r5
// inline asm begin
	// 776 "../Peripherals/src/kf32f_basic_qei.c" 1
	SET [r3], #5
	// 0 "" 2
.LM167:
// inline asm end
	MOV	r4,#1
	LSL	r4,#10
.L57:
.LM168:
	LD.w	r5,[r0]
	ANL	r5,r5,r4
	JNZ	.L57
.LM169:
// inline asm begin
	// 778 "../Peripherals/src/kf32f_basic_qei.c" 1
	CLR [r3], #5
	// 0 "" 2
.LM170:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE28:
	.size	QEI_Clear_Timer_Overflow_INT_Flag, .-QEI_Clear_Timer_Overflow_INT_Flag
	.section .text$QEI_Clear_Phase_Error_INT_Flag
	.type	.text$QEI_Clear_Phase_Error_INT_Flag$scode_local_29, @function
	.text$QEI_Clear_Phase_Error_INT_Flag$scode_local_29:
	.align	1
	.export	QEI_Clear_Phase_Error_INT_Flag
	.type	QEI_Clear_Phase_Error_INT_Flag, @function
QEI_Clear_Phase_Error_INT_Flag:
.LFB29:
.LM171:
	.cfi_startproc
.LVL89:
.LM172:
	MOV	r5,#20
	ADD	r3,r0,r5
// inline asm begin
	// 793 "../Peripherals/src/kf32f_basic_qei.c" 1
	SET [r3], #4
	// 0 "" 2
.LM173:
// inline asm end
	MOV	r4,#1
	LSL	r4,#9
.L60:
.LM174:
	LD.w	r5,[r0]
	ANL	r5,r5,r4
	JNZ	.L60
.LM175:
// inline asm begin
	// 795 "../Peripherals/src/kf32f_basic_qei.c" 1
	CLR [r3], #4
	// 0 "" 2
.LM176:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE29:
	.size	QEI_Clear_Phase_Error_INT_Flag, .-QEI_Clear_Phase_Error_INT_Flag
	.section .text$QEI_Clear_Counter_Error_INT_Flag
	.type	.text$QEI_Clear_Counter_Error_INT_Flag$scode_local_30, @function
	.text$QEI_Clear_Counter_Error_INT_Flag$scode_local_30:
	.align	1
	.export	QEI_Clear_Counter_Error_INT_Flag
	.type	QEI_Clear_Counter_Error_INT_Flag, @function
QEI_Clear_Counter_Error_INT_Flag:
.LFB30:
.LM177:
	.cfi_startproc
.LVL90:
.LM178:
	MOV	r5,#20
	ADD	r3,r0,r5
// inline asm begin
	// 810 "../Peripherals/src/kf32f_basic_qei.c" 1
	SET [r3], #3
	// 0 "" 2
.LM179:
// inline asm end
	MOV	r4,#255
	ADD	r4,r4,#1
.L63:
.LM180:
	LD.w	r5,[r0]
	ANL	r5,r5,r4
	JNZ	.L63
.LM181:
// inline asm begin
	// 812 "../Peripherals/src/kf32f_basic_qei.c" 1
	CLR [r3], #3
	// 0 "" 2
.LM182:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE30:
	.size	QEI_Clear_Counter_Error_INT_Flag, .-QEI_Clear_Counter_Error_INT_Flag
	.section .text$QEI_Timer_Overflow_INT_Enable
	.type	.text$QEI_Timer_Overflow_INT_Enable$scode_local_31, @function
	.text$QEI_Timer_Overflow_INT_Enable$scode_local_31:
	.align	1
	.export	QEI_Timer_Overflow_INT_Enable
	.type	QEI_Timer_Overflow_INT_Enable, @function
QEI_Timer_Overflow_INT_Enable:
.LFB31:
.LM183:
	.cfi_startproc
.LVL91:
.LM184:
	ADD	r0,#20
.LVL92:
.LM185:
	CMP	r1,#0
	JNZ	.L68
.LM186:
// inline asm begin
	// 837 "../Peripherals/src/kf32f_basic_qei.c" 1
	CLR [r0], #2
	// 0 "" 2
.LM187:
// inline asm end
	JMP	lr
.L68:
.LM188:
// inline asm begin
	// 832 "../Peripherals/src/kf32f_basic_qei.c" 1
	SET [r0], #2
	// 0 "" 2
.LM189:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE31:
	.size	QEI_Timer_Overflow_INT_Enable, .-QEI_Timer_Overflow_INT_Enable
	.section .text$QEI_Phase_Error_INT_Enable
	.type	.text$QEI_Phase_Error_INT_Enable$scode_local_32, @function
	.text$QEI_Phase_Error_INT_Enable$scode_local_32:
	.align	1
	.export	QEI_Phase_Error_INT_Enable
	.type	QEI_Phase_Error_INT_Enable, @function
QEI_Phase_Error_INT_Enable:
.LFB32:
.LM190:
	.cfi_startproc
.LVL93:
.LM191:
	ADD	r0,#20
.LVL94:
.LM192:
	CMP	r1,#0
	JNZ	.L72
.LM193:
// inline asm begin
	// 863 "../Peripherals/src/kf32f_basic_qei.c" 1
	CLR [r0], #1
	// 0 "" 2
.LM194:
// inline asm end
	JMP	lr
.L72:
.LM195:
// inline asm begin
	// 858 "../Peripherals/src/kf32f_basic_qei.c" 1
	SET [r0], #1
	// 0 "" 2
.LM196:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE32:
	.size	QEI_Phase_Error_INT_Enable, .-QEI_Phase_Error_INT_Enable
	.section .text$QEI_Counter_Error_INT_Enable
	.type	.text$QEI_Counter_Error_INT_Enable$scode_local_33, @function
	.text$QEI_Counter_Error_INT_Enable$scode_local_33:
	.align	1
	.export	QEI_Counter_Error_INT_Enable
	.type	QEI_Counter_Error_INT_Enable, @function
QEI_Counter_Error_INT_Enable:
.LFB33:
.LM197:
	.cfi_startproc
.LVL95:
.LM198:
	ADD	r0,#20
.LVL96:
.LM199:
	CMP	r1,#0
	JNZ	.L76
.LM200:
// inline asm begin
	// 889 "../Peripherals/src/kf32f_basic_qei.c" 1
	CLR [r0], #0
	// 0 "" 2
.LM201:
// inline asm end
	JMP	lr
.L76:
.LM202:
// inline asm begin
	// 884 "../Peripherals/src/kf32f_basic_qei.c" 1
	SET [r0], #0
	// 0 "" 2
.LM203:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE33:
	.size	QEI_Counter_Error_INT_Enable, .-QEI_Counter_Error_INT_Enable
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_34, @function
	.debug_info$scode_local_34:
.Ldebug_info0:
	.long	0xb8f
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF84
	.byte	0x1
	.long	.LASF85
	.long	.LASF86
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
	.uleb128 0x8
	.long	0x5e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF15
	.uleb128 0x9
	.long	.LASF87
	.byte	0x18
	.byte	0x2
	.short	0x1896
	.long	0x126
	.uleb128 0xa
	.long	.LASF16
	.byte	0x2
	.short	0x1897
	.long	0xbe
	.byte	0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x2
	.short	0x1898
	.long	0xbe
	.byte	0x4
	.uleb128 0xb
	.string	"CNT"
	.byte	0x2
	.short	0x1899
	.long	0xbe
	.byte	0x8
	.uleb128 0xb
	.string	"PPX"
	.byte	0x2
	.short	0x189a
	.long	0xbe
	.byte	0xc
	.uleb128 0xa
	.long	.LASF18
	.byte	0x2
	.short	0x189b
	.long	0xbe
	.byte	0x10
	.uleb128 0xa
	.long	.LASF19
	.byte	0x2
	.short	0x189c
	.long	0xbe
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x2
	.short	0x189d
	.long	0xca
	.uleb128 0xd
	.byte	0x20
	.byte	0x4
	.byte	0x15
	.long	0x1a7
	.uleb128 0xe
	.long	.LASF21
	.byte	0x4
	.byte	0x17
	.long	0x93
	.byte	0
	.uleb128 0xe
	.long	.LASF22
	.byte	0x4
	.byte	0x19
	.long	0x93
	.byte	0x4
	.uleb128 0xe
	.long	.LASF23
	.byte	0x4
	.byte	0x1b
	.long	0x5e
	.byte	0x8
	.uleb128 0xe
	.long	.LASF24
	.byte	0x4
	.byte	0x1d
	.long	0x93
	.byte	0xc
	.uleb128 0xe
	.long	.LASF25
	.byte	0x4
	.byte	0x1f
	.long	0x5e
	.byte	0x10
	.uleb128 0xe
	.long	.LASF26
	.byte	0x4
	.byte	0x21
	.long	0x93
	.byte	0x14
	.uleb128 0xe
	.long	.LASF27
	.byte	0x4
	.byte	0x23
	.long	0x53
	.byte	0x18
	.uleb128 0xe
	.long	.LASF28
	.byte	0x4
	.byte	0x25
	.long	0x53
	.byte	0x1a
	.uleb128 0xe
	.long	.LASF29
	.byte	0x4
	.byte	0x27
	.long	0x53
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.long	.LASF30
	.byte	0x4
	.byte	0x29
	.long	0x132
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.byte	0x2e
	.long	0x1f7
	.uleb128 0xe
	.long	.LASF27
	.byte	0x4
	.byte	0x30
	.long	0x53
	.byte	0
	.uleb128 0xe
	.long	.LASF28
	.byte	0x4
	.byte	0x32
	.long	0x53
	.byte	0x2
	.uleb128 0xe
	.long	.LASF29
	.byte	0x4
	.byte	0x34
	.long	0x53
	.byte	0x4
	.uleb128 0xe
	.long	.LASF31
	.byte	0x4
	.byte	0x36
	.long	0x5e
	.byte	0x8
	.uleb128 0xe
	.long	.LASF32
	.byte	0x4
	.byte	0x38
	.long	0x5e
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	.LASF33
	.byte	0x4
	.byte	0x3a
	.long	0x1b2
	.uleb128 0xf
	.long	.LASF88
	.byte	0x2
	.short	0x3416
	.byte	0x1
	.long	0x5e
	.byte	0x3
	.long	0x239
	.uleb128 0x10
	.long	.LASF34
	.byte	0x2
	.short	0x3416
	.long	0x5e
	.uleb128 0x10
	.long	.LASF35
	.byte	0x2
	.short	0x3416
	.long	0x5e
	.uleb128 0x10
	.long	.LASF36
	.byte	0x2
	.short	0x3416
	.long	0x5e
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2db
	.uleb128 0x12
	.long	.LASF39
	.byte	0x1
	.byte	0x2c
	.long	0x2db
	.long	.LLST0
	.uleb128 0x13
	.long	.LVL4
	.long	0x274
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.long	.LVL5
	.long	0x288
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.long	.LVL6
	.long	0x29c
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.long	.LVL9
	.long	0x2b2
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x400
	.byte	0
	.uleb128 0x13
	.long	.LVL10
	.long	0x2c8
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x400
	.byte	0
	.uleb128 0x15
	.long	.LVL11
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x400
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.long	0x126
	.uleb128 0x11
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x390
	.uleb128 0x17
	.long	.LASF39
	.byte	0x1
	.byte	0x4a
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.byte	0x4a
	.long	0x390
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	.LASF43
	.byte	0x1
	.byte	0x4c
	.long	0x5e
	.long	.LLST1
	.uleb128 0x19
	.long	0x202
	.long	.LBB20
	.long	.LBE20
	.byte	0x1
	.byte	0x6a
	.long	0x35e
	.uleb128 0x1a
	.long	0x22c
	.byte	0x12
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x71
	.sleb128 16
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.uleb128 0x1b
	.long	0x220
	.sleb128 -128
	.uleb128 0x1c
	.long	0x214
	.long	.LLST2
	.byte	0
	.uleb128 0x1d
	.long	0x202
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.byte	0x73
	.uleb128 0x1a
	.long	0x22c
	.byte	0xc
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.uleb128 0x1b
	.long	0x220
	.sleb128 -19
	.uleb128 0x1c
	.long	0x214
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.long	0x1a7
	.uleb128 0x11
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x400
	.uleb128 0x17
	.long	.LASF39
	.byte	0x1
	.byte	0x7f
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF42
	.byte	0x1
	.byte	0x7f
	.long	0x400
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	.LASF43
	.byte	0x1
	.byte	0x81
	.long	0x5e
	.long	.LLST4
	.uleb128 0x1d
	.long	0x202
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.byte	0x96
	.uleb128 0x1c
	.long	0x22c
	.long	.LLST5
	.uleb128 0x1b
	.long	0x220
	.sleb128 -10
	.uleb128 0x1c
	.long	0x214
	.long	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.long	0x1f7
	.uleb128 0x11
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x42c
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.byte	0xa1
	.long	0x390
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x452
	.uleb128 0x17
	.long	.LASF42
	.byte	0x1
	.byte	0xbd
	.long	0x400
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4bf
	.uleb128 0x17
	.long	.LASF39
	.byte	0x1
	.byte	0xdf
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.long	.LASF47
	.byte	0x1
	.byte	0xdf
	.long	0x5e
	.long	.LLST7
	.uleb128 0x18
	.long	.LASF43
	.byte	0x1
	.byte	0xe1
	.long	0x5e
	.long	.LLST8
	.uleb128 0x1d
	.long	0x202
	.long	.LBB26
	.long	.LBE26
	.byte	0x1
	.byte	0xe9
	.uleb128 0x1c
	.long	0x22c
	.long	.LLST9
	.uleb128 0x1b
	.long	0x220
	.sleb128 -225
	.uleb128 0x1c
	.long	0x214
	.long	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4f2
	.uleb128 0x17
	.long	.LASF39
	.byte	0x1
	.byte	0xf3
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF49
	.byte	0x1
	.byte	0xf3
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.short	0x10f
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x528
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x10f
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.long	.LASF51
	.byte	0x1
	.short	0x10f
	.long	0x5e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.short	0x128
	.byte	0x1
	.long	0xb3
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x556
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x128
	.long	0x2db
	.long	.LLST11
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.short	0x141
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x58c
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x141
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.long	.LASF49
	.byte	0x1
	.short	0x141
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.short	0x15d
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5c2
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x15d
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.long	.LASF54
	.byte	0x1
	.short	0x15d
	.long	0x5e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.short	0x176
	.byte	0x1
	.long	0xb3
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5f0
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x176
	.long	0x2db
	.long	.LLST12
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.short	0x192
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x652
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x192
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.long	.LASF58
	.byte	0x1
	.short	0x192
	.long	0x5e
	.long	.LLST13
	.uleb128 0x22
	.long	0x202
	.long	.LBB28
	.long	.LBE28
	.byte	0x1
	.short	0x199
	.uleb128 0x1c
	.long	0x22c
	.long	.LLST14
	.uleb128 0x1b
	.long	0x220
	.sleb128 -97
	.uleb128 0x1c
	.long	0x214
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.short	0x1a5
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x68a
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x1a5
	.long	0x2db
	.long	.LLST16
	.uleb128 0x1f
	.long	.LASF49
	.byte	0x1
	.short	0x1a5
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.short	0x1c8
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x6e9
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x1c8
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.long	.LASF61
	.byte	0x1
	.short	0x1c8
	.long	0x5e
	.long	.LLST17
	.uleb128 0x22
	.long	0x202
	.long	.LBB30
	.long	.LBE30
	.byte	0x1
	.short	0x1cf
	.uleb128 0x1c
	.long	0x22c
	.long	.LLST18
	.uleb128 0x1b
	.long	0x220
	.sleb128 -15
	.uleb128 0x1a
	.long	0x214
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.short	0x1db
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x721
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x1db
	.long	0x2db
	.long	.LLST19
	.uleb128 0x1f
	.long	.LASF49
	.byte	0x1
	.short	0x1db
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.short	0x1f5
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x792
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x1f5
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.long	.LASF64
	.byte	0x1
	.short	0x1f5
	.long	0x53
	.long	.LLST20
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x1f7
	.long	0x5e
	.long	.LLST21
	.uleb128 0x22
	.long	0x202
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.short	0x1fd
	.uleb128 0x1c
	.long	0x22c
	.long	.LLST22
	.uleb128 0x1b
	.long	0x220
	.sleb128 -65536
	.uleb128 0x1a
	.long	0x214
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.short	0x208
	.byte	0x1
	.long	0x53
	.long	.LFB18
	.long	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7d0
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x208
	.long	0x2db
	.long	.LLST23
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x20a
	.long	0x5e
	.long	.LLST24
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.short	0x21c
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x841
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x21c
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.long	.LASF67
	.byte	0x1
	.short	0x21c
	.long	0x53
	.long	.LLST25
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x21e
	.long	0x5e
	.long	.LLST26
	.uleb128 0x22
	.long	0x202
	.long	.LBB34
	.long	.LBE34
	.byte	0x1
	.short	0x224
	.uleb128 0x1c
	.long	0x22c
	.long	.LLST27
	.uleb128 0x1b
	.long	0x220
	.sleb128 -65536
	.uleb128 0x1a
	.long	0x214
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.short	0x22f
	.byte	0x1
	.long	0x53
	.long	.LFB20
	.long	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x87f
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x22f
	.long	0x2db
	.long	.LLST28
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x231
	.long	0x5e
	.long	.LLST29
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF69
	.byte	0x1
	.short	0x243
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8f0
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x243
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.long	.LASF70
	.byte	0x1
	.short	0x243
	.long	0x53
	.long	.LLST30
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x245
	.long	0x5e
	.long	.LLST31
	.uleb128 0x22
	.long	0x202
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.short	0x24b
	.uleb128 0x1c
	.long	0x22c
	.long	.LLST32
	.uleb128 0x1b
	.long	0x220
	.sleb128 -65536
	.uleb128 0x1a
	.long	0x214
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.short	0x261
	.byte	0x1
	.long	0xb3
	.long	.LFB22
	.long	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x93e
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x261
	.long	0x2db
	.long	.LLST33
	.uleb128 0x21
	.long	.LASF72
	.byte	0x1
	.short	0x261
	.long	0x5e
	.long	.LLST34
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x263
	.long	0x5e
	.long	.LLST35
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.short	0x281
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x996
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x281
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.long	.LASF72
	.byte	0x1
	.short	0x281
	.long	0x5e
	.long	.LLST36
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x283
	.long	0x5e
	.long	.LLST37
	.uleb128 0x23
	.long	.LASF74
	.byte	0x1
	.short	0x284
	.long	0x5e
	.long	.LLST38
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.short	0x29c
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9ec
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x29c
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.long	.LASF72
	.byte	0x1
	.short	0x29d
	.long	0x5e
	.long	.LLST39
	.uleb128 0x1f
	.long	.LASF49
	.byte	0x1
	.short	0x29d
	.long	0x93
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.long	.LASF43
	.byte	0x1
	.short	0x29f
	.long	0x5e
	.long	.LLST39
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.short	0x2ba
	.byte	0x1
	.long	0xb3
	.long	.LFB25
	.long	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa1a
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x2ba
	.long	0x2db
	.long	.LLST41
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.short	0x2d2
	.byte	0x1
	.long	0xb3
	.long	.LFB26
	.long	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa48
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x2d2
	.long	0x2db
	.long	.LLST42
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF78
	.byte	0x1
	.short	0x2ea
	.byte	0x1
	.long	0xb3
	.long	.LFB27
	.long	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa76
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x2ea
	.long	0x2db
	.long	.LLST43
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.short	0x302
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa9e
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x302
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.short	0x313
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xac6
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x313
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.short	0x324
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xaee
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x1
	.short	0x324
	.long	0x2db
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.short	0x336
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb26
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x336
	.long	0x2db
	.long	.LLST44
	.uleb128 0x1f
	.long	.LASF49
	.byte	0x1
	.short	0x336
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.short	0x350
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb5e
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x350
	.long	0x2db
	.long	.LLST45
	.uleb128 0x1f
	.long	.LASF49
	.byte	0x1
	.short	0x350
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.short	0x36a
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x21
	.long	.LASF39
	.byte	0x1
	.short	0x36a
	.long	0x2db
	.long	.LLST46
	.uleb128 0x1f
	.long	.LASF49
	.byte	0x1
	.short	0x36a
	.long	0x93
	.byte	0x1
	.byte	0x51
	.byte	0
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_35, @function
	.debug_abbrev$scode_local_35:
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x34
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
	.type	.debug_loc$scode_local_36, @function
	.debug_loc$scode_local_36:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.short	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LVL2
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.short	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LVL7
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.short	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LFE1
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL12
	.long	.LVL13
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL13
	.long	.LVL15
	.short	0x12
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x71
	.sleb128 16
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL15
	.long	.LFE2
	.short	0xc
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL14
	.long	.LVL17
	.short	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL16
	.long	.LVL18
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST4:
	.long	.LVL19
	.long	.LVL20
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL20
	.long	.LVL22
	.short	0x8
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL22
	.long	.LVL24
	.short	0x1
	.byte	0x55
	.long	.LVL24
	.long	.LFE3
	.short	0x8
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL21
	.long	.LVL22
	.short	0x8
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL22
	.long	.LVL24
	.short	0x1
	.byte	0x55
	.long	.LVL24
	.long	.LFE3
	.short	0x8
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL21
	.long	.LVL23
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST7:
	.long	.LVL27
	.long	.LVL29
	.short	0x1
	.byte	0x51
	.long	.LVL29
	.long	.LFE6
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL27
	.long	.LVL29
	.short	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.long	.LVL29
	.long	.LFE6
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST9:
	.long	.LVL28
	.long	.LVL29
	.short	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.long	.LVL29
	.long	.LFE6
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST10:
	.long	.LVL28
	.long	.LVL30
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST11:
	.long	.LVL33
	.long	.LVL34
	.short	0x1
	.byte	0x50
	.long	.LVL34
	.long	.LFE9
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL37
	.long	.LVL38
	.short	0x1
	.byte	0x50
	.long	.LVL38
	.long	.LFE12
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL39
	.long	.LVL42
	.short	0x1
	.byte	0x51
	.long	.LVL42
	.long	.LFE13
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL40
	.long	.LVL42
	.short	0x1
	.byte	0x51
	.long	.LVL42
	.long	.LFE13
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL40
	.long	.LVL41
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST16:
	.long	.LVL43
	.long	.LVL44
	.short	0x1
	.byte	0x50
	.long	.LVL44
	.long	.LFE14
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL45
	.long	.LVL47
	.short	0x1
	.byte	0x51
	.long	.LVL47
	.long	.LFE15
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL46
	.long	.LVL47
	.short	0x1
	.byte	0x51
	.long	.LVL47
	.long	.LFE15
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL48
	.long	.LVL49
	.short	0x1
	.byte	0x50
	.long	.LVL49
	.long	.LFE16
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL50
	.long	.LVL53
	.short	0x1
	.byte	0x51
	.long	.LVL53
	.long	.LFE17
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL51
	.long	.LVL53
	.short	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL53
	.long	.LFE17
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL52
	.long	.LVL53
	.short	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL53
	.long	.LFE17
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL54
	.long	.LVL55
	.short	0x1
	.byte	0x50
	.long	.LVL55
	.long	.LFE18
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL54
	.long	.LVL55
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL55
	.long	.LVL56
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST25:
	.long	.LVL57
	.long	.LVL60
	.short	0x1
	.byte	0x51
	.long	.LVL60
	.long	.LFE19
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL58
	.long	.LVL60
	.short	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL60
	.long	.LFE19
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL59
	.long	.LVL60
	.short	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL60
	.long	.LFE19
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL61
	.long	.LVL62
	.short	0x1
	.byte	0x50
	.long	.LVL62
	.long	.LFE20
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL61
	.long	.LVL62
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL62
	.long	.LVL63
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST30:
	.long	.LVL64
	.long	.LVL67
	.short	0x1
	.byte	0x51
	.long	.LVL67
	.long	.LFE21
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL65
	.long	.LVL67
	.short	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL67
	.long	.LFE21
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL66
	.long	.LVL67
	.short	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL67
	.long	.LFE21
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL68
	.long	.LVL71
	.short	0x1
	.byte	0x50
	.long	.LVL71
	.long	.LFE22
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL68
	.long	.LVL69
	.short	0x1
	.byte	0x51
	.long	.LVL69
	.long	.LFE22
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL68
	.long	.LVL69
	.short	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL69
	.long	.LVL70
	.short	0x1
	.byte	0x51
	.long	.LVL70
	.long	.LFE22
	.short	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL72
	.long	.LVL74
	.short	0x1
	.byte	0x51
	.long	.LVL74
	.long	.LFE23
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL72
	.long	.LVL74
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL74
	.long	.LVL75
	.short	0x1
	.byte	0x51
	.long	.LVL75
	.long	.LVL76
	.short	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL76
	.long	.LFE23
	.short	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL72
	.long	.LVL73
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL73
	.long	.LFE23
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST39:
	.long	.LVL77
	.long	.LVL78
	.short	0x1
	.byte	0x51
	.long	.LVL78
	.long	.LVL79
	.short	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL79
	.long	.LVL80
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL80
	.long	.LVL81
	.short	0x1
	.byte	0x51
	.long	.LVL81
	.long	.LFE24
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL82
	.long	.LVL83
	.short	0x1
	.byte	0x50
	.long	.LVL83
	.long	.LFE25
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL84
	.long	.LVL85
	.short	0x1
	.byte	0x50
	.long	.LVL85
	.long	.LFE26
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL86
	.long	.LVL87
	.short	0x1
	.byte	0x50
	.long	.LVL87
	.long	.LFE27
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL91
	.long	.LVL92
	.short	0x1
	.byte	0x50
	.long	.LVL92
	.long	.LFE31
	.short	0x3
	.byte	0x70
	.sleb128 -20
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL93
	.long	.LVL94
	.short	0x1
	.byte	0x50
	.long	.LVL94
	.long	.LFE32
	.short	0x3
	.byte	0x70
	.sleb128 -20
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL95
	.long	.LVL96
	.short	0x1
	.byte	0x50
	.long	.LVL96
	.long	.LFE33
	.short	0x3
	.byte	0x70
	.sleb128 -20
	.byte	0x9f
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_37, @function
	.debug_aranges$scode_local_37:
	.long	0x11c
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
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_38, @function
	.debug_ranges$scode_local_38:
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
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_39, @function
	.debug_line$scode_local_39:
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
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\SmartDriver_Bootloader\\"
	.ascii	"Peripherals\\inc"
	.byte	0
	.byte	0
	.string	"kf32f_basic_qei.c"
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
	.string	"kf32f_basic_qei.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x43
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
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
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
	.long	.LM12
	.byte	0x61
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13234
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13230
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13223
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13221
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
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
	.long	.LM29
	.byte	0x96
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13188
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13186
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x1a
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
	.long	.LM38
	.byte	0xb8
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x18
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
	.long	.LM49
	.byte	0xd4
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
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
	.long	.LM56
	.byte	0xf6
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13104
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13103
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
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
	.long	.LM62
	.byte	0x3
	.sleb128 243
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x1e
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
	.long	.LM68
	.byte	0x3
	.sleb128 271
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x1e
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
	.long	.LM74
	.byte	0x3
	.sleb128 296
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x21
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
	.long	.LM77
	.byte	0x3
	.sleb128 321
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM78
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM79
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM80
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM81
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
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
	.long	.LM83
	.byte	0x3
	.sleb128 349
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM84
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM85
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM86
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM87
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM88
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
	.long	.LM89
	.byte	0x3
	.sleb128 374
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM90
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM91
	.byte	0x21
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
	.long	.LM92
	.byte	0x3
	.sleb128 402
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12927
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM95
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12927
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM96
	.byte	0x1a
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
	.long	.LM97
	.byte	0x3
	.sleb128 421
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM100
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM101
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM102
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM103
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
	.long	.LM104
	.byte	0x3
	.sleb128 456
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM105
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM106
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12873
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM107
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12873
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM108
	.byte	0x1a
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
	.long	.LM109
	.byte	0x3
	.sleb128 475
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM110
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM111
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM112
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM113
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM114
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM115
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
	.long	.LM116
	.byte	0x3
	.sleb128 501
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM117
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM118
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12827
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM119
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12827
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM120
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
	.long	.LM121
	.byte	0x3
	.sleb128 520
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM122
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM123
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
	.long	.LM124
	.byte	0x3
	.sleb128 540
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM125
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM126
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12788
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM127
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12788
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM128
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
	.long	.LM129
	.byte	0x3
	.sleb128 559
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM130
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM131
	.byte	0x1a
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
	.long	.LM132
	.byte	0x3
	.sleb128 579
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM133
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM134
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12749
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM135
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12749
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM136
	.byte	0x1a
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
	.long	.LM137
	.byte	0x3
	.sleb128 609
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
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM140
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM141
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
	.long	.LM142
	.byte	0x3
	.sleb128 641
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM143
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM144
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM145
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM146
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM147
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM148
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
	.long	.LM149
	.byte	0x3
	.sleb128 669
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM150
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM151
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM152
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM153
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM154
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM155
	.byte	0x1e
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
	.long	.LM156
	.byte	0x3
	.sleb128 698
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM157
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM158
	.byte	0x21
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
	.long	.LM159
	.byte	0x3
	.sleb128 722
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM160
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM161
	.byte	0x21
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
	.long	.LM162
	.byte	0x3
	.sleb128 746
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM163
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM164
	.byte	0x21
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
	.long	.LM165
	.byte	0x3
	.sleb128 770
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM166
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM167
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM168
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM169
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM170
	.byte	0x18
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
	.long	.LM171
	.byte	0x3
	.sleb128 787
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM172
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM173
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM174
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM175
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM176
	.byte	0x18
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
	.long	.LM177
	.byte	0x3
	.sleb128 804
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM178
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM179
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM180
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM181
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM182
	.byte	0x18
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
	.long	.LM183
	.byte	0x3
	.sleb128 822
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM184
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM185
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM186
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM187
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM188
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM189
	.byte	0x1e
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
	.long	.LM190
	.byte	0x3
	.sleb128 848
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM191
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM192
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM193
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM194
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM195
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM196
	.byte	0x1e
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
	.long	.LM197
	.byte	0x3
	.sleb128 874
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM198
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM199
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM200
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM201
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM202
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM203
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE33
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_40, @function
	.debug_str$scode_local_40:
.LASF45:
	.string	"QEI_Timer_Struct_Init"
.LASF22:
	.string	"m_DirectionEn"
.LASF74:
	.string	"tmpreg1"
.LASF24:
	.string	"m_DigitalFilterEn"
.LASF39:
	.string	"QEIx"
.LASF10:
	.string	"FALSE"
.LASF76:
	.string	"QEI_Get_Counter_Overflow_INT_Flag"
.LASF38:
	.string	"QEI_Configuration"
.LASF48:
	.string	"QEI_Location_Counter_Reset_Enable"
.LASF69:
	.string	"QEI_Timer_Prescaler_Config"
.LASF73:
	.string	"QEI_Clear_INT_Flag"
.LASF82:
	.string	"QEI_Timer_Overflow_INT_Enable"
.LASF63:
	.string	"QEI_Timer_Counter_Config"
.LASF29:
	.string	"m_Prescaler"
.LASF64:
	.string	"Counter"
.LASF23:
	.string	"m_WorkClock"
.LASF65:
	.string	"QEI_Get_Timer_Counter"
.LASF4:
	.string	"short int"
.LASF86:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\SmartDriver_Bootloader\\\\Release"
.LASF33:
	.string	"QEI_TimerTypeDef"
.LASF21:
	.string	"m_IndexReset"
.LASF31:
	.string	"m_CounterMode"
.LASF49:
	.string	"NewState"
.LASF62:
	.string	"QEI_Swap_Phase_AB_Enable"
.LASF53:
	.string	"QEI_Location_Counter_Direction_Config"
.LASF46:
	.string	"QEI_Encoder_Mode_Config"
.LASF41:
	.string	"QEI_Timer_Configuration"
.LASF55:
	.string	"QEI_Get_Index_Pin_State"
.LASF80:
	.string	"QEI_Clear_Phase_Error_INT_Flag"
.LASF7:
	.string	"long long int"
.LASF18:
	.string	"PRSC"
.LASF40:
	.string	"qeiInitStruct"
.LASF83:
	.string	"QEI_Phase_Error_INT_Enable"
.LASF75:
	.string	"QEI_Set_INT_Enable"
.LASF54:
	.string	"Direction"
.LASF85:
	.string	"../Peripherals/src/kf32f_basic_qei.c"
.LASF88:
	.string	"SFR_Config"
.LASF36:
	.string	"WriteVal"
.LASF87:
	.string	"QEI_MemMap"
.LASF3:
	.string	"unsigned char"
.LASF43:
	.string	"tmpreg"
.LASF70:
	.string	"Prescaler"
.LASF28:
	.string	"m_Period"
.LASF71:
	.string	"QEI_Get_INT_Flag"
.LASF72:
	.string	"InterruptType"
.LASF47:
	.string	"PortMode"
.LASF2:
	.string	"signed char"
.LASF77:
	.string	"QEI_Get_Phase_Error_INT_Flag"
.LASF8:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint32_t"
.LASF34:
	.string	"SfrMem"
.LASF0:
	.string	"unsigned int"
.LASF89:
	.string	"QEI_Counter_Error_INT_Enable"
.LASF84:
	.string	"GNU C 4.7.0"
.LASF81:
	.string	"QEI_Clear_Counter_Error_INT_Flag"
.LASF60:
	.string	"QEI_Digital_Filter_Clock_Config"
.LASF51:
	.string	"TimerClock"
.LASF19:
	.string	"DIER"
.LASF32:
	.string	"m_ClockSource"
.LASF67:
	.string	"Period"
.LASF58:
	.string	"PeripheralClock"
.LASF57:
	.string	"QEI_Source_Clock_Config"
.LASF68:
	.string	"QEI_Get_Timer_Period"
.LASF9:
	.string	"char"
.LASF5:
	.string	"uint16_t"
.LASF1:
	.string	"short unsigned int"
.LASF35:
	.string	"SfrMask"
.LASF26:
	.string	"m_SwapABEn"
.LASF61:
	.string	"DigitalFilterClock"
.LASF37:
	.string	"QEI_Reset"
.LASF12:
	.string	"FunctionalState"
.LASF16:
	.string	"CTL0"
.LASF17:
	.string	"CTL1"
.LASF79:
	.string	"QEI_Clear_Timer_Overflow_INT_Flag"
.LASF27:
	.string	"m_Counter"
.LASF13:
	.string	"RESET"
.LASF20:
	.string	"QEI_SFRmap"
.LASF59:
	.string	"QEI_Digital_Filter_Output_Enable"
.LASF15:
	.string	"sizetype"
.LASF66:
	.string	"QEI_Timer_Period_Config"
.LASF78:
	.string	"QEI_Get_Count_Error_INT_Flag"
.LASF52:
	.string	"QEI_Location_Counter_Output_Enable"
.LASF11:
	.string	"TRUE"
.LASF44:
	.string	"QEI_Struct_Init"
.LASF25:
	.string	"m_DigitalFilterPrescaler"
.LASF42:
	.string	"qeiTimerInitStruct"
.LASF50:
	.string	"QEI_Timer_Source_Clock_Config"
.LASF14:
	.string	"FlagStatus"
.LASF30:
	.string	"QEI_InitTypeDef"
.LASF56:
	.string	"QEI_Get_Location_Counter_Direction"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
