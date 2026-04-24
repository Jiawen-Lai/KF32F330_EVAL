	.file	"kf32f_basic_adc.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$ADC_Reset
	.type	.text$ADC_Reset$scode_local_1, @function
	.text$ADC_Reset$scode_local_1:
	.align	1
	.export	ADC_Reset
	.type	ADC_Reset, @function
ADC_Reset:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
	PUSH	lr
	.cfi_def_cfa_offset 4
.LM2:
	LD	r5,#1073743232
	CMP	r0,r5
	JZ	.L5
.LM3:
	LD	r5,#1073743360
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
	MOV	r0,#1
.LVL3:
	LSL	r0,#12
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL4:
.LM6:
	MOV	r0,#1
	LSL	r0,#12
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL5:
.LM7:
	MOV	r0,#1
	LSL	r0,#12
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
	LSL	r0,#11
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL9:
.LM10:
	MOV	r0,#1
	LSL	r0,#11
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL10:
.LM11:
	MOV	r0,#1
	LSL	r0,#11
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL11:
	JMP	.L1
	.cfi_endproc
.LFE1:
	.size	ADC_Reset, .-ADC_Reset
	.section .text$ADC_Configuration
	.type	.text$ADC_Configuration$scode_local_2, @function
	.text$ADC_Configuration$scode_local_2:
	.align	1
	.export	ADC_Configuration
	.type	ADC_Configuration, @function
ADC_Configuration:
.LFB2:
.LM12:
	.cfi_startproc
.LVL12:
.LM13:
	LD.w	r3,[r0]
