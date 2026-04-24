	.file	"kf32f_basic_spi.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$SPI_Reset
	.type	.text$SPI_Reset$scode_local_1, @function
	.text$SPI_Reset$scode_local_1:
	.align	1
	.export	SPI_Reset
	.type	SPI_Reset, @function
SPI_Reset:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
	PUSH	lr
	.cfi_def_cfa_offset 4
.LM2:
	LD	r5,#1073744896
	CMP	r0,r5
	JZ	.L6
.LM3:
	LD	r5,#1073745024
	CMP	r0,r5
	JZ	.L7
.LM4:
	LD	r5,#1073750144
	CMP	r0,r5
	JZ	.L8
.LVL1:
.L1:
.LM5:
	POP	lr
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL2:
.L8:
	.cfi_restore_state
.LM6:
	MOV	r0,#2
.LVL3:
	MOV	r1,#1
	LJMP	RST_CTL3_Peripheral_Reset_Enable
.LVL4:
.LM7:
	MOV	r0,#2
	MOV	r1,#0
	LJMP	RST_CTL3_Peripheral_Reset_Enable
.LVL5:
.LM8:
	MOV	r0,#2
	MOV	r1,#1
	LJMP	PCLK_CTL3_Peripheral_Clock_Enable
.LVL6:
.LM9:
	POP	lr
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL7:
.L6:
	.cfi_restore_state
.LM10:
	MOV	r0,#1
.LVL8:
	LSL	r0,#24
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL9:
.LM11:
	MOV	r0,#1
	LSL	r0,#24
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL10:
.LM12:
	MOV	r0,#1
	LSL	r0,#24
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL11:
	JMP	.L1
.LVL12:
.L7:
.LM13:
	MOV	r0,#1
.LVL13:
	LSL	r0,#25
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL14:
.LM14:
	MOV	r0,#1
	LSL	r0,#25
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL15:
.LM15:
	MOV	r0,#1
	LSL	r0,#25
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL16:
	JMP	.L1
	.cfi_endproc
.LFE1:
	.size	SPI_Reset, .-SPI_Reset
	.section .text$SPI_Configuration
	.type	.text$SPI_Configuration$scode_local_2, @function
	.text$SPI_Configuration$scode_local_2:
	.align	1
	.export	SPI_Configuration
	.type	SPI_Configuration, @function
SPI_Configuration:
.LFB2:
.LM16:
	.cfi_startproc
