	.file	"kf32f_basic_i2c.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$I2C_Reset
	.type	.text$I2C_Reset$scode_local_1, @function
	.text$I2C_Reset$scode_local_1:
	.align	1
	.export	I2C_Reset
	.type	I2C_Reset, @function
I2C_Reset:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
	PUSH	lr
	.cfi_def_cfa_offset 4
.LM2:
	LD	r5,#1073745152
	CMP	r0,r5
	JZ	.L5
.LM3:
	LD	r5,#1073745280
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
	LSL	r0,#27
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL4:
.LM6:
	MOV	r0,#1
	LSL	r0,#27
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL5:
.LM7:
	MOV	r0,#1
	LSL	r0,#27
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
	LSL	r0,#26
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL9:
.LM10:
	MOV	r0,#1
	LSL	r0,#26
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL10:
.LM11:
	MOV	r0,#1
	LSL	r0,#26
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL11:
	JMP	.L1
	.cfi_endproc
.LFE1:
	.size	I2C_Reset, .-I2C_Reset
	.section .text$I2C_Configuration
	.type	.text$I2C_Configuration$scode_local_2, @function
	.text$I2C_Configuration$scode_local_2:
	.align	1
	.export	I2C_Configuration
	.type	I2C_Configuration, @function
I2C_Configuration:
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
	LD.w	r2,[r1+#2]
	ORL	r5,r5,r2
.LM16:
	LD.w	r4,[r1+#3]
	ORL	r5,r5,r4
.LM17:
	LD.w	r2,[r1+#6]
	ORL	r5,r5,r2
	LD.w	r4,[r1+#5]
	LSL	r4,#12
.LM18:
	ORL	r5,r5,r4
.LBB16:
.LBB17:
.LM19:
	LD	r4,#-50540547
	ANL	r4,r3,r4
	ORL	r5,r5,r4
.LBE17:
.LBE16:
.LM20:
	ST.w	[r0],r5
.LM21:
	LD.h	r5,[r1+#8]
	LSL	r5,#16
.LM22:
	LD.h	r4,[r1+#9]
	ORL	r5,r5,r4
.LVL14:
.LM23:
	LD.w	r4,[r0+#4]
.LVL15:
	ST.w	[r0+#4],r5
.LM24:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	I2C_Configuration, .-I2C_Configuration
	.section .text$I2C_Struct_Init
	.type	.text$I2C_Struct_Init$scode_local_3, @function
	.text$I2C_Struct_Init$scode_local_3:
	.align	1
	.export	I2C_Struct_Init
	.type	I2C_Struct_Init, @function
I2C_Struct_Init:
.LFB3:
.LM25:
	.cfi_startproc
.LVL16:
.LM26:
	MOV	r5,#0
	ST.w	[r0],r5
.LM27:
	ST.w	[r0+#1],r5
.LM28:
	ST.w	[r0+#2],r5
.LM29:
	ST.w	[r0+#3],r5
.LM30:
	MOV	r4,#4
	ST.h	[r0+#8],r4
.LM31:
	ST.h	[r0+#9],r4
.LM32:
	ST.w	[r0+#5],r5
.LM33:
	ST.w	[r0+#6],r5
.LM34:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	I2C_Struct_Init, .-I2C_Struct_Init
	.section .text$I2C_Cmd
	.type	.text$I2C_Cmd$scode_local_4, @function
	.text$I2C_Cmd$scode_local_4:
	.align	1
	.export	I2C_Cmd
	.type	I2C_Cmd, @function
I2C_Cmd:
.LFB4:
.LM35:
	.cfi_startproc
.LVL17:
.LM36:
	CMP	r1,#0
	JNZ	.L12
.LM37:
// inline asm begin
	// 184 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #0
	// 0 "" 2
.LM38:
// inline asm end
	JMP	lr
.L12:
.LM39:
// inline asm begin
	// 179 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #0
	// 0 "" 2
.LM40:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	I2C_Cmd, .-I2C_Cmd
	.section .text$I2C_Bufr_Address_Config
	.type	.text$I2C_Bufr_Address_Config$scode_local_5, @function
	.text$I2C_Bufr_Address_Config$scode_local_5:
	.align	1
	.export	I2C_Bufr_Address_Config
	.type	I2C_Bufr_Address_Config, @function
I2C_Bufr_Address_Config:
.LFB5:
.LM41:
	.cfi_startproc
.LVL18:
.LM42:
	CMP	r1,#0
	JNZ	.L16
.LM43:
// inline asm begin
	// 211 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #1
	// 0 "" 2
.LM44:
// inline asm end
	JMP	lr
.L16:
.LM45:
// inline asm begin
	// 206 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #1
	// 0 "" 2
.LM46:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	I2C_Bufr_Address_Config, .-I2C_Bufr_Address_Config
	.section .text$I2C_Generate_START
	.type	.text$I2C_Generate_START$scode_local_6, @function
	.text$I2C_Generate_START$scode_local_6:
	.align	1
	.export	I2C_Generate_START
	.type	I2C_Generate_START, @function
I2C_Generate_START:
.LFB6:
.LM47:
	.cfi_startproc
.LVL19:
.LM48:
	CMP	r1,#0
	JNZ	.L20
.LM49:
// inline asm begin
	// 237 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #8
	// 0 "" 2
.LM50:
// inline asm end
	JMP	lr
.L20:
.LM51:
// inline asm begin
	// 232 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #8
	// 0 "" 2
.LM52:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	I2C_Generate_START, .-I2C_Generate_START
	.section .text$I2C_Generate_STOP
	.type	.text$I2C_Generate_STOP$scode_local_7, @function
	.text$I2C_Generate_STOP$scode_local_7:
	.align	1
	.export	I2C_Generate_STOP
	.type	I2C_Generate_STOP, @function
I2C_Generate_STOP:
.LFB7:
.LM53:
	.cfi_startproc
.LVL20:
.LM54:
	CMP	r1,#0
	JNZ	.L24
.LM55:
// inline asm begin
	// 263 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #10
	// 0 "" 2
.LM56:
// inline asm end
	JMP	lr
.L24:
.LM57:
// inline asm begin
	// 258 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #10
	// 0 "" 2
.LM58:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	I2C_Generate_STOP, .-I2C_Generate_STOP
	.section .text$I2C_Ack_Config
	.type	.text$I2C_Ack_Config$scode_local_8, @function
	.text$I2C_Ack_Config$scode_local_8:
	.align	1
	.export	I2C_Ack_Config
	.type	I2C_Ack_Config, @function
I2C_Ack_Config:
.LFB8:
.LM59:
	.cfi_startproc
.LVL21:
.LM60:
	CMP	r1,#0
	JNZ	.L28
.LM61:
// inline asm begin
	// 289 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #12
	// 0 "" 2
.LM62:
// inline asm end
	JMP	lr
.L28:
.LM63:
// inline asm begin
	// 284 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #12
	// 0 "" 2
.LM64:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE8:
	.size	I2C_Ack_Config, .-I2C_Ack_Config
	.section .text$I2C_Ack_DATA_Config
	.type	.text$I2C_Ack_DATA_Config$scode_local_9, @function
	.text$I2C_Ack_DATA_Config$scode_local_9:
	.align	1
	.export	I2C_Ack_DATA_Config
	.type	I2C_Ack_DATA_Config, @function
I2C_Ack_DATA_Config:
.LFB9:
.LM65:
	.cfi_startproc
.LVL22:
.LM66:
	CMP	r1,#0
	JNZ	.L32
.LM67:
// inline asm begin
	// 317 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #13
	// 0 "" 2
.LM68:
// inline asm end
	JMP	lr
.L32:
.LM69:
// inline asm begin
	// 312 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #13
	// 0 "" 2
.LM70:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE9:
	.size	I2C_Ack_DATA_Config, .-I2C_Ack_DATA_Config
	.section .text$I2C_Call_Cmd
	.type	.text$I2C_Call_Cmd$scode_local_10, @function
	.text$I2C_Call_Cmd$scode_local_10:
	.align	1
	.export	I2C_Call_Cmd
	.type	I2C_Call_Cmd, @function
I2C_Call_Cmd:
.LFB10:
.LM71:
	.cfi_startproc
.LVL23:
.LM72:
	CMP	r1,#0
	JNZ	.L36
.LM73:
// inline asm begin
	// 343 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #14
	// 0 "" 2
.LM74:
// inline asm end
	JMP	lr
.L36:
.LM75:
// inline asm begin
	// 338 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #14
	// 0 "" 2
.LM76:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE10:
	.size	I2C_Call_Cmd, .-I2C_Call_Cmd
	.section .text$I2C_Clock_Config
	.type	.text$I2C_Clock_Config$scode_local_11, @function
	.text$I2C_Clock_Config$scode_local_11:
	.align	1
	.export	I2C_Clock_Config
	.type	I2C_Clock_Config, @function
I2C_Clock_Config:
.LFB11:
.LM77:
	.cfi_startproc
.LVL24:
.LM78:
	LD.w	r5,[r0]
.LVL25:
.LBB18:
.LBB19:
.LM79:
	CLR	r5,#16
	CLR	r5,#17
.LVL26:
	ORL	r1,r1,r5
.LVL27:
.LBE19:
.LBE18:
.LM80:
	ST.w	[r0],r1
.LM81:
	JMP	lr
	.cfi_endproc
.LFE11:
	.size	I2C_Clock_Config, .-I2C_Clock_Config
	.section .text$I2C_MATCH_ADDRESS_Config
	.type	.text$I2C_MATCH_ADDRESS_Config$scode_local_12, @function
	.text$I2C_MATCH_ADDRESS_Config$scode_local_12:
	.align	1
	.export	I2C_MATCH_ADDRESS_Config
	.type	I2C_MATCH_ADDRESS_Config, @function
I2C_MATCH_ADDRESS_Config:
.LFB12:
.LM82:
	.cfi_startproc
.LVL28:
.LM83:
	CMP	r1,#0
	JNZ	.L41
.LM84:
// inline asm begin
	// 388 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #20
	// 0 "" 2
.LM85:
// inline asm end
	JMP	lr
.L41:
.LM86:
// inline asm begin
	// 383 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #20
	// 0 "" 2
.LM87:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE12:
	.size	I2C_MATCH_ADDRESS_Config, .-I2C_MATCH_ADDRESS_Config
	.section .text$I2C_SCL_Enable
	.type	.text$I2C_SCL_Enable$scode_local_13, @function
	.text$I2C_SCL_Enable$scode_local_13:
	.align	1
	.export	I2C_SCL_Enable
	.type	I2C_SCL_Enable, @function
I2C_SCL_Enable:
.LFB13:
.LM88:
	.cfi_startproc
.LVL29:
.LM89:
	CMP	r1,#0
	JNZ	.L45
.LM90:
// inline asm begin
	// 414 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #21
	// 0 "" 2
.LM91:
// inline asm end
	JMP	lr
.L45:
.LM92:
// inline asm begin
	// 409 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #21
	// 0 "" 2
.LM93:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE13:
	.size	I2C_SCL_Enable, .-I2C_SCL_Enable
	.section .text$I2C_NMENA_Enable
	.type	.text$I2C_NMENA_Enable$scode_local_14, @function
	.text$I2C_NMENA_Enable$scode_local_14:
	.align	1
	.export	I2C_NMENA_Enable
	.type	I2C_NMENA_Enable, @function
I2C_NMENA_Enable:
.LFB14:
.LM94:
	.cfi_startproc
.LVL30:
.LM95:
	CMP	r1,#0
	JNZ	.L49
.LM96:
// inline asm begin
	// 440 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #22
	// 0 "" 2
.LM97:
// inline asm end
	JMP	lr
.L49:
.LM98:
// inline asm begin
	// 435 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #22
	// 0 "" 2
.LM99:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE14:
	.size	I2C_NMENA_Enable, .-I2C_NMENA_Enable
	.section .text$I2C_SMBUS_Enable
	.type	.text$I2C_SMBUS_Enable$scode_local_15, @function
	.text$I2C_SMBUS_Enable$scode_local_15:
	.align	1
	.export	I2C_SMBUS_Enable
	.type	I2C_SMBUS_Enable, @function
I2C_SMBUS_Enable:
.LFB15:
.LM100:
	.cfi_startproc
.LVL31:
.LM101:
	CMP	r1,#0
	JNZ	.L53
.LM102:
// inline asm begin
	// 468 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #24
	// 0 "" 2
.LM103:
// inline asm end
	JMP	lr
.L53:
.LM104:
// inline asm begin
	// 463 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #24
	// 0 "" 2
.LM105:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE15:
	.size	I2C_SMBUS_Enable, .-I2C_SMBUS_Enable
	.section .text$I2C_SMBT_Config
	.type	.text$I2C_SMBT_Config$scode_local_16, @function
	.text$I2C_SMBT_Config$scode_local_16:
	.align	1
	.export	I2C_SMBT_Config
	.type	I2C_SMBT_Config, @function
I2C_SMBT_Config:
.LFB16:
.LM106:
	.cfi_startproc
.LVL32:
.LM107:
	CMP	r1,#0
	JNZ	.L57
.LM108:
// inline asm begin
	// 496 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #25
	// 0 "" 2
.LM109:
// inline asm end
	JMP	lr
.L57:
.LM110:
// inline asm begin
	// 491 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #25
	// 0 "" 2
.LM111:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE16:
	.size	I2C_SMBT_Config, .-I2C_SMBT_Config
	.section .text$I2C_SMBus_ALERT_Config
	.type	.text$I2C_SMBus_ALERT_Config$scode_local_17, @function
	.text$I2C_SMBus_ALERT_Config$scode_local_17:
	.align	1
	.export	I2C_SMBus_ALERT_Config
	.type	I2C_SMBus_ALERT_Config, @function
I2C_SMBus_ALERT_Config:
.LFB17:
.LM112:
	.cfi_startproc
.LVL33:
.LM113:
	CMP	r1,#0
	JNZ	.L61
.LM114:
// inline asm begin
	// 522 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #27
	// 0 "" 2
.LM115:
// inline asm end
	JMP	lr
.L61:
.LM116:
// inline asm begin
	// 517 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #27
	// 0 "" 2
.LM117:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE17:
	.size	I2C_SMBus_ALERT_Config, .-I2C_SMBus_ALERT_Config
	.section .text$I2C_SendData
	.type	.text$I2C_SendData$scode_local_18, @function
	.text$I2C_SendData$scode_local_18:
	.align	1
	.export	I2C_SendData
	.type	I2C_SendData, @function
I2C_SendData:
.LFB18:
.LM118:
	.cfi_startproc
.LVL34:
.LM119:
	ST.w	[r0+#2],r1
.LM120:
	JMP	lr
	.cfi_endproc
.LFE18:
	.size	I2C_SendData, .-I2C_SendData
	.section .text$I2C_SendData8
	.type	.text$I2C_SendData8$scode_local_19, @function
	.text$I2C_SendData8$scode_local_19:
	.align	1
	.export	I2C_SendData8
	.type	I2C_SendData8, @function
I2C_SendData8:
.LFB19:
.LM121:
	.cfi_startproc
.LVL35:
	ZXT.b	r1,r1
.LM122:
	ST.w	[r0+#2],r1
.LM123:
	JMP	lr
	.cfi_endproc
.LFE19:
	.size	I2C_SendData8, .-I2C_SendData8
	.section .text$I2C_ReceiveData
	.type	.text$I2C_ReceiveData$scode_local_20, @function
	.text$I2C_ReceiveData$scode_local_20:
	.align	1
	.export	I2C_ReceiveData
	.type	I2C_ReceiveData, @function
I2C_ReceiveData:
.LFB20:
.LM124:
	.cfi_startproc
.LVL36:
.LM125:
	LD.w	r0,[r0+#2]
.LVL37:
.LM126:
	LD	r5,#1023
	ANL	r0,r0,r5
.LVL38:
	JMP	lr
	.cfi_endproc
.LFE20:
	.size	I2C_ReceiveData, .-I2C_ReceiveData
	.section .text$I2C_ARP_Enable
	.type	.text$I2C_ARP_Enable$scode_local_21, @function
	.text$I2C_ARP_Enable$scode_local_21:
	.align	1
	.export	I2C_ARP_Enable
	.type	I2C_ARP_Enable, @function
I2C_ARP_Enable:
.LFB21:
.LM127:
	.cfi_startproc
.LVL39:
.LM128:
	CMP	r1,#0
	JNZ	.L68
.LM129:
// inline asm begin
	// 602 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #26
	// 0 "" 2
.LM130:
// inline asm end
	JMP	lr
.L68:
.LM131:
// inline asm begin
	// 597 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #26
	// 0 "" 2
.LM132:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE21:
	.size	I2C_ARP_Enable, .-I2C_ARP_Enable
	.section .text$I2C_ADDR_Config
	.type	.text$I2C_ADDR_Config$scode_local_22, @function
	.text$I2C_ADDR_Config$scode_local_22:
	.align	1
	.export	I2C_ADDR_Config
	.type	I2C_ADDR_Config, @function
I2C_ADDR_Config:
.LFB22:
.LM133:
	.cfi_startproc
.LVL40:
.LM134:
	CMP	r1,#0
	JZ	.L72
.LM135:
	ADD	r0,#16
.LVL41:
	LSL	r1,#2
.LVL42:
	ADD	r0,r0,r1
.LVL43:
.LM136:
	LD.w	r4,[r0]
.LVL44:
.LBB20:
.LBB21:
.LM137:
	LD	r5,#-1024
	ANL	r5,r4,r5
	ORL	r2,r5,r2
.LVL45:
.LBE21:
.LBE20:
.LM138:
	ST.w	[r0],r2
.LM139:
	JMP	lr
.LVL46:
.L72:
.LM140:
	ADD	r0,#12
.LVL47:
.LM141:
	LD.w	r4,[r0]
.LVL48:
.LBB23:
.LBB22:
.LM142:
	LD	r5,#-1024
	ANL	r5,r4,r5
	ORL	r2,r5,r2
.LVL49:
.LBE22:
.LBE23:
.LM143:
	ST.w	[r0],r2
.LM144:
	JMP	lr
	.cfi_endproc
.LFE22:
	.size	I2C_ADDR_Config, .-I2C_ADDR_Config
	.section .text$I2C_MSK_Config
	.type	.text$I2C_MSK_Config$scode_local_23, @function
	.text$I2C_MSK_Config$scode_local_23:
	.align	1
	.export	I2C_MSK_Config
	.type	I2C_MSK_Config, @function
I2C_MSK_Config:
.LFB23:
.LM145:
	.cfi_startproc
.LVL50:
.LM146:
	LSL	r2,#16
.LVL51:
.LM147:
	CMP	r1,#0
	JZ	.L76
.LM148:
	ADD	r0,#16
.LVL52:
	LSL	r1,#2
.LVL53:
	ADD	r0,r0,r1
.LVL54:
.LM149:
	LD.w	r4,[r0]
.LVL55:
.LBB24:
.LBB25:
.LM150:
	LD	r5,#-67043329
	ANL	r5,r4,r5
	ORL	r2,r5,r2
.LVL56:
.LBE25:
.LBE24:
.LM151:
	ST.w	[r0],r2
.LM152:
	JMP	lr
.LVL57:
.L76:
.LM153:
	ADD	r0,#12
.LVL58:
.LM154:
	LD.w	r4,[r0]
.LVL59:
.LBB27:
.LBB26:
.LM155:
	LD	r5,#-67043329
	ANL	r5,r4,r5
	ORL	r2,r5,r2
.LVL60:
.LBE26:
.LBE27:
.LM156:
	ST.w	[r0],r2
.LM157:
	JMP	lr
	.cfi_endproc
.LFE23:
	.size	I2C_MSK_Config, .-I2C_MSK_Config
	.section .text$I2C_BRGH_Config
	.type	.text$I2C_BRGH_Config$scode_local_24, @function
	.text$I2C_BRGH_Config$scode_local_24:
	.align	1
	.export	I2C_BRGH_Config
	.type	I2C_BRGH_Config, @function
I2C_BRGH_Config:
.LFB24:
.LM158:
	.cfi_startproc
.LVL61:
	ZXT.h	r1,r1
.LVL62:
.LM159:
	LD.w	r4,[r0+#4]
.LVL63:
.LBB28:
.LBB29:
.LM160:
	LD	r5,#-65536
	ANL	r5,r4,r5
	ORL	r1,r1,r5
.LVL64:
.LBE29:
.LBE28:
.LM161:
	ST.w	[r0+#4],r1
.LM162:
	JMP	lr
	.cfi_endproc
.LFE24:
	.size	I2C_BRGH_Config, .-I2C_BRGH_Config
	.section .text$I2C_BRGL_Config
	.type	.text$I2C_BRGL_Config$scode_local_25, @function
	.text$I2C_BRGL_Config$scode_local_25:
	.align	1
	.export	I2C_BRGL_Config
	.type	I2C_BRGL_Config, @function
I2C_BRGL_Config:
.LFB25:
.LM163:
	.cfi_startproc
.LVL65:
.LM164:
	LD.w	r5,[r0+#4]
.LVL66:
.LM165:
	LSL	r1,#16
.LVL67:
.LBB30:
.LBB31:
.LM166:
	ZXT.h	r5,r5
.LVL68:
	ORL	r5,r1,r5
.LBE31:
.LBE30:
.LM167:
	ST.w	[r0+#4],r5
.LM168:
	JMP	lr
	.cfi_endproc
.LFE25:
	.size	I2C_BRGL_Config, .-I2C_BRGL_Config
	.section .text$I2C_Start_INT_Enable
	.type	.text$I2C_Start_INT_Enable$scode_local_26, @function
	.text$I2C_Start_INT_Enable$scode_local_26:
	.align	1
	.export	I2C_Start_INT_Enable
	.type	I2C_Start_INT_Enable, @function
I2C_Start_INT_Enable:
.LFB26:
.LM169:
	.cfi_startproc
.LVL69:
.LM170:
	ADD	r0,#32
.LVL70:
.LM171:
	CMP	r1,#0
	JNZ	.L82
.LM172:
// inline asm begin
	// 742 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #0
	// 0 "" 2
.LM173:
// inline asm end
	JMP	lr
.L82:
.LM174:
// inline asm begin
	// 737 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #0
	// 0 "" 2
.LM175:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE26:
	.size	I2C_Start_INT_Enable, .-I2C_Start_INT_Enable
	.section .text$I2C_Stop_INT_Enable
	.type	.text$I2C_Stop_INT_Enable$scode_local_27, @function
	.text$I2C_Stop_INT_Enable$scode_local_27:
	.align	1
	.export	I2C_Stop_INT_Enable
	.type	I2C_Stop_INT_Enable, @function
I2C_Stop_INT_Enable:
.LFB27:
.LM176:
	.cfi_startproc
.LVL71:
.LM177:
	ADD	r0,#32
.LVL72:
.LM178:
	CMP	r1,#0
	JNZ	.L86
.LM179:
// inline asm begin
	// 768 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #1
	// 0 "" 2
.LM180:
// inline asm end
	JMP	lr
.L86:
.LM181:
// inline asm begin
	// 763 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #1
	// 0 "" 2
.LM182:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE27:
	.size	I2C_Stop_INT_Enable, .-I2C_Stop_INT_Enable
	.section .text$I2C_Ack_Fail_INT_Enable
	.type	.text$I2C_Ack_Fail_INT_Enable$scode_local_28, @function
	.text$I2C_Ack_Fail_INT_Enable$scode_local_28:
	.align	1
	.export	I2C_Ack_Fail_INT_Enable
	.type	I2C_Ack_Fail_INT_Enable, @function
I2C_Ack_Fail_INT_Enable:
.LFB28:
.LM183:
	.cfi_startproc
.LVL73:
.LM184:
	ADD	r0,#32
.LVL74:
.LM185:
	CMP	r1,#0
	JNZ	.L90
.LM186:
// inline asm begin
	// 794 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #5
	// 0 "" 2
.LM187:
// inline asm end
	JMP	lr
.L90:
.LM188:
// inline asm begin
	// 789 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #5
	// 0 "" 2
.LM189:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE28:
	.size	I2C_Ack_Fail_INT_Enable, .-I2C_Ack_Fail_INT_Enable
	.section .text$I2C_Arbitration_Lost_INT_Enable
	.type	.text$I2C_Arbitration_Lost_INT_Enable$scode_local_29, @function
	.text$I2C_Arbitration_Lost_INT_Enable$scode_local_29:
	.align	1
	.export	I2C_Arbitration_Lost_INT_Enable
	.type	I2C_Arbitration_Lost_INT_Enable, @function
I2C_Arbitration_Lost_INT_Enable:
.LFB29:
.LM190:
	.cfi_startproc
.LVL75:
.LM191:
	ADD	r0,#32
.LVL76:
.LM192:
	CMP	r1,#0
	JNZ	.L94
.LM193:
// inline asm begin
	// 820 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #6
	// 0 "" 2
.LM194:
// inline asm end
	JMP	lr
.L94:
.LM195:
// inline asm begin
	// 815 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #6
	// 0 "" 2
.LM196:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE29:
	.size	I2C_Arbitration_Lost_INT_Enable, .-I2C_Arbitration_Lost_INT_Enable
	.section .text$I2C_SMBus_Alert_INT_Enable
	.type	.text$I2C_SMBus_Alert_INT_Enable$scode_local_30, @function
	.text$I2C_SMBus_Alert_INT_Enable$scode_local_30:
	.align	1
	.export	I2C_SMBus_Alert_INT_Enable
	.type	I2C_SMBus_Alert_INT_Enable, @function
I2C_SMBus_Alert_INT_Enable:
.LFB30:
.LM197:
	.cfi_startproc
.LVL77:
.LM198:
	ADD	r0,#32
.LVL78:
.LM199:
	CMP	r1,#0
	JNZ	.L98
.LM200:
// inline asm begin
	// 846 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #8
	// 0 "" 2
.LM201:
// inline asm end
	JMP	lr
.L98:
.LM202:
// inline asm begin
	// 841 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #8
	// 0 "" 2
.LM203:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE30:
	.size	I2C_SMBus_Alert_INT_Enable, .-I2C_SMBus_Alert_INT_Enable
	.section .text$I2C_SMBus_HostHead_INT_Enable
	.type	.text$I2C_SMBus_HostHead_INT_Enable$scode_local_31, @function
	.text$I2C_SMBus_HostHead_INT_Enable$scode_local_31:
	.align	1
	.export	I2C_SMBus_HostHead_INT_Enable
	.type	I2C_SMBus_HostHead_INT_Enable, @function
I2C_SMBus_HostHead_INT_Enable:
.LFB31:
.LM204:
	.cfi_startproc
.LVL79:
.LM205:
	ADD	r0,#32
.LVL80:
.LM206:
	CMP	r1,#0
	JNZ	.L102
.LM207:
// inline asm begin
	// 872 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #9
	// 0 "" 2
.LM208:
// inline asm end
	JMP	lr
.L102:
.LM209:
// inline asm begin
	// 867 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #9
	// 0 "" 2
.LM210:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE31:
	.size	I2C_SMBus_HostHead_INT_Enable, .-I2C_SMBus_HostHead_INT_Enable
	.section .text$I2C_SMBus_Device_Defaultaddress_INT_Enable
	.type	.text$I2C_SMBus_Device_Defaultaddress_INT_Enable$scode_local_32, @function
	.text$I2C_SMBus_Device_Defaultaddress_INT_Enable$scode_local_32:
	.align	1
	.export	I2C_SMBus_Device_Defaultaddress_INT_Enable
	.type	I2C_SMBus_Device_Defaultaddress_INT_Enable, @function
I2C_SMBus_Device_Defaultaddress_INT_Enable:
.LFB32:
.LM211:
	.cfi_startproc
.LVL81:
.LM212:
	ADD	r0,#32
.LVL82:
.LM213:
	CMP	r1,#0
	JNZ	.L106
.LM214:
// inline asm begin
	// 899 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #10
	// 0 "" 2
.LM215:
// inline asm end
	JMP	lr
.L106:
.LM216:
// inline asm begin
	// 894 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #10
	// 0 "" 2
.LM217:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE32:
	.size	I2C_SMBus_Device_Defaultaddress_INT_Enable, .-I2C_SMBus_Device_Defaultaddress_INT_Enable
	.section .text$I2C_ISIE_INT_Enable
	.type	.text$I2C_ISIE_INT_Enable$scode_local_33, @function
	.text$I2C_ISIE_INT_Enable$scode_local_33:
	.align	1
	.export	I2C_ISIE_INT_Enable
	.type	I2C_ISIE_INT_Enable, @function
I2C_ISIE_INT_Enable:
.LFB33:
.LM218:
	.cfi_startproc
.LVL83:
.LM219:
	ADD	r0,#32
.LVL84:
.LM220:
	CMP	r1,#0
	JNZ	.L110
.LM221:
// inline asm begin
	// 925 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #11
	// 0 "" 2
.LM222:
// inline asm end
	JMP	lr
.L110:
.LM223:
// inline asm begin
	// 920 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #11
	// 0 "" 2
.LM224:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE33:
	.size	I2C_ISIE_INT_Enable, .-I2C_ISIE_INT_Enable
	.section .text$I2C_Receive_DMA_INT_Enable
	.type	.text$I2C_Receive_DMA_INT_Enable$scode_local_34, @function
	.text$I2C_Receive_DMA_INT_Enable$scode_local_34:
	.align	1
	.export	I2C_Receive_DMA_INT_Enable
	.type	I2C_Receive_DMA_INT_Enable, @function
I2C_Receive_DMA_INT_Enable:
.LFB34:
.LM225:
	.cfi_startproc
.LVL85:
.LM226:
	ADD	r0,#32
.LVL86:
.LM227:
	CMP	r1,#0
	JNZ	.L114
.LM228:
// inline asm begin
	// 951 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #16
	// 0 "" 2
.LM229:
// inline asm end
	JMP	lr
.L114:
.LM230:
// inline asm begin
	// 946 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #16
	// 0 "" 2
.LM231:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE34:
	.size	I2C_Receive_DMA_INT_Enable, .-I2C_Receive_DMA_INT_Enable
	.section .text$I2C_Transmit_DMA_INT_Enable
	.type	.text$I2C_Transmit_DMA_INT_Enable$scode_local_35, @function
	.text$I2C_Transmit_DMA_INT_Enable$scode_local_35:
	.align	1
	.export	I2C_Transmit_DMA_INT_Enable
	.type	I2C_Transmit_DMA_INT_Enable, @function
I2C_Transmit_DMA_INT_Enable:
.LFB35:
.LM232:
	.cfi_startproc
.LVL87:
.LM233:
	ADD	r0,#32
.LVL88:
.LM234:
	CMP	r1,#0
	JNZ	.L118
.LM235:
// inline asm begin
	// 977 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #17
	// 0 "" 2
.LM236:
// inline asm end
	JMP	lr
.L118:
.LM237:
// inline asm begin
	// 972 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #17
	// 0 "" 2
.LM238:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE35:
	.size	I2C_Transmit_DMA_INT_Enable, .-I2C_Transmit_DMA_INT_Enable
	.section .text$I2C_Bus_Error_INT_Enable
	.type	.text$I2C_Bus_Error_INT_Enable$scode_local_36, @function
	.text$I2C_Bus_Error_INT_Enable$scode_local_36:
	.align	1
	.export	I2C_Bus_Error_INT_Enable
	.type	I2C_Bus_Error_INT_Enable, @function
I2C_Bus_Error_INT_Enable:
.LFB36:
.LM239:
	.cfi_startproc
.LVL89:
.LM240:
	ADD	r0,#32
.LVL90:
.LM241:
	CMP	r1,#0
	JNZ	.L122
.LM242:
// inline asm begin
	// 1003 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r0], #18
	// 0 "" 2
.LM243:
// inline asm end
	JMP	lr
.L122:
.LM244:
// inline asm begin
	// 998 "../Peripherals/src/kf32f_basic_i2c.c" 1
	SET [r0], #18
	// 0 "" 2
.LM245:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE36:
	.size	I2C_Bus_Error_INT_Enable, .-I2C_Bus_Error_INT_Enable
	.section .text$I2C_Get_Start_Flag
	.type	.text$I2C_Get_Start_Flag$scode_local_37, @function
	.text$I2C_Get_Start_Flag$scode_local_37:
	.align	1
	.export	I2C_Get_Start_Flag
	.type	I2C_Get_Start_Flag, @function
I2C_Get_Start_Flag:
.LFB37:
.LM246:
	.cfi_startproc
.LVL91:
.LM247:
	LD.w	r0,[r0+#1]
.LVL92:
.LM248:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE37:
	.size	I2C_Get_Start_Flag, .-I2C_Get_Start_Flag
	.section .text$I2C_Clear_Start_Flag
	.type	.text$I2C_Clear_Start_Flag$scode_local_38, @function
	.text$I2C_Clear_Start_Flag$scode_local_38:
	.align	1
	.export	I2C_Clear_Start_Flag
	.type	I2C_Clear_Start_Flag, @function
I2C_Clear_Start_Flag:
.LFB38:
.LM249:
	.cfi_startproc
.LVL93:
.LM250:
	LD.w	r5,[r0+#1]
	MOV	r4,#1
	ANL	r5,r5,r4
	JZ	.L124
	ADD	r3,r0,#4
.L126:
.LM251:
// inline asm begin
	// 1046 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r3], #0
	// 0 "" 2
.LM252:
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L126
.L124:
.LM253:
	JMP	lr
	.cfi_endproc
.LFE38:
	.size	I2C_Clear_Start_Flag, .-I2C_Clear_Start_Flag
	.section .text$I2C_Get_Stop_Flag
	.type	.text$I2C_Get_Stop_Flag$scode_local_39, @function
	.text$I2C_Get_Stop_Flag$scode_local_39:
	.align	1
	.export	I2C_Get_Stop_Flag
	.type	I2C_Get_Stop_Flag, @function
I2C_Get_Stop_Flag:
.LFB39:
.LM254:
	.cfi_startproc
.LVL94:
.LM255:
	LD.w	r0,[r0+#1]
.LVL95:
	LSR	r0,#1
.LM256:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE39:
	.size	I2C_Get_Stop_Flag, .-I2C_Get_Stop_Flag
	.section .text$I2C_Clear_Stop_Flag
	.type	.text$I2C_Clear_Stop_Flag$scode_local_40, @function
	.text$I2C_Clear_Stop_Flag$scode_local_40:
	.align	1
	.export	I2C_Clear_Stop_Flag
	.type	I2C_Clear_Stop_Flag, @function
I2C_Clear_Stop_Flag:
.LFB40:
.LM257:
	.cfi_startproc
.LVL96:
.LM258:
	LD.w	r5,[r0+#1]
	MOV	r4,#2
	ANL	r5,r5,r4
	JZ	.L132
	ADD	r3,r0,#4
.L134:
.LM259:
// inline asm begin
	// 1089 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r3], #1
	// 0 "" 2
.LM260:
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L134
.L132:
.LM261:
	JMP	lr
	.cfi_endproc
.LFE40:
	.size	I2C_Clear_Stop_Flag, .-I2C_Clear_Stop_Flag
	.section .text$I2C_Get_Address_Match_Flag
	.type	.text$I2C_Get_Address_Match_Flag$scode_local_41, @function
	.text$I2C_Get_Address_Match_Flag$scode_local_41:
	.align	1
	.export	I2C_Get_Address_Match_Flag
	.type	I2C_Get_Address_Match_Flag, @function
I2C_Get_Address_Match_Flag:
.LFB41:
.LM262:
	.cfi_startproc
.LVL97:
.LM263:
	LD.w	r0,[r0+#1]
.LVL98:
	LSR	r0,#2
.LM264:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE41:
	.size	I2C_Get_Address_Match_Flag, .-I2C_Get_Address_Match_Flag
	.section .text$I2C_Get_HighAddress_Flag
	.type	.text$I2C_Get_HighAddress_Flag$scode_local_42, @function
	.text$I2C_Get_HighAddress_Flag$scode_local_42:
	.align	1
	.export	I2C_Get_HighAddress_Flag
	.type	I2C_Get_HighAddress_Flag, @function
I2C_Get_HighAddress_Flag:
.LFB42:
.LM265:
	.cfi_startproc
.LVL99:
.LM266:
	LD.w	r0,[r0+#1]
.LVL100:
	LSR	r0,#3
.LM267:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE42:
	.size	I2C_Get_HighAddress_Flag, .-I2C_Get_HighAddress_Flag
	.section .text$I2C_Get_Data_Flag
	.type	.text$I2C_Get_Data_Flag$scode_local_43, @function
	.text$I2C_Get_Data_Flag$scode_local_43:
	.align	1
	.export	I2C_Get_Data_Flag
	.type	I2C_Get_Data_Flag, @function
I2C_Get_Data_Flag:
.LFB43:
.LM268:
	.cfi_startproc
.LVL101:
.LM269:
	LD.w	r0,[r0+#1]
.LVL102:
	LSR	r0,#4
.LM270:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE43:
	.size	I2C_Get_Data_Flag, .-I2C_Get_Data_Flag
	.section .text$I2C_Get_Ack_Fail_Flag
	.type	.text$I2C_Get_Ack_Fail_Flag$scode_local_44, @function
	.text$I2C_Get_Ack_Fail_Flag$scode_local_44:
	.align	1
	.export	I2C_Get_Ack_Fail_Flag
	.type	I2C_Get_Ack_Fail_Flag, @function
I2C_Get_Ack_Fail_Flag:
.LFB44:
.LM271:
	.cfi_startproc
.LVL103:
.LM272:
	LD.w	r0,[r0+#1]
.LVL104:
	LSR	r0,#5
.LM273:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE44:
	.size	I2C_Get_Ack_Fail_Flag, .-I2C_Get_Ack_Fail_Flag
	.section .text$I2C_Clear_Ack_Fail_Flag
	.type	.text$I2C_Clear_Ack_Fail_Flag$scode_local_45, @function
	.text$I2C_Clear_Ack_Fail_Flag$scode_local_45:
	.align	1
	.export	I2C_Clear_Ack_Fail_Flag
	.type	I2C_Clear_Ack_Fail_Flag, @function
I2C_Clear_Ack_Fail_Flag:
.LFB45:
.LM274:
	.cfi_startproc
.LVL105:
.LM275:
	LD.w	r5,[r0+#1]
	MOV	r4,#32
	ANL	r5,r5,r4
	JZ	.L143
	ADD	r3,r0,#4
.L145:
.LM276:
// inline asm begin
	// 1208 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r3], #5
	// 0 "" 2
.LM277:
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L145
.L143:
.LM278:
	JMP	lr
	.cfi_endproc
.LFE45:
	.size	I2C_Clear_Ack_Fail_Flag, .-I2C_Clear_Ack_Fail_Flag
	.section .text$I2C_Get_Arbitration_Lost_Flag
	.type	.text$I2C_Get_Arbitration_Lost_Flag$scode_local_46, @function
	.text$I2C_Get_Arbitration_Lost_Flag$scode_local_46:
	.align	1
	.export	I2C_Get_Arbitration_Lost_Flag
	.type	I2C_Get_Arbitration_Lost_Flag, @function
I2C_Get_Arbitration_Lost_Flag:
.LFB46:
.LM279:
	.cfi_startproc
.LVL106:
.LM280:
	LD.w	r0,[r0+#1]
.LVL107:
	LSR	r0,#6
.LM281:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE46:
	.size	I2C_Get_Arbitration_Lost_Flag, .-I2C_Get_Arbitration_Lost_Flag
	.section .text$I2C_Clear_Arbitration_Lost_Flag
	.type	.text$I2C_Clear_Arbitration_Lost_Flag$scode_local_47, @function
	.text$I2C_Clear_Arbitration_Lost_Flag$scode_local_47:
	.align	1
	.export	I2C_Clear_Arbitration_Lost_Flag
	.type	I2C_Clear_Arbitration_Lost_Flag, @function
I2C_Clear_Arbitration_Lost_Flag:
.LFB47:
.LM282:
	.cfi_startproc
.LVL108:
.LM283:
	LD.w	r5,[r0+#1]
	MOV	r4,#64
	ANL	r5,r5,r4
	JZ	.L151
	ADD	r3,r0,#4
.L153:
.LM284:
// inline asm begin
	// 1251 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r3], #6
	// 0 "" 2
.LM285:
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L153
.L151:
.LM286:
	JMP	lr
	.cfi_endproc
.LFE47:
	.size	I2C_Clear_Arbitration_Lost_Flag, .-I2C_Clear_Arbitration_Lost_Flag
	.section .text$I2C_Get_Write_Read_Flag
	.type	.text$I2C_Get_Write_Read_Flag$scode_local_48, @function
	.text$I2C_Get_Write_Read_Flag$scode_local_48:
	.align	1
	.export	I2C_Get_Write_Read_Flag
	.type	I2C_Get_Write_Read_Flag, @function
I2C_Get_Write_Read_Flag:
.LFB48:
.LM287:
	.cfi_startproc
.LVL109:
.LM288:
	LD.w	r0,[r0+#1]
.LVL110:
	LSR	r0,#7
.LM289:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE48:
	.size	I2C_Get_Write_Read_Flag, .-I2C_Get_Write_Read_Flag
	.section .text$I2C_Get_SMBus_Alert_Flag
	.type	.text$I2C_Get_SMBus_Alert_Flag$scode_local_49, @function
	.text$I2C_Get_SMBus_Alert_Flag$scode_local_49:
	.align	1
	.export	I2C_Get_SMBus_Alert_Flag
	.type	I2C_Get_SMBus_Alert_Flag, @function
I2C_Get_SMBus_Alert_Flag:
.LFB49:
.LM290:
	.cfi_startproc
.LVL111:
.LM291:
	LD.w	r0,[r0+#1]
.LVL112:
	LSR	r0,#8
.LM292:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE49:
	.size	I2C_Get_SMBus_Alert_Flag, .-I2C_Get_SMBus_Alert_Flag
	.section .text$I2C_Clear_SMBus_Alert_Flag
	.type	.text$I2C_Clear_SMBus_Alert_Flag$scode_local_50, @function
	.text$I2C_Clear_SMBus_Alert_Flag$scode_local_50:
	.align	1
	.export	I2C_Clear_SMBus_Alert_Flag
	.type	I2C_Clear_SMBus_Alert_Flag, @function
I2C_Clear_SMBus_Alert_Flag:
.LFB50:
.LM293:
	.cfi_startproc
.LVL113:
.LM294:
	LD.w	r5,[r0+#1]
	MOV	r4,#255
	ADD	r4,r4,#1
	ANL	r5,r5,r4
	JZ	.L160
	ADD	r3,r0,#4
.L162:
.LM295:
// inline asm begin
	// 1319 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r3], #8
	// 0 "" 2
.LM296:
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L162
.L160:
.LM297:
	JMP	lr
	.cfi_endproc
.LFE50:
	.size	I2C_Clear_SMBus_Alert_Flag, .-I2C_Clear_SMBus_Alert_Flag
	.section .text$I2C_Get_SMBus_Host_Header_Flag
	.type	.text$I2C_Get_SMBus_Host_Header_Flag$scode_local_51, @function
	.text$I2C_Get_SMBus_Host_Header_Flag$scode_local_51:
	.align	1
	.export	I2C_Get_SMBus_Host_Header_Flag
	.type	I2C_Get_SMBus_Host_Header_Flag, @function
I2C_Get_SMBus_Host_Header_Flag:
.LFB51:
.LM298:
	.cfi_startproc
.LVL114:
.LM299:
	LD.w	r0,[r0+#1]
.LVL115:
	LSR	r0,#9
.LM300:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE51:
	.size	I2C_Get_SMBus_Host_Header_Flag, .-I2C_Get_SMBus_Host_Header_Flag
	.section .text$I2C_Clear_SMBus_Host_Header_Flag
	.type	.text$I2C_Clear_SMBus_Host_Header_Flag$scode_local_52, @function
	.text$I2C_Clear_SMBus_Host_Header_Flag$scode_local_52:
	.align	1
	.export	I2C_Clear_SMBus_Host_Header_Flag
	.type	I2C_Clear_SMBus_Host_Header_Flag, @function
I2C_Clear_SMBus_Host_Header_Flag:
.LFB52:
.LM301:
	.cfi_startproc
.LVL116:
.LM302:
	LD.w	r5,[r0+#1]
	MOV	r4,#1
	LSL	r4,#9
	ANL	r5,r5,r4
	JZ	.L168
	ADD	r3,r0,#4
.L170:
.LM303:
// inline asm begin
	// 1362 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r3], #9
	// 0 "" 2
.LM304:
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L170
.L168:
.LM305:
	JMP	lr
	.cfi_endproc
.LFE52:
	.size	I2C_Clear_SMBus_Host_Header_Flag, .-I2C_Clear_SMBus_Host_Header_Flag
	.section .text$I2C_Get_SMBus_Device_Default_Flag
	.type	.text$I2C_Get_SMBus_Device_Default_Flag$scode_local_53, @function
	.text$I2C_Get_SMBus_Device_Default_Flag$scode_local_53:
	.align	1
	.export	I2C_Get_SMBus_Device_Default_Flag
	.type	I2C_Get_SMBus_Device_Default_Flag, @function
I2C_Get_SMBus_Device_Default_Flag:
.LFB53:
.LM306:
	.cfi_startproc
.LVL117:
.LM307:
	LD.w	r0,[r0+#1]
.LVL118:
	LSR	r0,#10
.LM308:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE53:
	.size	I2C_Get_SMBus_Device_Default_Flag, .-I2C_Get_SMBus_Device_Default_Flag
	.section .text$I2C_Clear_SMBus_Device_Default_Flag
	.type	.text$I2C_Clear_SMBus_Device_Default_Flag$scode_local_54, @function
	.text$I2C_Clear_SMBus_Device_Default_Flag$scode_local_54:
	.align	1
	.export	I2C_Clear_SMBus_Device_Default_Flag
	.type	I2C_Clear_SMBus_Device_Default_Flag, @function
I2C_Clear_SMBus_Device_Default_Flag:
.LFB54:
.LM309:
	.cfi_startproc
.LVL119:
.LM310:
	LD.w	r5,[r0+#1]
	MOV	r4,#1
	LSL	r4,#10
	ANL	r5,r5,r4
	JZ	.L176
	ADD	r3,r0,#4
.L178:
.LM311:
// inline asm begin
	// 1405 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r3], #10
	// 0 "" 2
.LM312:
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L178
.L176:
.LM313:
	JMP	lr
	.cfi_endproc
.LFE54:
	.size	I2C_Clear_SMBus_Device_Default_Flag, .-I2C_Clear_SMBus_Device_Default_Flag
	.section .text$I2C_Get_INTERRUPT_Flag
	.type	.text$I2C_Get_INTERRUPT_Flag$scode_local_55, @function
	.text$I2C_Get_INTERRUPT_Flag$scode_local_55:
	.align	1
	.export	I2C_Get_INTERRUPT_Flag
	.type	I2C_Get_INTERRUPT_Flag, @function
I2C_Get_INTERRUPT_Flag:
.LFB55:
.LM314:
	.cfi_startproc
.LVL120:
.LM315:
	LD.w	r0,[r0+#1]
.LVL121:
	LSR	r0,#11
.LM316:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE55:
	.size	I2C_Get_INTERRUPT_Flag, .-I2C_Get_INTERRUPT_Flag
	.section .text$I2C_Clear_INTERRUPT_Flag
	.type	.text$I2C_Clear_INTERRUPT_Flag$scode_local_56, @function
	.text$I2C_Clear_INTERRUPT_Flag$scode_local_56:
	.align	1
	.export	I2C_Clear_INTERRUPT_Flag
	.type	I2C_Clear_INTERRUPT_Flag, @function
I2C_Clear_INTERRUPT_Flag:
.LFB56:
.LM317:
	.cfi_startproc
.LVL122:
.LM318:
	LD.w	r5,[r0+#1]
	MOV	r4,#1
	LSL	r4,#11
	ANL	r5,r5,r4
	JZ	.L184
	ADD	r3,r0,#4
.L186:
.LM319:
// inline asm begin
	// 1448 "../Peripherals/src/kf32f_basic_i2c.c" 1
	CLR [r3], #11
	// 0 "" 2
.LM320:
// inline asm end
	LD.w	r5,[r0+#1]
	ANL	r5,r5,r4
	JNZ	.L186
.L184:
.LM321:
	JMP	lr
	.cfi_endproc
.LFE56:
	.size	I2C_Clear_INTERRUPT_Flag, .-I2C_Clear_INTERRUPT_Flag
	.section .text$I2C_Get_Receive_Buff_Flag
	.type	.text$I2C_Get_Receive_Buff_Flag$scode_local_57, @function
	.text$I2C_Get_Receive_Buff_Flag$scode_local_57:
	.align	1
	.export	I2C_Get_Receive_Buff_Flag
	.type	I2C_Get_Receive_Buff_Flag, @function
I2C_Get_Receive_Buff_Flag:
.LFB57:
.LM322:
	.cfi_startproc
.LVL123:
.LM323:
	LD.w	r0,[r0+#1]
.LVL124:
	LSR	r0,#12
.LM324:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE57:
	.size	I2C_Get_Receive_Buff_Flag, .-I2C_Get_Receive_Buff_Flag
	.section .text$I2C_Get_Transmit_Buff_Flag
	.type	.text$I2C_Get_Transmit_Buff_Flag$scode_local_58, @function
	.text$I2C_Get_Transmit_Buff_Flag$scode_local_58:
	.align	1
	.export	I2C_Get_Transmit_Buff_Flag
	.type	I2C_Get_Transmit_Buff_Flag, @function
I2C_Get_Transmit_Buff_Flag:
.LFB58:
.LM325:
	.cfi_startproc
.LVL125:
.LM326:
	LD.w	r0,[r0+#1]
.LVL126:
	LSR	r0,#13
.LM327:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE58:
	.size	I2C_Get_Transmit_Buff_Flag, .-I2C_Get_Transmit_Buff_Flag
	.section .text$I2C_Get_Receive_DMA_Flag
	.type	.text$I2C_Get_Receive_DMA_Flag$scode_local_59, @function
	.text$I2C_Get_Receive_DMA_Flag$scode_local_59:
	.align	1
	.export	I2C_Get_Receive_DMA_Flag
	.type	I2C_Get_Receive_DMA_Flag, @function
I2C_Get_Receive_DMA_Flag:
.LFB59:
.LM328:
	.cfi_startproc
.LVL127:
.LM329:
	LD.w	r0,[r0+#1]
.LVL128:
	LSR	r0,#16
.LM330:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE59:
	.size	I2C_Get_Receive_DMA_Flag, .-I2C_Get_Receive_DMA_Flag
	.section .text$I2C_Get_Transmit_DMA_Flag
	.type	.text$I2C_Get_Transmit_DMA_Flag$scode_local_60, @function
	.text$I2C_Get_Transmit_DMA_Flag$scode_local_60:
	.align	1
	.export	I2C_Get_Transmit_DMA_Flag
	.type	I2C_Get_Transmit_DMA_Flag, @function
I2C_Get_Transmit_DMA_Flag:
.LFB60:
.LM331:
	.cfi_startproc
.LVL129:
.LM332:
	LD.w	r0,[r0+#1]
.LVL130:
	LSR	r0,#17
.LM333:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE60:
	.size	I2C_Get_Transmit_DMA_Flag, .-I2C_Get_Transmit_DMA_Flag
	.section .text$I2C_Get_Bus_Error_Flag
	.type	.text$I2C_Get_Bus_Error_Flag$scode_local_61, @function
	.text$I2C_Get_Bus_Error_Flag$scode_local_61:
	.align	1
	.export	I2C_Get_Bus_Error_Flag
	.type	I2C_Get_Bus_Error_Flag, @function
I2C_Get_Bus_Error_Flag:
.LFB61:
.LM334:
	.cfi_startproc
.LVL131:
.LM335:
	LD.w	r0,[r0+#1]
.LVL132:
	LSR	r0,#18
.LM336:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE61:
	.size	I2C_Get_Bus_Error_Flag, .-I2C_Get_Bus_Error_Flag
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_62, @function
	.debug_info$scode_local_62:
.Ldebug_info0:
	.long	0x102a
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF110
	.byte	0x1
	.long	.LASF111
	.long	.LASF112
	.long	.Ldebug_ranges0+0x30
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
	.long	.LASF113
	.byte	0x28
	.byte	0x2
	.short	0x25b9
	.long	0x164
	.uleb128 0xa
	.long	.LASF17
	.byte	0x2
	.short	0x25ba
	.long	0xc9
	.byte	0
	.uleb128 0xb
	.string	"SR"
	.byte	0x2
	.short	0x25bb
	.long	0xc9
	.byte	0x4
	.uleb128 0xa
	.long	.LASF18
	.byte	0x2
	.short	0x25bc
	.long	0xc9
	.byte	0x8
	.uleb128 0xa
	.long	.LASF19
	.byte	0x2
	.short	0x25bd
	.long	0xc9
	.byte	0xc
	.uleb128 0xa
	.long	.LASF20
	.byte	0x2
	.short	0x25be
	.long	0xc9
	.byte	0x10
	.uleb128 0xa
	.long	.LASF21
	.byte	0x2
	.short	0x25bf
	.long	0xc9
	.byte	0x14
	.uleb128 0xa
	.long	.LASF22
	.byte	0x2
	.short	0x25c0
	.long	0xc9
	.byte	0x18
	.uleb128 0xa
	.long	.LASF23
	.byte	0x2
	.short	0x25c1
	.long	0xc9
	.byte	0x1c
	.uleb128 0xb
	.string	"IER"
	.byte	0x2
	.short	0x25c2
	.long	0xc9
	.byte	0x20
	.uleb128 0xa
	.long	.LASF24
	.byte	0x2
	.short	0x25c3
	.long	0xc9
	.byte	0x24
	.byte	0
	.uleb128 0xc
	.long	.LASF25
	.byte	0x2
	.short	0x25c4
	.long	0xd5
	.uleb128 0xd
	.byte	0x1c
	.byte	0x4
	.byte	0x1e
	.long	0x1d9
	.uleb128 0xe
	.long	.LASF26
	.byte	0x4
	.byte	0x20
	.long	0x69
	.byte	0
	.uleb128 0xe
	.long	.LASF27
	.byte	0x4
	.byte	0x22
	.long	0x69
	.byte	0x4
	.uleb128 0xe
	.long	.LASF28
	.byte	0x4
	.byte	0x24
	.long	0x69
	.byte	0x8
	.uleb128 0xe
	.long	.LASF29
	.byte	0x4
	.byte	0x26
	.long	0x69
	.byte	0xc
	.uleb128 0xe
	.long	.LASF30
	.byte	0x4
	.byte	0x28
	.long	0x5e
	.byte	0x10
	.uleb128 0xe
	.long	.LASF31
	.byte	0x4
	.byte	0x2a
	.long	0x5e
	.byte	0x12
	.uleb128 0xe
	.long	.LASF32
	.byte	0x4
	.byte	0x2c
	.long	0x9e
	.byte	0x14
	.uleb128 0xe
	.long	.LASF33
	.byte	0x4
	.byte	0x2e
	.long	0x69
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF34
	.byte	0x4
	.byte	0x30
	.long	0x170
	.uleb128 0xf
	.long	.LASF114
	.byte	0x2
	.short	0x3416
	.byte	0x1
	.long	0x69
	.byte	0x3
	.long	0x21b
	.uleb128 0x10
	.long	.LASF35
	.byte	0x2
	.short	0x3416
	.long	0x69
	.uleb128 0x10
	.long	.LASF36
	.byte	0x2
	.short	0x3416
	.long	0x69
	.uleb128 0x10
	.long	.LASF37
	.byte	0x2
	.short	0x3416
	.long	0x69
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2c3
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.byte	0x27
	.long	0x2c3
	.long	.LLST0
	.uleb128 0x13
	.long	.LVL4
	.long	0x258
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
	.byte	0x47
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.long	.LVL5
	.long	0x26e
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
	.byte	0x47
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.long	.LVL6
	.long	0x284
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
	.byte	0x47
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.long	.LVL9
	.long	0x29a
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
	.byte	0x46
	.byte	0x24
	.byte	0
	.uleb128 0x13
	.long	.LVL10
	.long	0x2b0
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
	.byte	0x46
	.byte	0x24
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
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.long	0x164
	.uleb128 0x11
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x34b
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.byte	0x55
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.byte	0x55
	.long	0x34b
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.byte	0x57
	.long	0x69
	.long	.LLST1
	.uleb128 0x19
	.long	0x1e4
	.long	.LBB16
	.long	.LBE16
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1a
	.long	0x20e
	.byte	0x1a
	.byte	0x71
	.sleb128 20
	.byte	0x6
	.byte	0x3c
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
	.sleb128 8
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 24
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.uleb128 0x1b
	.long	0x202
	.sleb128 -50540547
	.uleb128 0x1a
	.long	0x1f6
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.long	0x1d9
	.uleb128 0x11
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x377
	.uleb128 0x17
	.long	.LASF43
	.byte	0x1
	.byte	0x80
	.long	0x34b
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3aa
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.byte	0xa9
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.byte	0xa9
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3dd
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.byte	0xc4
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.byte	0xc4
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x410
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.byte	0xde
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.byte	0xde
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x443
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.byte	0xf8
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.byte	0xf8
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.short	0x112
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x479
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x112
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x112
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.short	0x12e
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4af
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x12e
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x12e
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.short	0x148
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4e5
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x148
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x148
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.short	0x164
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x548
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x164
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.short	0x164
	.long	0x69
	.long	.LLST2
	.uleb128 0x1f
	.long	0x1e4
	.long	.LBB18
	.long	.LBE18
	.byte	0x1
	.short	0x16b
	.uleb128 0x20
	.long	0x20e
	.long	.LLST3
	.uleb128 0x1b
	.long	0x202
	.sleb128 -196609
	.uleb128 0x20
	.long	0x1f6
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.short	0x175
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x57e
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x175
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x175
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.short	0x18f
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5b4
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x18f
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x18f
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.short	0x1a9
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5ea
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x1a9
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x1a9
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.short	0x1c5
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x620
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x1c5
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x1c5
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.short	0x1e1
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x656
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x1e1
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x1e1
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.short	0x1fb
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x68c
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x1fb
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x1fb
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.short	0x215
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x6c2
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x215
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF61
	.byte	0x1
	.short	0x215
	.long	0x69
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.short	0x226
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x6f8
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x226
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF61
	.byte	0x1
	.short	0x226
	.long	0x45
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.short	0x235
	.byte	0x1
	.long	0x69
	.long	.LFB20
	.long	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x736
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x235
	.long	0x2c3
	.long	.LLST5
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.short	0x237
	.long	0x69
	.long	.LLST6
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.short	0x24b
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x76c
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x24b
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x24b
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.short	0x266
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x802
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x266
	.long	0x2c3
	.long	.LLST7
	.uleb128 0x1e
	.long	.LASF66
	.byte	0x1
	.short	0x266
	.long	0x69
	.long	.LLST8
	.uleb128 0x1e
	.long	.LASF61
	.byte	0x1
	.short	0x266
	.long	0x69
	.long	.LLST9
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.short	0x268
	.long	0x69
	.long	.LLST9
	.uleb128 0x22
	.long	.LASF67
	.byte	0x1
	.short	0x269
	.long	0x69
	.long	.LLST11
	.uleb128 0x23
	.long	0x1e4
	.long	.LBB20
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.short	0x27b
	.uleb128 0x20
	.long	0x20e
	.long	.LLST12
	.uleb128 0x20
	.long	0x202
	.long	.LLST13
	.uleb128 0x20
	.long	0x1f6
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.short	0x289
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x898
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x289
	.long	0x2c3
	.long	.LLST15
	.uleb128 0x1e
	.long	.LASF66
	.byte	0x1
	.short	0x289
	.long	0x69
	.long	.LLST16
	.uleb128 0x1e
	.long	.LASF69
	.byte	0x1
	.short	0x289
	.long	0x69
	.long	.LLST17
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.short	0x28b
	.long	0x69
	.long	.LLST18
	.uleb128 0x22
	.long	.LASF67
	.byte	0x1
	.short	0x28c
	.long	0x69
	.long	.LLST19
	.uleb128 0x23
	.long	0x1e4
	.long	.LBB24
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.short	0x29e
	.uleb128 0x20
	.long	0x20e
	.long	.LLST20
	.uleb128 0x20
	.long	0x202
	.long	.LLST21
	.uleb128 0x20
	.long	0x1f6
	.long	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.short	0x2aa
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x909
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x2aa
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	.LASF71
	.byte	0x1
	.short	0x2aa
	.long	0x5e
	.long	.LLST23
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.short	0x2ac
	.long	0x69
	.long	.LLST24
	.uleb128 0x1f
	.long	0x1e4
	.long	.LBB28
	.long	.LBE28
	.byte	0x1
	.short	0x2b3
	.uleb128 0x20
	.long	0x20e
	.long	.LLST25
	.uleb128 0x1b
	.long	0x202
	.sleb128 -65536
	.uleb128 0x1a
	.long	0x1f6
	.byte	0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.short	0x2bd
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x97b
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x2bd
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.long	.LASF71
	.byte	0x1
	.short	0x2bd
	.long	0x5e
	.long	.LLST26
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.short	0x2bf
	.long	0x69
	.long	.LLST27
	.uleb128 0x1f
	.long	0x1e4
	.long	.LBB30
	.long	.LBE30
	.byte	0x1
	.short	0x2c6
	.uleb128 0x20
	.long	0x20e
	.long	.LLST28
	.uleb128 0x24
	.long	0x202
	.short	0xffff
	.uleb128 0x20
	.long	0x1f6
	.long	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.short	0x2d7
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9b3
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x2d7
	.long	0x2c3
	.long	.LLST30
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x2d7
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.short	0x2f1
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9eb
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x2f1
	.long	0x2c3
	.long	.LLST31
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x2f1
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.short	0x30b
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa23
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x30b
	.long	0x2c3
	.long	.LLST32
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x30b
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.short	0x325
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa5b
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x325
	.long	0x2c3
	.long	.LLST33
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x325
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.short	0x33f
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa93
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x33f
	.long	0x2c3
	.long	.LLST34
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x33f
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF78
	.byte	0x1
	.short	0x359
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xacb
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x359
	.long	0x2c3
	.long	.LLST35
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x359
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.short	0x373
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb03
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x373
	.long	0x2c3
	.long	.LLST36
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x374
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.short	0x38e
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb3b
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x38e
	.long	0x2c3
	.long	.LLST37
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x38e
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.short	0x3a8
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb73
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x3a8
	.long	0x2c3
	.long	.LLST38
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x3a8
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.short	0x3c2
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbab
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x3c2
	.long	0x2c3
	.long	.LLST39
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x3c2
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.short	0x3dc
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbe3
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x3dc
	.long	0x2c3
	.long	.LLST40
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x1
	.short	0x3dc
	.long	0x9e
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.short	0x3f6
	.byte	0x1
	.long	0xbe
	.long	.LFB37
	.long	.LFE37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc11
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x3f6
	.long	0x2c3
	.long	.LLST41
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.short	0x40e
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc39
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x40e
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF87
	.byte	0x1
	.short	0x421
	.byte	0x1
	.long	0xbe
	.long	.LFB39
	.long	.LFE39
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc67
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x421
	.long	0x2c3
	.long	.LLST42
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.short	0x439
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc8f
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x439
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.short	0x44d
	.byte	0x1
	.long	0xbe
	.long	.LFB41
	.long	.LFE41
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xcbd
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x44d
	.long	0x2c3
	.long	.LLST43
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.short	0x466
	.byte	0x1
	.long	0xbe
	.long	.LFB42
	.long	.LFE42
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xceb
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x466
	.long	0x2c3
	.long	.LLST44
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.short	0x47f
	.byte	0x1
	.long	0xbe
	.long	.LFB43
	.long	.LFE43
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd19
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x47f
	.long	0x2c3
	.long	.LLST45
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF92
	.byte	0x1
	.short	0x498
	.byte	0x1
	.long	0xbe
	.long	.LFB44
	.long	.LFE44
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd47
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x498
	.long	0x2c3
	.long	.LLST46
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF93
	.byte	0x1
	.short	0x4b0
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd6f
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x4b0
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF94
	.byte	0x1
	.short	0x4c3
	.byte	0x1
	.long	0xbe
	.long	.LFB46
	.long	.LFE46
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd9d
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x4c3
	.long	0x2c3
	.long	.LLST47
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.short	0x4db
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xdc5
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x4db
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF96
	.byte	0x1
	.short	0x4ee
	.byte	0x1
	.long	0xbe
	.long	.LFB48
	.long	.LFE48
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xdf3
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x4ee
	.long	0x2c3
	.long	.LLST48
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.short	0x507
	.byte	0x1
	.long	0xbe
	.long	.LFB49
	.long	.LFE49
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe21
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x507
	.long	0x2c3
	.long	.LLST49
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF98
	.byte	0x1
	.short	0x51f
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe49
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x51f
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.short	0x532
	.byte	0x1
	.long	0xbe
	.long	.LFB51
	.long	.LFE51
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe77
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x532
	.long	0x2c3
	.long	.LLST50
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.short	0x54a
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe9f
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x54a
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF101
	.byte	0x1
	.short	0x55d
	.byte	0x1
	.long	0xbe
	.long	.LFB53
	.long	.LFE53
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xecd
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x55d
	.long	0x2c3
	.long	.LLST51
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF102
	.byte	0x1
	.short	0x575
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xef5
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x575
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF103
	.byte	0x1
	.short	0x588
	.byte	0x1
	.long	0xbe
	.long	.LFB55
	.long	.LFE55
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf23
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x588
	.long	0x2c3
	.long	.LLST52
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF104
	.byte	0x1
	.short	0x5a0
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf4b
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.short	0x5a0
	.long	0x2c3
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.short	0x5b4
	.byte	0x1
	.long	0xbe
	.long	.LFB57
	.long	.LFE57
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf79
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x5b4
	.long	0x2c3
	.long	.LLST53
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.short	0x5cd
	.byte	0x1
	.long	0xbe
	.long	.LFB58
	.long	.LFE58
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xfa7
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x5cd
	.long	0x2c3
	.long	.LLST54
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF107
	.byte	0x1
	.short	0x5e6
	.byte	0x1
	.long	0xbe
	.long	.LFB59
	.long	.LFE59
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xfd5
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x5e6
	.long	0x2c3
	.long	.LLST55
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF108
	.byte	0x1
	.short	0x5ff
	.byte	0x1
	.long	0xbe
	.long	.LFB60
	.long	.LFE60
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1003
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x5ff
	.long	0x2c3
	.long	.LLST56
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF109
	.byte	0x1
	.short	0x618
	.byte	0x1
	.long	0xbe
	.long	.LFB61
	.long	.LFE61
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.short	0x618
	.long	0x2c3
	.long	.LLST57
	.byte	0
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_63, @function
	.debug_abbrev$scode_local_63:
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x22
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
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
	.type	.debug_loc$scode_local_64, @function
	.debug_loc$scode_local_64:
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
	.short	0x1a
	.byte	0x71
	.sleb128 20
	.byte	0x6
	.byte	0x3c
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
	.sleb128 8
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 24
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL14
	.long	.LFE2
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST2:
	.long	.LVL24
	.long	.LVL27
	.short	0x1
	.byte	0x51
	.long	.LVL27
	.long	.LFE11
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL25
	.long	.LVL27
	.short	0x1
	.byte	0x51
	.long	.LVL27
	.long	.LFE11
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL25
	.long	.LVL26
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST5:
	.long	.LVL36
	.long	.LVL37
	.short	0x1
	.byte	0x50
	.long	.LVL37
	.long	.LFE20
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL36
	.long	.LVL37
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL37
	.long	.LVL38
	.short	0x7
	.byte	0x70
	.sleb128 0
	.byte	0xa
	.short	0x3ff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL38
	.long	.LFE20
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL40
	.long	.LVL41
	.short	0x1
	.byte	0x50
	.long	.LVL41
	.long	.LVL43
	.short	0x3
	.byte	0x70
	.sleb128 -16
	.byte	0x9f
	.long	.LVL43
	.long	.LVL46
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL46
	.long	.LVL47
	.short	0x1
	.byte	0x50
	.long	.LVL47
	.long	.LFE22
	.short	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL40
	.long	.LVL42
	.short	0x1
	.byte	0x51
	.long	.LVL42
	.long	.LVL46
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL46
	.long	.LFE22
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST9:
	.long	.LVL40
	.long	.LVL45
	.short	0x1
	.byte	0x52
	.long	.LVL45
	.long	.LVL46
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL46
	.long	.LVL49
	.short	0x1
	.byte	0x52
	.long	.LVL49
	.long	.LFE22
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL40
	.long	.LVL43
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL43
	.long	.LVL46
	.short	0x1
	.byte	0x50
	.long	.LVL46
	.long	.LVL47
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL47
	.long	.LFE22
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL44
	.long	.LVL45
	.short	0x1
	.byte	0x52
	.long	.LVL45
	.long	.LVL46
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL48
	.long	.LVL49
	.short	0x1
	.byte	0x52
	.long	.LVL49
	.long	.LFE22
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL44
	.long	.LVL46
	.short	0x4
	.byte	0xb
	.short	0xfc00
	.byte	0x9f
	.long	.LVL48
	.long	.LFE22
	.short	0x4
	.byte	0xb
	.short	0xfc00
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL44
	.long	.LVL46
	.short	0x1
	.byte	0x54
	.long	.LVL48
	.long	.LFE22
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST15:
	.long	.LVL50
	.long	.LVL52
	.short	0x1
	.byte	0x50
	.long	.LVL52
	.long	.LVL54
	.short	0x3
	.byte	0x70
	.sleb128 -16
	.byte	0x9f
	.long	.LVL54
	.long	.LVL57
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL57
	.long	.LVL58
	.short	0x1
	.byte	0x50
	.long	.LVL58
	.long	.LFE23
	.short	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL50
	.long	.LVL53
	.short	0x1
	.byte	0x51
	.long	.LVL53
	.long	.LVL57
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL57
	.long	.LFE23
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST17:
	.long	.LVL50
	.long	.LVL51
	.short	0x1
	.byte	0x52
	.long	.LVL51
	.long	.LFE23
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL50
	.long	.LVL51
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL51
	.long	.LVL56
	.short	0x1
	.byte	0x52
	.long	.LVL56
	.long	.LVL57
	.short	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	.LVL57
	.long	.LVL60
	.short	0x1
	.byte	0x52
	.long	.LVL60
	.long	.LFE23
	.short	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL50
	.long	.LVL54
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL54
	.long	.LVL57
	.short	0x1
	.byte	0x50
	.long	.LVL57
	.long	.LVL58
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL58
	.long	.LFE23
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST20:
	.long	.LVL55
	.long	.LVL56
	.short	0x1
	.byte	0x52
	.long	.LVL56
	.long	.LVL57
	.short	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	.LVL59
	.long	.LVL60
	.short	0x1
	.byte	0x52
	.long	.LVL60
	.long	.LFE23
	.short	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL55
	.long	.LVL57
	.short	0x6
	.byte	0xd
	.long	0xfc00ffff
	.byte	0x9f
	.long	.LVL59
	.long	.LFE23
	.short	0x6
	.byte	0xd
	.long	0xfc00ffff
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL55
	.long	.LVL57
	.short	0x1
	.byte	0x54
	.long	.LVL59
	.long	.LFE23
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST23:
	.long	.LVL61
	.long	.LVL64
	.short	0x1
	.byte	0x51
	.long	.LVL64
	.long	.LFE24
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL62
	.long	.LVL64
	.short	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL64
	.long	.LFE24
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
.LLST25:
	.long	.LVL63
	.long	.LVL64
	.short	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL64
	.long	.LFE24
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
.LLST26:
	.long	.LVL65
	.long	.LVL67
	.short	0x1
	.byte	0x51
	.long	.LVL67
	.long	.LFE25
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL65
	.long	.LVL67
	.short	0x9
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	.LVL67
	.long	.LFE25
	.short	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL66
	.long	.LVL67
	.short	0x9
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	.LVL67
	.long	.LFE25
	.short	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL66
	.long	.LVL68
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST30:
	.long	.LVL69
	.long	.LVL70
	.short	0x1
	.byte	0x50
	.long	.LVL70
	.long	.LFE26
	.short	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL71
	.long	.LVL72
	.short	0x1
	.byte	0x50
	.long	.LVL72
	.long	.LFE27
	.short	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL73
	.long	.LVL74
	.short	0x1
	.byte	0x50
	.long	.LVL74
	.long	.LFE28
	.short	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL75
	.long	.LVL76
	.short	0x1
	.byte	0x50
	.long	.LVL76
	.long	.LFE29
	.short	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL77
	.long	.LVL78
	.short	0x1
	.byte	0x50
	.long	.LVL78
	.long	.LFE30
	.short	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL79
	.long	.LVL80
	.short	0x1
	.byte	0x50
	.long	.LVL80
	.long	.LFE31
	.short	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL81
	.long	.LVL82
	.short	0x1
	.byte	0x50
	.long	.LVL82
	.long	.LFE32
	.short	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL83
	.long	.LVL84
	.short	0x1
	.byte	0x50
	.long	.LVL84
	.long	.LFE33
	.short	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL85
	.long	.LVL86
	.short	0x1
	.byte	0x50
	.long	.LVL86
	.long	.LFE34
	.short	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL87
	.long	.LVL88
	.short	0x1
	.byte	0x50
	.long	.LVL88
	.long	.LFE35
	.short	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL89
	.long	.LVL90
	.short	0x1
	.byte	0x50
	.long	.LVL90
	.long	.LFE36
	.short	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL91
	.long	.LVL92
	.short	0x1
	.byte	0x50
	.long	.LVL92
	.long	.LFE37
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL94
	.long	.LVL95
	.short	0x1
	.byte	0x50
	.long	.LVL95
	.long	.LFE39
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL97
	.long	.LVL98
	.short	0x1
	.byte	0x50
	.long	.LVL98
	.long	.LFE41
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL99
	.long	.LVL100
	.short	0x1
	.byte	0x50
	.long	.LVL100
	.long	.LFE42
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL101
	.long	.LVL102
	.short	0x1
	.byte	0x50
	.long	.LVL102
	.long	.LFE43
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL103
	.long	.LVL104
	.short	0x1
	.byte	0x50
	.long	.LVL104
	.long	.LFE44
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL106
	.long	.LVL107
	.short	0x1
	.byte	0x50
	.long	.LVL107
	.long	.LFE46
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL109
	.long	.LVL110
	.short	0x1
	.byte	0x50
	.long	.LVL110
	.long	.LFE48
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL111
	.long	.LVL112
	.short	0x1
	.byte	0x50
	.long	.LVL112
	.long	.LFE49
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL114
	.long	.LVL115
	.short	0x1
	.byte	0x50
	.long	.LVL115
	.long	.LFE51
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL117
	.long	.LVL118
	.short	0x1
	.byte	0x50
	.long	.LVL118
	.long	.LFE53
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL120
	.long	.LVL121
	.short	0x1
	.byte	0x50
	.long	.LVL121
	.long	.LFE55
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL123
	.long	.LVL124
	.short	0x1
	.byte	0x50
	.long	.LVL124
	.long	.LFE57
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST54:
	.long	.LVL125
	.long	.LVL126
	.short	0x1
	.byte	0x50
	.long	.LVL126
	.long	.LFE58
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LVL127
	.long	.LVL128
	.short	0x1
	.byte	0x50
	.long	.LVL128
	.long	.LFE59
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL129
	.long	.LVL130
	.short	0x1
	.byte	0x50
	.long	.LVL130
	.long	.LFE60
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL131
	.long	.LVL132
	.short	0x1
	.byte	0x50
	.long	.LVL132
	.long	.LFE61
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_65, @function
	.debug_aranges$scode_local_65:
	.long	0x1fc
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
	.long	.LFB47
	.long	.LFE47-.LFB47
	.long	.LFB48
	.long	.LFE48-.LFB48
	.long	.LFB49
	.long	.LFE49-.LFB49
	.long	.LFB50
	.long	.LFE50-.LFB50
	.long	.LFB51
	.long	.LFE51-.LFB51
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_66, @function
	.debug_ranges$scode_local_66:
.Ldebug_ranges0:
	.long	.LBB20
	.long	.LBE20
	.long	.LBB23
	.long	.LBE23
	.long	0
	.long	0
	.long	.LBB24
	.long	.LBE24
	.long	.LBB27
	.long	.LBE27
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
	.long	.LFB47
	.long	.LFE47
	.long	.LFB48
	.long	.LFE48
	.long	.LFB49
	.long	.LFE49
	.long	.LFB50
	.long	.LFE50
	.long	.LFB51
	.long	.LFE51
	.long	.LFB52
	.long	.LFE52
	.long	.LFB53
	.long	.LFE53
	.long	.LFB54
	.long	.LFE54
	.long	.LFB55
	.long	.LFE55
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	.LFB58
	.long	.LFE58
	.long	.LFB59
	.long	.LFE59
	.long	.LFB60
	.long	.LFE60
	.long	.LFB61
	.long	.LFE61
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_67, @function
	.debug_line$scode_local_67:
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
	.string	"kf32f_basic_i2c.c"
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
	.string	"kf32f_basic_i2c.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x3e
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
	.byte	0x2f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x3
	.sleb128 -22
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
	.byte	0x2b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x3
	.sleb128 -30
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
	.byte	0x6c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x12
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
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13231
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13225
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
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
	.long	.LM25
	.byte	0x97
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x1a
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
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
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
	.long	.LM35
	.byte	0xc0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
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
	.long	.LM41
	.byte	0xdb
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x1e
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
	.long	.LM47
	.byte	0xf5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
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
	.long	.LM53
	.byte	0x3
	.sleb128 248
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
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
	.long	.LM59
	.byte	0x3
	.sleb128 274
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
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
	.long	.LM65
	.byte	0x3
	.sleb128 302
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
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
	.long	.LM71
	.byte	0x3
	.sleb128 328
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM74
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
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
	.long	.LM77
	.byte	0x3
	.sleb128 356
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
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12973
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM80
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12973
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM81
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
	.long	.LM82
	.byte	0x3
	.sleb128 373
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM84
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM85
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM86
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM87
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
	.long	.LM88
	.byte	0x3
	.sleb128 399
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM89
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM90
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM91
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM92
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
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
	.long	.LM94
	.byte	0x3
	.sleb128 425
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM95
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM96
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM97
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
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
	.long	.LM100
	.byte	0x3
	.sleb128 453
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
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM103
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM104
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM105
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
	.long	.LM106
	.byte	0x3
	.sleb128 481
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
	.long	.LFE16
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM112
	.byte	0x3
	.sleb128 507
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM113
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM114
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM115
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM116
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM117
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
	.long	.LM118
	.byte	0x3
	.sleb128 533
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM119
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM120
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
	.long	.LM121
	.byte	0x3
	.sleb128 550
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM122
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM123
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
	.long	.LM124
	.byte	0x3
	.sleb128 565
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
	.byte	0x1c
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
	.long	.LM127
	.byte	0x3
	.sleb128 587
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM128
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM129
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM130
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM131
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM132
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
	.long	.LM133
	.byte	0x3
	.sleb128 614
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM134
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM135
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM136
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM137
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12701
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM138
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12702
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM139
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM140
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM141
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM142
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12701
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM143
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12702
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM144
	.byte	0x1c
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
	.long	.LM145
	.byte	0x3
	.sleb128 649
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM146
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM147
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM148
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM149
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM150
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12666
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM151
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12667
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM152
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM153
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM154
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM155
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12666
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM156
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12667
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM157
	.byte	0x1b
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
	.long	.LM158
	.byte	0x3
	.sleb128 682
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM159
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM160
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12645
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM161
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12645
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM162
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
	.long	.LM163
	.byte	0x3
	.sleb128 701
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM164
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM165
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM166
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12627
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM167
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12626
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM168
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
	.long	.LM169
	.byte	0x3
	.sleb128 727
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM170
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM171
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM172
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM173
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM174
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM175
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
	.long	.LM176
	.byte	0x3
	.sleb128 753
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM177
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM178
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM179
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM180
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM181
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM182
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
	.long	.LM183
	.byte	0x3
	.sleb128 779
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
	.long	.LFE28
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM190
	.byte	0x3
	.sleb128 805
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
	.long	.LFE29
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM197
	.byte	0x3
	.sleb128 831
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
	.long	.LFE30
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM204
	.byte	0x3
	.sleb128 857
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM205
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM206
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM207
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM208
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM209
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM210
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
	.long	.LM211
	.byte	0x3
	.sleb128 884
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM212
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM213
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM214
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM215
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM216
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM217
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
	.long	.LM218
	.byte	0x3
	.sleb128 910
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM219
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM220
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM221
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM222
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM223
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM224
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
	.long	.LM225
	.byte	0x3
	.sleb128 936
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM226
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM227
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM228
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM229
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM230
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM231
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
	.long	.LM232
	.byte	0x3
	.sleb128 962
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM233
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM234
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM235
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM236
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM237
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM238
	.byte	0x1e
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
	.long	.LM239
	.byte	0x3
	.sleb128 988
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM240
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM241
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM242
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM243
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM244
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM245
	.byte	0x1e
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
	.long	.LM246
	.byte	0x3
	.sleb128 1014
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM247
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM248
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
	.long	.LM249
	.byte	0x3
	.sleb128 1038
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM250
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM251
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM252
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM253
	.byte	0x1b
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
	.long	.LM254
	.byte	0x3
	.sleb128 1057
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM255
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM256
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
	.long	.LM257
	.byte	0x3
	.sleb128 1081
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM258
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM259
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM260
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM261
	.byte	0x1c
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
	.long	.LM262
	.byte	0x3
	.sleb128 1101
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
	.long	.LFE41
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM265
	.byte	0x3
	.sleb128 1126
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
	.long	.LFE42
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM268
	.byte	0x3
	.sleb128 1151
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
	.long	.LFE43
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM271
	.byte	0x3
	.sleb128 1176
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
	.long	.LM274
	.byte	0x3
	.sleb128 1200
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM275
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM276
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM277
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM278
	.byte	0x1b
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
	.long	.LM279
	.byte	0x3
	.sleb128 1219
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM280
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM281
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE46
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM282
	.byte	0x3
	.sleb128 1243
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM283
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM284
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM285
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM286
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE47
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM287
	.byte	0x3
	.sleb128 1262
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM288
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM289
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE48
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM290
	.byte	0x3
	.sleb128 1287
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM291
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM292
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE49
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM293
	.byte	0x3
	.sleb128 1311
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM294
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM295
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM296
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM297
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE50
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM298
	.byte	0x3
	.sleb128 1330
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM299
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM300
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE51
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM301
	.byte	0x3
	.sleb128 1354
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM302
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM303
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM304
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM305
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE52
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM306
	.byte	0x3
	.sleb128 1373
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM307
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM308
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE53
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM309
	.byte	0x3
	.sleb128 1397
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM310
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM311
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM312
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM313
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE54
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM314
	.byte	0x3
	.sleb128 1416
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM315
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM316
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE55
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM317
	.byte	0x3
	.sleb128 1440
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM318
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM319
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM320
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM321
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE56
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM322
	.byte	0x3
	.sleb128 1460
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM323
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM324
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE57
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM325
	.byte	0x3
	.sleb128 1485
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM326
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM327
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE58
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM328
	.byte	0x3
	.sleb128 1510
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM329
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM330
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE59
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM331
	.byte	0x3
	.sleb128 1535
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM332
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM333
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE60
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM334
	.byte	0x3
	.sleb128 1560
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM335
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM336
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE61
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_68, @function
	.debug_str$scode_local_68:
.LASF31:
	.string	"m_BaudRateH"
.LASF11:
	.string	"FALSE"
.LASF30:
	.string	"m_BaudRateL"
.LASF72:
	.string	"I2C_BRGL_Config"
.LASF49:
	.string	"I2C_Ack_Config"
.LASF58:
	.string	"I2C_SMBT_Config"
.LASF65:
	.string	"I2C_ADDR_Config"
.LASF101:
	.string	"I2C_Get_SMBus_Device_Default_Flag"
.LASF2:
	.string	"signed char"
.LASF100:
	.string	"I2C_Clear_SMBus_Host_Header_Flag"
.LASF94:
	.string	"I2C_Get_Arbitration_Lost_Flag"
.LASF74:
	.string	"I2C_Stop_INT_Enable"
.LASF111:
	.string	"../Peripherals/src/kf32f_basic_i2c.c"
.LASF26:
	.string	"m_Mode"
.LASF112:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF16:
	.string	"sizetype"
.LASF41:
	.string	"i2cInitStruct"
.LASF76:
	.string	"I2C_Arbitration_Lost_INT_Enable"
.LASF81:
	.string	"I2C_Receive_DMA_INT_Enable"
.LASF44:
	.string	"I2C_Cmd"
.LASF40:
	.string	"I2Cx"
.LASF64:
	.string	"I2C_ARP_Enable"
.LASF38:
	.string	"I2C_Reset"
.LASF15:
	.string	"FlagStatus"
.LASF60:
	.string	"I2C_SendData"
.LASF67:
	.string	"tmpaddr"
.LASF66:
	.string	"AddrSelect"
.LASF28:
	.string	"m_BADR10"
.LASF99:
	.string	"I2C_Get_SMBus_Host_Header_Flag"
.LASF97:
	.string	"I2C_Get_SMBus_Alert_Flag"
.LASF88:
	.string	"I2C_Clear_Stop_Flag"
.LASF5:
	.string	"uint8_t"
.LASF43:
	.string	"I2C_InitStruct"
.LASF98:
	.string	"I2C_Clear_SMBus_Alert_Flag"
.LASF22:
	.string	"ADDR2"
.LASF91:
	.string	"I2C_Get_Data_Flag"
.LASF45:
	.string	"NewState"
.LASF102:
	.string	"I2C_Clear_SMBus_Device_Default_Flag"
.LASF92:
	.string	"I2C_Get_Ack_Fail_Flag"
.LASF86:
	.string	"I2C_Clear_Start_Flag"
.LASF4:
	.string	"short int"
.LASF37:
	.string	"WriteVal"
.LASF8:
	.string	"long long int"
.LASF109:
	.string	"I2C_Get_Bus_Error_Flag"
.LASF34:
	.string	"I2C_InitTypeDef"
.LASF50:
	.string	"I2C_Ack_DATA_Config"
.LASF107:
	.string	"I2C_Get_Receive_DMA_Flag"
.LASF73:
	.string	"I2C_Start_INT_Enable"
.LASF103:
	.string	"I2C_Get_INTERRUPT_Flag"
.LASF77:
	.string	"I2C_SMBus_Alert_INT_Enable"
.LASF61:
	.string	"Data"
.LASF51:
	.string	"I2C_Call_Cmd"
.LASF106:
	.string	"I2C_Get_Transmit_Buff_Flag"
.LASF96:
	.string	"I2C_Get_Write_Read_Flag"
.LASF63:
	.string	"tmpreg"
.LASF78:
	.string	"I2C_SMBus_HostHead_INT_Enable"
.LASF89:
	.string	"I2C_Get_Address_Match_Flag"
.LASF55:
	.string	"I2C_SCL_Enable"
.LASF84:
	.string	"I2C_ReceiveData"
.LASF3:
	.string	"unsigned char"
.LASF53:
	.string	"ClkSource"
.LASF87:
	.string	"I2C_Get_Stop_Flag"
.LASF9:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint32_t"
.LASF35:
	.string	"SfrMem"
.LASF0:
	.string	"unsigned int"
.LASF46:
	.string	"I2C_Bufr_Address_Config"
.LASF110:
	.string	"GNU C 4.7.0"
.LASF75:
	.string	"I2C_Ack_Fail_INT_Enable"
.LASF20:
	.string	"BRGR"
.LASF47:
	.string	"I2C_Generate_START"
.LASF95:
	.string	"I2C_Clear_Arbitration_Lost_Flag"
.LASF104:
	.string	"I2C_Clear_INTERRUPT_Flag"
.LASF27:
	.string	"m_ClockSource"
.LASF71:
	.string	"Period"
.LASF114:
	.string	"SFR_Config"
.LASF48:
	.string	"I2C_Generate_STOP"
.LASF10:
	.string	"char"
.LASF6:
	.string	"uint16_t"
.LASF85:
	.string	"I2C_Get_Start_Flag"
.LASF24:
	.string	"TPSR"
.LASF1:
	.string	"short unsigned int"
.LASF57:
	.string	"I2C_SMBUS_Enable"
.LASF21:
	.string	"ADDR1"
.LASF36:
	.string	"SfrMask"
.LASF23:
	.string	"ADDR3"
.LASF54:
	.string	"I2C_MATCH_ADDRESS_Config"
.LASF56:
	.string	"I2C_NMENA_Enable"
.LASF68:
	.string	"I2C_MSK_Config"
.LASF33:
	.string	"m_AckData"
.LASF90:
	.string	"I2C_Get_HighAddress_Flag"
.LASF69:
	.string	"DataMask"
.LASF80:
	.string	"I2C_ISIE_INT_Enable"
.LASF13:
	.string	"FunctionalState"
.LASF29:
	.string	"m_MasterSlave"
.LASF19:
	.string	"ADDR0"
.LASF79:
	.string	"I2C_SMBus_Device_Defaultaddress_INT_Enable"
.LASF14:
	.string	"RESET"
.LASF105:
	.string	"I2C_Get_Receive_Buff_Flag"
.LASF108:
	.string	"I2C_Get_Transmit_DMA_Flag"
.LASF70:
	.string	"I2C_BRGH_Config"
.LASF42:
	.string	"I2C_Struct_Init"
.LASF25:
	.string	"I2C_SFRmap"
.LASF113:
	.string	"I2C_MemMap"
.LASF62:
	.string	"I2C_SendData8"
.LASF12:
	.string	"TRUE"
.LASF32:
	.string	"m_AckEn"
.LASF17:
	.string	"CTLR"
.LASF59:
	.string	"I2C_SMBus_ALERT_Config"
.LASF52:
	.string	"I2C_Clock_Config"
.LASF82:
	.string	"I2C_Transmit_DMA_INT_Enable"
.LASF18:
	.string	"BUFR"
.LASF83:
	.string	"I2C_Bus_Error_INT_Enable"
.LASF39:
	.string	"I2C_Configuration"
.LASF93:
	.string	"I2C_Clear_Ack_Fail_Flag"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