.LVL13:
.LM14:
	LD.w	r2,[r1+#1]
	LD.w	r4,[r1]
	ORL	r5,r2,r4
.LM15:
	LD.w	r2,[r1+#3]
	ORL	r5,r5,r2
.LM16:
	LD.w	r4,[r1+#4]
	ORL	r5,r5,r4
	LD.w	r4,[r1+#2]
	LSL	r4,#17
.LM17:
	ORL	r5,r5,r4
.LBB52:
.LBB53:
.LM18:
	LD	r4,#-395023
	ANL	r4,r3,r4
	ORL	r5,r5,r4
.LBE53:
.LBE52:
.LM19:
	ST.w	[r0],r5
.LVL14:
.LM20:
	LD.w	r3,[r0+#1]
.LVL15:
.LM21:
	LD.w	r2,[r1+#8]
	LD.w	r4,[r1+#6]
	ORL	r5,r2,r4
.LM22:
	LD.w	r2,[r1+#9]
	ORL	r5,r5,r2
.LM23:
	LD.w	r4,[r1+#5]
	LSL	r4,#11
.LM24:
	ORL	r5,r5,r4
.LM25:
	LD.w	r4,[r1+#7]
	LSL	r4,#27
.LM26:
	ORL	r5,r5,r4
.LBB54:
.LBB55:
.LM27:
	LD	r4,#-268308465
	ANL	r4,r3,r4
	ORL	r5,r5,r4
.LBE55:
.LBE54:
.LM28:
	ST.w	[r0+#1],r5
.LVL16:
.LM29:
	LD.w	r3,[r0+#17]
.LVL17:
.LM30:
	LD.w	r5,[r1+#10]
	SUB	r4,r5,#1
	LSL	r4,#28
.LBB56:
.LBB57:
.LM31:
	LD	r5,#268435455
	ANL	r5,r3,r5
	ORL	r5,r4,r5
.LBE57:
.LBE56:
.LM32:
	ST.w	[r0+#17],r5
.LVL18:
.LM33:
	LD.w	r4,[r0+#5]
.LVL19:
.LM34:
	LD.w	r5,[r1+#11]
	SUB	r5,r5,#1
	LSL	r5,#28
.LBB58:
.LBB59:
.LM35:
	CLR	r4,#28
	CLR	r4,#29
.LVL20:
	ORL	r5,r5,r4
.LBE59:
.LBE58:
.LM36:
	ST.w	[r0+#5],r5
.LM37:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	ADC_Configuration, .-ADC_Configuration
	.section .text$ADC_Struct_Init
	.type	.text$ADC_Struct_Init$scode_local_3, @function
	.text$ADC_Struct_Init$scode_local_3:
	.align	1
	.export	ADC_Struct_Init
	.type	ADC_Struct_Init, @function
ADC_Struct_Init:
.LFB3:
.LM38:
	.cfi_startproc
.LVL21:
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
	ST.w	[r0+#6],r5
.LM46:
	ST.w	[r0+#7],r5
.LM47:
	ST.w	[r0+#8],r5
.LM48:
	MOV	r5,#1
	LSL	r5,#17
	ST.w	[r0+#9],r5
.LM49:
	MOV	r5,#1
	ST.w	[r0+#10],r5
.LM50:
	ST.w	[r0+#11],r5
.LM51:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	ADC_Struct_Init, .-ADC_Struct_Init
	.section .text$ADC_Delay_Configuration
	.type	.text$ADC_Delay_Configuration$scode_local_4, @function
	.text$ADC_Delay_Configuration$scode_local_4:
	.align	1
	.export	ADC_Delay_Configuration
	.type	ADC_Delay_Configuration, @function
ADC_Delay_Configuration:
.LFB4:
.LM52:
	.cfi_startproc
.LVL22:
.LM53:
	LD	r5,#1073743316
	LD.w	r3,[r5]
.LVL23:
.LBB60:
.LBB61:
.LM54:
	LD	r4,#-4128832
	ANL	r4,r3,r4
.LBE61:
.LBE60:
.LM55:
	LD.w	r2,[r0]
	SUB	r3,r2,#1
.LVL24:
.LM56:
	ORL	r4,r4,r3
	LD.w	r3,[r0+#1]
	SUB	r3,r3,#1
	LSL	r3,#16
.LBB63:
.LBB62:
.LM57:
	ORL	r4,r4,r3
.LBE62:
.LBE63:
.LM58:
	ST.w	[r5],r4
.LM59:
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	ADC_Delay_Configuration, .-ADC_Delay_Configuration
	.section .text$ADC_Delay_Struct_Init
	.type	.text$ADC_Delay_Struct_Init$scode_local_5, @function
	.text$ADC_Delay_Struct_Init$scode_local_5:
	.align	1
	.export	ADC_Delay_Struct_Init
	.type	ADC_Delay_Struct_Init, @function
ADC_Delay_Struct_Init:
.LFB5:
.LM60:
	.cfi_startproc
.LVL25:
.LM61:
	MOV	r5,#6
	ST.w	[r0],r5
.LM62:
	MOV	r5,#13
	ST.w	[r0+#1],r5
.LM63:
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	ADC_Delay_Struct_Init, .-ADC_Delay_Struct_Init
	.section .text$ADC_Cmd
	.type	.text$ADC_Cmd$scode_local_6, @function
	.text$ADC_Cmd$scode_local_6:
	.align	1
	.export	ADC_Cmd
	.type	ADC_Cmd, @function
ADC_Cmd:
.LFB6:
.LM64:
	.cfi_startproc
.LVL26:
.LM65:
	CMP	r1,#0
	JNZ	.L14
.LM66:
// inline asm begin
	// 264 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #0
	// 0 "" 2
.LM67:
// inline asm end
	JMP	lr
.L14:
.LM68:
// inline asm begin
	// 259 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #0
	// 0 "" 2
.LM69:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	ADC_Cmd, .-ADC_Cmd
	.section .text$ADC_Analog_Watchdog_Configuration
	.type	.text$ADC_Analog_Watchdog_Configuration$scode_local_7, @function
	.text$ADC_Analog_Watchdog_Configuration$scode_local_7:
	.align	1
	.export	ADC_Analog_Watchdog_Configuration
	.type	ADC_Analog_Watchdog_Configuration, @function
ADC_Analog_Watchdog_Configuration:
.LFB7:
.LM70:
	.cfi_startproc
.LVL27:
.LM71:
	LD.w	r3,[r0]
.LVL28:
.LM72:
	LD.w	r4,[r1+#1]
	LSL	r4,#30
.LM73:
	LD.w	r5,[r1+#2]
	LSL	r5,#29
.LM74:
	ORL	r4,r4,r5
	LD.w	r2,[r1]
	ORL	r4,r4,r2
.LVL29:
.LBB64:
.LBB65:
.LM75:
	LD	r5,#536870911
	ANL	r5,r3,r5
	ORL	r5,r4,r5
.LBE65:
.LBE64:
.LM76:
	ST.w	[r0],r5
.LVL30:
.LM77:
	LD.w	r4,[r0+#17]
.LVL31:
.LBB66:
.LBB67:
.LM78:
	LD	r5,#-66060289
	ANL	r5,r4,r5
	LD.w	r3,[r1+#3]
.LVL32:
	ORL	r5,r5,r3
.LBE67:
.LBE66:
.LM79:
	ST.w	[r0+#17],r5
.LVL33:
.LM80:
	LD.w	r4,[r0+#6]
.LVL34:
.LBB68:
.LBB69:
.LM81:
	LD	r5,#-4096
	ANL	r4,r4,r5
.LVL35:
	LD.w	r2,[r1+#4]
	ORL	r4,r4,r2
.LBE69:
.LBE68:
.LM82:
	ST.w	[r0+#6],r4
.LVL36:
.LM83:
	LD.w	r4,[r0+#7]
.LVL37:
.LBB70:
.LBB71:
.LM84:
	ANL	r5,r4,r5
	LD.w	r4,[r1+#5]
.LVL38:
	ORL	r5,r5,r4
.LBE71:
.LBE70:
.LM85:
	ST.w	[r0+#7],r5
.LM86:
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	ADC_Analog_Watchdog_Configuration, .-ADC_Analog_Watchdog_Configuration
	.section .text$ADC_Analog_Watchdog_Struct_Init
	.type	.text$ADC_Analog_Watchdog_Struct_Init$scode_local_8, @function
	.text$ADC_Analog_Watchdog_Struct_Init$scode_local_8:
	.align	1
	.export	ADC_Analog_Watchdog_Struct_Init
	.type	ADC_Analog_Watchdog_Struct_Init, @function
ADC_Analog_Watchdog_Struct_Init:
.LFB8:
.LM87:
	.cfi_startproc
.LVL39:
.LM88:
	MOV	r5,#0
	ST.w	[r0],r5
.LM89:
	ST.w	[r0+#1],r5
.LM90:
	ST.w	[r0+#2],r5
.LM91:
	ST.w	[r0+#3],r5
.LM92:
	ST.w	[r0+#4],r5
.LM93:
	ST.w	[r0+#5],r5
.LM94:
	JMP	lr
	.cfi_endproc
.LFE8:
	.size	ADC_Analog_Watchdog_Struct_Init, .-ADC_Analog_Watchdog_Struct_Init
	.section .text$ADC_Watchdog_Single_Channel_Enable
	.type	.text$ADC_Watchdog_Single_Channel_Enable$scode_local_9, @function
	.text$ADC_Watchdog_Single_Channel_Enable$scode_local_9:
	.align	1
	.export	ADC_Watchdog_Single_Channel_Enable
	.type	ADC_Watchdog_Single_Channel_Enable, @function
ADC_Watchdog_Single_Channel_Enable:
.LFB9:
.LM95:
	.cfi_startproc
.LVL40:
.LM96:
	CMP	r1,#0
	JNZ	.L20
.LM97:
// inline asm begin
	// 385 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #31
	// 0 "" 2
.LM98:
// inline asm end
	JMP	lr
.L20:
.LM99:
// inline asm begin
	// 380 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #31
	// 0 "" 2
.LM100:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE9:
	.size	ADC_Watchdog_Single_Channel_Enable, .-ADC_Watchdog_Single_Channel_Enable
	.section .text$ADC_Scan_Mode_Enable
	.type	.text$ADC_Scan_Mode_Enable$scode_local_10, @function
	.text$ADC_Scan_Mode_Enable$scode_local_10:
	.align	1
	.export	ADC_Scan_Mode_Enable
	.type	ADC_Scan_Mode_Enable, @function
ADC_Scan_Mode_Enable:
.LFB10:
.LM101:
	.cfi_startproc
.LVL41:
.LM102:
	CMP	r1,#0
	JNZ	.L24
.LM103:
// inline asm begin
	// 411 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #17
	// 0 "" 2
.LM104:
// inline asm end
	JMP	lr
.L24:
.LM105:
// inline asm begin
	// 406 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #17
	// 0 "" 2
.LM106:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE10:
	.size	ADC_Scan_Mode_Enable, .-ADC_Scan_Mode_Enable
	.section .text$ADC_Bosssel_Comparator_Calibration
	.type	.text$ADC_Bosssel_Comparator_Calibration$scode_local_11, @function
	.text$ADC_Bosssel_Comparator_Calibration$scode_local_11:
	.align	1
	.export	ADC_Bosssel_Comparator_Calibration
	.type	ADC_Bosssel_Comparator_Calibration, @function
ADC_Bosssel_Comparator_Calibration:
.LFB11:
.LM107:
	.cfi_startproc
.LVL42:
.LM108:
	CMP	r1,#0
	JNZ	.L28
.LM109:
// inline asm begin
	// 437 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #16
	// 0 "" 2
.LM110:
// inline asm end
	JMP	lr
.L28:
.LM111:
// inline asm begin
	// 432 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #16
	// 0 "" 2
.LM112:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE11:
	.size	ADC_Bosssel_Comparator_Calibration, .-ADC_Bosssel_Comparator_Calibration
	.section .text$ADC_Bosssel_Calibration
	.type	.text$ADC_Bosssel_Calibration$scode_local_12, @function
	.text$ADC_Bosssel_Calibration$scode_local_12:
	.align	1
	.export	ADC_Bosssel_Calibration
	.type	ADC_Bosssel_Calibration, @function
ADC_Bosssel_Calibration:
.LFB12:
.LM113:
	.cfi_startproc
.LVL43:
.LM114:
	CMP	r1,#0
	JNZ	.L32
.LM115:
// inline asm begin
	// 463 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #15
	// 0 "" 2
.LM116:
// inline asm end
	JMP	lr
.L32:
.LM117:
// inline asm begin
	// 458 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #15
	// 0 "" 2
.LM118:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE12:
	.size	ADC_Bosssel_Calibration, .-ADC_Bosssel_Calibration
	.section .text$ADC_Trim_Current_Intensity_Bias
	.type	.text$ADC_Trim_Current_Intensity_Bias$scode_local_13, @function
	.text$ADC_Trim_Current_Intensity_Bias$scode_local_13:
	.align	1
	.export	ADC_Trim_Current_Intensity_Bias
	.type	ADC_Trim_Current_Intensity_Bias, @function
ADC_Trim_Current_Intensity_Bias:
.LFB13:
.LM119:
	.cfi_startproc
.LVL44:
.LM120:
	CMP	r1,#0
	JNZ	.L36
.LM121:
// inline asm begin
	// 489 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #14
	// 0 "" 2
.LM122:
// inline asm end
	JMP	lr
.L36:
.LM123:
// inline asm begin
	// 484 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #14
	// 0 "" 2
.LM124:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE13:
	.size	ADC_Trim_Current_Intensity_Bias, .-ADC_Trim_Current_Intensity_Bias
	.section .text$ADC_Analog_Clock_Config
	.type	.text$ADC_Analog_Clock_Config$scode_local_14, @function
	.text$ADC_Analog_Clock_Config$scode_local_14:
	.align	1
	.export	ADC_Analog_Clock_Config
	.type	ADC_Analog_Clock_Config, @function
ADC_Analog_Clock_Config:
.LFB14:
.LM125:
	.cfi_startproc
.LVL45:
.LM126:
	LD.w	r4,[r0]
.LVL46:
.LBB72:
.LBB73:
.LM127:
	LD	r5,#-1793
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL47:
.LBE73:
.LBE72:
.LM128:
	ST.w	[r0],r1
.LM129:
	JMP	lr
	.cfi_endproc
.LFE14:
	.size	ADC_Analog_Clock_Config, .-ADC_Analog_Clock_Config
	.section .text$ADC_Data_Align_Config
	.type	.text$ADC_Data_Align_Config$scode_local_15, @function
	.text$ADC_Data_Align_Config$scode_local_15:
	.align	1
	.export	ADC_Data_Align_Config
	.type	ADC_Data_Align_Config, @function
ADC_Data_Align_Config:
.LFB15:
.LM130:
	.cfi_startproc
.LVL48:
.LM131:
	LD.w	r5,[r0]
.LVL49:
.LBB74:
.LBB75:
.LM132:
	CLR	r5,#3
.LVL50:
	ORL	r1,r1,r5
.LVL51:
.LBE75:
.LBE74:
.LM133:
	ST.w	[r0],r1
.LM134:
	JMP	lr
	.cfi_endproc
.LFE15:
	.size	ADC_Data_Align_Config, .-ADC_Data_Align_Config
	.section .text$ADC_Clock_Source_Config
	.type	.text$ADC_Clock_Source_Config$scode_local_16, @function
	.text$ADC_Clock_Source_Config$scode_local_16:
	.align	1
	.export	ADC_Clock_Source_Config
	.type	ADC_Clock_Source_Config, @function
ADC_Clock_Source_Config:
.LFB16:
.LM135:
	.cfi_startproc
.LVL52:
.LM136:
	LD.w	r5,[r0]
.LVL53:
.LBB76:
.LBB77:
.LM137:
	CLR	r5,#1
	CLR	r5,#2
.LVL54:
	ORL	r1,r1,r5
.LVL55:
.LBE77:
.LBE76:
.LM138:
	ST.w	[r0],r1
.LM139:
	JMP	lr
	.cfi_endproc
.LFE16:
	.size	ADC_Clock_Source_Config, .-ADC_Clock_Source_Config
	.section .text$ADC_Regular_Channel_DMA_Cmd
	.type	.text$ADC_Regular_Channel_DMA_Cmd$scode_local_17, @function
	.text$ADC_Regular_Channel_DMA_Cmd$scode_local_17:
	.align	1
	.export	ADC_Regular_Channel_DMA_Cmd
	.type	ADC_Regular_Channel_DMA_Cmd, @function
ADC_Regular_Channel_DMA_Cmd:
.LFB17:
.LM140:
	.cfi_startproc
.LVL56:
.LM141:
	CMP	r1,#0
	JNZ	.L43
.LM142:
// inline asm begin
	// 582 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #13
	// 0 "" 2
.LM143:
// inline asm end
	JMP	lr
.L43:
.LM144:
// inline asm begin
	// 577 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #13
	// 0 "" 2
.LM145:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE17:
	.size	ADC_Regular_Channel_DMA_Cmd, .-ADC_Regular_Channel_DMA_Cmd
	.section .text$ADC_High_Priority_Channel_DMA_Cmd
	.type	.text$ADC_High_Priority_Channel_DMA_Cmd$scode_local_18, @function
	.text$ADC_High_Priority_Channel_DMA_Cmd$scode_local_18:
	.align	1
	.export	ADC_High_Priority_Channel_DMA_Cmd
	.type	ADC_High_Priority_Channel_DMA_Cmd, @function
ADC_High_Priority_Channel_DMA_Cmd:
.LFB18:
.LM146:
	.cfi_startproc
.LVL57:
.LM147:
	LD.w	r5,[r0]
.LM148:
	CMP	r2,#0
	JNZ	.L47
.LM149:
	NOT	r1,r1
.LVL58:
	ANL	r1,r1,r5
.LVL59:
	ST.w	[r0],r1
.LM150:
	JMP	lr
.LVL60:
.L47:
.LM151:
	ORL	r1,r1,r5
.LVL61:
	ST.w	[r0],r1
.LM152:
	JMP	lr
	.cfi_endproc
.LFE18:
	.size	ADC_High_Priority_Channel_DMA_Cmd, .-ADC_High_Priority_Channel_DMA_Cmd
	.section .text$ADC_Double_Mode_Config
	.type	.text$ADC_Double_Mode_Config$scode_local_19, @function
	.text$ADC_Double_Mode_Config$scode_local_19:
	.align	1
	.export	ADC_Double_Mode_Config
	.type	ADC_Double_Mode_Config, @function
ADC_Double_Mode_Config:
.LFB19:
.LM153:
	.cfi_startproc
.LVL62:
.LM154:
	LD	r5,#1073743232
	LD.w	r3,[r5+#1]
.LVL63:
.LBB78:
.LBB79:
.LM155:
	LD	r4,#268435455
	ANL	r4,r3,r4
	ORL	r0,r0,r4
.LVL64:
.LBE79:
.LBE78:
.LM156:
	ST.w	[r5+#1],r0
.LM157:
	JMP	lr
	.cfi_endproc
.LFE19:
	.size	ADC_Double_Mode_Config, .-ADC_Double_Mode_Config
	.section .text$ADC_Reference_Voltage_Config
	.type	.text$ADC_Reference_Voltage_Config$scode_local_20, @function
	.text$ADC_Reference_Voltage_Config$scode_local_20:
	.align	1
	.export	ADC_Reference_Voltage_Config
	.type	ADC_Reference_Voltage_Config, @function
ADC_Reference_Voltage_Config:
.LFB20:
.LM158:
	.cfi_startproc
.LVL65:
.LM159:
	LD.w	r4,[r0+#1]
.LVL66:
.LBB80:
.LBB81:
.LM160:
	LD	r5,#-917505
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL67:
.LBE81:
.LBE80:
.LM161:
	ST.w	[r0+#1],r1
.LM162:
	JMP	lr
	.cfi_endproc
.LFE20:
	.size	ADC_Reference_Voltage_Config, .-ADC_Reference_Voltage_Config
	.section .text$ADC_Analog_Watchdog_Channel_Config
	.type	.text$ADC_Analog_Watchdog_Channel_Config$scode_local_21, @function
	.text$ADC_Analog_Watchdog_Channel_Config$scode_local_21:
	.align	1
	.export	ADC_Analog_Watchdog_Channel_Config
	.type	ADC_Analog_Watchdog_Channel_Config, @function
ADC_Analog_Watchdog_Channel_Config:
.LFB21:
.LM163:
	.cfi_startproc
.LVL68:
.LM164:
	LD.w	r4,[r0+#17]
.LVL69:
.LBB82:
.LBB83:
.LM165:
	LD	r5,#-66060289
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL70:
.LBE83:
.LBE82:
.LM166:
	ST.w	[r0+#17],r1
.LM167:
	JMP	lr
	.cfi_endproc
.LFE21:
	.size	ADC_Analog_Watchdog_Channel_Config, .-ADC_Analog_Watchdog_Channel_Config
	.section .text$ADC_Regular_Channel_Watchdog_Enable
	.type	.text$ADC_Regular_Channel_Watchdog_Enable$scode_local_22, @function
	.text$ADC_Regular_Channel_Watchdog_Enable$scode_local_22:
	.align	1
	.export	ADC_Regular_Channel_Watchdog_Enable
	.type	ADC_Regular_Channel_Watchdog_Enable, @function
ADC_Regular_Channel_Watchdog_Enable:
.LFB22:
.LM168:
	.cfi_startproc
.LVL71:
.LM169:
	CMP	r1,#0
	JNZ	.L54
.LM170:
// inline asm begin
	// 714 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #29
	// 0 "" 2
.LM171:
// inline asm end
	JMP	lr
.L54:
.LM172:
// inline asm begin
	// 709 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #29
	// 0 "" 2
.LM173:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE22:
	.size	ADC_Regular_Channel_Watchdog_Enable, .-ADC_Regular_Channel_Watchdog_Enable
	.section .text$ADC_External_Trig_Conv_Enable
	.type	.text$ADC_External_Trig_Conv_Enable$scode_local_23, @function
	.text$ADC_External_Trig_Conv_Enable$scode_local_23:
	.align	1
	.export	ADC_External_Trig_Conv_Enable
	.type	ADC_External_Trig_Conv_Enable, @function
ADC_External_Trig_Conv_Enable:
.LFB23:
.LM174:
	.cfi_startproc
.LVL72:
.LM175:
	ADD	r0,r0,#4
.LVL73:
.LM176:
	CMP	r1,#0
	JNZ	.L58
.LM177:
// inline asm begin
	// 740 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #11
	// 0 "" 2
.LM178:
// inline asm end
	JMP	lr
.L58:
.LM179:
// inline asm begin
	// 735 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #11
	// 0 "" 2
.LM180:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE23:
	.size	ADC_External_Trig_Conv_Enable, .-ADC_External_Trig_Conv_Enable
	.section .text$ADC_External_Trig_Conv_Config
	.type	.text$ADC_External_Trig_Conv_Config$scode_local_24, @function
	.text$ADC_External_Trig_Conv_Config$scode_local_24:
	.align	1
	.export	ADC_External_Trig_Conv_Config
	.type	ADC_External_Trig_Conv_Config, @function
ADC_External_Trig_Conv_Config:
.LFB24:
.LM181:
	.cfi_startproc
.LVL74:
.LM182:
	LD.w	r4,[r0+#1]
.LVL75:
.LBB84:
.LBB85:
.LM183:
	LD	r5,#-2033
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL76:
.LBE85:
.LBE84:
.LM184:
	ST.w	[r0+#1],r1
.LM185:
	JMP	lr
	.cfi_endproc
.LFE24:
	.size	ADC_External_Trig_Conv_Config, .-ADC_External_Trig_Conv_Config
	.section .text$ADC_Regular_Channel_Config
	.type	.text$ADC_Regular_Channel_Config$scode_local_25, @function
	.text$ADC_Regular_Channel_Config$scode_local_25:
	.align	1
	.export	ADC_Regular_Channel_Config
	.type	ADC_Regular_Channel_Config, @function
ADC_Regular_Channel_Config:
.LFB25:
.LM186:
	.cfi_startproc
.LVL77:
.LM187:
	MOV	r5,#6
.LM188:
	CMP	r2,#5
	JLS	.L65
.LM189:
	CMP	r2,#10
	JLS	.L66
.LM190:
	CMP	r2,#15
	JLS	.L67
.LM191:
	MULS	r2,r2,r5 ;
	NOP
.LVL78:
	SUB	r2,#96
.LVL79:
.LM192:
	LD.w	r4,[r0+#17]
.LVL80:
.LM193:
	MOV	r5,#63
	LSL	r5,r5,r2
.LVL81:
.LM194:
	NOT	r5,r5
.LVL82:
.LBB86:
.LBB87:
.LM195:
	ANL	r5,r5,r4
.LVL83:
.LBE87:
.LBE86:
.LM196:
	LSL	r1,r1,r2
.LVL84:
.LBB89:
.LBB88:
.LM197:
	ORL	r2,r5,r1
.LVL85:
.LBE88:
.LBE89:
.LM198:
	ST.w	[r0+#17],r2
.LM199:
	JMP	lr
.LVL86:
.L66:
.LM200:
	MULS	r2,r2,r5 ;
	NOP
.LVL87:
	SUB	r2,#36
.LVL88:
.LM201:
	LD.w	r4,[r0+#3]
.LVL89:
.LM202:
	MOV	r5,#63
	LSL	r5,r5,r2
.LVL90:
.LM203:
	NOT	r5,r5
.LVL91:
.LBB90:
.LBB91:
.LM204:
	ANL	r5,r5,r4
.LVL92:
.LBE91:
.LBE90:
.LM205:
	LSL	r1,r1,r2
.LVL93:
.LBB93:
.LBB92:
.LM206:
	ORL	r2,r5,r1
.LVL94:
.LBE92:
.LBE93:
.LM207:
	ST.w	[r0+#3],r2
.LM208:
	JMP	lr
.LVL95:
.L65:
.LM209:
	MULS	r2,r2,r5 ;
	NOP
.LVL96:
	SUB	r2,r2,r5
.LVL97:
.LM210:
	LD.w	r4,[r0+#2]
.LVL98:
.LM211:
	MOV	r5,#63
	LSL	r5,r5,r2
.LVL99:
.LM212:
	NOT	r5,r5
.LVL100:
.LBB94:
.LBB95:
.LM213:
	ANL	r5,r5,r4
.LVL101:
.LBE95:
.LBE94:
.LM214:
	LSL	r1,r1,r2
.LVL102:
.LBB97:
.LBB96:
.LM215:
	ORL	r2,r5,r1
.LVL103:
.LBE96:
.LBE97:
.LM216:
	ST.w	[r0+#2],r2
.LM217:
	JMP	lr
.LVL104:
.L67:
.LM218:
	MULS	r2,r2,r5 ;
	NOP
.LVL105:
	SUB	r2,#66
.LVL106:
.LM219:
	LD.w	r4,[r0+#4]
.LVL107:
.LM220:
	MOV	r5,#63
	LSL	r5,r5,r2
.LVL108:
.LM221:
	NOT	r5,r5
.LVL109:
.LBB98:
.LBB99:
.LM222:
	ANL	r5,r5,r4
.LVL110:
.LBE99:
.LBE98:
.LM223:
	LSL	r1,r1,r2
.LVL111:
.LBB101:
.LBB100:
.LM224:
	ORL	r2,r5,r1
.LVL112:
.LBE100:
.LBE101:
.LM225:
	ST.w	[r0+#4],r2
.LM226:
	JMP	lr
	.cfi_endproc
.LFE25:
	.size	ADC_Regular_Channel_Config, .-ADC_Regular_Channel_Config
	.section .text$ADC_Regular_Sequencer_Length_Config
	.type	.text$ADC_Regular_Sequencer_Length_Config$scode_local_26, @function
	.text$ADC_Regular_Sequencer_Length_Config$scode_local_26:
	.align	1
	.export	ADC_Regular_Sequencer_Length_Config
	.type	ADC_Regular_Sequencer_Length_Config, @function
ADC_Regular_Sequencer_Length_Config:
.LFB26:
.LM227:
	.cfi_startproc
.LVL113:
.LM228:
	LD.w	r3,[r0+#17]
.LVL114:
.LM229:
	SUB	r5,r1,#1
	LSL	r5,#28
.LBB102:
.LBB103:
.LM230:
	LD	r4,#268435455
	ANL	r1,r3,r4
.LVL115:
	ORL	r1,r5,r1
.LBE103:
.LBE102:
.LM231:
	ST.w	[r0+#17],r1
.LM232:
	JMP	lr
	.cfi_endproc
.LFE26:
	.size	ADC_Regular_Sequencer_Length_Config, .-ADC_Regular_Sequencer_Length_Config
	.section .text$ADC_Regular_Channel_TxCCRy_Trig_Enable
	.type	.text$ADC_Regular_Channel_TxCCRy_Trig_Enable$scode_local_27, @function
	.text$ADC_Regular_Channel_TxCCRy_Trig_Enable$scode_local_27:
	.align	1
	.export	ADC_Regular_Channel_TxCCRy_Trig_Enable
	.type	ADC_Regular_Channel_TxCCRy_Trig_Enable, @function
ADC_Regular_Channel_TxCCRy_Trig_Enable:
.LFB27:
.LM233:
	.cfi_startproc
.LVL116:
.LM234:
	MOV	r5,#1
	LSL	r1,r5,r1
.LVL117:
.LM235:
	LD.w	r4,[r0+#20]
.LM236:
	CMP	r2,#0
	JNZ	.L72
.LM237:
	NOT	r5,r1
	ANL	r5,r5,r4
	ST.w	[r0+#20],r5
.LM238:
	JMP	lr
.L72:
.LM239:
	ORL	r5,r1,r4
	ST.w	[r0+#20],r5
.LM240:
	JMP	lr
	.cfi_endproc
.LFE27:
	.size	ADC_Regular_Channel_TxCCRy_Trig_Enable, .-ADC_Regular_Channel_TxCCRy_Trig_Enable
	.section .text$ADC_Software_Start_Conv
	.type	.text$ADC_Software_Start_Conv$scode_local_28, @function
	.text$ADC_Software_Start_Conv$scode_local_28:
	.align	1
	.export	ADC_Software_Start_Conv
	.type	ADC_Software_Start_Conv, @function
ADC_Software_Start_Conv:
.LFB28:
.LM241:
	.cfi_startproc
.LVL118:
.LM242:
	ADD	r0,r0,#4
.LVL119:
// inline asm begin
	// 969 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #2
	// 0 "" 2
.LM243:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE28:
	.size	ADC_Software_Start_Conv, .-ADC_Software_Start_Conv
	.section .text$ADC_Continuous_Mode_Cmd
	.type	.text$ADC_Continuous_Mode_Cmd$scode_local_29, @function
	.text$ADC_Continuous_Mode_Cmd$scode_local_29:
	.align	1
	.export	ADC_Continuous_Mode_Cmd
	.type	ADC_Continuous_Mode_Cmd, @function
ADC_Continuous_Mode_Cmd:
.LFB29:
.LM244:
	.cfi_startproc
.LVL120:
.LM245:
	CMP	r1,#0
	JNZ	.L77
.LM246:
// inline asm begin
	// 993 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #18
	// 0 "" 2
.LM247:
// inline asm end
	JMP	lr
.L77:
.LM248:
// inline asm begin
	// 988 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #18
	// 0 "" 2
.LM249:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE29:
	.size	ADC_Continuous_Mode_Cmd, .-ADC_Continuous_Mode_Cmd
	.section .text$ADC_Disc_Mode_Channel_Count_Config
	.type	.text$ADC_Disc_Mode_Channel_Count_Config$scode_local_30, @function
	.text$ADC_Disc_Mode_Channel_Count_Config$scode_local_30:
	.align	1
	.export	ADC_Disc_Mode_Channel_Count_Config
	.type	ADC_Disc_Mode_Channel_Count_Config, @function
ADC_Disc_Mode_Channel_Count_Config:
.LFB30:
.LM250:
	.cfi_startproc
.LVL121:
	ZXT.b	r1,r1
.LVL122:
.LM251:
	LD.w	r4,[r0]
.LVL123:
.LM252:
	SUB	r1,r1,#1
.LVL124:
	LSL	r1,#26
.LVL125:
.LBB104:
.LBB105:
.LM253:
	LD	r5,#-469762049
	ANL	r5,r4,r5
	ORL	r5,r1,r5
.LBE105:
.LBE104:
.LM254:
	ST.w	[r0],r5
.LM255:
	JMP	lr
	.cfi_endproc
.LFE30:
	.size	ADC_Disc_Mode_Channel_Count_Config, .-ADC_Disc_Mode_Channel_Count_Config
	.section .text$ADC_Disc_Mode_Cmd
	.type	.text$ADC_Disc_Mode_Cmd$scode_local_31, @function
	.text$ADC_Disc_Mode_Cmd$scode_local_31:
	.align	1
	.export	ADC_Disc_Mode_Cmd
	.type	ADC_Disc_Mode_Cmd, @function
ADC_Disc_Mode_Cmd:
.LFB31:
.LM256:
	.cfi_startproc
.LVL126:
.LM257:
	CMP	r1,#0
	JNZ	.L82
.LM258:
// inline asm begin
	// 1040 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #20
	// 0 "" 2
.LM259:
// inline asm end
	JMP	lr
.L82:
.LM260:
// inline asm begin
	// 1035 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #20
	// 0 "" 2
.LM261:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE31:
	.size	ADC_Disc_Mode_Cmd, .-ADC_Disc_Mode_Cmd
	.section .text$ADC_Get_Conversion_Value
	.type	.text$ADC_Get_Conversion_Value$scode_local_32, @function
	.text$ADC_Get_Conversion_Value$scode_local_32:
	.align	1
	.export	ADC_Get_Conversion_Value
	.type	ADC_Get_Conversion_Value, @function
ADC_Get_Conversion_Value:
.LFB32:
.LM262:
	.cfi_startproc
.LVL127:
.LM263:
	LD.w	r0,[r0+#8]
.LVL128:
.LM264:
	ZXT.h	r0,r0
.LVL129:
	JMP	lr
	.cfi_endproc
.LFE32:
	.size	ADC_Get_Conversion_Value, .-ADC_Get_Conversion_Value
	.section .text$ADC_High_Priority_Watchdog_Enable
	.type	.text$ADC_High_Priority_Watchdog_Enable$scode_local_33, @function
	.text$ADC_High_Priority_Watchdog_Enable$scode_local_33:
	.align	1
	.export	ADC_High_Priority_Watchdog_Enable
	.type	ADC_High_Priority_Watchdog_Enable, @function
ADC_High_Priority_Watchdog_Enable:
.LFB33:
.LM265:
	.cfi_startproc
.LVL130:
.LM266:
	CMP	r1,#0
	JNZ	.L87
.LM267:
// inline asm begin
	// 1092 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #30
	// 0 "" 2
.LM268:
// inline asm end
	JMP	lr
.L87:
.LM269:
// inline asm begin
	// 1087 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #30
	// 0 "" 2
.LM270:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE33:
	.size	ADC_High_Priority_Watchdog_Enable, .-ADC_High_Priority_Watchdog_Enable
	.section .text$ADC_HPExternal_Trig_Conv_Enable
	.type	.text$ADC_HPExternal_Trig_Conv_Enable$scode_local_34, @function
	.text$ADC_HPExternal_Trig_Conv_Enable$scode_local_34:
	.align	1
	.export	ADC_HPExternal_Trig_Conv_Enable
	.type	ADC_HPExternal_Trig_Conv_Enable, @function
ADC_HPExternal_Trig_Conv_Enable:
.LFB34:
.LM271:
	.cfi_startproc
.LVL131:
.LM272:
	ADD	r0,r0,#4
.LVL132:
.LM273:
	CMP	r1,#0
	JNZ	.L91
.LM274:
// inline asm begin
	// 1118 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #27
	// 0 "" 2
.LM275:
// inline asm end
	JMP	lr
.L91:
.LM276:
// inline asm begin
	// 1113 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #27
	// 0 "" 2
.LM277:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE34:
	.size	ADC_HPExternal_Trig_Conv_Enable, .-ADC_HPExternal_Trig_Conv_Enable
	.section .text$ADC_High_Priority_Channel_Config
	.type	.text$ADC_High_Priority_Channel_Config$scode_local_35, @function
	.text$ADC_High_Priority_Channel_Config$scode_local_35:
	.align	1
	.export	ADC_High_Priority_Channel_Config
	.type	ADC_High_Priority_Channel_Config, @function
ADC_High_Priority_Channel_Config:
.LFB35:
.LM278:
	.cfi_startproc
.LVL133:
.LM279:
	MOV	r5,#6
	MULS	r2,r2,r5 ;
	NOP
.LVL134:
	SUB	r2,r2,r5
.LVL135:
.LM280:
	LD.w	r4,[r0+#5]
.LVL136:
.LM281:
	MOV	r5,#63
	LSL	r5,r5,r2
.LVL137:
.LM282:
	NOT	r5,r5
.LVL138:
.LBB106:
.LBB107:
.LM283:
	ANL	r5,r5,r4
.LVL139:
.LBE107:
.LBE106:
.LM284:
	LSL	r1,r1,r2
.LVL140:
.LBB109:
.LBB108:
.LM285:
	ORL	r5,r5,r1
.LBE108:
.LBE109:
.LM286:
	ST.w	[r0+#5],r5
.LM287:
	JMP	lr
	.cfi_endproc
.LFE35:
	.size	ADC_High_Priority_Channel_Config, .-ADC_High_Priority_Channel_Config
	.section .text$ADC_High_Priority_Sequencer_Length_Config
	.type	.text$ADC_High_Priority_Sequencer_Length_Config$scode_local_36, @function
	.text$ADC_High_Priority_Sequencer_Length_Config$scode_local_36:
	.align	1
	.export	ADC_High_Priority_Sequencer_Length_Config
	.type	ADC_High_Priority_Sequencer_Length_Config, @function
ADC_High_Priority_Sequencer_Length_Config:
.LFB36:
.LM288:
	.cfi_startproc
.LVL141:
.LM289:
	LD.w	r5,[r0+#5]
.LVL142:
.LM290:
	SUB	r1,r1,#1
.LVL143:
	LSL	r1,#28
.LVL144:
.LBB110:
.LBB111:
.LM291:
	CLR	r5,#28
	CLR	r5,#29
.LVL145:
	ORL	r1,r1,r5
.LBE111:
.LBE110:
.LM292:
	ST.w	[r0+#5],r1
.LM293:
	JMP	lr
	.cfi_endproc
.LFE36:
	.size	ADC_High_Priority_Sequencer_Length_Config, .-ADC_High_Priority_Sequencer_Length_Config
	.section .text$ADC_Set_HPChannel_Conv_Value_Offset
	.type	.text$ADC_Set_HPChannel_Conv_Value_Offset$scode_local_37, @function
	.text$ADC_Set_HPChannel_Conv_Value_Offset$scode_local_37:
	.align	1
	.export	ADC_Set_HPChannel_Conv_Value_Offset
	.type	ADC_Set_HPChannel_Conv_Value_Offset, @function
ADC_Set_HPChannel_Conv_Value_Offset:
.LFB37:
.LM294:
	.cfi_startproc
.LVL146:
.LM295:
	ST.w	[r1+r0],r2
.LM296:
	JMP	lr
	.cfi_endproc
.LFE37:
	.size	ADC_Set_HPChannel_Conv_Value_Offset, .-ADC_Set_HPChannel_Conv_Value_Offset
	.section .text$ADC_HPExternal_Trig_Conv_Config
	.type	.text$ADC_HPExternal_Trig_Conv_Config$scode_local_38, @function
	.text$ADC_HPExternal_Trig_Conv_Config$scode_local_38:
	.align	1
	.export	ADC_HPExternal_Trig_Conv_Config
	.type	ADC_HPExternal_Trig_Conv_Config, @function
ADC_HPExternal_Trig_Conv_Config:
.LFB38:
.LM297:
	.cfi_startproc
.LVL147:
.LM298:
	LD.w	r4,[r0+#1]
.LVL148:
.LBB112:
.LBB113:
.LM299:
	LD	r5,#-133169153
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL149:
.LBE113:
.LBE112:
.LM300:
	ST.w	[r0+#1],r1
.LM301:
	JMP	lr
	.cfi_endproc
.LFE38:
	.size	ADC_HPExternal_Trig_Conv_Config, .-ADC_HPExternal_Trig_Conv_Config
	.section .text$ADC_Software_HPStart_Conv
	.type	.text$ADC_Software_HPStart_Conv$scode_local_39, @function
	.text$ADC_Software_HPStart_Conv$scode_local_39:
	.align	1
	.export	ADC_Software_HPStart_Conv
	.type	ADC_Software_HPStart_Conv, @function
ADC_Software_HPStart_Conv:
.LFB39:
.LM302:
	.cfi_startproc
.LVL150:
.LM303:
	ADD	r0,r0,#4
.LVL151:
// inline asm begin
	// 1307 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #3
	// 0 "" 2
.LM304:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE39:
	.size	ADC_Software_HPStart_Conv, .-ADC_Software_HPStart_Conv
	.section .text$ADC_HPAuto_Conv_Cmd
	.type	.text$ADC_HPAuto_Conv_Cmd$scode_local_40, @function
	.text$ADC_HPAuto_Conv_Cmd$scode_local_40:
	.align	1
	.export	ADC_HPAuto_Conv_Cmd
	.type	ADC_HPAuto_Conv_Cmd, @function
ADC_HPAuto_Conv_Cmd:
.LFB40:
.LM305:
	.cfi_startproc
.LVL152:
.LM306:
	CMP	r1,#0
	JNZ	.L100
.LM307:
// inline asm begin
	// 1331 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #19
	// 0 "" 2
.LM308:
// inline asm end
	JMP	lr
.L100:
.LM309:
// inline asm begin
	// 1326 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #19
	// 0 "" 2
.LM310:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE40:
	.size	ADC_HPAuto_Conv_Cmd, .-ADC_HPAuto_Conv_Cmd
	.section .text$ADC_HPDisc_Mode_Cmd
	.type	.text$ADC_HPDisc_Mode_Cmd$scode_local_41, @function
	.text$ADC_HPDisc_Mode_Cmd$scode_local_41:
	.align	1
	.export	ADC_HPDisc_Mode_Cmd
	.type	ADC_HPDisc_Mode_Cmd, @function
ADC_HPDisc_Mode_Cmd:
.LFB41:
.LM311:
	.cfi_startproc
.LVL153:
.LM312:
	CMP	r1,#0
	JNZ	.L104
.LM313:
// inline asm begin
	// 1356 "../Peripherals/src/kf32f_basic_adc.c" 1
	CLR [r0], #21
	// 0 "" 2
.LM314:
// inline asm end
	JMP	lr
.L104:
.LM315:
// inline asm begin
	// 1351 "../Peripherals/src/kf32f_basic_adc.c" 1
	SET [r0], #21
	// 0 "" 2
.LM316:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE41:
	.size	ADC_HPDisc_Mode_Cmd, .-ADC_HPDisc_Mode_Cmd
	.section .text$ADC_Get_HPConversion_Data
	.type	.text$ADC_Get_HPConversion_Data$scode_local_42, @function
	.text$ADC_Get_HPConversion_Data$scode_local_42:
	.align	1
	.export	ADC_Get_HPConversion_Data
	.type	ADC_Get_HPConversion_Data, @function
ADC_Get_HPConversion_Data:
.LFB42:
.LM317:
	.cfi_startproc
.LVL154:
	ZXT.b	r1,r1
.LVL155:
.LM318:
	LD.w	r0,[r1+r0]
.LVL156:
.LM319:
	ZXT.h	r0,r0
.LVL157:
	JMP	lr
	.cfi_endproc
.LFE42:
	.size	ADC_Get_HPConversion_Data, .-ADC_Get_HPConversion_Data
	.section .text$ADC_Set_INT_Enable
	.type	.text$ADC_Set_INT_Enable$scode_local_43, @function
	.text$ADC_Set_INT_Enable$scode_local_43:
	.align	1
	.export	ADC_Set_INT_Enable
	.type	ADC_Set_INT_Enable, @function
ADC_Set_INT_Enable:
.LFB43:
.LM320:
	.cfi_startproc
.LVL158:
.LM321:
	MOV	r5,#15
	ANL	r1,r1,r5
.LVL159:
.LM322:
	MOV	r4,#1
	LSL	r5,r4,r1
.LVL160:
.LM323:
	LD.w	r4,[r0+#20]
.LM324:
	CMP	r2,#0
	JNZ	.L109
.LM325:
	NOT	r5,r5
.LVL161:
	ANL	r5,r5,r4
.LVL162:
	ST.w	[r0+#20],r5
.LM326:
	JMP	lr
.LVL163:
.L109:
.LM327:
	ORL	r5,r5,r4
.LVL164:
	ST.w	[r0+#20],r5
.LM328:
	JMP	lr
	.cfi_endproc
.LFE43:
	.size	ADC_Set_INT_Enable, .-ADC_Set_INT_Enable
	.section .text$ADC_Get_INT_Flag
	.type	.text$ADC_Get_INT_Flag$scode_local_44, @function
	.text$ADC_Get_INT_Flag$scode_local_44:
	.align	1
	.export	ADC_Get_INT_Flag
	.type	ADC_Get_INT_Flag, @function
ADC_Get_INT_Flag:
.LFB44:
.LM329:
	.cfi_startproc
.LVL165:
.LM330:
	LSR	r1,#8
.LVL166:
	MOV	r5,#15
	ANL	r5,r1,r5
.LVL167:
.LM331:
	LD.w	r4,[r0+#20]
.LM332:
	MOV	r3,#1
	LSL	r5,r3,r5
.LVL168:
.LM333:
	ANL	r5,r5,r4
.LVL169:
	MOV	r4,#0
	SUB	r4,r4,r5
	ORL	r0,r4,r5
.LVL170:
.LM334:
	LSR	r0,#31
	JMP	lr
	.cfi_endproc
.LFE44:
	.size	ADC_Get_INT_Flag, .-ADC_Get_INT_Flag
	.section .text$ADC_Clear_INT_Flag
	.type	.text$ADC_Clear_INT_Flag$scode_local_45, @function
	.text$ADC_Clear_INT_Flag$scode_local_45:
	.align	1
	.export	ADC_Clear_INT_Flag
	.type	ADC_Clear_INT_Flag, @function
ADC_Clear_INT_Flag:
.LFB45:
.LM335:
	.cfi_startproc
.LVL171:
.LM336:
	MOV	r4,#16
	LSR	r5,r1,r4
.LVL172:
.LM337:
	MOV	r4,#1
	LSL	r5,r4,r5
.LVL173:
.LM338:
	LD.w	r3,[r0+#20]
	ORL	r3,r5,r3
	ST.w	[r0+#20],r3
.LVL174:
.LM339:
	LD.w	r3,[r0+#20]
.LM340:
	LSR	r1,#8
.LVL175:
	MOV	r2,#15
	ANL	r1,r1,r2
.LVL176:
.LM341:
	LSL	r4,r4,r1
	ANL	r4,r4,r3
.LVL177:
.LM342:
	LSR	r1,r4,r1
.LVL178:
	CMP	r1,#0
	JNZ	.L112
.LM343:
	LD.w	r4,[r0+#20]
.LVL179:
	NOT	r5,r5
.LVL180:
	ANL	r5,r5,r4
.LVL181:
	ST.w	[r0+#20],r5
.LM344:
	JMP	lr
.LVL182:
.L112:
.L114:
	JMP	.L114
	.cfi_endproc
.LFE45:
	.size	ADC_Clear_INT_Flag, .-ADC_Clear_INT_Flag
	.section .text$ADC_Get_INT_Status
	.type	.text$ADC_Get_INT_Status$scode_local_46, @function
	.text$ADC_Get_INT_Status$scode_local_46:
	.align	1
	.export	ADC_Get_INT_Status
	.type	ADC_Get_INT_Status, @function
ADC_Get_INT_Status:
.LFB46:
.LM345:
	.cfi_startproc
.LVL183:
.LM346:
	LD.w	r5,[r0+#20]
.LVL184:
.LM347:
	MOV	r3,#8
	LSR	r4,r1,r3
	MOV	r0,#1
.LVL185:
	LSL	r4,r0,r4
.LM348:
	LSL	r1,r0,r1
.LVL186:
.LM349:
	ORL	r1,r4,r1
	ANL	r5,r1,r5
.LVL187:
.LM350:
	CMP	r1,r5
	JZ	.L116
	MOV	r0,#0
.L116:
.LM351:
	JMP	lr
	.cfi_endproc
.LFE46:
	.size	ADC_Get_INT_Status, .-ADC_Get_INT_Status
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_47, @function
	.debug_info$scode_local_47:
.Ldebug_info0:
	.long	0x13f0
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF139
	.byte	0x1
	.long	.LASF140
	.long	.LASF141
	.long	.Ldebug_ranges0+0x90
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
	.uleb128 0x4
	.long	.LASF5
	.byte	0x3
	.byte	0x16
	.long	0x50
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x3
	.byte	0x18
	.long	0x37
	.uleb128 0x4
	.long	.LASF7
	.byte	0x3
	.byte	0x1a
	.long	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x25
	.long	0x9e
	.uleb128 0x6
	.long	.LASF11
	.sleb128 0
	.uleb128 0x6
	.long	.LASF12
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x28
	.long	0x89
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x2d
	.long	0xbe
	.uleb128 0x6
	.long	.LASF14
	.sleb128 0
	.uleb128 0x7
	.string	"SET"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x30
	.long	0xa9
	.uleb128 0x4
	.long	.LASF16
	.byte	0x2
	.byte	0x30
	.long	0xa9
	.uleb128 0x8
	.long	0xd9
	.uleb128 0x9
	.long	0x69
	.uleb128 0xa
	.long	0x69
	.long	0xee
	.uleb128 0xb
	.long	0xee
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0xc
	.long	.LASF38
	.byte	0x58
	.byte	0x2
	.short	0xd46
	.long	0x214
	.uleb128 0xd
	.long	.LASF18
	.byte	0x2
	.short	0xd47
	.long	0xd9
	.byte	0
	.uleb128 0xd
	.long	.LASF19
	.byte	0x2
	.short	0xd48
	.long	0xd9
	.byte	0x4
	.uleb128 0xd
	.long	.LASF20
	.byte	0x2
	.short	0xd49
	.long	0xd9
	.byte	0x8
	.uleb128 0xd
	.long	.LASF21
	.byte	0x2
	.short	0xd4a
	.long	0xd9
	.byte	0xc
	.uleb128 0xd
	.long	.LASF22
	.byte	0x2
	.short	0xd4b
	.long	0xd9
	.byte	0x10
	.uleb128 0xd
	.long	.LASF23
	.byte	0x2
	.short	0xd4c
	.long	0xd9
	.byte	0x14
	.uleb128 0xe
	.string	"WDH"
	.byte	0x2
	.short	0xd4d
	.long	0xd9
	.byte	0x18
	.uleb128 0xe
	.string	"WDL"
	.byte	0x2
	.short	0xd4e
	.long	0xd9
	.byte	0x1c
	.uleb128 0xd
	.long	.LASF24
	.byte	0x2
	.short	0xd4f
	.long	0xd4
	.byte	0x20
	.uleb128 0xd
	.long	.LASF25
	.byte	0x2
	.short	0xd50
	.long	0xd4
	.byte	0x24
	.uleb128 0xd
	.long	.LASF26
	.byte	0x2
	.short	0xd51
	.long	0xd4
	.byte	0x28
	.uleb128 0xd
	.long	.LASF27
	.byte	0x2
	.short	0xd52
	.long	0xd4
	.byte	0x2c
	.uleb128 0xd
	.long	.LASF28
	.byte	0x2
	.short	0xd53
	.long	0xd4
	.byte	0x30
	.uleb128 0xd
	.long	.LASF29
	.byte	0x2
	.short	0xd54
	.long	0xd9
	.byte	0x34
	.uleb128 0xd
	.long	.LASF30
	.byte	0x2
	.short	0xd55
	.long	0xd9
	.byte	0x38
	.uleb128 0xd
	.long	.LASF31
	.byte	0x2
	.short	0xd56
	.long	0xd9
	.byte	0x3c
	.uleb128 0xd
	.long	.LASF32
	.byte	0x2
	.short	0xd57
	.long	0xd9
	.byte	0x40
	.uleb128 0xd
	.long	.LASF33
	.byte	0x2
	.short	0xd58
	.long	0xd9
	.byte	0x44
	.uleb128 0xd
	.long	.LASF34
	.byte	0x2
	.short	0xd59
	.long	0xde
	.byte	0x48
	.uleb128 0xd
	.long	.LASF35
	.byte	0x2
	.short	0xd5a
	.long	0xd9
	.byte	0x50
	.uleb128 0xd
	.long	.LASF36
	.byte	0x2
	.short	0xd5b
	.long	0xd9
	.byte	0x54
	.byte	0
	.uleb128 0xf
	.long	.LASF37
	.byte	0x2
	.short	0xd5c
	.long	0xf5
	.uleb128 0xc
	.long	.LASF39
	.byte	0x4
	.byte	0x2
	.short	0xd5e
	.long	0x23b
	.uleb128 0xd
	.long	.LASF36
	.byte	0x2
	.short	0xd60
	.long	0xd9
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF40
	.byte	0x2
	.short	0xd61
	.long	0x220
	.uleb128 0x10
	.byte	0x30
	.byte	0x4
	.byte	0x15
	.long	0x2e0
	.uleb128 0x11
	.long	.LASF41
	.byte	0x4
	.byte	0x17
	.long	0x69
	.byte	0
	.uleb128 0x11
	.long	.LASF42
	.byte	0x4
	.byte	0x19
	.long	0x69
	.byte	0x4
	.uleb128 0x11
	.long	.LASF43
	.byte	0x4
	.byte	0x1b
	.long	0x9e
	.byte	0x8
	.uleb128 0x11
	.long	.LASF44
	.byte	0x4
	.byte	0x1d
	.long	0x69
	.byte	0xc
	.uleb128 0x11
	.long	.LASF45
	.byte	0x4
	.byte	0x1f
	.long	0x69
	.byte	0x10
	.uleb128 0x11
	.long	.LASF46
	.byte	0x4
	.byte	0x21
	.long	0x9e
	.byte	0x14
	.uleb128 0x11
	.long	.LASF47
	.byte	0x4
	.byte	0x23
	.long	0x69
	.byte	0x18
	.uleb128 0x11
	.long	.LASF48
	.byte	0x4
	.byte	0x25
	.long	0x9e
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF49
	.byte	0x4
	.byte	0x27
	.long	0x69
	.byte	0x20
	.uleb128 0x11
	.long	.LASF50
	.byte	0x4
	.byte	0x29
	.long	0x69
	.byte	0x24
	.uleb128 0x11
	.long	.LASF51
	.byte	0x4
	.byte	0x2b
	.long	0x69
	.byte	0x28
	.uleb128 0x11
	.long	.LASF52
	.byte	0x4
	.byte	0x2d
	.long	0x69
	.byte	0x2c
	.byte	0
	.uleb128 0x4
	.long	.LASF53
	.byte	0x4
	.byte	0x2f
	.long	0x247
	.uleb128 0x10
	.byte	0x8
	.byte	0x4
	.byte	0x34
	.long	0x30c
	.uleb128 0x11
	.long	.LASF54
	.byte	0x4
	.byte	0x36
	.long	0x69
	.byte	0
	.uleb128 0x11
	.long	.LASF55
	.byte	0x4
	.byte	0x38
	.long	0x69
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF56
	.byte	0x4
	.byte	0x3a
	.long	0x2eb
	.uleb128 0x10
	.byte	0x18
	.byte	0x4
	.byte	0x3f
	.long	0x368
	.uleb128 0x11
	.long	.LASF57
	.byte	0x4
	.byte	0x41
	.long	0x69
	.byte	0
	.uleb128 0x11
	.long	.LASF58
	.byte	0x4
	.byte	0x43
	.long	0x9e
	.byte	0x4
	.uleb128 0x11
	.long	.LASF59
	.byte	0x4
	.byte	0x45
	.long	0x9e
	.byte	0x8
	.uleb128 0x11
	.long	.LASF60
	.byte	0x4
	.byte	0x47
	.long	0x69
	.byte	0xc
	.uleb128 0x11
	.long	.LASF61
	.byte	0x4
	.byte	0x49
	.long	0x69
	.byte	0x10
	.uleb128 0x11
	.long	.LASF62
	.byte	0x4
	.byte	0x4b
	.long	0x69
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF63
	.byte	0x4
	.byte	0x4d
	.long	0x317
	.uleb128 0x12
	.long	.LASF142
	.byte	0x2
	.short	0x3416
	.byte	0x1
	.long	0x69
	.byte	0x3
	.long	0x3aa
	.uleb128 0x13
	.long	.LASF64
	.byte	0x2
	.short	0x3416
	.long	0x69
	.uleb128 0x13
	.long	.LASF65
	.byte	0x2
	.short	0x3416
	.long	0x69
	.uleb128 0x13
	.long	.LASF66
	.byte	0x2
	.short	0x3416
	.long	0x69
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF67
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x452
	.uleb128 0x15
	.long	.LASF69
	.byte	0x1
	.byte	0x3a
	.long	0x452
	.long	.LLST0
	.uleb128 0x16
	.long	.LVL4
	.long	0x3e7
	.uleb128 0x17
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x1000
	.byte	0
	.uleb128 0x16
	.long	.LVL5
	.long	0x3fd
	.uleb128 0x17
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x1000
	.byte	0
	.uleb128 0x16
	.long	.LVL6
	.long	0x413
	.uleb128 0x17
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x1000
	.byte	0
	.uleb128 0x16
	.long	.LVL9
	.long	0x429
	.uleb128 0x17
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x800
	.byte	0
	.uleb128 0x16
	.long	.LVL10
	.long	0x43f
	.uleb128 0x17
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x800
	.byte	0
	.uleb128 0x18
	.long	.LVL11
	.uleb128 0x17
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x800
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.long	0x214
	.uleb128 0x14
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x583
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x1
	.byte	0x60
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.long	.LASF70
	.byte	0x1
	.byte	0x60
	.long	0x583
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x1
	.byte	0x62
	.long	0x69
	.long	.LLST1
	.uleb128 0x1c
	.long	0x373
	.long	.LBB52
	.long	.LBE52
	.byte	0x1
	.byte	0x7f
	.long	0x4da
	.uleb128 0x1d
	.long	0x39d
	.byte	0x16
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x41
	.byte	0x24
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 16
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.uleb128 0x1e
	.long	0x391
	.sleb128 -395023
	.uleb128 0x1f
	.long	0x385
	.long	.LLST2
	.byte	0
	.uleb128 0x1c
	.long	0x373
	.long	.LBB54
	.long	.LBE54
	.byte	0x1
	.byte	0x8c
	.long	0x51f
	.uleb128 0x1d
	.long	0x39d
	.byte	0x18
	.byte	0x71
	.sleb128 20
	.byte	0x6
	.byte	0x3b
	.byte	0x24
	.byte	0x71
	.sleb128 28
	.byte	0x6
	.byte	0x4b
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 32
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 24
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 36
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.uleb128 0x1e
	.long	0x391
	.sleb128 -268308465
	.uleb128 0x1f
	.long	0x385
	.long	.LLST3
	.byte	0
	.uleb128 0x1c
	.long	0x373
	.long	.LBB56
	.long	.LBE56
	.byte	0x1
	.byte	0x91
	.long	0x551
	.uleb128 0x1d
	.long	0x39d
	.byte	0x8
	.byte	0x71
	.sleb128 40
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.uleb128 0x20
	.long	0x391
	.long	0xfffffff
	.uleb128 0x1d
	.long	0x385
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x21
	.long	0x373
	.long	.LBB58
	.long	.LBE58
	.byte	0x1
	.byte	0x98
	.uleb128 0x1d
	.long	0x39d
	.byte	0x8
	.byte	0x71
	.sleb128 44
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.uleb128 0x1e
	.long	0x391
	.sleb128 -805306369
	.uleb128 0x1f
	.long	0x385
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.long	0x2e0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5af
	.uleb128 0x1a
	.long	.LASF70
	.byte	0x1
	.byte	0xa3
	.long	0x583
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x625
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.byte	0xd0
	.long	0x625
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.long	.LASF74
	.byte	0x1
	.byte	0xd2
	.long	0x69
	.byte	0xe
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x70
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.uleb128 0x23
	.long	0x373
	.long	.LBB60
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xde
	.uleb128 0x1d
	.long	0x39d
	.byte	0xe
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x70
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.uleb128 0x1e
	.long	0x391
	.sleb128 -4128832
	.uleb128 0x1f
	.long	0x385
	.long	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.long	0x30c
	.uleb128 0x14
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x651
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.byte	0xea
	.long	0x625
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.byte	0xfa
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x684
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x1
	.byte	0xfa
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.byte	0xfa
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF78
	.byte	0x1
	.short	0x11a
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x77f
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x11a
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF79
	.byte	0x1
	.short	0x11b
	.long	0x77f
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.short	0x11d
	.long	0x69
	.long	.LLST6
	.uleb128 0x27
	.long	0x373
	.long	.LBB64
	.long	.LBE64
	.byte	0x1
	.short	0x12f
	.long	0x6f9
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST7
	.uleb128 0x20
	.long	0x391
	.long	0x1fffffff
	.uleb128 0x1f
	.long	0x385
	.long	.LLST8
	.byte	0
	.uleb128 0x27
	.long	0x373
	.long	.LBB66
	.long	.LBE66
	.byte	0x1
	.short	0x136
	.long	0x728
	.uleb128 0x1d
	.long	0x39d
	.byte	0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x1e
	.long	0x391
	.sleb128 -66060289
	.uleb128 0x1f
	.long	0x385
	.long	.LLST9
	.byte	0
	.uleb128 0x27
	.long	0x373
	.long	.LBB68
	.long	.LBE68
	.byte	0x1
	.short	0x13d
	.long	0x755
	.uleb128 0x1d
	.long	0x39d
	.byte	0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x1e
	.long	0x391
	.sleb128 -4096
	.uleb128 0x1f
	.long	0x385
	.long	.LLST10
	.byte	0
	.uleb128 0x28
	.long	0x373
	.long	.LBB70
	.long	.LBE70
	.byte	0x1
	.short	0x144
	.uleb128 0x1d
	.long	0x39d
	.byte	0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x1e
	.long	0x391
	.sleb128 -4096
	.uleb128 0x1f
	.long	0x385
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.long	0x368
	.uleb128 0x24
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.short	0x14f
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7ad
	.uleb128 0x25
	.long	.LASF79
	.byte	0x1
	.short	0x14f
	.long	0x77f
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.short	0x172
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7e3
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x172
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x172
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.short	0x18c
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x819
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x18c
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x18c
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.short	0x1a6
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x84f
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x1a6
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x1a6
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.short	0x1c0
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x885
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x1c0
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x1c0
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.short	0x1da
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8bb
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x1da
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x1da
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.short	0x1fa
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x91b
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x1fa
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF87
	.byte	0x1
	.short	0x1fa
	.long	0x69
	.long	.LLST12
	.uleb128 0x28
	.long	0x373
	.long	.LBB72
	.long	.LBE72
	.byte	0x1
	.short	0x201
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST13
	.uleb128 0x1e
	.long	0x391
	.sleb128 -1793
	.uleb128 0x1d
	.long	0x385
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.short	0x20f
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x97c
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x20f
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF89
	.byte	0x1
	.short	0x20f
	.long	0x69
	.long	.LLST14
	.uleb128 0x28
	.long	0x373
	.long	.LBB74
	.long	.LBE74
	.byte	0x1
	.short	0x216
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST15
	.uleb128 0x1e
	.long	0x391
	.sleb128 -9
	.uleb128 0x1f
	.long	0x385
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.short	0x225
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9dd
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x225
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF91
	.byte	0x1
	.short	0x225
	.long	0x69
	.long	.LLST17
	.uleb128 0x28
	.long	0x373
	.long	.LBB76
	.long	.LBE76
	.byte	0x1
	.short	0x22c
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST18
	.uleb128 0x1e
	.long	0x391
	.sleb128 -7
	.uleb128 0x1f
	.long	0x385
	.long	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF92
	.byte	0x1
	.short	0x238
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa13
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x238
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x238
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF93
	.byte	0x1
	.short	0x256
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa59
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x256
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF94
	.byte	0x1
	.short	0x257
	.long	0x69
	.long	.LLST20
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x257
	.long	0x9e
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.short	0x277
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xaad
	.uleb128 0x29
	.long	.LASF96
	.byte	0x1
	.short	0x277
	.long	0x69
	.long	.LLST21
	.uleb128 0x28
	.long	0x373
	.long	.LBB78
	.long	.LBE78
	.byte	0x1
	.short	0x27e
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST22
	.uleb128 0x20
	.long	0x391
	.long	0xfffffff
	.uleb128 0x1d
	.long	0x385
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.short	0x28e
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb0e
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x28e
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF98
	.byte	0x1
	.short	0x28e
	.long	0x69
	.long	.LLST23
	.uleb128 0x28
	.long	0x373
	.long	.LBB80
	.long	.LBE80
	.byte	0x1
	.short	0x295
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST24
	.uleb128 0x1e
	.long	0x391
	.sleb128 -917505
	.uleb128 0x1d
	.long	0x385
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.short	0x2a1
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb70
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x2a1
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF100
	.byte	0x1
	.short	0x2a1
	.long	0x69
	.long	.LLST25
	.uleb128 0x28
	.long	0x373
	.long	.LBB82
	.long	.LBE82
	.byte	0x1
	.short	0x2a8
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST26
	.uleb128 0x1e
	.long	0x391
	.sleb128 -66060289
	.uleb128 0x1d
	.long	0x385
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF101
	.byte	0x1
	.short	0x2bb
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xba6
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x2bb
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x2bb
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF102
	.byte	0x1
	.short	0x2d5
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbde
	.uleb128 0x29
	.long	.LASF69
	.byte	0x1
	.short	0x2d5
	.long	0x452
	.long	.LLST27
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x2d5
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF103
	.byte	0x1
	.short	0x335
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc3e
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x335
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF104
	.byte	0x1
	.short	0x336
	.long	0x69
	.long	.LLST28
	.uleb128 0x28
	.long	0x373
	.long	.LBB84
	.long	.LBE84
	.byte	0x1
	.short	0x33d
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST29
	.uleb128 0x1e
	.long	0x391
	.sleb128 -2033
	.uleb128 0x1d
	.long	0x385
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.short	0x34b
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd60
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x34b
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF100
	.byte	0x1
	.short	0x34b
	.long	0x69
	.long	.LLST30
	.uleb128 0x29
	.long	.LASF106
	.byte	0x1
	.short	0x34b
	.long	0x69
	.long	.LLST31
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.short	0x34d
	.long	0x69
	.long	.LLST32
	.uleb128 0x26
	.long	.LASF107
	.byte	0x1
	.short	0x34e
	.long	0x69
	.long	.LLST33
	.uleb128 0x2a
	.long	0x373
	.long	.LBB86
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.short	0x379
	.long	0xcd5
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST34
	.uleb128 0x1f
	.long	0x391
	.long	.LLST35
	.uleb128 0x1f
	.long	0x385
	.long	.LLST36
	.byte	0
	.uleb128 0x2a
	.long	0x373
	.long	.LBB90
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.short	0x365
	.long	0xd05
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST37
	.uleb128 0x1f
	.long	0x391
	.long	.LLST38
	.uleb128 0x1f
	.long	0x385
	.long	.LLST39
	.byte	0
	.uleb128 0x2a
	.long	0x373
	.long	.LBB94
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.short	0x35b
	.long	0xd35
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST40
	.uleb128 0x1f
	.long	0x391
	.long	.LLST41
	.uleb128 0x1f
	.long	0x385
	.long	.LLST42
	.byte	0
	.uleb128 0x2b
	.long	0x373
	.long	.LBB98
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.short	0x36f
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST43
	.uleb128 0x1f
	.long	0x391
	.long	.LLST44
	.uleb128 0x1d
	.long	0x385
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF108
	.byte	0x1
	.short	0x386
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xdd2
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x386
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF109
	.byte	0x1
	.short	0x386
	.long	0x69
	.long	.LLST45
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.short	0x388
	.long	0x69
	.long	.LLST46
	.uleb128 0x28
	.long	0x373
	.long	.LBB102
	.long	.LBE102
	.byte	0x1
	.short	0x391
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST47
	.uleb128 0x20
	.long	0x391
	.long	0xfffffff
	.uleb128 0x1d
	.long	0x385
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF110
	.byte	0x1
	.short	0x3a4
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe26
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x3a4
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF104
	.byte	0x1
	.short	0x3a5
	.long	0x69
	.long	.LLST48
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x3a5
	.long	0x9e
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	.LASF74
	.byte	0x1
	.short	0x3a7
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF111
	.byte	0x1
	.short	0x3c3
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe50
	.uleb128 0x29
	.long	.LASF69
	.byte	0x1
	.short	0x3c3
	.long	0x452
	.long	.LLST49
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF112
	.byte	0x1
	.short	0x3d3
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe86
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x3d3
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x3d3
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF113
	.byte	0x1
	.short	0x3ec
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xef9
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x3ec
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF114
	.byte	0x1
	.short	0x3ec
	.long	0x45
	.long	.LLST50
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.short	0x3ee
	.long	0x69
	.long	.LLST51
	.uleb128 0x28
	.long	0x373
	.long	.LBB104
	.long	.LBE104
	.byte	0x1
	.short	0x3f6
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST52
	.uleb128 0x1e
	.long	0x391
	.sleb128 -469762049
	.uleb128 0x1d
	.long	0x385
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF115
	.byte	0x1
	.short	0x402
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf2f
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x402
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x402
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF128
	.byte	0x1
	.short	0x41a
	.byte	0x1
	.long	0x5e
	.long	.LFB32
	.long	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf6d
	.uleb128 0x29
	.long	.LASF69
	.byte	0x1
	.short	0x41a
	.long	0x452
	.long	.LLST53
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.short	0x41c
	.long	0x69
	.long	.LLST54
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF116
	.byte	0x1
	.short	0x435
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xfa3
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x435
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x435
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF117
	.byte	0x1
	.short	0x44f
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xfdb
	.uleb128 0x29
	.long	.LASF69
	.byte	0x1
	.short	0x44f
	.long	0x452
	.long	.LLST55
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x44f
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.short	0x46b
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x106d
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x46b
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF100
	.byte	0x1
	.short	0x46c
	.long	0x69
	.long	.LLST56
	.uleb128 0x29
	.long	.LASF106
	.byte	0x1
	.short	0x46c
	.long	0x69
	.long	.LLST57
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.short	0x46e
	.long	0x69
	.long	.LLST58
	.uleb128 0x26
	.long	.LASF107
	.byte	0x1
	.short	0x46f
	.long	0x69
	.long	.LLST59
	.uleb128 0x2b
	.long	0x373
	.long	.LBB106
	.long	.Ldebug_ranges0+0x78
	.byte	0x1
	.short	0x47b
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST60
	.uleb128 0x1f
	.long	0x391
	.long	.LLST61
	.uleb128 0x1d
	.long	0x385
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF119
	.byte	0x1
	.short	0x487
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x10e2
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x487
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF109
	.byte	0x1
	.short	0x487
	.long	0x69
	.long	.LLST62
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.short	0x489
	.long	0x69
	.long	.LLST63
	.uleb128 0x28
	.long	0x373
	.long	.LBB110
	.long	.LBE110
	.byte	0x1
	.short	0x491
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST64
	.uleb128 0x1e
	.long	0x391
	.sleb128 -805306369
	.uleb128 0x1f
	.long	0x385
	.long	.LLST65
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF120
	.byte	0x1
	.short	0x4a2
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1139
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x4a2
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF121
	.byte	0x1
	.short	0x4a3
	.long	0x69
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.long	.LASF122
	.byte	0x1
	.short	0x4a3
	.long	0x69
	.byte	0x1
	.byte	0x52
	.uleb128 0x2c
	.long	.LASF74
	.byte	0x1
	.short	0x4a5
	.long	0x69
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF123
	.byte	0x1
	.short	0x502
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x119b
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x502
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF124
	.byte	0x1
	.short	0x503
	.long	0x69
	.long	.LLST66
	.uleb128 0x28
	.long	0x373
	.long	.LBB112
	.long	.LBE112
	.byte	0x1
	.short	0x50a
	.uleb128 0x1f
	.long	0x39d
	.long	.LLST67
	.uleb128 0x1e
	.long	0x391
	.sleb128 -133169153
	.uleb128 0x1d
	.long	0x385
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF125
	.byte	0x1
	.short	0x515
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x11c5
	.uleb128 0x29
	.long	.LASF69
	.byte	0x1
	.short	0x515
	.long	0x452
	.long	.LLST68
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF126
	.byte	0x1
	.short	0x525
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x11fb
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x525
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x525
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF127
	.byte	0x1
	.short	0x53e
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1231
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x53e
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x53e
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF129
	.byte	0x1
	.short	0x55b
	.byte	0x1
	.long	0x5e
	.long	.LFB42
	.long	.LFE42
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x127d
	.uleb128 0x29
	.long	.LASF69
	.byte	0x1
	.short	0x55b
	.long	0x452
	.long	.LLST69
	.uleb128 0x25
	.long	.LASF130
	.byte	0x1
	.short	0x55b
	.long	0x45
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.short	0x55d
	.long	0x69
	.long	.LLST70
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF131
	.byte	0x1
	.short	0x580
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x12d3
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x580
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF132
	.byte	0x1
	.short	0x581
	.long	0x69
	.long	.LLST71
	.uleb128 0x25
	.long	.LASF77
	.byte	0x1
	.short	0x581
	.long	0x9e
	.byte	0x1
	.byte	0x52
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.short	0x583
	.long	0x69
	.long	.LLST72
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF133
	.byte	0x1
	.short	0x5a5
	.byte	0x1
	.long	0xbe
	.long	.LFB44
	.long	.LFE44
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1321
	.uleb128 0x29
	.long	.LASF69
	.byte	0x1
	.short	0x5a5
	.long	0x452
	.long	.LLST73
	.uleb128 0x29
	.long	.LASF132
	.byte	0x1
	.short	0x5a5
	.long	0x69
	.long	.LLST74
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.short	0x5a7
	.long	0x69
	.long	.LLST75
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF134
	.byte	0x1
	.short	0x5c7
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1389
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.short	0x5c7
	.long	0x452
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LASF132
	.byte	0x1
	.short	0x5c7
	.long	0x69
	.long	.LLST76
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.short	0x5c9
	.long	0x69
	.long	.LLST77
	.uleb128 0x26
	.long	.LASF135
	.byte	0x1
	.short	0x5ca
	.long	0x69
	.long	.LLST78
	.uleb128 0x26
	.long	.LASF136
	.byte	0x1
	.short	0x5cb
	.long	0x69
	.long	.LLST79
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF137
	.byte	0x1
	.short	0x5e9
	.byte	0x1
	.long	0xc9
	.long	.LFB46
	.long	.LFE46
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x29
	.long	.LASF69
	.byte	0x1
	.short	0x5e9
	.long	0x452
	.long	.LLST80
	.uleb128 0x29
	.long	.LASF132
	.byte	0x1
	.short	0x5e9
	.long	0x69
	.long	.LLST81
	.uleb128 0x26
	.long	.LASF107
	.byte	0x1
	.short	0x5eb
	.long	0x69
	.long	.LLST82
	.uleb128 0x26
	.long	.LASF138
	.byte	0x1
	.short	0x5ec
	.long	0x69
	.long	.LLST83
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.short	0x5ed
	.long	0x69
	.long	.LLST84
	.byte	0
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_48, @function
	.debug_abbrev$scode_local_48:
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_49, @function
	.debug_loc$scode_local_49:
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
	.long	.LVL14
	.short	0x16
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x41
	.byte	0x24
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 16
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL14
	.long	.LVL16
	.short	0x18
	.byte	0x71
	.sleb128 20
	.byte	0x6
	.byte	0x3b
	.byte	0x24
	.byte	0x71
	.sleb128 28
	.byte	0x6
	.byte	0x4b
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 32
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 24
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 36
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL16
	.long	.LVL18
	.short	0x8
	.byte	0x71
	.sleb128 40
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.long	.LVL18
	.long	.LFE2
	.short	0x8
	.byte	0x71
	.sleb128 44
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL13
	.long	.LVL15
	.short	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL15
	.long	.LVL17
	.short	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST4:
	.long	.LVL19
	.long	.LVL20
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST5:
	.long	.LVL23
	.long	.LVL24
	.short	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST6:
	.long	.LVL27
	.long	.LVL29
	.short	0x10
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x4e
	.byte	0x24
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x4d
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.short	0x1
	.byte	0x54
	.long	.LVL30
	.long	.LVL33
	.short	0x2
	.byte	0x71
	.sleb128 12
	.long	.LVL33
	.long	.LVL36
	.short	0x2
	.byte	0x71
	.sleb128 16
	.long	.LVL36
	.long	.LFE7
	.short	0x2
	.byte	0x71
	.sleb128 20
	.long	0
	.long	0
.LLST7:
	.long	.LVL28
	.long	.LVL29
	.short	0x10
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x4e
	.byte	0x24
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x4d
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL29
	.long	.LVL31
	.short	0x1
	.byte	0x54
	.long	.LVL31
	.long	.LFE7
	.short	0x10
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x4e
	.byte	0x24
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x4d
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL28
	.long	.LVL32
	.short	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST9:
	.long	.LVL31
	.long	.LVL34
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST10:
	.long	.LVL34
	.long	.LVL35
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST11:
	.long	.LVL37
	.long	.LVL38
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST12:
	.long	.LVL45
	.long	.LVL47
	.short	0x1
	.byte	0x51
	.long	.LVL47
	.long	.LFE14
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL46
	.long	.LVL47
	.short	0x1
	.byte	0x51
	.long	.LVL47
	.long	.LFE14
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL48
	.long	.LVL51
	.short	0x1
	.byte	0x51
	.long	.LVL51
	.long	.LFE15
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL49
	.long	.LVL51
	.short	0x1
	.byte	0x51
	.long	.LVL51
	.long	.LFE15
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL49
	.long	.LVL50
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST17:
	.long	.LVL52
	.long	.LVL55
	.short	0x1
	.byte	0x51
	.long	.LVL55
	.long	.LFE16
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL53
	.long	.LVL55
	.short	0x1
	.byte	0x51
	.long	.LVL55
	.long	.LFE16
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL53
	.long	.LVL54
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST20:
	.long	.LVL57
	.long	.LVL58
	.short	0x1
	.byte	0x51
	.long	.LVL58
	.long	.LVL59
	.short	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL59
	.long	.LVL60
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL60
	.long	.LVL61
	.short	0x1
	.byte	0x51
	.long	.LVL61
	.long	.LFE18
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL62
	.long	.LVL64
	.short	0x1
	.byte	0x50
	.long	.LVL64
	.long	.LFE19
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL63
	.long	.LVL64
	.short	0x1
	.byte	0x50
	.long	.LVL64
	.long	.LFE19
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL65
	.long	.LVL67
	.short	0x1
	.byte	0x51
	.long	.LVL67
	.long	.LFE20
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL66
	.long	.LVL67
	.short	0x1
	.byte	0x51
	.long	.LVL67
	.long	.LFE20
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL68
	.long	.LVL70
	.short	0x1
	.byte	0x51
	.long	.LVL70
	.long	.LFE21
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL69
	.long	.LVL70
	.short	0x1
	.byte	0x51
	.long	.LVL70
	.long	.LFE21
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL72
	.long	.LVL73
	.short	0x1
	.byte	0x50
	.long	.LVL73
	.long	.LFE23
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL74
	.long	.LVL76
	.short	0x1
	.byte	0x51
	.long	.LVL76
	.long	.LFE24
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL75
	.long	.LVL76
	.short	0x1
	.byte	0x51
	.long	.LVL76
	.long	.LFE24
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL77
	.long	.LVL84
	.short	0x1
	.byte	0x51
	.long	.LVL84
	.long	.LVL86
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL86
	.long	.LVL93
	.short	0x1
	.byte	0x51
	.long	.LVL93
	.long	.LVL95
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL95
	.long	.LVL102
	.short	0x1
	.byte	0x51
	.long	.LVL102
	.long	.LVL104
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL104
	.long	.LVL111
	.short	0x1
	.byte	0x51
	.long	.LVL111
	.long	.LFE25
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL77
	.long	.LVL78
	.short	0x1
	.byte	0x52
	.long	.LVL78
	.long	.LVL86
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL86
	.long	.LVL87
	.short	0x1
	.byte	0x52
	.long	.LVL87
	.long	.LVL95
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL95
	.long	.LVL96
	.short	0x1
	.byte	0x52
	.long	.LVL96
	.long	.LVL104
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL104
	.long	.LVL105
	.short	0x1
	.byte	0x52
	.long	.LVL105
	.long	.LFE25
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL77
	.long	.LVL79
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL79
	.long	.LVL84
	.short	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL84
	.long	.LVL86
	.short	0x1
	.byte	0x51
	.long	.LVL86
	.long	.LVL88
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL88
	.long	.LVL93
	.short	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL93
	.long	.LVL95
	.short	0x1
	.byte	0x51
	.long	.LVL95
	.long	.LVL97
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL97
	.long	.LVL102
	.short	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL102
	.long	.LVL104
	.short	0x1
	.byte	0x51
	.long	.LVL104
	.long	.LVL106
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL106
	.long	.LVL111
	.short	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL111
	.long	.LFE25
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST33:
	.long	.LVL77
	.long	.LVL79
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL79
	.long	.LVL81
	.short	0x6
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL81
	.long	.LVL82
	.short	0x1
	.byte	0x55
	.long	.LVL82
	.long	.LVL83
	.short	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL83
	.long	.LVL85
	.short	0x6
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL85
	.long	.LVL86
	.short	0xc
	.byte	0x8
	.byte	0x3f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x36
	.byte	0x1e
	.byte	0x8
	.byte	0x60
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.long	.LVL86
	.long	.LVL88
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL88
	.long	.LVL90
	.short	0x6
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL90
	.long	.LVL91
	.short	0x1
	.byte	0x55
	.long	.LVL91
	.long	.LVL92
	.short	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL92
	.long	.LVL94
	.short	0x6
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL94
	.long	.LVL95
	.short	0xc
	.byte	0x8
	.byte	0x3f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x36
	.byte	0x1e
	.byte	0x8
	.byte	0x24
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.long	.LVL95
	.long	.LVL97
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL97
	.long	.LVL99
	.short	0x6
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL99
	.long	.LVL100
	.short	0x1
	.byte	0x55
	.long	.LVL100
	.long	.LVL101
	.short	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL101
	.long	.LVL103
	.short	0x6
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL103
	.long	.LVL104
	.short	0xb
	.byte	0x8
	.byte	0x3f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x36
	.byte	0x1e
	.byte	0x36
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.long	.LVL104
	.long	.LVL106
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL106
	.long	.LVL108
	.short	0x6
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL108
	.long	.LVL109
	.short	0x1
	.byte	0x55
	.long	.LVL109
	.long	.LVL110
	.short	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL110
	.long	.LVL112
	.short	0x6
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL112
	.long	.LFE25
	.short	0xc
	.byte	0x8
	.byte	0x3f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x36
	.byte	0x1e
	.byte	0x8
	.byte	0x42
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL80
	.long	.LVL84
	.short	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL84
	.long	.LVL86
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST35:
	.long	.LVL80
	.long	.LVL82
	.short	0x7
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	.LVL82
	.long	.LVL83
	.short	0x1
	.byte	0x55
	.long	.LVL83
	.long	.LVL85
	.short	0x7
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	.LVL85
	.long	.LVL86
	.short	0xd
	.byte	0x8
	.byte	0x3f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x36
	.byte	0x1e
	.byte	0x8
	.byte	0x60
	.byte	0x1c
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL80
	.long	.LVL86
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST37:
	.long	.LVL89
	.long	.LVL93
	.short	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL93
	.long	.LVL95
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST38:
	.long	.LVL89
	.long	.LVL91
	.short	0x7
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	.LVL91
	.long	.LVL92
	.short	0x1
	.byte	0x55
	.long	.LVL92
	.long	.LVL94
	.short	0x7
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	.LVL94
	.long	.LVL95
	.short	0xd
	.byte	0x8
	.byte	0x3f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x36
	.byte	0x1e
	.byte	0x8
	.byte	0x24
	.byte	0x1c
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL89
	.long	.LVL95
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST40:
	.long	.LVL98
	.long	.LVL102
	.short	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL102
	.long	.LVL104
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST41:
	.long	.LVL98
	.long	.LVL100
	.short	0x7
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	.LVL100
	.long	.LVL101
	.short	0x1
	.byte	0x55
	.long	.LVL101
	.long	.LVL103
	.short	0x7
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	.LVL103
	.long	.LVL104
	.short	0xc
	.byte	0x8
	.byte	0x3f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x36
	.byte	0x1e
	.byte	0x36
	.byte	0x1c
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL98
	.long	.LVL104
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST43:
	.long	.LVL107
	.long	.LVL111
	.short	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL111
	.long	.LFE25
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST44:
	.long	.LVL107
	.long	.LVL109
	.short	0x7
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	.LVL109
	.long	.LVL110
	.short	0x1
	.byte	0x55
	.long	.LVL110
	.long	.LVL112
	.short	0x7
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	.LVL112
	.long	.LFE25
	.short	0xd
	.byte	0x8
	.byte	0x3f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x36
	.byte	0x1e
	.byte	0x8
	.byte	0x42
	.byte	0x1c
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL113
	.long	.LVL115
	.short	0x1
	.byte	0x51
	.long	.LVL115
	.long	.LFE26
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL113
	.long	.LVL115
	.short	0x5
	.byte	0x71
	.sleb128 -1
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.long	.LVL115
	.long	.LFE26
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x31
	.byte	0x1c
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL114
	.long	.LVL115
	.short	0x5
	.byte	0x71
	.sleb128 -1
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.long	.LVL115
	.long	.LFE26
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x31
	.byte	0x1c
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL116
	.long	.LVL117
	.short	0x1
	.byte	0x51
	.long	.LVL117
	.long	.LFE27
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL118
	.long	.LVL119
	.short	0x1
	.byte	0x50
	.long	.LVL119
	.long	.LFE28
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL121
	.long	.LVL124
	.short	0x1
	.byte	0x51
	.long	.LVL124
	.long	.LVL125
	.short	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.long	.LVL125
	.long	.LFE30
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL122
	.long	.LVL124
	.short	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
	.long	.LVL124
	.long	.LVL125
	.short	0xa
	.byte	0x71
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
	.long	.LVL125
	.long	.LFE30
	.short	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL123
	.long	.LVL124
	.short	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
	.long	.LVL124
	.long	.LVL125
	.short	0xa
	.byte	0x71
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
	.long	.LVL125
	.long	.LFE30
	.short	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL127
	.long	.LVL128
	.short	0x1
	.byte	0x50
	.long	.LVL128
	.long	.LFE32
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST54:
	.long	.LVL127
	.long	.LVL128
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL128
	.long	.LVL129
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST55:
	.long	.LVL131
	.long	.LVL132
	.short	0x1
	.byte	0x50
	.long	.LVL132
	.long	.LFE34
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL133
	.long	.LVL140
	.short	0x1
	.byte	0x51
	.long	.LVL140
	.long	.LFE35
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL133
	.long	.LVL134
	.short	0x1
	.byte	0x52
	.long	.LVL134
	.long	.LFE35
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST58:
	.long	.LVL133
	.long	.LVL135
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL135
	.long	.LVL140
	.short	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL140
	.long	.LFE35
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST59:
	.long	.LVL133
	.long	.LVL135
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL135
	.long	.LVL137
	.short	0x6
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL137
	.long	.LVL138
	.short	0x1
	.byte	0x55
	.long	.LVL138
	.long	.LVL139
	.short	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL139
	.long	.LFE35
	.short	0x6
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST60:
	.long	.LVL136
	.long	.LVL140
	.short	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL140
	.long	.LFE35
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST61:
	.long	.LVL136
	.long	.LVL138
	.short	0x7
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	.LVL138
	.long	.LVL139
	.short	0x1
	.byte	0x55
	.long	.LVL139
	.long	.LFE35
	.short	0x7
	.byte	0x8
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LVL141
	.long	.LVL143
	.short	0x1
	.byte	0x51
	.long	.LVL143
	.long	.LVL144
	.short	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.long	.LVL144
	.long	.LFE36
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST63:
	.long	.LVL141
	.long	.LVL143
	.short	0x5
	.byte	0x71
	.sleb128 -1
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.long	.LVL143
	.long	.LVL144
	.short	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.long	.LVL144
	.long	.LFE36
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x31
	.byte	0x1c
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST64:
	.long	.LVL142
	.long	.LVL143
	.short	0x5
	.byte	0x71
	.sleb128 -1
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.long	.LVL143
	.long	.LVL144
	.short	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.long	.LVL144
	.long	.LFE36
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x31
	.byte	0x1c
	.byte	0x4c
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST65:
	.long	.LVL142
	.long	.LVL145
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST66:
	.long	.LVL147
	.long	.LVL149
	.short	0x1
	.byte	0x51
	.long	.LVL149
	.long	.LFE38
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST67:
	.long	.LVL148
	.long	.LVL149
	.short	0x1
	.byte	0x51
	.long	.LVL149
	.long	.LFE38
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST68:
	.long	.LVL150
	.long	.LVL151
	.short	0x1
	.byte	0x50
	.long	.LVL151
	.long	.LFE39
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST69:
	.long	.LVL154
	.long	.LVL156
	.short	0x1
	.byte	0x50
	.long	.LVL156
	.long	.LFE42
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST70:
	.long	.LVL155
	.long	.LVL156
	.short	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL156
	.long	.LVL157
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST71:
	.long	.LVL158
	.long	.LVL159
	.short	0x1
	.byte	0x51
	.long	.LVL159
	.long	.LFE43
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST72:
	.long	.LVL158
	.long	.LVL159
	.short	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL159
	.long	.LVL160
	.short	0x1
	.byte	0x51
	.long	.LVL160
	.long	.LVL161
	.short	0x1
	.byte	0x55
	.long	.LVL161
	.long	.LVL162
	.short	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL162
	.long	.LVL163
	.short	0x5
	.byte	0x31
	.byte	0x71
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL163
	.long	.LVL164
	.short	0x1
	.byte	0x55
	.long	.LVL164
	.long	.LFE43
	.short	0x5
	.byte	0x31
	.byte	0x71
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST73:
	.long	.LVL165
	.long	.LVL170
	.short	0x1
	.byte	0x50
	.long	.LVL170
	.long	.LFE44
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST74:
	.long	.LVL165
	.long	.LVL166
	.short	0x1
	.byte	0x51
	.long	.LVL166
	.long	.LFE44
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST75:
	.long	.LVL165
	.long	.LVL166
	.short	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL166
	.long	.LVL167
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x38
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL167
	.long	.LVL168
	.short	0x5
	.byte	0x31
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL168
	.long	.LVL169
	.short	0x1
	.byte	0x55
	.long	.LVL169
	.long	.LFE44
	.short	0xa
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x38
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST76:
	.long	.LVL171
	.long	.LVL175
	.short	0x1
	.byte	0x51
	.long	.LVL175
	.long	.LFE45
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST77:
	.long	.LVL171
	.long	.LVL172
	.short	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.long	.LVL172
	.long	.LVL180
	.short	0x1
	.byte	0x55
	.long	.LVL180
	.long	.LVL181
	.short	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL181
	.long	.LVL182
	.short	0x8
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x40
	.byte	0x25
	.byte	0x24
	.byte	0x9f
	.long	.LVL182
	.long	.LFE45
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST78:
	.long	.LVL171
	.long	.LVL174
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL174
	.long	.LVL175
	.short	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL175
	.long	.LVL176
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x38
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL176
	.long	.LVL178
	.short	0x1
	.byte	0x51
	.long	.LVL178
	.long	.LFE45
	.short	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x38
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST79:
	.long	.LVL171
	.long	.LVL176
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL176
	.long	.LVL177
	.short	0x8
	.byte	0x31
	.byte	0x71
	.sleb128 0
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	.LVL177
	.long	.LVL179
	.short	0x1
	.byte	0x54
	.long	.LVL179
	.long	.LVL182
	.short	0xd
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x38
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	.LVL182
	.long	.LFE45
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST80:
	.long	.LVL183
	.long	.LVL185
	.short	0x1
	.byte	0x50
	.long	.LVL185
	.long	.LFE46
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST81:
	.long	.LVL183
	.long	.LVL186
	.short	0x1
	.byte	0x51
	.long	.LVL186
	.long	.LFE46
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST82:
	.long	.LVL183
	.long	.LVL184
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL184
	.long	.LVL186
	.short	0xa
	.byte	0x31
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	.LVL186
	.long	.LVL187
	.short	0xb
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x38
	.byte	0x25
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST83:
	.long	.LVL183
	.long	.LVL184
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL184
	.long	.LVL186
	.short	0x8
	.byte	0x31
	.byte	0x71
	.sleb128 0
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	.LVL186
	.long	.LVL187
	.short	0x9
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST84:
	.long	.LVL183
	.long	.LVL184
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL184
	.long	.LVL187
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_50, @function
	.debug_aranges$scode_local_50:
	.long	0x184
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
	.long	.LFB44
	.long	.LFE44-.LFB44
	.long	.LFB45
	.long	.LFE45-.LFB45
	.long	.LFB46
	.long	.LFE46-.LFB46
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_51, @function
	.debug_ranges$scode_local_51:
.Ldebug_ranges0:
	.long	.LBB60
	.long	.LBE60
	.long	.LBB63
	.long	.LBE63
	.long	0
	.long	0
	.long	.LBB86
	.long	.LBE86
	.long	.LBB89
	.long	.LBE89
	.long	0
	.long	0
	.long	.LBB90
	.long	.LBE90
	.long	.LBB93
	.long	.LBE93
	.long	0
	.long	0
	.long	.LBB94
	.long	.LBE94
	.long	.LBB97
	.long	.LBE97
	.long	0
	.long	0
	.long	.LBB98
	.long	.LBE98
	.long	.LBB101
	.long	.LBE101
	.long	0
	.long	0
	.long	.LBB106
	.long	.LBE106
	.long	.LBB109
	.long	.LBE109
	.long	0
	.long	0
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
	.long	.LFB44
	.long	.LFE44
	.long	.LFB45
	.long	.LFE45
	.long	.LFB46
	.long	.LFE46
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_52, @function
	.debug_line$scode_local_52:
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
	.string	"kf32f_basic_adc.c"
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
	.string	"kf32f_basic_adc.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x51
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
	.byte	0x26
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x3
	.sleb128 -13
	.byte	0x1
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
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x3
	.sleb128 -21
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
	.byte	0x77
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x35
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13215
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13209
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13201
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13196
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13192
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13191
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13185
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13184
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
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
	.long	.LM38
	.byte	0xba
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
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
	.long	.LM52
	.byte	0xe7
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13114
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13116
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13117
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13114
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x1b
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
	.long	.LM60
	.byte	0x3
	.sleb128 234
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
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
	.long	.LM64
	.byte	0x3
	.sleb128 250
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x1e
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
	.long	.LM70
	.byte	0x3
	.sleb128 283
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x2a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x18
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
	.sleb128 13036
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13033
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM78
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13026
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM79
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13026
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM80
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM81
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13019
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13019
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM84
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13012
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM85
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13012
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM86
	.byte	0x1a
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
	.long	.LM87
	.byte	0x3
	.sleb128 335
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM88
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM89
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM90
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM91
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM92
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
	.byte	0x18
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
	.long	.LM95
	.byte	0x3
	.sleb128 370
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM96
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM97
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM100
	.byte	0x1e
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
	.long	.LM101
	.byte	0x3
	.sleb128 396
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM102
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM103
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM104
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM105
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM106
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
	.long	.LM107
	.byte	0x3
	.sleb128 422
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM108
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM109
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM110
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM111
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM112
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
	.long	.LM113
	.byte	0x3
	.sleb128 448
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM114
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM115
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM116
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM117
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM118
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
	.long	.LM119
	.byte	0x3
	.sleb128 474
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM120
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM121
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM122
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM123
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM124
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
	.long	.LM125
	.byte	0x3
	.sleb128 506
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM126
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM127
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12823
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM128
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12823
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM129
	.byte	0x1a
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
	.long	.LM130
	.byte	0x3
	.sleb128 527
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM131
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM132
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12802
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM133
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12802
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM134
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
	.long	.LM135
	.byte	0x3
	.sleb128 549
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM136
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM137
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12780
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM138
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12780
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM139
	.byte	0x1a
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
	.long	.LM140
	.byte	0x3
	.sleb128 568
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM141
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM142
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM143
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM144
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM145
	.byte	0x1e
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
	.long	.LM146
	.byte	0x3
	.sleb128 599
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM147
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM148
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM149
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM150
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM151
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM152
	.byte	0x1d
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
	.long	.LM153
	.byte	0x3
	.sleb128 631
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM154
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM155
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12698
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM156
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12698
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM157
	.byte	0x1b
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
	.long	.LM158
	.byte	0x3
	.sleb128 654
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM159
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM160
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12675
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM161
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12675
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM162
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
	.long	.LM163
	.byte	0x3
	.sleb128 673
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM164
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM165
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12656
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM166
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12656
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM167
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
	.long	.LM168
	.byte	0x3
	.sleb128 699
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM169
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM170
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM171
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM172
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM173
	.byte	0x1e
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
	.long	.LM174
	.byte	0x3
	.sleb128 725
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM175
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM176
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM177
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM178
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM179
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM180
	.byte	0x1e
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
	.long	.LM181
	.byte	0x3
	.sleb128 822
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM182
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM183
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12507
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM184
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12507
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM185
	.byte	0x1a
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
	.long	.LM186
	.byte	0x3
	.sleb128 843
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM187
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM188
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM189
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM190
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM191
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM192
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM193
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM194
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM195
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12447
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM196
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12449
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM197
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12449
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM198
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12447
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM199
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM200
	.byte	0x3
	.sleb128 -26
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM201
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM202
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM203
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM204
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12467
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM205
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12469
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM206
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12469
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM207
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12467
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM208
	.byte	0x2f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM209
	.byte	0x3
	.sleb128 -36
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM210
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM211
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM212
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM213
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12477
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM214
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12479
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM215
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12479
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM216
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12477
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM217
	.byte	0x39
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM218
	.byte	0x3
	.sleb128 -16
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM219
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM220
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM221
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM222
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12457
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM223
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12459
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM224
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12459
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM225
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12457
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM226
	.byte	0x25
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
	.long	.LM227
	.byte	0x3
	.sleb128 902
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM228
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM229
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM230
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12424
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM231
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12423
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM232
	.byte	0x1a
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
	.long	.LM233
	.byte	0x3
	.sleb128 933
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM234
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM235
	.byte	0x1c
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
	.long	.LFE27
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM241
	.byte	0x3
	.sleb128 963
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
	.long	.LM244
	.byte	0x3
	.sleb128 979
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
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM247
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM248
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM249
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
	.long	.LM250
	.byte	0x3
	.sleb128 1004
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM251
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM252
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM253
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12323
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM254
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12322
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM255
	.byte	0x1a
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
	.long	.LM256
	.byte	0x3
	.sleb128 1026
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
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM259
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM260
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM261
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
	.long	.LM262
	.byte	0x3
	.sleb128 1050
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM263
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM264
	.byte	0x1a
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
	.long	.LM265
	.byte	0x3
	.sleb128 1077
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM266
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM267
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM268
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM269
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM270
	.byte	0x1e
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
	.long	.LM271
	.byte	0x3
	.sleb128 1103
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM272
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM273
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM274
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM275
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM276
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM277
	.byte	0x1e
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
	.long	.LM278
	.byte	0x3
	.sleb128 1132
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM279
	.byte	0x23
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM280
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM281
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM282
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM283
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12189
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM284
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12191
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM285
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12191
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM286
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12189
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM287
	.byte	0x1a
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
	.long	.LM288
	.byte	0x3
	.sleb128 1159
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM289
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM290
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM291
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12168
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM292
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12167
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM293
	.byte	0x1a
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
	.long	.LM294
	.byte	0x3
	.sleb128 1187
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM295
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM296
	.byte	0x18
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
	.long	.LM297
	.byte	0x3
	.sleb128 1283
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM298
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM299
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12046
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM300
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12046
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM301
	.byte	0x1a
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
	.long	.LM302
	.byte	0x3
	.sleb128 1301
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM303
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM304
	.byte	0x18
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
	.long	.LM305
	.byte	0x3
	.sleb128 1317
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM306
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM307
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM308
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM309
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM310
	.byte	0x1e
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
	.long	.LM311
	.byte	0x3
	.sleb128 1342
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM312
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM313
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM314
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM315
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM316
	.byte	0x1e
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
	.long	.LM317
	.byte	0x3
	.sleb128 1371
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM318
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM319
	.byte	0x19
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
	.long	.LM320
	.byte	0x3
	.sleb128 1409
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM321
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM322
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM323
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM324
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM325
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM326
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM327
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM328
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE43
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM329
	.byte	0x3
	.sleb128 1445
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM330
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM331
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM332
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM333
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM334
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE44
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM335
	.byte	0x3
	.sleb128 1479
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM336
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM337
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM338
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM339
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM340
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM341
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM342
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM343
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM344
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE45
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM345
	.byte	0x3
	.sleb128 1513
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM346
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM347
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM348
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM349
	.byte	0x3
	.sleb128 -14
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM350
	.byte	0x2b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM351
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE46
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_53, @function
	.debug_str$scode_local_53:
.LASF34:
	.string	"RESERVED"
.LASF58:
	.string	"m_HPChannelWDEN"
.LASF78:
	.string	"ADC_Analog_Watchdog_Configuration"
.LASF54:
	.string	"m_FastDelay"
.LASF120:
	.string	"ADC_Set_HPChannel_Conv_Value_Offset"
.LASF113:
	.string	"ADC_Disc_Mode_Channel_Count_Config"
.LASF0:
	.string	"unsigned int"
.LASF94:
	.string	"HPChannel"
.LASF13:
	.string	"FunctionalState"
.LASF53:
	.string	"ADC_InitTypeDef"
.LASF103:
	.string	"ADC_External_Trig_Conv_Config"
.LASF126:
	.string	"ADC_HPAuto_Conv_Cmd"
.LASF44:
	.string	"m_ContinuousMode"
.LASF83:
	.string	"ADC_Bosssel_Comparator_Calibration"
.LASF15:
	.string	"FlagStatus"
.LASF110:
	.string	"ADC_Regular_Channel_TxCCRy_Trig_Enable"
.LASF86:
	.string	"ADC_Analog_Clock_Config"
.LASF24:
	.string	"DATA"
.LASF56:
	.string	"ADC0_DELAY_InitTypeDef"
.LASF107:
	.string	"tmpmask"
.LASF140:
	.string	"../Peripherals/src/kf32f_basic_adc.c"
.LASF7:
	.string	"uint32_t"
.LASF72:
	.string	"ADC_Delay_Configuration"
.LASF12:
	.string	"TRUE"
.LASF91:
	.string	"ClockSource"
.LASF139:
	.string	"GNU C 4.7.0"
.LASF79:
	.string	"adcAnalogWatchdog"
.LASF99:
	.string	"ADC_Analog_Watchdog_Channel_Config"
.LASF130:
	.string	"HPDataChannel"
.LASF76:
	.string	"ADC_Cmd"
.LASF117:
	.string	"ADC_HPExternal_Trig_Conv_Enable"
.LASF43:
	.string	"m_ScanMode"
.LASF127:
	.string	"ADC_HPDisc_Mode_Cmd"
.LASF64:
	.string	"SfrMem"
.LASF9:
	.string	"long long unsigned int"
.LASF29:
	.string	"HPOFF0"
.LASF30:
	.string	"HPOFF1"
.LASF31:
	.string	"HPOFF2"
.LASF32:
	.string	"HPOFF3"
.LASF121:
	.string	"HPDoffChannel"
.LASF67:
	.string	"ADC_Reset"
.LASF97:
	.string	"ADC_Reference_Voltage_Config"
.LASF118:
	.string	"ADC_High_Priority_Channel_Config"
.LASF128:
	.string	"ADC_Get_Conversion_Value"
.LASF108:
	.string	"ADC_Regular_Sequencer_Length_Config"
.LASF111:
	.string	"ADC_Software_Start_Conv"
.LASF109:
	.string	"Length"
.LASF89:
	.string	"DataAlign"
.LASF55:
	.string	"m_SlowDelay"
.LASF74:
	.string	"tmpreg"
.LASF75:
	.string	"ADC_Delay_Struct_Init"
.LASF57:
	.string	"m_WDSingleCH"
.LASF52:
	.string	"m_NumOfHPConv"
.LASF80:
	.string	"ADC_Analog_Watchdog_Struct_Init"
.LASF87:
	.string	"ClockSelect"
.LASF42:
	.string	"m_ClockDiv"
.LASF114:
	.string	"Number"
.LASF77:
	.string	"NewState"
.LASF46:
	.string	"m_ExternalTrig_EN"
.LASF73:
	.string	"adc0Delay"
.LASF90:
	.string	"ADC_Clock_Source_Config"
.LASF10:
	.string	"char"
.LASF115:
	.string	"ADC_Disc_Mode_Cmd"
.LASF81:
	.string	"ADC_Watchdog_Single_Channel_Enable"
.LASF41:
	.string	"m_Clock"
.LASF50:
	.string	"m_VoltageRef"
.LASF51:
	.string	"m_NumOfConv"
.LASF98:
	.string	"RefVoltage"
.LASF5:
	.string	"uint8_t"
.LASF37:
	.string	"ADC_SFRmap"
.LASF60:
	.string	"m_WDChannel"
.LASF63:
	.string	"ADC_WD_InitTypeDef"
.LASF95:
	.string	"ADC_Double_Mode_Config"
.LASF8:
	.string	"long long int"
.LASF65:
	.string	"SfrMask"
.LASF68:
	.string	"ADC_Configuration"
.LASF138:
	.string	"enablestatus"
.LASF133:
	.string	"ADC_Get_INT_Flag"
.LASF116:
	.string	"ADC_High_Priority_Watchdog_Enable"
.LASF141:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF132:
	.string	"InterruptType"
.LASF142:
	.string	"SFR_Config"
.LASF23:
	.string	"HSCANSQ"
.LASF69:
	.string	"ADCx"
.LASF119:
	.string	"ADC_High_Priority_Sequencer_Length_Config"
.LASF25:
	.string	"HPDATA0"
.LASF26:
	.string	"HPDATA1"
.LASF27:
	.string	"HPDATA2"
.LASF28:
	.string	"HPDATA3"
.LASF36:
	.string	"DELAY"
.LASF105:
	.string	"ADC_Regular_Channel_Config"
.LASF18:
	.string	"CTL0"
.LASF19:
	.string	"CTL1"
.LASF104:
	.string	"ExternalTrigEvent"
.LASF70:
	.string	"adcInitStruct"
.LASF82:
	.string	"ADC_Scan_Mode_Enable"
.LASF88:
	.string	"ADC_Data_Align_Config"
.LASF66:
	.string	"WriteVal"
.LASF131:
	.string	"ADC_Set_INT_Enable"
.LASF101:
	.string	"ADC_Regular_Channel_Watchdog_Enable"
.LASF6:
	.string	"uint16_t"
.LASF137:
	.string	"ADC_Get_INT_Status"
.LASF48:
	.string	"m_HPExternalTrig_EN"
.LASF85:
	.string	"ADC_Trim_Current_Intensity_Bias"
.LASF93:
	.string	"ADC_High_Priority_Channel_DMA_Cmd"
.LASF106:
	.string	"Rank"
.LASF4:
	.string	"short int"
.LASF71:
	.string	"ADC_Struct_Init"
.LASF14:
	.string	"RESET"
.LASF123:
	.string	"ADC_HPExternal_Trig_Conv_Config"
.LASF11:
	.string	"FALSE"
.LASF47:
	.string	"m_ExternalTrig"
.LASF112:
	.string	"ADC_Continuous_Mode_Cmd"
.LASF96:
	.string	"WorkMode"
.LASF16:
	.string	"INTStatus"
.LASF40:
	.string	"ADC_DELAY_SFRmap"
.LASF61:
	.string	"m_Threshold_H"
.LASF84:
	.string	"ADC_Bosssel_Calibration"
.LASF62:
	.string	"m_Threshold_L"
.LASF17:
	.string	"sizetype"
.LASF45:
	.string	"m_DataAlign"
.LASF135:
	.string	"tmpreg1"
.LASF136:
	.string	"tmpreg2"
.LASF100:
	.string	"Channel"
.LASF38:
	.string	"ADC_MemMap"
.LASF134:
	.string	"ADC_Clear_INT_Flag"
.LASF3:
	.string	"unsigned char"
.LASF102:
	.string	"ADC_External_Trig_Conv_Enable"
.LASF35:
	.string	"STATE"
.LASF125:
	.string	"ADC_Software_HPStart_Conv"
.LASF129:
	.string	"ADC_Get_HPConversion_Data"
.LASF92:
	.string	"ADC_Regular_Channel_DMA_Cmd"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF124:
	.string	"HPExternalTrigEvent"
.LASF122:
	.string	"Offset"
.LASF49:
	.string	"m_HPExternalTrig"
.LASF20:
	.string	"SCANSQ0"
.LASF21:
	.string	"SCANSQ1"
.LASF22:
	.string	"SCANSQ2"
.LASF33:
	.string	"SCANSQ3"
.LASF59:
	.string	"m_ChannelWDEN"
.LASF39:
	.string	"ADC_Delay_MemMap"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