.LVL17:
.LM17:
	LD.w	r3,[r0+#1]
.LVL18:
.LM18:
	LD.w	r2,[r1+#1]
	LD.w	r5,[r1]
	ORL	r4,r2,r5
.LM19:
	LD.w	r2,[r1+#2]
	ORL	r4,r4,r2
.LM20:
	LD.w	r5,[r1+#3]
	ORL	r4,r4,r5
.LM21:
	LD.w	r2,[r1+#4]
	ORL	r4,r4,r2
.LM22:
	LD.w	r5,[r1+#5]
	ORL	r4,r4,r5
.LVL19:
.LBB24:
.LBB25:
.LM23:
	LD	r5,#-13183
	ANL	r5,r3,r5
	ORL	r5,r4,r5
.LBE25:
.LBE24:
.LM24:
	ST.w	[r0+#1],r5
.LVL20:
.LM25:
	LD.w	r4,[r0]
.LVL21:
.LBB26:
.LBB27:
.LM26:
	LD	r5,#-65536
	ANL	r5,r4,r5
.LBE27:
.LBE26:
.LM27:
	LD.h	r4,[r1+#12]
.LVL22:
.LBB29:
.LBB28:
.LM28:
	ORL	r5,r5,r4
.LBE28:
.LBE29:
.LM29:
	ST.w	[r0],r5
.LM30:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	SPI_Configuration, .-SPI_Configuration
	.section .text$I2S_Configuration
	.type	.text$I2S_Configuration$scode_local_3, @function
	.text$I2S_Configuration$scode_local_3:
	.align	1
	.export	I2S_Configuration
	.type	I2S_Configuration, @function
I2S_Configuration:
.LFB3:
.LM31:
	.cfi_startproc
.LVL23:
.LM32:
	LD.w	r3,[r0+#1]
.LVL24:
.LM33:
	LD.w	r2,[r1+#1]
	LD.w	r5,[r1]
	ORL	r4,r2,r5
.LM34:
	LD.w	r2,[r1+#2]
	ORL	r4,r4,r2
.LM35:
	LD.w	r5,[r1+#3]
	ORL	r4,r4,r5
.LM36:
	LD.w	r2,[r1+#4]
	ORL	r4,r4,r2
.LVL25:
.LBB30:
.LBB31:
.LM37:
	LD	r5,#-267386881
	ANL	r5,r3,r5
	ORL	r5,r4,r5
.LBE31:
.LBE30:
.LM38:
	ST.w	[r0+#1],r5
.LVL26:
.LM39:
	LD.w	r3,[r0]
.LVL27:
.LM40:
	LD.b	r4,[r1+#20]
.LVL28:
	LSL	r4,#16
.LVL29:
.LBB32:
.LBB33:
.LM41:
	LD	r5,#-16711681
	ANL	r5,r3,r5
	ORL	r5,r4,r5
.LBE33:
.LBE32:
.LM42:
	ST.w	[r0],r5
.LM43:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	I2S_Configuration, .-I2S_Configuration
	.section .text$SPI_Struct_Init
	.type	.text$SPI_Struct_Init$scode_local_4, @function
	.text$SPI_Struct_Init$scode_local_4:
	.align	1
	.export	SPI_Struct_Init
	.type	SPI_Struct_Init, @function
SPI_Struct_Init:
.LFB4:
.LM44:
	.cfi_startproc
.LVL30:
.LM45:
	MOV	r5,#8
	ST.w	[r0],r5
.LM46:
	MOV	r5,#16
	ST.w	[r0+#1],r5
.LM47:
	MOV	r5,#64
	ST.w	[r0+#2],r5
.LM48:
	MOV	r5,#0
	ST.w	[r0+#3],r5
.LM49:
	ST.w	[r0+#4],r5
.LM50:
	ST.w	[r0+#5],r5
.LM51:
	ST.h	[r0+#12],r5
.LM52:
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	SPI_Struct_Init, .-SPI_Struct_Init
	.section .text$I2S_Struct_Init
	.type	.text$I2S_Struct_Init$scode_local_5, @function
	.text$I2S_Struct_Init$scode_local_5:
	.align	1
	.export	I2S_Struct_Init
	.type	I2S_Struct_Init, @function
I2S_Struct_Init:
.LFB5:
.LM53:
	.cfi_startproc
.LVL31:
.LM54:
	MOV	r5,#0
	ST.w	[r0],r5
.LM55:
	ST.w	[r0+#1],r5
.LM56:
	MOV	r4,#1
	LSL	r4,#24
	ST.w	[r0+#2],r4
.LM57:
	ST.w	[r0+#3],r5
.LM58:
	ST.w	[r0+#4],r5
.LM59:
	ST.b	[r0+#20],r5
.LM60:
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	I2S_Struct_Init, .-I2S_Struct_Init
	.section .text$SPI_Cmd
	.type	.text$SPI_Cmd$scode_local_6, @function
	.text$SPI_Cmd$scode_local_6:
	.align	1
	.export	SPI_Cmd
	.type	SPI_Cmd, @function
SPI_Cmd:
.LFB6:
.LM61:
	.cfi_startproc
.LVL32:
.LM62:
	ADD	r0,r0,#4
.LVL33:
.LM63:
	CMP	r1,#0
	JNZ	.L16
.LM64:
// inline asm begin
	// 238 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #0
	// 0 "" 2
.LM65:
// inline asm end
	JMP	lr
.L16:
.LM66:
// inline asm begin
	// 233 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #0
	// 0 "" 2
.LM67:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	SPI_Cmd, .-SPI_Cmd
	.section .text$I2S_Mode_Select
	.type	.text$I2S_Mode_Select$scode_local_7, @function
	.text$I2S_Mode_Select$scode_local_7:
	.align	1
	.export	I2S_Mode_Select
	.type	I2S_Mode_Select, @function
I2S_Mode_Select:
.LFB7:
.LM68:
	.cfi_startproc
.LVL34:
.LM69:
	ADD	r0,r0,#4
.LVL35:
.LM70:
	CMP	r1,#0
	JNZ	.L20
.LM71:
// inline asm begin
	// 266 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #16
	// 0 "" 2
.LM72:
// inline asm end
	JMP	lr
.L20:
.LM73:
// inline asm begin
	// 261 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #16
	// 0 "" 2
.LM74:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	I2S_Mode_Select, .-I2S_Mode_Select
	.section .text$SPI_I2S_ReceiveData
	.type	.text$SPI_I2S_ReceiveData$scode_local_8, @function
	.text$SPI_I2S_ReceiveData$scode_local_8:
	.align	1
	.export	SPI_I2S_ReceiveData
	.type	SPI_I2S_ReceiveData, @function
SPI_I2S_ReceiveData:
.LFB8:
.LM75:
	.cfi_startproc
.LVL36:
.LM76:
	LD.w	r0,[r0+#2]
.LVL37:
.LM77:
	JMP	lr
	.cfi_endproc
.LFE8:
	.size	SPI_I2S_ReceiveData, .-SPI_I2S_ReceiveData
	.section .text$SPI_I2S_SendData32
	.type	.text$SPI_I2S_SendData32$scode_local_9, @function
	.text$SPI_I2S_SendData32$scode_local_9:
	.align	1
	.export	SPI_I2S_SendData32
	.type	SPI_I2S_SendData32, @function
SPI_I2S_SendData32:
.LFB9:
.LM78:
	.cfi_startproc
.LVL38:
.LM79:
	ST.w	[r0+#2],r1
.LM80:
	JMP	lr
	.cfi_endproc
.LFE9:
	.size	SPI_I2S_SendData32, .-SPI_I2S_SendData32
	.section .text$SPI_I2S_SendData8
	.type	.text$SPI_I2S_SendData8$scode_local_10, @function
	.text$SPI_I2S_SendData8$scode_local_10:
	.align	1
	.export	SPI_I2S_SendData8
	.type	SPI_I2S_SendData8, @function
SPI_I2S_SendData8:
.LFB10:
.LM81:
	.cfi_startproc
.LVL39:
	ZXT.b	r1,r1
.LM82:
	ST.w	[r0+#2],r1
.LM83:
	JMP	lr
	.cfi_endproc
.LFE10:
	.size	SPI_I2S_SendData8, .-SPI_I2S_SendData8
	.section .text$SPI_BaudRate_Config
	.type	.text$SPI_BaudRate_Config$scode_local_11, @function
	.text$SPI_BaudRate_Config$scode_local_11:
	.align	1
	.export	SPI_BaudRate_Config
	.type	SPI_BaudRate_Config, @function
SPI_BaudRate_Config:
.LFB11:
.LM84:
	.cfi_startproc
.LVL40:
	ZXT.h	r1,r1
.LVL41:
.LM85:
	LD.w	r4,[r0]
.LVL42:
.LBB34:
.LBB35:
.LM86:
	LD	r5,#-65536
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL43:
.LBE35:
.LBE34:
.LM87:
	ST.w	[r0],r1
.LM88:
	JMP	lr
	.cfi_endproc
.LFE11:
	.size	SPI_BaudRate_Config, .-SPI_BaudRate_Config
	.section .text$I2S_DIV_Config
	.type	.text$I2S_DIV_Config$scode_local_12, @function
	.text$I2S_DIV_Config$scode_local_12:
	.align	1
	.export	I2S_DIV_Config
	.type	I2S_DIV_Config, @function
I2S_DIV_Config:
.LFB12:
.LM89:
	.cfi_startproc
.LVL44:
	ZXT.b	r1,r1
.LVL45:
.LM90:
	LD.w	r3,[r0]
.LVL46:
.LM91:
	MOV	r4,#16
	LSL	r5,r1,r4
.LBB36:
.LBB37:
.LM92:
	LD	r4,#-16711681
	ANL	r1,r3,r4
.LVL47:
	ORL	r1,r5,r1
.LBE37:
.LBE36:
.LM93:
	ST.w	[r0],r1
.LM94:
	JMP	lr
	.cfi_endproc
.LFE12:
	.size	I2S_DIV_Config, .-I2S_DIV_Config
	.section .text$SPI_MODE_Config
	.type	.text$SPI_MODE_Config$scode_local_13, @function
	.text$SPI_MODE_Config$scode_local_13:
	.align	1
	.export	SPI_MODE_Config
	.type	SPI_MODE_Config, @function
SPI_MODE_Config:
.LFB13:
.LM95:
	.cfi_startproc
.LVL48:
.LM96:
	LD.w	r4,[r0+#1]
.LVL49:
.LBB38:
.LBB39:
.LM97:
	MOV	r5,#14
	NOT	r5,r5
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL50:
.LBE39:
.LBE38:
.LM98:
	ST.w	[r0+#1],r1
.LM99:
	JMP	lr
	.cfi_endproc
.LFE13:
	.size	SPI_MODE_Config, .-SPI_MODE_Config
	.section .text$SPI_CLK_Config
	.type	.text$SPI_CLK_Config$scode_local_14, @function
	.text$SPI_CLK_Config$scode_local_14:
	.align	1
	.export	SPI_CLK_Config
	.type	SPI_CLK_Config, @function
SPI_CLK_Config:
.LFB14:
.LM100:
	.cfi_startproc
.LVL51:
.LM101:
	LD.w	r5,[r0+#1]
.LVL52:
.LBB40:
.LBB41:
.LM102:
	CLR	r5,#4
	CLR	r5,#5
.LVL53:
	ORL	r1,r1,r5
.LVL54:
.LBE41:
.LBE40:
.LM103:
	ST.w	[r0+#1],r1
.LM104:
	JMP	lr
	.cfi_endproc
.LFE14:
	.size	SPI_CLK_Config, .-SPI_CLK_Config
	.section .text$SPI_Data_Direction_Config
	.type	.text$SPI_Data_Direction_Config$scode_local_15, @function
	.text$SPI_Data_Direction_Config$scode_local_15:
	.align	1
	.export	SPI_Data_Direction_Config
	.type	SPI_Data_Direction_Config, @function
SPI_Data_Direction_Config:
.LFB15:
.LM105:
	.cfi_startproc
.LVL55:
.LM106:
	ADD	r0,r0,#4
.LVL56:
.LM107:
	CMP	r1,#0
	JNZ	.L31
.LM108:
// inline asm begin
	// 421 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #6
	// 0 "" 2
.LM109:
// inline asm end
	JMP	lr
.L31:
.LM110:
// inline asm begin
	// 416 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #6
	// 0 "" 2
.LM111:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE15:
	.size	SPI_Data_Direction_Config, .-SPI_Data_Direction_Config
	.section .text$SPI_Clock_Polarity_Config
	.type	.text$SPI_Clock_Polarity_Config$scode_local_16, @function
	.text$SPI_Clock_Polarity_Config$scode_local_16:
	.align	1
	.export	SPI_Clock_Polarity_Config
	.type	SPI_Clock_Polarity_Config, @function
SPI_Clock_Polarity_Config:
.LFB16:
.LM112:
	.cfi_startproc
.LVL57:
.LM113:
	ADD	r0,r0,#4
.LVL58:
.LM114:
	CMP	r1,#0
	JNZ	.L35
.LM115:
// inline asm begin
	// 449 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #8
	// 0 "" 2
.LM116:
// inline asm end
	JMP	lr
.L35:
.LM117:
// inline asm begin
	// 444 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #8
	// 0 "" 2
.LM118:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE16:
	.size	SPI_Clock_Polarity_Config, .-SPI_Clock_Polarity_Config
	.section .text$SPI_Clock_Edge_Config
	.type	.text$SPI_Clock_Edge_Config$scode_local_17, @function
	.text$SPI_Clock_Edge_Config$scode_local_17:
	.align	1
	.export	SPI_Clock_Edge_Config
	.type	SPI_Clock_Edge_Config, @function
SPI_Clock_Edge_Config:
.LFB17:
.LM119:
	.cfi_startproc
.LVL59:
.LM120:
	ADD	r0,r0,#4
.LVL60:
.LM121:
	CMP	r1,#0
	JNZ	.L39
.LM122:
// inline asm begin
	// 477 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #9
	// 0 "" 2
.LM123:
// inline asm end
	JMP	lr
.L39:
.LM124:
// inline asm begin
	// 472 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #9
	// 0 "" 2
.LM125:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE17:
	.size	SPI_Clock_Edge_Config, .-SPI_Clock_Edge_Config
	.section .text$SPI_BIT_SELECT_Config
	.type	.text$SPI_BIT_SELECT_Config$scode_local_18, @function
	.text$SPI_BIT_SELECT_Config$scode_local_18:
	.align	1
	.export	SPI_BIT_SELECT_Config
	.type	SPI_BIT_SELECT_Config, @function
SPI_BIT_SELECT_Config:
.LFB18:
.LM126:
	.cfi_startproc
.LVL61:
.LM127:
	LD.w	r5,[r0+#1]
.LVL62:
.LBB42:
.LBB43:
.LM128:
	CLR	r5,#12
	CLR	r5,#13
.LVL63:
	ORL	r1,r1,r5
.LVL64:
.LBE43:
.LBE42:
.LM129:
	ST.w	[r0+#1],r1
.LM130:
	JMP	lr
	.cfi_endproc
.LFE18:
	.size	SPI_BIT_SELECT_Config, .-SPI_BIT_SELECT_Config
	.section .text$SPI_I2S_MODE_Config
	.type	.text$SPI_I2S_MODE_Config$scode_local_19, @function
	.text$SPI_I2S_MODE_Config$scode_local_19:
	.align	1
	.export	SPI_I2S_MODE_Config
	.type	SPI_I2S_MODE_Config, @function
SPI_I2S_MODE_Config:
.LFB19:
.LM131:
	.cfi_startproc
.LVL65:
.LM132:
	LD.w	r5,[r0+#1]
.LVL66:
.LBB44:
.LBB45:
.LM133:
	CLR	r5,#20
	CLR	r5,#21
.LVL67:
	ORL	r1,r1,r5
.LVL68:
.LBE45:
.LBE44:
.LM134:
	ST.w	[r0+#1],r1
.LM135:
	JMP	lr
	.cfi_endproc
.LFE19:
	.size	SPI_I2S_MODE_Config, .-SPI_I2S_MODE_Config
	.section .text$SPI_I2S_STANDARD_Config
	.type	.text$SPI_I2S_STANDARD_Config$scode_local_20, @function
	.text$SPI_I2S_STANDARD_Config$scode_local_20:
	.align	1
	.export	SPI_I2S_STANDARD_Config
	.type	SPI_I2S_STANDARD_Config, @function
SPI_I2S_STANDARD_Config:
.LFB20:
.LM136:
	.cfi_startproc
.LVL69:
.LM137:
	LD.w	r5,[r0+#1]
.LVL70:
.LBB46:
.LBB47:
.LM138:
	CLR	r5,#22
	CLR	r5,#23
.LVL71:
	ORL	r1,r1,r5
.LVL72:
.LBE47:
.LBE46:
.LM139:
	ST.w	[r0+#1],r1
.LM140:
	JMP	lr
	.cfi_endproc
.LFE20:
	.size	SPI_I2S_STANDARD_Config, .-SPI_I2S_STANDARD_Config
	.section .text$SPI_PCM_Config
	.type	.text$SPI_PCM_Config$scode_local_21, @function
	.text$SPI_PCM_Config$scode_local_21:
	.align	1
	.export	SPI_PCM_Config
	.type	SPI_PCM_Config, @function
SPI_PCM_Config:
.LFB21:
.LM141:
	.cfi_startproc
.LVL73:
.LM142:
	ADD	r0,r0,#4
.LVL74:
.LM143:
	CMP	r1,#0
	JNZ	.L46
.LM144:
// inline asm begin
	// 567 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #24
	// 0 "" 2
.LM145:
// inline asm end
	JMP	lr
.L46:
.LM146:
// inline asm begin
	// 562 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #24
	// 0 "" 2
.LM147:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE21:
	.size	SPI_PCM_Config, .-SPI_PCM_Config
	.section .text$SPI_CHLEN_Config
	.type	.text$SPI_CHLEN_Config$scode_local_22, @function
	.text$SPI_CHLEN_Config$scode_local_22:
	.align	1
	.export	SPI_CHLEN_Config
	.type	SPI_CHLEN_Config, @function
SPI_CHLEN_Config:
.LFB22:
.LM148:
	.cfi_startproc
.LVL75:
.LM149:
	LD	r5,#100663296
	CMP	r1,r5
	JZ	.L51
.LM150:
	MOV	r5,#1
	LSL	r5,#26
	CMP	r1,r5
	JZ	.L52
.LM151:
	ADD	r5,r0,#4
// inline asm begin
	// 602 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r5], #25
	// 0 "" 2
.LM152:
// inline asm end
	ADD	r0,r0,#4
.LVL76:
// inline asm begin
	// 603 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #26
	// 0 "" 2
.LM153:
// inline asm end
	JMP	lr
.LVL77:
.L51:
.LM154:
	ADD	r5,r0,#4
// inline asm begin
	// 590 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r5], #25
	// 0 "" 2
.LM155:
// inline asm end
	ADD	r0,r0,#4
.LVL78:
// inline asm begin
	// 591 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #26
	// 0 "" 2
.LM156:
// inline asm end
	JMP	lr
.LVL79:
.L52:
.LM157:
	ADD	r5,r0,#4
// inline asm begin
	// 596 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r5], #25
	// 0 "" 2
.LM158:
// inline asm end
	ADD	r0,r0,#4
.LVL80:
// inline asm begin
	// 597 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #26
	// 0 "" 2
.LM159:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE22:
	.size	SPI_CHLEN_Config, .-SPI_CHLEN_Config
	.section .text$SPI_PCM_CLOCK_Polarity_Config
	.type	.text$SPI_PCM_CLOCK_Polarity_Config$scode_local_23, @function
	.text$SPI_PCM_CLOCK_Polarity_Config$scode_local_23:
	.align	1
	.export	SPI_PCM_CLOCK_Polarity_Config
	.type	SPI_PCM_CLOCK_Polarity_Config, @function
SPI_PCM_CLOCK_Polarity_Config:
.LFB23:
.LM160:
	.cfi_startproc
.LVL81:
.LM161:
	ADD	r0,r0,#4
.LVL82:
.LM162:
	CMP	r1,#0
	JNZ	.L56
.LM163:
// inline asm begin
	// 631 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #27
	// 0 "" 2
.LM164:
// inline asm end
	JMP	lr
.L56:
.LM165:
// inline asm begin
	// 626 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #27
	// 0 "" 2
.LM166:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE23:
	.size	SPI_PCM_CLOCK_Polarity_Config, .-SPI_PCM_CLOCK_Polarity_Config
	.section .text$SPI_MAIN_CLOCK_OUT_Enable
	.type	.text$SPI_MAIN_CLOCK_OUT_Enable$scode_local_24, @function
	.text$SPI_MAIN_CLOCK_OUT_Enable$scode_local_24:
	.align	1
	.export	SPI_MAIN_CLOCK_OUT_Enable
	.type	SPI_MAIN_CLOCK_OUT_Enable, @function
SPI_MAIN_CLOCK_OUT_Enable:
.LFB24:
.LM167:
	.cfi_startproc
.LVL83:
.LM168:
	CMP	r1,#0
	JNZ	.L60
.LM169:
// inline asm begin
	// 657 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #24
	// 0 "" 2
.LM170:
// inline asm end
	JMP	lr
.L60:
.LM171:
// inline asm begin
	// 652 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #24
	// 0 "" 2
.LM172:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE24:
	.size	SPI_MAIN_CLOCK_OUT_Enable, .-SPI_MAIN_CLOCK_OUT_Enable
	.section .text$SPI_Receive_Overflow_INT_Enable
	.type	.text$SPI_Receive_Overflow_INT_Enable$scode_local_25, @function
	.text$SPI_Receive_Overflow_INT_Enable$scode_local_25:
	.align	1
	.export	SPI_Receive_Overflow_INT_Enable
	.type	SPI_Receive_Overflow_INT_Enable, @function
SPI_Receive_Overflow_INT_Enable:
.LFB25:
.LM173:
	.cfi_startproc
.LVL84:
.LM174:
	ADD	r0,#12
.LVL85:
.LM175:
	CMP	r1,#0
	JNZ	.L64
.LM176:
// inline asm begin
	// 690 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #12
	// 0 "" 2
.LM177:
// inline asm end
	JMP	lr
.L64:
.LM178:
// inline asm begin
	// 685 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #12
	// 0 "" 2
.LM179:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE25:
	.size	SPI_Receive_Overflow_INT_Enable, .-SPI_Receive_Overflow_INT_Enable
	.section .text$SPI_Transmit_Overflow_INT_Enable
	.type	.text$SPI_Transmit_Overflow_INT_Enable$scode_local_26, @function
	.text$SPI_Transmit_Overflow_INT_Enable$scode_local_26:
	.align	1
	.export	SPI_Transmit_Overflow_INT_Enable
	.type	SPI_Transmit_Overflow_INT_Enable, @function
SPI_Transmit_Overflow_INT_Enable:
.LFB26:
.LM180:
	.cfi_startproc
.LVL86:
.LM181:
	ADD	r0,#12
.LVL87:
.LM182:
	CMP	r1,#0
	JNZ	.L68
.LM183:
// inline asm begin
	// 716 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #13
	// 0 "" 2
.LM184:
// inline asm end
	JMP	lr
.L68:
.LM185:
// inline asm begin
	// 711 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #13
	// 0 "" 2
.LM186:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE26:
	.size	SPI_Transmit_Overflow_INT_Enable, .-SPI_Transmit_Overflow_INT_Enable
	.section .text$SPI_RNEIE_INT_Enable
	.type	.text$SPI_RNEIE_INT_Enable$scode_local_27, @function
	.text$SPI_RNEIE_INT_Enable$scode_local_27:
	.align	1
	.export	SPI_RNEIE_INT_Enable
	.type	SPI_RNEIE_INT_Enable, @function
SPI_RNEIE_INT_Enable:
.LFB27:
.LM187:
	.cfi_startproc
.LVL88:
.LM188:
	ADD	r0,#12
.LVL89:
.LM189:
	CMP	r1,#0
	JNZ	.L72
.LM190:
// inline asm begin
	// 742 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #14
	// 0 "" 2
.LM191:
// inline asm end
	JMP	lr
.L72:
.LM192:
// inline asm begin
	// 737 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #14
	// 0 "" 2
.LM193:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE27:
	.size	SPI_RNEIE_INT_Enable, .-SPI_RNEIE_INT_Enable
	.section .text$SPI_TNEIE_INT_Enable
	.type	.text$SPI_TNEIE_INT_Enable$scode_local_28, @function
	.text$SPI_TNEIE_INT_Enable$scode_local_28:
	.align	1
	.export	SPI_TNEIE_INT_Enable
	.type	SPI_TNEIE_INT_Enable, @function
SPI_TNEIE_INT_Enable:
.LFB28:
.LM194:
	.cfi_startproc
.LVL90:
.LM195:
	ADD	r0,#12
.LVL91:
.LM196:
	CMP	r1,#0
	JNZ	.L76
.LM197:
// inline asm begin
	// 768 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #15
	// 0 "" 2
.LM198:
// inline asm end
	JMP	lr
.L76:
.LM199:
// inline asm begin
	// 763 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #15
	// 0 "" 2
.LM200:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE28:
	.size	SPI_TNEIE_INT_Enable, .-SPI_TNEIE_INT_Enable
	.section .text$SPI_Receive_DMA_INT_Enable
	.type	.text$SPI_Receive_DMA_INT_Enable$scode_local_29, @function
	.text$SPI_Receive_DMA_INT_Enable$scode_local_29:
	.align	1
	.export	SPI_Receive_DMA_INT_Enable
	.type	SPI_Receive_DMA_INT_Enable, @function
SPI_Receive_DMA_INT_Enable:
.LFB29:
.LM201:
	.cfi_startproc
.LVL92:
.LM202:
	ADD	r0,#12
.LVL93:
.LM203:
	CMP	r1,#0
	JNZ	.L80
.LM204:
// inline asm begin
	// 795 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #20
	// 0 "" 2
.LM205:
// inline asm end
	JMP	lr
.L80:
.LM206:
// inline asm begin
	// 790 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #20
	// 0 "" 2
.LM207:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE29:
	.size	SPI_Receive_DMA_INT_Enable, .-SPI_Receive_DMA_INT_Enable
	.section .text$SPI_Transmit_DMA_INT_Enable
	.type	.text$SPI_Transmit_DMA_INT_Enable$scode_local_30, @function
	.text$SPI_Transmit_DMA_INT_Enable$scode_local_30:
	.align	1
	.export	SPI_Transmit_DMA_INT_Enable
	.type	SPI_Transmit_DMA_INT_Enable, @function
SPI_Transmit_DMA_INT_Enable:
.LFB30:
.LM208:
	.cfi_startproc
.LVL94:
.LM209:
	ADD	r0,#12
.LVL95:
.LM210:
	CMP	r1,#0
	JNZ	.L84
.LM211:
// inline asm begin
	// 821 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #21
	// 0 "" 2
.LM212:
// inline asm end
	JMP	lr
.L84:
.LM213:
// inline asm begin
	// 816 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #21
	// 0 "" 2
.LM214:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE30:
	.size	SPI_Transmit_DMA_INT_Enable, .-SPI_Transmit_DMA_INT_Enable
	.section .text$SPI_Transmit_CHSIDE_INT_Enable
	.type	.text$SPI_Transmit_CHSIDE_INT_Enable$scode_local_31, @function
	.text$SPI_Transmit_CHSIDE_INT_Enable$scode_local_31:
	.align	1
	.export	SPI_Transmit_CHSIDE_INT_Enable
	.type	SPI_Transmit_CHSIDE_INT_Enable, @function
SPI_Transmit_CHSIDE_INT_Enable:
.LFB31:
.LM215:
	.cfi_startproc
.LVL96:
.LM216:
	ADD	r0,#12
.LVL97:
.LM217:
	CMP	r1,#0
	JNZ	.L88
.LM218:
// inline asm begin
	// 847 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r0], #3
	// 0 "" 2
.LM219:
// inline asm end
	JMP	lr
.L88:
.LM220:
// inline asm begin
	// 842 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r0], #3
	// 0 "" 2
.LM221:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE31:
	.size	SPI_Transmit_CHSIDE_INT_Enable, .-SPI_Transmit_CHSIDE_INT_Enable
	.section .text$SPI_Get_BUSY_Flag
	.type	.text$SPI_Get_BUSY_Flag$scode_local_32, @function
	.text$SPI_Get_BUSY_Flag$scode_local_32:
	.align	1
	.export	SPI_Get_BUSY_Flag
	.type	SPI_Get_BUSY_Flag, @function
SPI_Get_BUSY_Flag:
.LFB32:
.LM222:
	.cfi_startproc
.LVL98:
.LM223:
	LD.w	r0,[r0+#3]
.LVL99:
.LM224:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE32:
	.size	SPI_Get_BUSY_Flag, .-SPI_Get_BUSY_Flag
	.section .text$SPI_Get_Receive_Overflow_Flag
	.type	.text$SPI_Get_Receive_Overflow_Flag$scode_local_33, @function
	.text$SPI_Get_Receive_Overflow_Flag$scode_local_33:
	.align	1
	.export	SPI_Get_Receive_Overflow_Flag
	.type	SPI_Get_Receive_Overflow_Flag, @function
SPI_Get_Receive_Overflow_Flag:
.LFB33:
.LM225:
	.cfi_startproc
.LVL100:
.LM226:
	LD.w	r0,[r0+#3]
.LVL101:
	LSR	r0,#4
.LM227:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE33:
	.size	SPI_Get_Receive_Overflow_Flag, .-SPI_Get_Receive_Overflow_Flag
	.section .text$SPI_Get_Transmit_Overflow_Flag
	.type	.text$SPI_Get_Transmit_Overflow_Flag$scode_local_34, @function
	.text$SPI_Get_Transmit_Overflow_Flag$scode_local_34:
	.align	1
	.export	SPI_Get_Transmit_Overflow_Flag
	.type	SPI_Get_Transmit_Overflow_Flag, @function
SPI_Get_Transmit_Overflow_Flag:
.LFB34:
.LM228:
	.cfi_startproc
.LVL102:
.LM229:
	LD.w	r0,[r0+#3]
.LVL103:
	LSR	r0,#5
.LM230:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE34:
	.size	SPI_Get_Transmit_Overflow_Flag, .-SPI_Get_Transmit_Overflow_Flag
	.section .text$SPI_Get_Receive_Buf_Flag
	.type	.text$SPI_Get_Receive_Buf_Flag$scode_local_35, @function
	.text$SPI_Get_Receive_Buf_Flag$scode_local_35:
	.align	1
	.export	SPI_Get_Receive_Buf_Flag
	.type	SPI_Get_Receive_Buf_Flag, @function
SPI_Get_Receive_Buf_Flag:
.LFB35:
.LM231:
	.cfi_startproc
.LVL104:
.LM232:
	LD.w	r0,[r0+#3]
.LVL105:
	LSR	r0,#1
.LM233:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE35:
	.size	SPI_Get_Receive_Buf_Flag, .-SPI_Get_Receive_Buf_Flag
	.section .text$SPI_Get_Transmit_Buf_Flag
	.type	.text$SPI_Get_Transmit_Buf_Flag$scode_local_36, @function
	.text$SPI_Get_Transmit_Buf_Flag$scode_local_36:
	.align	1
	.export	SPI_Get_Transmit_Buf_Flag
	.type	SPI_Get_Transmit_Buf_Flag, @function
SPI_Get_Transmit_Buf_Flag:
.LFB36:
.LM234:
	.cfi_startproc
.LVL106:
.LM235:
	LD.w	r0,[r0+#3]
.LVL107:
	LSR	r0,#2
.LM236:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE36:
	.size	SPI_Get_Transmit_Buf_Flag, .-SPI_Get_Transmit_Buf_Flag
	.section .text$SPI_Clear_Receive_Overflow_INT_Flag
	.type	.text$SPI_Clear_Receive_Overflow_INT_Flag$scode_local_37, @function
	.text$SPI_Clear_Receive_Overflow_INT_Flag$scode_local_37:
	.align	1
	.export	SPI_Clear_Receive_Overflow_INT_Flag
	.type	SPI_Clear_Receive_Overflow_INT_Flag, @function
SPI_Clear_Receive_Overflow_INT_Flag:
.LFB37:
.LM237:
	.cfi_startproc
.LVL108:
.LM238:
	MOV	r5,#12
	ADD	r3,r0,r5
// inline asm begin
	// 989 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r3], #16
	// 0 "" 2
.LM239:
// inline asm end
	MOV	r4,#16
.L95:
.LM240:
	LD.w	r5,[r0+#3]
	ANL	r5,r5,r4
	JNZ	.L95
.LM241:
// inline asm begin
	// 991 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r3], #16
	// 0 "" 2
.LM242:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE37:
	.size	SPI_Clear_Receive_Overflow_INT_Flag, .-SPI_Clear_Receive_Overflow_INT_Flag
	.section .text$SPI_Clear_Transmit_Overflow_INT_Flag
	.type	.text$SPI_Clear_Transmit_Overflow_INT_Flag$scode_local_38, @function
	.text$SPI_Clear_Transmit_Overflow_INT_Flag$scode_local_38:
	.align	1
	.export	SPI_Clear_Transmit_Overflow_INT_Flag
	.type	SPI_Clear_Transmit_Overflow_INT_Flag, @function
SPI_Clear_Transmit_Overflow_INT_Flag:
.LFB38:
.LM243:
	.cfi_startproc
.LVL109:
.LM244:
	MOV	r5,#12
	ADD	r3,r0,r5
// inline asm begin
	// 1006 "../Peripherals/src/kf32f_basic_spi.c" 1
	SET [r3], #17
	// 0 "" 2
.LM245:
// inline asm end
	MOV	r4,#32
.L98:
.LM246:
	LD.w	r5,[r0+#3]
	ANL	r5,r5,r4
	JNZ	.L98
.LM247:
// inline asm begin
	// 1008 "../Peripherals/src/kf32f_basic_spi.c" 1
	CLR [r3], #17
	// 0 "" 2
.LM248:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE38:
	.size	SPI_Clear_Transmit_Overflow_INT_Flag, .-SPI_Clear_Transmit_Overflow_INT_Flag
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_39, @function
	.debug_info$scode_local_39:
.Ldebug_info0:
	.long	0xcb2
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF90
	.byte	0x1
	.long	.LASF91
	.long	.LASF92
	.long	.Ldebug_ranges0+0x18
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
	.uleb128 0x8
	.long	0x69
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF16
	.uleb128 0x9
	.long	.LASF93
	.byte	0x10
	.byte	0x2
	.short	0x2519
	.long	0x117
	.uleb128 0xa
	.long	.LASF17
	.byte	0x2
	.short	0x251a
	.long	0xc9
	.byte	0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x2
	.short	0x251b
	.long	0xc9
	.byte	0x4
	.uleb128 0xa
	.long	.LASF19
	.byte	0x2
	.short	0x251c
	.long	0xc9
	.byte	0x8
	.uleb128 0xb
	.string	"STR"
	.byte	0x2
	.short	0x251d
	.long	0xc9
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x2
	.short	0x251e
	.long	0xd5
	.uleb128 0xd
	.byte	0x1c
	.byte	0x4
	.byte	0x1e
	.long	0x180
	.uleb128 0xe
	.long	.LASF21
	.byte	0x4
	.byte	0x20
	.long	0x69
	.byte	0
	.uleb128 0xe
	.long	.LASF22
	.byte	0x4
	.byte	0x22
	.long	0x69
	.byte	0x4
	.uleb128 0xe
	.long	.LASF23
	.byte	0x4
	.byte	0x24
	.long	0x69
	.byte	0x8
	.uleb128 0xe
	.long	.LASF24
	.byte	0x4
	.byte	0x26
	.long	0x69
	.byte	0xc
	.uleb128 0xe
	.long	.LASF25
	.byte	0x4
	.byte	0x28
	.long	0x69
	.byte	0x10
	.uleb128 0xe
	.long	.LASF26
	.byte	0x4
	.byte	0x2a
	.long	0x69
	.byte	0x14
	.uleb128 0xe
	.long	.LASF27
	.byte	0x4
	.byte	0x2c
	.long	0x5e
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF28
	.byte	0x4
	.byte	0x2e
	.long	0x123
	.uleb128 0xd
	.byte	0x18
	.byte	0x4
	.byte	0x33
	.long	0x1dc
	.uleb128 0xe
	.long	.LASF21
	.byte	0x4
	.byte	0x35
	.long	0x69
	.byte	0
	.uleb128 0xe
	.long	.LASF29
	.byte	0x4
	.byte	0x37
	.long	0x69
	.byte	0x4
	.uleb128 0xe
	.long	.LASF30
	.byte	0x4
	.byte	0x39
	.long	0x69
	.byte	0x8
	.uleb128 0xe
	.long	.LASF22
	.byte	0x4
	.byte	0x3b
	.long	0x69
	.byte	0xc
	.uleb128 0xe
	.long	.LASF24
	.byte	0x4
	.byte	0x3d
	.long	0x69
	.byte	0x10
	.uleb128 0xe
	.long	.LASF31
	.byte	0x4
	.byte	0x3f
	.long	0x45
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF32
	.byte	0x4
	.byte	0x41
	.long	0x18b
	.uleb128 0xf
	.long	.LASF94
	.byte	0x2
	.short	0x3416
	.byte	0x1
	.long	0x69
	.byte	0x3
	.long	0x21e
	.uleb128 0x10
	.long	.LASF33
	.byte	0x2
	.short	0x3416
	.long	0x69
	.uleb128 0x10
	.long	.LASF34
	.byte	0x2
	.short	0x3416
	.long	0x69
	.uleb128 0x10
	.long	.LASF35
	.byte	0x2
	.short	0x3416
	.long	0x69
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x302
	.uleb128 0x12
	.long	.LASF38
	.byte	0x1
	.byte	0x2e
	.long	0x302
	.long	.LLST0
	.uleb128 0x13
	.long	.LVL4
	.long	0x259
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
	.long	0x26d
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
	.long	0x281
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
	.long	0x297
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x44
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.long	.LVL10
	.long	0x2ad
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x44
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.long	.LVL11
	.long	0x2c3
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x44
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.long	.LVL14
	.long	0x2d9
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x45
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.long	.LVL15
	.long	0x2ef
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x45
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL16
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x40
	.byte	0x45
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.long	0x117
	.uleb128 0x11
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3a0
	.uleb128 0x17
	.long	.LASF38
	.byte	0x1
	.byte	0x5b
	.long	0x302
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF39
	.byte	0x1
	.byte	0x5b
	.long	0x3a0
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	.LASF42
	.byte	0x1
	.byte	0x5d
	.long	0x69
	.long	.LLST1
	.uleb128 0x19
	.long	0x1e7
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.byte	0x75
	.long	0x375
	.uleb128 0x1a
	.long	0x211
	.long	.LLST2
	.uleb128 0x1b
	.long	0x205
	.sleb128 -13183
	.uleb128 0x1c
	.long	0x1f9
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1d
	.long	0x1e7
	.long	.LBB26
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7a
	.uleb128 0x1a
	.long	0x211
	.long	.LLST3
	.uleb128 0x1b
	.long	0x205
	.sleb128 -65536
	.uleb128 0x1a
	.long	0x1f9
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.long	0x180
	.uleb128 0x11
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x441
	.uleb128 0x17
	.long	.LASF38
	.byte	0x1
	.byte	0x84
	.long	0x302
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.byte	0x84
	.long	0x441
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	.LASF42
	.byte	0x1
	.byte	0x86
	.long	0x69
	.long	.LLST5
	.uleb128 0x19
	.long	0x1e7
	.long	.LBB30
	.long	.LBE30
	.byte	0x1
	.byte	0x9b
	.long	0x417
	.uleb128 0x1a
	.long	0x211
	.long	.LLST6
	.uleb128 0x1b
	.long	0x205
	.sleb128 -267386881
	.uleb128 0x1a
	.long	0x1f9
	.long	.LLST7
	.byte	0
	.uleb128 0x1e
	.long	0x1e7
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.byte	0xa0
	.uleb128 0x1a
	.long	0x211
	.long	.LLST8
	.uleb128 0x1b
	.long	0x205
	.sleb128 -16711681
	.uleb128 0x1c
	.long	0x1f9
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.long	0x1dc
	.uleb128 0x11
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x46d
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.byte	0xa9
	.long	0x3a0
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x493
	.uleb128 0x17
	.long	.LASF46
	.byte	0x1
	.byte	0xc1
	.long	0x441
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4c8
	.uleb128 0x12
	.long	.LASF38
	.byte	0x1
	.byte	0xdf
	.long	0x302
	.long	.LLST9
	.uleb128 0x17
	.long	.LASF48
	.byte	0x1
	.byte	0xdf
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4fd
	.uleb128 0x12
	.long	.LASF38
	.byte	0x1
	.byte	0xfb
	.long	0x302
	.long	.LLST10
	.uleb128 0x17
	.long	.LASF48
	.byte	0x1
	.byte	0xfb
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.short	0x114
	.byte	0x1
	.long	0x69
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x53b
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x114
	.long	0x302
	.long	.LLST11
	.uleb128 0x21
	.long	.LASF42
	.byte	0x1
	.short	0x116
	.long	0x69
	.long	.LLST12
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.short	0x127
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x571
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.short	0x127
	.long	0x302
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF51
	.byte	0x1
	.short	0x127
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.short	0x135
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5a7
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.short	0x135
	.long	0x302
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF51
	.byte	0x1
	.short	0x135
	.long	0x45
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.short	0x144
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x618
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.short	0x144
	.long	0x302
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	.LASF54
	.byte	0x1
	.short	0x144
	.long	0x5e
	.long	.LLST13
	.uleb128 0x21
	.long	.LASF42
	.byte	0x1
	.short	0x146
	.long	0x69
	.long	.LLST14
	.uleb128 0x24
	.long	0x1e7
	.long	.LBB34
	.long	.LBE34
	.byte	0x1
	.short	0x14d
	.uleb128 0x1a
	.long	0x211
	.long	.LLST15
	.uleb128 0x1b
	.long	0x205
	.sleb128 -65536
	.uleb128 0x1c
	.long	0x1f9
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.short	0x157
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x68a
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.short	0x157
	.long	0x302
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.string	"DIV"
	.byte	0x1
	.short	0x157
	.long	0x45
	.long	.LLST16
	.uleb128 0x21
	.long	.LASF42
	.byte	0x1
	.short	0x159
	.long	0x69
	.long	.LLST17
	.uleb128 0x24
	.long	0x1e7
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.short	0x160
	.uleb128 0x1a
	.long	0x211
	.long	.LLST18
	.uleb128 0x1b
	.long	0x205
	.sleb128 -16711681
	.uleb128 0x1c
	.long	0x1f9
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.short	0x16f
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x6e9
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.short	0x16f
	.long	0x302
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	.LASF57
	.byte	0x1
	.short	0x16f
	.long	0x69
	.long	.LLST19
	.uleb128 0x24
	.long	0x1e7
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.short	0x176
	.uleb128 0x1a
	.long	0x211
	.long	.LLST20
	.uleb128 0x1b
	.long	0x205
	.sleb128 -15
	.uleb128 0x1c
	.long	0x1f9
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.short	0x183
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x74a
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.short	0x183
	.long	0x302
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	.LASF59
	.byte	0x1
	.short	0x183
	.long	0x69
	.long	.LLST21
	.uleb128 0x24
	.long	0x1e7
	.long	.LBB40
	.long	.LBE40
	.byte	0x1
	.short	0x18a
	.uleb128 0x1a
	.long	0x211
	.long	.LLST22
	.uleb128 0x1b
	.long	0x205
	.sleb128 -49
	.uleb128 0x1a
	.long	0x1f9
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.short	0x196
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x782
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x196
	.long	0x302
	.long	.LLST24
	.uleb128 0x23
	.long	.LASF61
	.byte	0x1
	.short	0x196
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.short	0x1b2
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7ba
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x1b2
	.long	0x302
	.long	.LLST25
	.uleb128 0x23
	.long	.LASF63
	.byte	0x1
	.short	0x1b2
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.short	0x1ce
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7f2
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x1ce
	.long	0x302
	.long	.LLST26
	.uleb128 0x23
	.long	.LASF65
	.byte	0x1
	.short	0x1ce
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.short	0x1eb
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x855
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.short	0x1eb
	.long	0x302
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	.LASF67
	.byte	0x1
	.short	0x1eb
	.long	0x69
	.long	.LLST27
	.uleb128 0x24
	.long	0x1e7
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.short	0x1f2
	.uleb128 0x1a
	.long	0x211
	.long	.LLST28
	.uleb128 0x1b
	.long	0x205
	.sleb128 -12289
	.uleb128 0x1a
	.long	0x1f9
	.long	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.short	0x200
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8b9
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.short	0x200
	.long	0x302
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	.LASF69
	.byte	0x1
	.short	0x200
	.long	0x69
	.long	.LLST30
	.uleb128 0x24
	.long	0x1e7
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.short	0x207
	.uleb128 0x1a
	.long	0x211
	.long	.LLST31
	.uleb128 0x1b
	.long	0x205
	.sleb128 -3145729
	.uleb128 0x1a
	.long	0x1f9
	.long	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.short	0x215
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x91d
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.short	0x215
	.long	0x302
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	.LASF71
	.byte	0x1
	.short	0x215
	.long	0x69
	.long	.LLST33
	.uleb128 0x24
	.long	0x1e7
	.long	.LBB46
	.long	.LBE46
	.byte	0x1
	.short	0x21c
	.uleb128 0x1a
	.long	0x211
	.long	.LLST34
	.uleb128 0x1b
	.long	0x205
	.sleb128 -12582913
	.uleb128 0x1a
	.long	0x1f9
	.long	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.short	0x228
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x955
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x228
	.long	0x302
	.long	.LLST36
	.uleb128 0x23
	.long	.LASF48
	.byte	0x1
	.short	0x228
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.short	0x244
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x98d
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x244
	.long	0x302
	.long	.LLST37
	.uleb128 0x23
	.long	.LASF48
	.byte	0x1
	.short	0x244
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.short	0x268
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9c5
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x268
	.long	0x302
	.long	.LLST38
	.uleb128 0x23
	.long	.LASF48
	.byte	0x1
	.short	0x268
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.short	0x282
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9fb
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.short	0x282
	.long	0x302
	.byte	0x1
	.byte	0x50
	.uleb128 0x23
	.long	.LASF48
	.byte	0x1
	.short	0x282
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.short	0x2a3
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa33
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x2a3
	.long	0x302
	.long	.LLST39
	.uleb128 0x23
	.long	.LASF48
	.byte	0x1
	.short	0x2a3
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.short	0x2bd
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa6b
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x2bd
	.long	0x302
	.long	.LLST40
	.uleb128 0x23
	.long	.LASF48
	.byte	0x1
	.short	0x2bd
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF78
	.byte	0x1
	.short	0x2d7
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xaa3
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x2d7
	.long	0x302
	.long	.LLST41
	.uleb128 0x23
	.long	.LASF48
	.byte	0x1
	.short	0x2d7
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.short	0x2f1
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xadb
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x2f1
	.long	0x302
	.long	.LLST42
	.uleb128 0x23
	.long	.LASF48
	.byte	0x1
	.short	0x2f1
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.short	0x30c
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb13
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x30c
	.long	0x302
	.long	.LLST43
	.uleb128 0x23
	.long	.LASF48
	.byte	0x1
	.short	0x30c
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.short	0x326
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb4b
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x326
	.long	0x302
	.long	.LLST44
	.uleb128 0x23
	.long	.LASF48
	.byte	0x1
	.short	0x326
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.short	0x340
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb83
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x340
	.long	0x302
	.long	.LLST45
	.uleb128 0x23
	.long	.LASF48
	.byte	0x1
	.short	0x340
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.short	0x35a
	.byte	0x1
	.long	0xbe
	.long	.LFB32
	.long	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbb1
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x35a
	.long	0x302
	.long	.LLST46
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.short	0x373
	.byte	0x1
	.long	0xbe
	.long	.LFB33
	.long	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbdf
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x373
	.long	0x302
	.long	.LLST47
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.short	0x38d
	.byte	0x1
	.long	0xbe
	.long	.LFB34
	.long	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc0d
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x38d
	.long	0x302
	.long	.LLST48
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF87
	.byte	0x1
	.short	0x3a6
	.byte	0x1
	.long	0xbe
	.long	.LFB35
	.long	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc3b
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x3a6
	.long	0x302
	.long	.LLST49
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.short	0x3bf
	.byte	0x1
	.long	0xbe
	.long	.LFB36
	.long	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc69
	.uleb128 0x20
	.long	.LASF38
	.byte	0x1
	.short	0x3bf
	.long	0x302
	.long	.LLST50
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.short	0x3d7
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc91
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.short	0x3d7
	.long	0x302
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.short	0x3e8
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.short	0x3e8
	.long	0x302
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_40, @function
	.debug_abbrev$scode_local_40:
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x26
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
	.type	.debug_loc$scode_local_41, @function
	.debug_loc$scode_local_41:
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
	.long	.LVL12
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.short	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LFE1
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL17
	.long	.LVL19
	.short	0x18
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 8
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
	.byte	0x71
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.short	0x1
	.byte	0x54
	.long	.LVL20
	.long	.LVL22
	.short	0x9
	.byte	0x71
	.sleb128 24
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL22
	.long	.LFE2
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST2:
	.long	.LVL18
	.long	.LVL19
	.short	0x18
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 8
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
	.byte	0x71
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL19
	.long	.LVL21
	.short	0x1
	.byte	0x54
	.long	.LVL21
	.long	.LFE2
	.short	0x18
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 8
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
	.byte	0x71
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL21
	.long	.LVL22
	.short	0x9
	.byte	0x71
	.sleb128 24
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL22
	.long	.LFE2
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST4:
	.long	.LVL21
	.long	.LVL22
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST5:
	.long	.LVL23
	.long	.LVL25
	.short	0x14
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 8
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
	.long	.LVL25
	.long	.LVL26
	.short	0x1
	.byte	0x54
	.long	.LVL26
	.long	.LVL29
	.short	0xa
	.byte	0x71
	.sleb128 20
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	.LVL29
	.long	.LFE3
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST6:
	.long	.LVL24
	.long	.LVL25
	.short	0x14
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 8
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
	.long	.LVL25
	.long	.LVL28
	.short	0x1
	.byte	0x54
	.long	.LVL28
	.long	.LFE3
	.short	0x14
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 8
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
	.long	0
	.long	0
.LLST7:
	.long	.LVL24
	.long	.LVL27
	.short	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST8:
	.long	.LVL27
	.long	.LVL29
	.short	0xa
	.byte	0x71
	.sleb128 20
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	.LVL29
	.long	.LFE3
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST9:
	.long	.LVL32
	.long	.LVL33
	.short	0x1
	.byte	0x50
	.long	.LVL33
	.long	.LFE6
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL34
	.long	.LVL35
	.short	0x1
	.byte	0x50
	.long	.LVL35
	.long	.LFE7
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL36
	.long	.LVL37
	.short	0x1
	.byte	0x50
	.long	.LVL37
	.long	.LFE8
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL36
	.long	.LVL37
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL37
	.long	.LFE8
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL40
	.long	.LVL43
	.short	0x1
	.byte	0x51
	.long	.LVL43
	.long	.LFE11
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL41
	.long	.LVL43
	.short	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL43
	.long	.LFE11
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
.LLST15:
	.long	.LVL42
	.long	.LVL43
	.short	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL43
	.long	.LFE11
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
.LLST16:
	.long	.LVL44
	.long	.LVL47
	.short	0x1
	.byte	0x51
	.long	.LVL47
	.long	.LFE12
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL45
	.long	.LVL47
	.short	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	.LVL47
	.long	.LFE12
	.short	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL46
	.long	.LVL47
	.short	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	.LVL47
	.long	.LFE12
	.short	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL48
	.long	.LVL50
	.short	0x1
	.byte	0x51
	.long	.LVL50
	.long	.LFE13
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL49
	.long	.LVL50
	.short	0x1
	.byte	0x51
	.long	.LVL50
	.long	.LFE13
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL51
	.long	.LVL54
	.short	0x1
	.byte	0x51
	.long	.LVL54
	.long	.LFE14
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL52
	.long	.LVL54
	.short	0x1
	.byte	0x51
	.long	.LVL54
	.long	.LFE14
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL52
	.long	.LVL53
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST24:
	.long	.LVL55
	.long	.LVL56
	.short	0x1
	.byte	0x50
	.long	.LVL56
	.long	.LFE15
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL57
	.long	.LVL58
	.short	0x1
	.byte	0x50
	.long	.LVL58
	.long	.LFE16
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL59
	.long	.LVL60
	.short	0x1
	.byte	0x50
	.long	.LVL60
	.long	.LFE17
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL61
	.long	.LVL64
	.short	0x1
	.byte	0x51
	.long	.LVL64
	.long	.LFE18
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL62
	.long	.LVL64
	.short	0x1
	.byte	0x51
	.long	.LVL64
	.long	.LFE18
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL62
	.long	.LVL63
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST30:
	.long	.LVL65
	.long	.LVL68
	.short	0x1
	.byte	0x51
	.long	.LVL68
	.long	.LFE19
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL66
	.long	.LVL68
	.short	0x1
	.byte	0x51
	.long	.LVL68
	.long	.LFE19
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL66
	.long	.LVL67
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST33:
	.long	.LVL69
	.long	.LVL72
	.short	0x1
	.byte	0x51
	.long	.LVL72
	.long	.LFE20
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL70
	.long	.LVL72
	.short	0x1
	.byte	0x51
	.long	.LVL72
	.long	.LFE20
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL70
	.long	.LVL71
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST36:
	.long	.LVL73
	.long	.LVL74
	.short	0x1
	.byte	0x50
	.long	.LVL74
	.long	.LFE21
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL75
	.long	.LVL76
	.short	0x1
	.byte	0x50
	.long	.LVL76
	.long	.LVL77
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	.LVL77
	.long	.LVL78
	.short	0x1
	.byte	0x50
	.long	.LVL78
	.long	.LVL79
	.short	0x3
	.byte	0x75
	.sleb128 -4
	.byte	0x9f
	.long	.LVL79
	.long	.LVL80
	.short	0x1
	.byte	0x50
	.long	.LVL80
	.long	.LFE22
	.short	0x3
	.byte	0x75
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL81
	.long	.LVL82
	.short	0x1
	.byte	0x50
	.long	.LVL82
	.long	.LFE23
	.short	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL84
	.long	.LVL85
	.short	0x1
	.byte	0x50
	.long	.LVL85
	.long	.LFE25
	.short	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL86
	.long	.LVL87
	.short	0x1
	.byte	0x50
	.long	.LVL87
	.long	.LFE26
	.short	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL88
	.long	.LVL89
	.short	0x1
	.byte	0x50
	.long	.LVL89
	.long	.LFE27
	.short	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL90
	.long	.LVL91
	.short	0x1
	.byte	0x50
	.long	.LVL91
	.long	.LFE28
	.short	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL92
	.long	.LVL93
	.short	0x1
	.byte	0x50
	.long	.LVL93
	.long	.LFE29
	.short	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL94
	.long	.LVL95
	.short	0x1
	.byte	0x50
	.long	.LVL95
	.long	.LFE30
	.short	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL96
	.long	.LVL97
	.short	0x1
	.byte	0x50
	.long	.LVL97
	.long	.LFE31
	.short	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL98
	.long	.LVL99
	.short	0x1
	.byte	0x50
	.long	.LVL99
	.long	.LFE32
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL100
	.long	.LVL101
	.short	0x1
	.byte	0x50
	.long	.LVL101
	.long	.LFE33
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL102
	.long	.LVL103
	.short	0x1
	.byte	0x50
	.long	.LVL103
	.long	.LFE34
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL104
	.long	.LVL105
	.short	0x1
	.byte	0x50
	.long	.LVL105
	.long	.LFE35
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL106
	.long	.LVL107
	.short	0x1
	.byte	0x50
	.long	.LVL107
	.long	.LFE36
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_42, @function
	.debug_aranges$scode_local_42:
	.long	0x144
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
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_43, @function
	.debug_ranges$scode_local_43:
.Ldebug_ranges0:
	.long	.LBB26
	.long	.LBE26
	.long	.LBB29
	.long	.LBE29
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
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_44, @function
	.debug_line$scode_local_44:
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
	.string	"kf32f_basic_spi.c"
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
	.string	"kf32f_basic_spi.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x45
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x1b
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
	.byte	0x26
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
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
	.long	.LM16
	.byte	0x72
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13225
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13219
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13214
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13215
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13215
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13214
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x18
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
	.long	.LM31
	.byte	0x9b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x2d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13186
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13181
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13177
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13176
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
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
	.long	.LM44
	.byte	0xc0
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
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x19
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
	.long	.LM53
	.byte	0xd8
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
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
	.long	.LM61
	.byte	0xf6
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x14
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
	.long	.LFE6
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0x3
	.sleb128 251
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM74
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
	.long	.LM75
	.byte	0x3
	.sleb128 276
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
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
	.long	.LM78
	.byte	0x3
	.sleb128 295
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM79
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM80
	.byte	0x18
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
	.long	.LM81
	.byte	0x3
	.sleb128 309
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x18
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
	.long	.LM84
	.byte	0x3
	.sleb128 324
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM85
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM86
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13003
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM87
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13003
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM88
	.byte	0x18
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
	.sleb128 343
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM90
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM91
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM92
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12985
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12984
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
	.byte	0x18
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
	.long	.LM95
	.byte	0x3
	.sleb128 367
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
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12962
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12962
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
	.byte	0x18
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
	.long	.LM100
	.byte	0x3
	.sleb128 387
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM101
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM102
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12942
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM103
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12942
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM104
	.byte	0x18
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
	.long	.LM105
	.byte	0x3
	.sleb128 406
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM106
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM107
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM108
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM109
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM110
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM111
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
	.long	.LM112
	.byte	0x3
	.sleb128 434
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM113
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM114
	.byte	0x14
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
	.long	.LFE16
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM119
	.byte	0x3
	.sleb128 462
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM120
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM121
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM122
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM123
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM124
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM125
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
	.long	.LM126
	.byte	0x3
	.sleb128 491
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM127
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM128
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12838
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM129
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12838
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM130
	.byte	0x18
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
	.long	.LM131
	.byte	0x3
	.sleb128 512
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM132
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM133
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12817
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM134
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12817
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM135
	.byte	0x18
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
	.long	.LM136
	.byte	0x3
	.sleb128 533
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM137
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM138
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12796
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM139
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12796
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM140
	.byte	0x18
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
	.long	.LM141
	.byte	0x3
	.sleb128 552
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM142
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM143
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM144
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM145
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM146
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM147
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
	.long	.LM148
	.byte	0x3
	.sleb128 580
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM149
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM150
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM151
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM152
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM153
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM154
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM155
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM156
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM157
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM158
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM159
	.byte	0x1f
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
	.long	.LM160
	.byte	0x3
	.sleb128 616
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM161
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM162
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM163
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM164
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM165
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM166
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
	.long	.LM167
	.byte	0x3
	.sleb128 642
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM168
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM169
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM170
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM171
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM172
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
	.long	.LM173
	.byte	0x3
	.sleb128 675
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM174
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM175
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM176
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM177
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM178
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM179
	.byte	0x1e
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
	.long	.LM180
	.byte	0x3
	.sleb128 701
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
	.long	.LFE26
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM187
	.byte	0x3
	.sleb128 727
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
	.long	.LFE27
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM194
	.byte	0x3
	.sleb128 753
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM195
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM196
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM197
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM198
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM199
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM200
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
	.long	.LM201
	.byte	0x3
	.sleb128 780
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM202
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM203
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM204
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM205
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM206
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM207
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
	.long	.LM208
	.byte	0x3
	.sleb128 806
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM209
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM210
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM211
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM212
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM213
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM214
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
	.long	.LM215
	.byte	0x3
	.sleb128 832
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM216
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM217
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM218
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM219
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM220
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM221
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
	.long	.LM222
	.byte	0x3
	.sleb128 858
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM223
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM224
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
	.long	.LM225
	.byte	0x3
	.sleb128 883
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM226
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM227
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
	.long	.LM228
	.byte	0x3
	.sleb128 909
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM229
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM230
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
	.long	.LM231
	.byte	0x3
	.sleb128 934
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM232
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM233
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
	.long	.LM234
	.byte	0x3
	.sleb128 959
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM235
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM236
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
	.long	.LM237
	.byte	0x3
	.sleb128 983
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM238
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM239
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM240
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM241
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM242
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
	.long	.LM243
	.byte	0x3
	.sleb128 1000
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM244
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM245
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM246
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM247
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM248
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE38
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_45, @function
	.debug_str$scode_local_45:
.LASF89:
	.string	"SPI_Clear_Receive_Overflow_INT_Flag"
.LASF49:
	.string	"I2S_Mode_Select"
.LASF20:
	.string	"SPI_SFRmap"
.LASF56:
	.string	"SPI_MODE_Config"
.LASF85:
	.string	"SPI_Get_Receive_Overflow_Flag"
.LASF41:
	.string	"i2sInitStruct"
.LASF11:
	.string	"FALSE"
.LASF36:
	.string	"SPI_Reset"
.LASF21:
	.string	"m_Mode"
.LASF16:
	.string	"sizetype"
.LASF31:
	.string	"m_Prescaler"
.LASF75:
	.string	"SPI_MAIN_CLOCK_OUT_Enable"
.LASF50:
	.string	"SPI_I2S_SendData32"
.LASF44:
	.string	"SPI_InitStruct"
.LASF66:
	.string	"SPI_BIT_SELECT_Config"
.LASF37:
	.string	"SPI_Configuration"
.LASF79:
	.string	"SPI_TNEIE_INT_Enable"
.LASF4:
	.string	"short int"
.LASF92:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\SmartDriver_Bootloader\\\\Release"
.LASF67:
	.string	"DataSize"
.LASF5:
	.string	"uint8_t"
.LASF58:
	.string	"SPI_CLK_Config"
.LASF82:
	.string	"SPI_Transmit_CHSIDE_INT_Enable"
.LASF48:
	.string	"NewState"
.LASF46:
	.string	"I2S_InitStruct"
.LASF74:
	.string	"SPI_PCM_CLOCK_Polarity_Config"
.LASF45:
	.string	"I2S_Struct_Init"
.LASF29:
	.string	"m_Standard"
.LASF71:
	.string	"Standard"
.LASF8:
	.string	"long long int"
.LASF72:
	.string	"SPI_PCM_Config"
.LASF87:
	.string	"SPI_Get_Receive_Buf_Flag"
.LASF23:
	.string	"m_FirstBit"
.LASF70:
	.string	"SPI_I2S_STANDARD_Config"
.LASF94:
	.string	"SFR_Config"
.LASF25:
	.string	"m_CKE"
.LASF35:
	.string	"WriteVal"
.LASF60:
	.string	"SPI_Data_Direction_Config"
.LASF42:
	.string	"tmpreg"
.LASF47:
	.string	"SPI_Cmd"
.LASF32:
	.string	"I2S_InitTypeDef"
.LASF24:
	.string	"m_CKP"
.LASF62:
	.string	"SPI_Clock_Polarity_Config"
.LASF52:
	.string	"SPI_I2S_SendData8"
.LASF3:
	.string	"unsigned char"
.LASF22:
	.string	"m_Clock"
.LASF78:
	.string	"SPI_RNEIE_INT_Enable"
.LASF63:
	.string	"Polarity"
.LASF73:
	.string	"SPI_CHLEN_Config"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint32_t"
.LASF33:
	.string	"SfrMem"
.LASF0:
	.string	"unsigned int"
.LASF90:
	.string	"GNU C 4.7.0"
.LASF68:
	.string	"SPI_I2S_MODE_Config"
.LASF17:
	.string	"BRGR"
.LASF51:
	.string	"Data"
.LASF1:
	.string	"short unsigned int"
.LASF55:
	.string	"I2S_DIV_Config"
.LASF53:
	.string	"SPI_BaudRate_Config"
.LASF10:
	.string	"char"
.LASF6:
	.string	"uint16_t"
.LASF61:
	.string	"DataDirection"
.LASF34:
	.string	"SfrMask"
.LASF65:
	.string	"ClockEdge"
.LASF83:
	.string	"SPI_I2S_ReceiveData"
.LASF13:
	.string	"FunctionalState"
.LASF40:
	.string	"I2S_Configuration"
.LASF39:
	.string	"spiInitStruct"
.LASF64:
	.string	"SPI_Clock_Edge_Config"
.LASF81:
	.string	"SPI_Transmit_DMA_INT_Enable"
.LASF54:
	.string	"BAUDRATE"
.LASF30:
	.string	"m_PCM"
.LASF43:
	.string	"SPI_Struct_Init"
.LASF14:
	.string	"RESET"
.LASF93:
	.string	"SPI_MemMap"
.LASF77:
	.string	"SPI_Transmit_Overflow_INT_Enable"
.LASF91:
	.string	"../Peripherals/src/kf32f_basic_spi.c"
.LASF69:
	.string	"Mode"
.LASF38:
	.string	"SPIx"
.LASF27:
	.string	"m_BaudRate"
.LASF84:
	.string	"SPI_Get_BUSY_Flag"
.LASF57:
	.string	"MODE"
.LASF12:
	.string	"TRUE"
.LASF86:
	.string	"SPI_Get_Transmit_Overflow_Flag"
.LASF59:
	.string	"ClockSource"
.LASF18:
	.string	"CTLR"
.LASF19:
	.string	"BUFR"
.LASF76:
	.string	"SPI_Receive_Overflow_INT_Enable"
.LASF15:
	.string	"FlagStatus"
.LASF26:
	.string	"m_DataSize"
.LASF95:
	.string	"SPI_Clear_Transmit_Overflow_INT_Flag"
.LASF28:
	.string	"SPI_InitTypeDef"
.LASF88:
	.string	"SPI_Get_Transmit_Buf_Flag"
.LASF80:
	.string	"SPI_Receive_DMA_INT_Enable"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
