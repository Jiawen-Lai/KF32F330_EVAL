	.file	"kf32f_basic_pm.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$PM_IO_Latch_Enable
	.type	.text$PM_IO_Latch_Enable$scode_local_1, @function
	.text$PM_IO_Latch_Enable$scode_local_1:
	.align	1
	.export	PM_IO_Latch_Enable
	.type	PM_IO_Latch_Enable, @function
PM_IO_Latch_Enable:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
.LM2:
	LD	r5,#1073747328
.LM3:
	CMP	r0,#0
	JNZ	.L5
.LM4:
// inline asm begin
	// 42 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #31
	// 0 "" 2
.LM5:
// inline asm end
	JMP	lr
.L5:
.LM6:
// inline asm begin
	// 37 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #31
	// 0 "" 2
.LM7:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	PM_IO_Latch_Enable, .-PM_IO_Latch_Enable
	.section .text$PM_Get_IO_Latch_Status
	.type	.text$PM_Get_IO_Latch_Status$scode_local_2, @function
	.text$PM_Get_IO_Latch_Status$scode_local_2:
	.align	1
	.export	PM_Get_IO_Latch_Status
	.type	PM_Get_IO_Latch_Status, @function
PM_Get_IO_Latch_Status:
.LFB2:
.LM8:
	.cfi_startproc
.LM9:
	LD	r5,#1073747328
	LD.w	r0,[r5]
.LM10:
	LSR	r0,#31
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	PM_Get_IO_Latch_Status, .-PM_Get_IO_Latch_Status
	.section .text$PM_Internal_Low_Frequency_Enable
	.type	.text$PM_Internal_Low_Frequency_Enable$scode_local_3, @function
	.text$PM_Internal_Low_Frequency_Enable$scode_local_3:
	.align	1
	.export	PM_Internal_Low_Frequency_Enable
	.type	PM_Internal_Low_Frequency_Enable, @function
PM_Internal_Low_Frequency_Enable:
.LFB3:
.LM11:
	.cfi_startproc
.LVL1:
.LM12:
	LD	r5,#1073747328
.LM13:
	CMP	r0,#0
	JNZ	.L10
.LM14:
// inline asm begin
	// 87 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #29
	// 0 "" 2
.LM15:
// inline asm end
	JMP	lr
.L10:
.LM16:
// inline asm begin
	// 82 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #29
	// 0 "" 2
.LM17:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	PM_Internal_Low_Frequency_Enable, .-PM_Internal_Low_Frequency_Enable
	.section .text$PM_External_Low_Frequency_Enable
	.type	.text$PM_External_Low_Frequency_Enable$scode_local_4, @function
	.text$PM_External_Low_Frequency_Enable$scode_local_4:
	.align	1
	.export	PM_External_Low_Frequency_Enable
	.type	PM_External_Low_Frequency_Enable, @function
PM_External_Low_Frequency_Enable:
.LFB4:
.LM18:
	.cfi_startproc
.LVL2:
.LM19:
	LD	r5,#1073747328
.LM20:
	CMP	r0,#0
	JNZ	.L14
.LM21:
// inline asm begin
	// 111 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #28
	// 0 "" 2
.LM22:
// inline asm end
	JMP	lr
.L14:
.LM23:
// inline asm begin
	// 106 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #28
	// 0 "" 2
.LM24:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	PM_External_Low_Frequency_Enable, .-PM_External_Low_Frequency_Enable
	.section .text$PM_External_Low_Frequency_Clock_Enable
	.type	.text$PM_External_Low_Frequency_Clock_Enable$scode_local_5, @function
	.text$PM_External_Low_Frequency_Clock_Enable$scode_local_5:
	.align	1
	.export	PM_External_Low_Frequency_Clock_Enable
	.type	PM_External_Low_Frequency_Clock_Enable, @function
PM_External_Low_Frequency_Clock_Enable:
.LFB5:
.LM25:
	.cfi_startproc
.LVL3:
.LM26:
	LD	r5,#1073747328
.LM27:
	CMP	r0,#0
	JNZ	.L18
.LM28:
// inline asm begin
	// 135 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #27
	// 0 "" 2
.LM29:
// inline asm end
	JMP	lr
.L18:
.LM30:
// inline asm begin
	// 130 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #27
	// 0 "" 2
.LM31:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	PM_External_Low_Frequency_Clock_Enable, .-PM_External_Low_Frequency_Clock_Enable
	.section .text$PM_Main_Bandgap_Enable
	.type	.text$PM_Main_Bandgap_Enable$scode_local_6, @function
	.text$PM_Main_Bandgap_Enable$scode_local_6:
	.align	1
	.export	PM_Main_Bandgap_Enable
	.type	PM_Main_Bandgap_Enable, @function
PM_Main_Bandgap_Enable:
.LFB6:
.LM32:
	.cfi_startproc
.LVL4:
.LM33:
	LD	r5,#1073747328
.LM34:
	CMP	r0,#0
	JNZ	.L22
.LM35:
// inline asm begin
	// 159 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #25
	// 0 "" 2
.LM36:
// inline asm end
	JMP	lr
.L22:
.LM37:
// inline asm begin
	// 154 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #25
	// 0 "" 2
.LM38:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	PM_Main_Bandgap_Enable, .-PM_Main_Bandgap_Enable
	.section .text$PM_LDO18_Enable
	.type	.text$PM_LDO18_Enable$scode_local_7, @function
	.text$PM_LDO18_Enable$scode_local_7:
	.align	1
	.export	PM_LDO18_Enable
	.type	PM_LDO18_Enable, @function
PM_LDO18_Enable:
.LFB7:
.LM39:
	.cfi_startproc
.LVL5:
.LM40:
	LD	r5,#1073747328
.LM41:
	CMP	r0,#0
	JNZ	.L26
.LM42:
// inline asm begin
	// 183 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #24
	// 0 "" 2
.LM43:
// inline asm end
	JMP	lr
.L26:
.LM44:
// inline asm begin
	// 178 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #24
	// 0 "" 2
.LM45:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	PM_LDO18_Enable, .-PM_LDO18_Enable
	.section .text$PM_Backup_Registers_Reset_Config
	.type	.text$PM_Backup_Registers_Reset_Config$scode_local_8, @function
	.text$PM_Backup_Registers_Reset_Config$scode_local_8:
	.align	1
	.export	PM_Backup_Registers_Reset_Config
	.type	PM_Backup_Registers_Reset_Config, @function
PM_Backup_Registers_Reset_Config:
.LFB8:
.LM46:
	.cfi_startproc
.LVL6:
.LM47:
	LD	r5,#1073747328
.LM48:
	CMP	r0,#0
	JNZ	.L30
.LM49:
// inline asm begin
	// 209 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #22
	// 0 "" 2
.LM50:
// inline asm end
	JMP	lr
.L30:
.LM51:
// inline asm begin
	// 204 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #22
	// 0 "" 2
.LM52:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE8:
	.size	PM_Backup_Registers_Reset_Config, .-PM_Backup_Registers_Reset_Config
	.section .text$PM_Independent_Watchdog_Reset_Config
	.type	.text$PM_Independent_Watchdog_Reset_Config$scode_local_9, @function
	.text$PM_Independent_Watchdog_Reset_Config$scode_local_9:
	.align	1
	.export	PM_Independent_Watchdog_Reset_Config
	.type	PM_Independent_Watchdog_Reset_Config, @function
PM_Independent_Watchdog_Reset_Config:
.LFB9:
.LM53:
	.cfi_startproc
.LVL7:
.LM54:
	LD	r5,#1073747328
.LM55:
	CMP	r0,#0
	JNZ	.L34
.LM56:
// inline asm begin
	// 235 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #21
	// 0 "" 2
.LM57:
// inline asm end
	JMP	lr
.L34:
.LM58:
// inline asm begin
	// 230 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #21
	// 0 "" 2
.LM59:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE9:
	.size	PM_Independent_Watchdog_Reset_Config, .-PM_Independent_Watchdog_Reset_Config
	.section .text$PM_SRAMA_In_Standby_Work_Mode_Config
	.type	.text$PM_SRAMA_In_Standby_Work_Mode_Config$scode_local_10, @function
	.text$PM_SRAMA_In_Standby_Work_Mode_Config$scode_local_10:
	.align	1
	.export	PM_SRAMA_In_Standby_Work_Mode_Config
	.type	PM_SRAMA_In_Standby_Work_Mode_Config, @function
PM_SRAMA_In_Standby_Work_Mode_Config:
.LFB10:
.LM60:
	.cfi_startproc
.LVL8:
.LM61:
	LD	r5,#1073747328
.LM62:
	CMP	r0,#0
	JNZ	.L38
.LM63:
// inline asm begin
	// 261 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #20
	// 0 "" 2
.LM64:
// inline asm end
	JMP	lr
.L38:
.LM65:
// inline asm begin
	// 256 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #20
	// 0 "" 2
.LM66:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE10:
	.size	PM_SRAMA_In_Standby_Work_Mode_Config, .-PM_SRAMA_In_Standby_Work_Mode_Config
	.section .text$PM_LPRAM_In_Standby_Work_Mode_Config
	.type	.text$PM_LPRAM_In_Standby_Work_Mode_Config$scode_local_11, @function
	.text$PM_LPRAM_In_Standby_Work_Mode_Config$scode_local_11:
	.align	1
	.export	PM_LPRAM_In_Standby_Work_Mode_Config
	.type	PM_LPRAM_In_Standby_Work_Mode_Config, @function
PM_LPRAM_In_Standby_Work_Mode_Config:
.LFB11:
.LM67:
	.cfi_startproc
.LVL9:
.LM68:
	LD	r5,#1073747328
.LM69:
	CMP	r0,#0
	JNZ	.L42
.LM70:
// inline asm begin
	// 287 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #19
	// 0 "" 2
.LM71:
// inline asm end
	JMP	lr
.L42:
.LM72:
// inline asm begin
	// 282 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #19
	// 0 "" 2
.LM73:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE11:
	.size	PM_LPRAM_In_Standby_Work_Mode_Config, .-PM_LPRAM_In_Standby_Work_Mode_Config
	.section .text$PM_Backup_POR_Delay_Time_Config
	.type	.text$PM_Backup_POR_Delay_Time_Config$scode_local_12, @function
	.text$PM_Backup_POR_Delay_Time_Config$scode_local_12:
	.align	1
	.export	PM_Backup_POR_Delay_Time_Config
	.type	PM_Backup_POR_Delay_Time_Config, @function
PM_Backup_POR_Delay_Time_Config:
.LFB12:
.LM74:
	.cfi_startproc
.LVL10:
.LM75:
	LD	r5,#1073747328
.LM76:
	CMP	r0,#0
	JNZ	.L46
.LM77:
// inline asm begin
	// 314 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #14
	// 0 "" 2
.LM78:
// inline asm end
	JMP	lr
.L46:
.LM79:
// inline asm begin
	// 309 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #14
	// 0 "" 2
.LM80:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE12:
	.size	PM_Backup_POR_Delay_Time_Config, .-PM_Backup_POR_Delay_Time_Config
	.section .text$PM_Main_POR_Delay_Time_Config
	.type	.text$PM_Main_POR_Delay_Time_Config$scode_local_13, @function
	.text$PM_Main_POR_Delay_Time_Config$scode_local_13:
	.align	1
	.export	PM_Main_POR_Delay_Time_Config
	.type	PM_Main_POR_Delay_Time_Config, @function
PM_Main_POR_Delay_Time_Config:
.LFB13:
.LM81:
	.cfi_startproc
.LVL11:
.LM82:
	LD	r5,#1073747328
.LM83:
	CMP	r0,#0
	JNZ	.L50
.LM84:
// inline asm begin
	// 340 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #15
	// 0 "" 2
.LM85:
// inline asm end
	JMP	lr
.L50:
.LM86:
// inline asm begin
	// 335 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #15
	// 0 "" 2
.LM87:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE13:
	.size	PM_Main_POR_Delay_Time_Config, .-PM_Main_POR_Delay_Time_Config
	.section .text$PM_Peripheral_IO_Port_Config
	.type	.text$PM_Peripheral_IO_Port_Config$scode_local_14, @function
	.text$PM_Peripheral_IO_Port_Config$scode_local_14:
	.align	1
	.export	PM_Peripheral_IO_Port_Config
	.type	PM_Peripheral_IO_Port_Config, @function
PM_Peripheral_IO_Port_Config:
.LFB14:
.LM88:
	.cfi_startproc
.LVL12:
.LM89:
	LD	r5,#1073747328
.LM90:
	CMP	r0,#0
	JNZ	.L54
.LM91:
// inline asm begin
	// 366 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #13
	// 0 "" 2
.LM92:
// inline asm end
	JMP	lr
.L54:
.LM93:
// inline asm begin
	// 361 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #13
	// 0 "" 2
.LM94:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE14:
	.size	PM_Peripheral_IO_Port_Config, .-PM_Peripheral_IO_Port_Config
	.section .text$PM_OCAL0LOCK_Enable
	.type	.text$PM_OCAL0LOCK_Enable$scode_local_15, @function
	.text$PM_OCAL0LOCK_Enable$scode_local_15:
	.align	1
	.export	PM_OCAL0LOCK_Enable
	.type	PM_OCAL0LOCK_Enable, @function
PM_OCAL0LOCK_Enable:
.LFB15:
.LM95:
	.cfi_startproc
.LVL13:
.LM96:
	LD	r5,#1073747328
.LM97:
	CMP	r0,#0
	JNZ	.L58
.LM98:
// inline asm begin
	// 389 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #6
	// 0 "" 2
.LM99:
// inline asm end
	JMP	lr
.L58:
.LM100:
// inline asm begin
	// 384 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #6
	// 0 "" 2
.LM101:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE15:
	.size	PM_OCAL0LOCK_Enable, .-PM_OCAL0LOCK_Enable
	.section .text$PM_MEMSEL_Enable
	.type	.text$PM_MEMSEL_Enable$scode_local_16, @function
	.text$PM_MEMSEL_Enable$scode_local_16:
	.align	1
	.export	PM_MEMSEL_Enable
	.type	PM_MEMSEL_Enable, @function
PM_MEMSEL_Enable:
.LFB16:
.LM102:
	.cfi_startproc
.LVL14:
.LM103:
	LD	r5,#1073747328
.LM104:
	CMP	r0,#0
	JNZ	.L62
.LM105:
// inline asm begin
	// 413 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #3
	// 0 "" 2
.LM106:
// inline asm end
	JMP	lr
.L62:
.LM107:
// inline asm begin
	// 408 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #3
	// 0 "" 2
.LM108:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE16:
	.size	PM_MEMSEL_Enable, .-PM_MEMSEL_Enable
	.section .text$PM_Flash_Power_Off_Enable
	.type	.text$PM_Flash_Power_Off_Enable$scode_local_17, @function
	.text$PM_Flash_Power_Off_Enable$scode_local_17:
	.align	1
	.export	PM_Flash_Power_Off_Enable
	.type	PM_Flash_Power_Off_Enable, @function
PM_Flash_Power_Off_Enable:
.LFB17:
.LM109:
	.cfi_startproc
.LVL15:
.LM110:
	LD	r5,#1073747348
.LM111:
	CMP	r0,#0
	JNZ	.L66
.LM112:
// inline asm begin
	// 438 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #11
	// 0 "" 2
.LM113:
// inline asm end
	JMP	lr
.L66:
.LM114:
// inline asm begin
	// 433 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #11
	// 0 "" 2
.LM115:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE17:
	.size	PM_Flash_Power_Off_Enable, .-PM_Flash_Power_Off_Enable
	.section .text$PM_CCP0CLKLPEN_Enable
	.type	.text$PM_CCP0CLKLPEN_Enable$scode_local_18, @function
	.text$PM_CCP0CLKLPEN_Enable$scode_local_18:
	.align	1
	.export	PM_CCP0CLKLPEN_Enable
	.type	PM_CCP0CLKLPEN_Enable, @function
PM_CCP0CLKLPEN_Enable:
.LFB18:
.LM116:
	.cfi_startproc
.LVL16:
.LM117:
	LD	r5,#1073747348
.LM118:
	CMP	r0,#0
	JNZ	.L70
.LM119:
// inline asm begin
	// 462 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #5
	// 0 "" 2
.LM120:
// inline asm end
	JMP	lr
.L70:
.LM121:
// inline asm begin
	// 457 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #5
	// 0 "" 2
.LM122:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE18:
	.size	PM_CCP0CLKLPEN_Enable, .-PM_CCP0CLKLPEN_Enable
	.section .text$PM_Backup_Write_And_Read_Enable
	.type	.text$PM_Backup_Write_And_Read_Enable$scode_local_19, @function
	.text$PM_Backup_Write_And_Read_Enable$scode_local_19:
	.align	1
	.export	PM_Backup_Write_And_Read_Enable
	.type	PM_Backup_Write_And_Read_Enable, @function
PM_Backup_Write_And_Read_Enable:
.LFB19:
.LM123:
	.cfi_startproc
.LVL17:
.LM124:
	LD	r5,#1073747328
.LM125:
	CMP	r0,#0
	JNZ	.L74
.LM126:
// inline asm begin
	// 485 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #7
	// 0 "" 2
.LM127:
// inline asm end
	JMP	lr
.L74:
.LM128:
// inline asm begin
	// 480 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #7
	// 0 "" 2
.LM129:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE19:
	.size	PM_Backup_Write_And_Read_Enable, .-PM_Backup_Write_And_Read_Enable
	.section .text$PM_VREF_Software_Enable
	.type	.text$PM_VREF_Software_Enable$scode_local_20, @function
	.text$PM_VREF_Software_Enable$scode_local_20:
	.align	1
	.export	PM_VREF_Software_Enable
	.type	PM_VREF_Software_Enable, @function
PM_VREF_Software_Enable:
.LFB20:
.LM130:
	.cfi_startproc
.LVL18:
.LM131:
	LD	r5,#1073747332
.LM132:
	CMP	r0,#0
	JNZ	.L78
.LM133:
// inline asm begin
	// 508 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #5
	// 0 "" 2
.LM134:
// inline asm end
	JMP	lr
.L78:
.LM135:
// inline asm begin
	// 503 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #5
	// 0 "" 2
.LM136:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE20:
	.size	PM_VREF_Software_Enable, .-PM_VREF_Software_Enable
	.section .text$PM_VREF_SELECT
	.type	.text$PM_VREF_SELECT$scode_local_21, @function
	.text$PM_VREF_SELECT$scode_local_21:
	.align	1
	.export	PM_VREF_SELECT
	.type	PM_VREF_SELECT, @function
PM_VREF_SELECT:
.LFB21:
.LM137:
	.cfi_startproc
.LVL19:
.LM138:
	LD	r5,#1073747328
	LD.w	r4,[r5+#1]
.LVL20:
.LBB34:
.LBB35:
.LM139:
	CLR	r4,#6
	CLR	r4,#7
.LVL21:
	ORL	r0,r0,r4
.LVL22:
.LBE35:
.LBE34:
.LM140:
	ST.w	[r5+#1],r0
.LM141:
	JMP	lr
	.cfi_endproc
.LFE21:
	.size	PM_VREF_SELECT, .-PM_VREF_SELECT
	.section .text$PM_LPR_Software_Enable
	.type	.text$PM_LPR_Software_Enable$scode_local_22, @function
	.text$PM_LPR_Software_Enable$scode_local_22:
	.align	1
	.export	PM_LPR_Software_Enable
	.type	PM_LPR_Software_Enable, @function
PM_LPR_Software_Enable:
.LFB22:
.LM142:
	.cfi_startproc
.LVL23:
.LM143:
	LD	r5,#1073747328
.LM144:
	CMP	r0,#0
	JNZ	.L83
.LM145:
// inline asm begin
	// 549 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #5
	// 0 "" 2
.LM146:
// inline asm end
	JMP	lr
.L83:
.LM147:
// inline asm begin
	// 544 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #5
	// 0 "" 2
.LM148:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE22:
	.size	PM_LPR_Software_Enable, .-PM_LPR_Software_Enable
	.section .text$PM_Low_Power_Mode_Config
	.type	.text$PM_Low_Power_Mode_Config$scode_local_23, @function
	.text$PM_Low_Power_Mode_Config$scode_local_23:
	.align	1
	.export	PM_Low_Power_Mode_Config
	.type	PM_Low_Power_Mode_Config, @function
PM_Low_Power_Mode_Config:
.LFB23:
.LM149:
	.cfi_startproc
.LVL24:
.LM150:
	LD	r5,#1073747328
	LD.w	r3,[r5]
.LVL25:
.LBB36:
.LBB37:
.LM151:
	MOV	r4,#7
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
.LVL26:
.LBE37:
.LBE36:
.LM152:
	ST.w	[r5],r0
.LM153:
	JMP	lr
	.cfi_endproc
.LFE23:
	.size	PM_Low_Power_Mode_Config, .-PM_Low_Power_Mode_Config
	.section .text$PM_BOR_Enable
	.type	.text$PM_BOR_Enable$scode_local_24, @function
	.text$PM_BOR_Enable$scode_local_24:
	.align	1
	.export	PM_BOR_Enable
	.type	PM_BOR_Enable, @function
PM_BOR_Enable:
.LFB24:
.LM154:
	.cfi_startproc
.LVL27:
.LM155:
	LD	r5,#1073747332
.LM156:
	CMP	r0,#0
	JNZ	.L88
.LM157:
// inline asm begin
	// 592 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #31
	// 0 "" 2
.LM158:
// inline asm end
	JMP	lr
.L88:
.LM159:
// inline asm begin
	// 587 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #31
	// 0 "" 2
.LM160:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE24:
	.size	PM_BOR_Enable, .-PM_BOR_Enable
	.section .text$PM_Low_Power_BOR_Enable
	.type	.text$PM_Low_Power_BOR_Enable$scode_local_25, @function
	.text$PM_Low_Power_BOR_Enable$scode_local_25:
	.align	1
	.export	PM_Low_Power_BOR_Enable
	.type	PM_Low_Power_BOR_Enable, @function
PM_Low_Power_BOR_Enable:
.LFB25:
.LM161:
	.cfi_startproc
.LVL28:
.LM162:
	LD	r5,#1073747332
.LM163:
	CMP	r0,#0
	JNZ	.L92
.LM164:
// inline asm begin
	// 616 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #30
	// 0 "" 2
.LM165:
// inline asm end
	JMP	lr
.L92:
.LM166:
// inline asm begin
	// 611 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #30
	// 0 "" 2
.LM167:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE25:
	.size	PM_Low_Power_BOR_Enable, .-PM_Low_Power_BOR_Enable
	.section .text$PM_Temperature_Sensor_Enable
	.type	.text$PM_Temperature_Sensor_Enable$scode_local_26, @function
	.text$PM_Temperature_Sensor_Enable$scode_local_26:
	.align	1
	.export	PM_Temperature_Sensor_Enable
	.type	PM_Temperature_Sensor_Enable, @function
PM_Temperature_Sensor_Enable:
.LFB26:
.LM168:
	.cfi_startproc
.LVL29:
.LM169:
	LD	r5,#1073747332
.LM170:
	CMP	r0,#0
	JNZ	.L96
.LM171:
// inline asm begin
	// 640 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #29
	// 0 "" 2
.LM172:
// inline asm end
	JMP	lr
.L96:
.LM173:
// inline asm begin
	// 635 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #29
	// 0 "" 2
.LM174:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE26:
	.size	PM_Temperature_Sensor_Enable, .-PM_Temperature_Sensor_Enable
	.section .text$PM_Temperature_Sensor_Buffer_Enable
	.type	.text$PM_Temperature_Sensor_Buffer_Enable$scode_local_27, @function
	.text$PM_Temperature_Sensor_Buffer_Enable$scode_local_27:
	.align	1
	.export	PM_Temperature_Sensor_Buffer_Enable
	.type	PM_Temperature_Sensor_Buffer_Enable, @function
PM_Temperature_Sensor_Buffer_Enable:
.LFB27:
.LM175:
	.cfi_startproc
.LVL30:
.LM176:
	LD	r5,#1073747332
.LM177:
	CMP	r0,#0
	JNZ	.L100
.LM178:
// inline asm begin
	// 664 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #28
	// 0 "" 2
.LM179:
// inline asm end
	JMP	lr
.L100:
.LM180:
// inline asm begin
	// 659 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #28
	// 0 "" 2
.LM181:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE27:
	.size	PM_Temperature_Sensor_Buffer_Enable, .-PM_Temperature_Sensor_Buffer_Enable
	.section .text$PM_Reference_Voltage_Enable
	.type	.text$PM_Reference_Voltage_Enable$scode_local_28, @function
	.text$PM_Reference_Voltage_Enable$scode_local_28:
	.align	1
	.export	PM_Reference_Voltage_Enable
	.type	PM_Reference_Voltage_Enable, @function
PM_Reference_Voltage_Enable:
.LFB28:
.LM182:
	.cfi_startproc
.LVL31:
.LM183:
	LD	r5,#1073747332
.LM184:
	CMP	r0,#0
	JNZ	.L104
.LM185:
// inline asm begin
	// 688 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #5
	// 0 "" 2
.LM186:
// inline asm end
	JMP	lr
.L104:
.LM187:
// inline asm begin
	// 683 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #5
	// 0 "" 2
.LM188:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE28:
	.size	PM_Reference_Voltage_Enable, .-PM_Reference_Voltage_Enable
	.section .text$PM_Internal_Test_Buffer_Clock_Enable
	.type	.text$PM_Internal_Test_Buffer_Clock_Enable$scode_local_29, @function
	.text$PM_Internal_Test_Buffer_Clock_Enable$scode_local_29:
	.align	1
	.export	PM_Internal_Test_Buffer_Clock_Enable
	.type	PM_Internal_Test_Buffer_Clock_Enable, @function
PM_Internal_Test_Buffer_Clock_Enable:
.LFB29:
.LM189:
	.cfi_startproc
.LVL32:
.LM190:
	LD	r5,#1073747332
.LM191:
	CMP	r0,#0
	JNZ	.L108
.LM192:
// inline asm begin
	// 712 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #25
	// 0 "" 2
.LM193:
// inline asm end
	JMP	lr
.L108:
.LM194:
// inline asm begin
	// 707 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #25
	// 0 "" 2
.LM195:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE29:
	.size	PM_Internal_Test_Buffer_Clock_Enable, .-PM_Internal_Test_Buffer_Clock_Enable
	.section .text$PM_Internal_Test_Buffer_Clock_Scaler_Config
	.type	.text$PM_Internal_Test_Buffer_Clock_Scaler_Config$scode_local_30, @function
	.text$PM_Internal_Test_Buffer_Clock_Scaler_Config$scode_local_30:
	.align	1
	.export	PM_Internal_Test_Buffer_Clock_Scaler_Config
	.type	PM_Internal_Test_Buffer_Clock_Scaler_Config, @function
PM_Internal_Test_Buffer_Clock_Scaler_Config:
.LFB30:
.LM196:
	.cfi_startproc
.LVL33:
.LM197:
	LD	r5,#1073747328
	LD.w	r3,[r5+#1]
.LVL34:
.LBB38:
.LBB39:
.LM198:
	LD	r4,#-29360129
	ANL	r4,r3,r4
	ORL	r0,r0,r4
.LVL35:
.LBE39:
.LBE38:
.LM199:
	ST.w	[r5+#1],r0
.LM200:
	JMP	lr
	.cfi_endproc
.LFE30:
	.size	PM_Internal_Test_Buffer_Clock_Scaler_Config, .-PM_Internal_Test_Buffer_Clock_Scaler_Config
	.section .text$PM_PLL0_Output_Buffer_Enable
	.type	.text$PM_PLL0_Output_Buffer_Enable$scode_local_31, @function
	.text$PM_PLL0_Output_Buffer_Enable$scode_local_31:
	.align	1
	.export	PM_PLL0_Output_Buffer_Enable
	.type	PM_PLL0_Output_Buffer_Enable, @function
PM_PLL0_Output_Buffer_Enable:
.LFB31:
.LM201:
	.cfi_startproc
.LVL36:
.LM202:
	LD	r5,#1073747332
.LM203:
	CMP	r0,#0
	JNZ	.L113
.LM204:
// inline asm begin
	// 759 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #21
	// 0 "" 2
.LM205:
// inline asm end
	JMP	lr
.L113:
.LM206:
// inline asm begin
	// 754 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #21
	// 0 "" 2
.LM207:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE31:
	.size	PM_PLL0_Output_Buffer_Enable, .-PM_PLL0_Output_Buffer_Enable
	.section .text$PM_PLL1_Output_Buffer_Enable
	.type	.text$PM_PLL1_Output_Buffer_Enable$scode_local_32, @function
	.text$PM_PLL1_Output_Buffer_Enable$scode_local_32:
	.align	1
	.export	PM_PLL1_Output_Buffer_Enable
	.type	PM_PLL1_Output_Buffer_Enable, @function
PM_PLL1_Output_Buffer_Enable:
.LFB32:
.LM208:
	.cfi_startproc
.LVL37:
.LM209:
	LD	r5,#1073747332
.LM210:
	CMP	r0,#0
	JNZ	.L117
.LM211:
// inline asm begin
	// 783 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #20
	// 0 "" 2
.LM212:
// inline asm end
	JMP	lr
.L117:
.LM213:
// inline asm begin
	// 778 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #20
	// 0 "" 2
.LM214:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE32:
	.size	PM_PLL1_Output_Buffer_Enable, .-PM_PLL1_Output_Buffer_Enable
	.section .text$PM_PLL2_Output_Buffer_Enable
	.type	.text$PM_PLL2_Output_Buffer_Enable$scode_local_33, @function
	.text$PM_PLL2_Output_Buffer_Enable$scode_local_33:
	.align	1
	.export	PM_PLL2_Output_Buffer_Enable
	.type	PM_PLL2_Output_Buffer_Enable, @function
PM_PLL2_Output_Buffer_Enable:
.LFB33:
.LM215:
	.cfi_startproc
.LVL38:
.LM216:
	LD	r5,#1073747332
.LM217:
	CMP	r0,#0
	JNZ	.L121
.LM218:
// inline asm begin
	// 807 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #19
	// 0 "" 2
.LM219:
// inline asm end
	JMP	lr
.L121:
.LM220:
// inline asm begin
	// 802 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #19
	// 0 "" 2
.LM221:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE33:
	.size	PM_PLL2_Output_Buffer_Enable, .-PM_PLL2_Output_Buffer_Enable
	.section .text$PM_PLL0LDO_Output_Buffer_Enable
	.type	.text$PM_PLL0LDO_Output_Buffer_Enable$scode_local_34, @function
	.text$PM_PLL0LDO_Output_Buffer_Enable$scode_local_34:
	.align	1
	.export	PM_PLL0LDO_Output_Buffer_Enable
	.type	PM_PLL0LDO_Output_Buffer_Enable, @function
PM_PLL0LDO_Output_Buffer_Enable:
.LFB34:
.LM222:
	.cfi_startproc
.LVL39:
.LM223:
	LD	r5,#1073747332
.LM224:
	CMP	r0,#0
	JNZ	.L125
.LM225:
// inline asm begin
	// 831 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #18
	// 0 "" 2
.LM226:
// inline asm end
	JMP	lr
.L125:
.LM227:
// inline asm begin
	// 826 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #18
	// 0 "" 2
.LM228:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE34:
	.size	PM_PLL0LDO_Output_Buffer_Enable, .-PM_PLL0LDO_Output_Buffer_Enable
	.section .text$PM_PLL1LDO_Output_Buffer_Enable
	.type	.text$PM_PLL1LDO_Output_Buffer_Enable$scode_local_35, @function
	.text$PM_PLL1LDO_Output_Buffer_Enable$scode_local_35:
	.align	1
	.export	PM_PLL1LDO_Output_Buffer_Enable
	.type	PM_PLL1LDO_Output_Buffer_Enable, @function
PM_PLL1LDO_Output_Buffer_Enable:
.LFB35:
.LM229:
	.cfi_startproc
.LVL40:
.LM230:
	LD	r5,#1073747332
.LM231:
	CMP	r0,#0
	JNZ	.L129
.LM232:
// inline asm begin
	// 855 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #17
	// 0 "" 2
.LM233:
// inline asm end
	JMP	lr
.L129:
.LM234:
// inline asm begin
	// 850 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #17
	// 0 "" 2
.LM235:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE35:
	.size	PM_PLL1LDO_Output_Buffer_Enable, .-PM_PLL1LDO_Output_Buffer_Enable
	.section .text$PM_PLL2LDO_Output_Buffer_Enable
	.type	.text$PM_PLL2LDO_Output_Buffer_Enable$scode_local_36, @function
	.text$PM_PLL2LDO_Output_Buffer_Enable$scode_local_36:
	.align	1
	.export	PM_PLL2LDO_Output_Buffer_Enable
	.type	PM_PLL2LDO_Output_Buffer_Enable, @function
PM_PLL2LDO_Output_Buffer_Enable:
.LFB36:
.LM236:
	.cfi_startproc
.LVL41:
.LM237:
	LD	r5,#1073747332
.LM238:
	CMP	r0,#0
	JNZ	.L133
.LM239:
// inline asm begin
	// 879 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #16
	// 0 "" 2
.LM240:
// inline asm end
	JMP	lr
.L133:
.LM241:
// inline asm begin
	// 874 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #16
	// 0 "" 2
.LM242:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE36:
	.size	PM_PLL2LDO_Output_Buffer_Enable, .-PM_PLL2LDO_Output_Buffer_Enable
	.section .text$PM_Battery_BOR_Config
	.type	.text$PM_Battery_BOR_Config$scode_local_37, @function
	.text$PM_Battery_BOR_Config$scode_local_37:
	.align	1
	.export	PM_Battery_BOR_Config
	.type	PM_Battery_BOR_Config, @function
PM_Battery_BOR_Config:
.LFB37:
.LM243:
	.cfi_startproc
.LVL42:
.LM244:
	LD	r5,#1073747328
	LD.w	r3,[r5+#1]
.LVL43:
.LBB40:
.LBB41:
.LM245:
	LD	r4,#-28673
	ANL	r4,r3,r4
	ORL	r0,r0,r4
.LVL44:
.LBE41:
.LBE40:
.LM246:
	ST.w	[r5+#1],r0
.LM247:
	JMP	lr
	.cfi_endproc
.LFE37:
	.size	PM_Battery_BOR_Config, .-PM_Battery_BOR_Config
	.section .text$PM_Battery_BOR_Enable
	.type	.text$PM_Battery_BOR_Enable$scode_local_38, @function
	.text$PM_Battery_BOR_Enable$scode_local_38:
	.align	1
	.export	PM_Battery_BOR_Enable
	.type	PM_Battery_BOR_Enable, @function
PM_Battery_BOR_Enable:
.LFB38:
.LM248:
	.cfi_startproc
.LVL45:
.LM249:
	LD	r5,#1073747332
.LM250:
	CMP	r0,#0
	JNZ	.L138
.LM251:
// inline asm begin
	// 924 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #15
	// 0 "" 2
.LM252:
// inline asm end
	JMP	lr
.L138:
.LM253:
// inline asm begin
	// 919 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #15
	// 0 "" 2
.LM254:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE38:
	.size	PM_Battery_BOR_Enable, .-PM_Battery_BOR_Enable
	.section .text$PM_Peripheral_Voltage_Monitoring_Enable
	.type	.text$PM_Peripheral_Voltage_Monitoring_Enable$scode_local_39, @function
	.text$PM_Peripheral_Voltage_Monitoring_Enable$scode_local_39:
	.align	1
	.export	PM_Peripheral_Voltage_Monitoring_Enable
	.type	PM_Peripheral_Voltage_Monitoring_Enable, @function
PM_Peripheral_Voltage_Monitoring_Enable:
.LFB39:
.LM255:
	.cfi_startproc
.LVL46:
.LM256:
	LD	r5,#1073747332
.LM257:
	CMP	r0,#0
	JNZ	.L142
.LM258:
// inline asm begin
	// 948 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #5
	// 0 "" 2
.LM259:
// inline asm end
	JMP	lr
.L142:
.LM260:
// inline asm begin
	// 943 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #5
	// 0 "" 2
.LM261:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE39:
	.size	PM_Peripheral_Voltage_Monitoring_Enable, .-PM_Peripheral_Voltage_Monitoring_Enable
	.section .text$PM_Voltage_Detection_Config
	.type	.text$PM_Voltage_Detection_Config$scode_local_40, @function
	.text$PM_Voltage_Detection_Config$scode_local_40:
	.align	1
	.export	PM_Voltage_Detection_Config
	.type	PM_Voltage_Detection_Config, @function
PM_Voltage_Detection_Config:
.LFB40:
.LM262:
	.cfi_startproc
.LVL47:
.LM263:
	LD	r5,#1073747328
	LD.w	r3,[r5+#1]
.LVL48:
.LBB42:
.LBB43:
.LM264:
	MOV	r4,#28
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
.LVL49:
.LBE43:
.LBE42:
.LM265:
	ST.w	[r5+#1],r0
.LM266:
	JMP	lr
	.cfi_endproc
.LFE40:
	.size	PM_Voltage_Detection_Config, .-PM_Voltage_Detection_Config
	.section .text$PM_Voltage_Detection_Enable
	.type	.text$PM_Voltage_Detection_Enable$scode_local_41, @function
	.text$PM_Voltage_Detection_Enable$scode_local_41:
	.align	1
	.export	PM_Voltage_Detection_Enable
	.type	PM_Voltage_Detection_Enable, @function
PM_Voltage_Detection_Enable:
.LFB41:
.LM267:
	.cfi_startproc
.LVL50:
.LM268:
	LD	r5,#1073747332
.LM269:
	CMP	r0,#0
	JNZ	.L147
.LM270:
// inline asm begin
	// 994 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #0
	// 0 "" 2
.LM271:
// inline asm end
	JMP	lr
.L147:
.LM272:
// inline asm begin
	// 989 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #0
	// 0 "" 2
.LM273:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE41:
	.size	PM_Voltage_Detection_Enable, .-PM_Voltage_Detection_Enable
	.section .text$PM_External_Wakeup_Pin_Enable
	.type	.text$PM_External_Wakeup_Pin_Enable$scode_local_42, @function
	.text$PM_External_Wakeup_Pin_Enable$scode_local_42:
	.align	1
	.export	PM_External_Wakeup_Pin_Enable
	.type	PM_External_Wakeup_Pin_Enable, @function
PM_External_Wakeup_Pin_Enable:
.LFB42:
.LM274:
	.cfi_startproc
.LVL51:
.LM275:
	MOV	r5,#1
	LSL	r5,#27
	LSL	r0,r5,r0
.LVL52:
.LM276:
	LD	r4,#1073747328
	LD.w	r3,[r4+#5]
.LM277:
	CMP	r1,#0
	JNZ	.L151
.LM278:
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4+#5],r5
.LM279:
	JMP	lr
.L151:
.LM280:
	ORL	r5,r0,r3
	ST.w	[r4+#5],r5
.LM281:
	JMP	lr
	.cfi_endproc
.LFE42:
	.size	PM_External_Wakeup_Pin_Enable, .-PM_External_Wakeup_Pin_Enable
	.section .text$PM_External_Wakeup_Edge_Config
	.type	.text$PM_External_Wakeup_Edge_Config$scode_local_43, @function
	.text$PM_External_Wakeup_Edge_Config$scode_local_43:
	.align	1
	.export	PM_External_Wakeup_Edge_Config
	.type	PM_External_Wakeup_Edge_Config, @function
PM_External_Wakeup_Edge_Config:
.LFB43:
.LM282:
	.cfi_startproc
.LVL53:
.LM283:
	MOV	r5,#1
	LSL	r5,#22
	LSL	r0,r5,r0
.LVL54:
.LM284:
	LD	r4,#1073747328
	LD.w	r3,[r4+#5]
.LM285:
	CMP	r1,#0
	JNZ	.L155
.LM286:
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4+#5],r5
.LM287:
	JMP	lr
.L155:
.LM288:
	ORL	r5,r0,r3
	ST.w	[r4+#5],r5
.LM289:
	JMP	lr
	.cfi_endproc
.LFE43:
	.size	PM_External_Wakeup_Edge_Config, .-PM_External_Wakeup_Edge_Config
	.section .text$PM_Stop_Mode_Peripheral_INLF_Enable
	.type	.text$PM_Stop_Mode_Peripheral_INLF_Enable$scode_local_44, @function
	.text$PM_Stop_Mode_Peripheral_INLF_Enable$scode_local_44:
	.align	1
	.export	PM_Stop_Mode_Peripheral_INLF_Enable
	.type	PM_Stop_Mode_Peripheral_INLF_Enable, @function
PM_Stop_Mode_Peripheral_INLF_Enable:
.LFB44:
.LM290:
	.cfi_startproc
.LVL55:
.LM291:
	MOV	r5,#16
	LSL	r0,r5,r0
.LVL56:
.LM292:
	LD	r4,#1073747328
	LD.w	r3,[r4+#5]
.LM293:
	CMP	r1,#0
	JNZ	.L159
.LM294:
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4+#5],r5
.LM295:
	JMP	lr
.L159:
.LM296:
	ORL	r5,r0,r3
	ST.w	[r4+#5],r5
.LM297:
	JMP	lr
	.cfi_endproc
.LFE44:
	.size	PM_Stop_Mode_Peripheral_INLF_Enable, .-PM_Stop_Mode_Peripheral_INLF_Enable
	.section .text$PM_Peripheral_Reset_Config
	.type	.text$PM_Peripheral_Reset_Config$scode_local_45, @function
	.text$PM_Peripheral_Reset_Config$scode_local_45:
	.align	1
	.export	PM_Peripheral_Reset_Config
	.type	PM_Peripheral_Reset_Config, @function
PM_Peripheral_Reset_Config:
.LFB45:
.LM298:
	.cfi_startproc
.LVL57:
.LM299:
	MOV	r5,#1
	LSL	r0,r5,r0
.LVL58:
.LM300:
	LD	r4,#1073747328
	LD.w	r3,[r4+#5]
.LM301:
	CMP	r1,#0
	JNZ	.L163
.LM302:
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4+#5],r5
.LM303:
	JMP	lr
.L163:
.LM304:
	ORL	r5,r0,r3
	ST.w	[r4+#5],r5
.LM305:
	JMP	lr
	.cfi_endproc
.LFE45:
	.size	PM_Peripheral_Reset_Config, .-PM_Peripheral_Reset_Config
	.section .text$PM_Vdd_Por_Enable
	.type	.text$PM_Vdd_Por_Enable$scode_local_46, @function
	.text$PM_Vdd_Por_Enable$scode_local_46:
	.align	1
	.export	PM_Vdd_Por_Enable
	.type	PM_Vdd_Por_Enable, @function
PM_Vdd_Por_Enable:
.LFB46:
.LM306:
	.cfi_startproc
.LVL59:
.LM307:
	LD	r5,#1073747328
.LM308:
	CMP	r0,#0
	JNZ	.L167
.LM309:
// inline asm begin
	// 1158 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #30
	// 0 "" 2
.LM310:
// inline asm end
	JMP	lr
.L167:
.LM311:
// inline asm begin
	// 1153 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #30
	// 0 "" 2
.LM312:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE46:
	.size	PM_Vdd_Por_Enable, .-PM_Vdd_Por_Enable
	.section .text$PM_Low_Power_Bandgap_Enable
	.type	.text$PM_Low_Power_Bandgap_Enable$scode_local_47, @function
	.text$PM_Low_Power_Bandgap_Enable$scode_local_47:
	.align	1
	.export	PM_Low_Power_Bandgap_Enable
	.type	PM_Low_Power_Bandgap_Enable, @function
PM_Low_Power_Bandgap_Enable:
.LFB47:
.LM313:
	.cfi_startproc
.LVL60:
.LM314:
	LD	r5,#1073747328
.LM315:
	CMP	r0,#0
	JNZ	.L171
.LM316:
// inline asm begin
	// 1182 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #23
	// 0 "" 2
.LM317:
// inline asm end
	JMP	lr
.L171:
.LM318:
// inline asm begin
	// 1177 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #23
	// 0 "" 2
.LM319:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE47:
	.size	PM_Low_Power_Bandgap_Enable, .-PM_Low_Power_Bandgap_Enable
	.section .text$PM_Power_Dissipation_Mode_Config
	.type	.text$PM_Power_Dissipation_Mode_Config$scode_local_48, @function
	.text$PM_Power_Dissipation_Mode_Config$scode_local_48:
	.align	1
	.export	PM_Power_Dissipation_Mode_Config
	.type	PM_Power_Dissipation_Mode_Config, @function
PM_Power_Dissipation_Mode_Config:
.LFB48:
.LM320:
	.cfi_startproc
.LVL61:
.LM321:
	LD	r5,#1073747328
.LM322:
	CMP	r0,#0
	JNZ	.L175
.LM323:
// inline asm begin
	// 1208 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #11
	// 0 "" 2
.LM324:
// inline asm end
	JMP	lr
.L175:
.LM325:
// inline asm begin
	// 1203 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #11
	// 0 "" 2
.LM326:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE48:
	.size	PM_Power_Dissipation_Mode_Config, .-PM_Power_Dissipation_Mode_Config
	.section .text$PM_Power_Dissipation_Mode_Delay_Config
	.type	.text$PM_Power_Dissipation_Mode_Delay_Config$scode_local_49, @function
	.text$PM_Power_Dissipation_Mode_Delay_Config$scode_local_49:
	.align	1
	.export	PM_Power_Dissipation_Mode_Delay_Config
	.type	PM_Power_Dissipation_Mode_Delay_Config, @function
PM_Power_Dissipation_Mode_Delay_Config:
.LFB49:
.LM327:
	.cfi_startproc
.LVL62:
.LM328:
	LD	r5,#1073747328
	LD.w	r4,[r5]
.LVL63:
.LBB44:
.LBB45:
.LM329:
	CLR	r4,#9
	CLR	r4,#10
.LVL64:
	ORL	r0,r0,r4
.LVL65:
.LBE45:
.LBE44:
.LM330:
	ST.w	[r5],r0
.LM331:
	JMP	lr
	.cfi_endproc
.LFE49:
	.size	PM_Power_Dissipation_Mode_Delay_Config, .-PM_Power_Dissipation_Mode_Delay_Config
	.section .text$PM_Internal_Test_Buffer_Enable
	.type	.text$PM_Internal_Test_Buffer_Enable$scode_local_50, @function
	.text$PM_Internal_Test_Buffer_Enable$scode_local_50:
	.align	1
	.export	PM_Internal_Test_Buffer_Enable
	.type	PM_Internal_Test_Buffer_Enable, @function
PM_Internal_Test_Buffer_Enable:
.LFB50:
.LM332:
	.cfi_startproc
.LVL66:
.LM333:
	LD	r5,#1073747332
.LM334:
	CMP	r0,#0
	JNZ	.L180
.LM335:
// inline asm begin
	// 1250 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #26
	// 0 "" 2
.LM336:
// inline asm end
	JMP	lr
.L180:
.LM337:
// inline asm begin
	// 1245 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #26
	// 0 "" 2
.LM338:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE50:
	.size	PM_Internal_Test_Buffer_Enable, .-PM_Internal_Test_Buffer_Enable
	.section .text$PM_Clear_Reset_And_Wakeup_Flag
	.type	.text$PM_Clear_Reset_And_Wakeup_Flag$scode_local_51, @function
	.text$PM_Clear_Reset_And_Wakeup_Flag$scode_local_51:
	.align	1
	.export	PM_Clear_Reset_And_Wakeup_Flag
	.type	PM_Clear_Reset_And_Wakeup_Flag, @function
PM_Clear_Reset_And_Wakeup_Flag:
.LFB51:
.LM339:
	.cfi_startproc
.LVL67:
.LM340:
	MOV	r5,#1
	LSL	r0,r5,r0
.LVL68:
.LM341:
	LD	r5,#1073747336
// inline asm begin
	// 1283 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #31
	// 0 "" 2
.LM342:
// inline asm end
	LD	r4,#1073747328
.L182:
.LM343:
	LD.w	r5,[r4+#2]
	ANL	r5,r0,r5
	JNZ	.L182
.LM344:
	LD	r5,#1073747336
// inline asm begin
	// 1285 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #31
	// 0 "" 2
.LM345:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE51:
	.size	PM_Clear_Reset_And_Wakeup_Flag, .-PM_Clear_Reset_And_Wakeup_Flag
	.section .text$PM_Get_IWDT_Reset_Flag
	.type	.text$PM_Get_IWDT_Reset_Flag$scode_local_52, @function
	.text$PM_Get_IWDT_Reset_Flag$scode_local_52:
	.align	1
	.export	PM_Get_IWDT_Reset_Flag
	.type	PM_Get_IWDT_Reset_Flag, @function
PM_Get_IWDT_Reset_Flag:
.LFB52:
.LM346:
	.cfi_startproc
.LVL69:
.LM347:
	LD	r5,#1073747328
.LM348:
	CMP	r0,#31
	JHI	.L185
.LM349:
	LD.w	r5,[r5+#2]
.LVL70:
.LM350:
	MOV	r4,#1
	LSL	r0,r4,r0
.LVL71:
.LM351:
	ANL	r0,r0,r5
.LVL72:
	MOV	r5,#0
.LVL73:
	SUB	r5,r5,r0
	ORL	r0,r5,r0
.LM352:
	LSR	r0,#31
	JMP	lr
.LVL74:
.L185:
.LM353:
	LD.w	r5,[r5+#3]
.LVL75:
.LM354:
	SUB	r0,#32
.LVL76:
	MOV	r4,#1
	LSL	r0,r4,r0
.LVL77:
.LM355:
	ANL	r0,r0,r5
.LVL78:
	MOV	r5,#0
.LVL79:
	SUB	r5,r5,r0
	ORL	r0,r5,r0
.LM356:
	LSR	r0,#31
	JMP	lr
	.cfi_endproc
.LFE52:
	.size	PM_Get_IWDT_Reset_Flag, .-PM_Get_IWDT_Reset_Flag
	.section .text$PM_Clear_External_Wakeup_Pin_Flag
	.type	.text$PM_Clear_External_Wakeup_Pin_Flag$scode_local_53, @function
	.text$PM_Clear_External_Wakeup_Pin_Flag$scode_local_53:
	.align	1
	.export	PM_Clear_External_Wakeup_Pin_Flag
	.type	PM_Clear_External_Wakeup_Pin_Flag, @function
PM_Clear_External_Wakeup_Pin_Flag:
.LFB53:
.LM357:
	.cfi_startproc
.LVL80:
.LM358:
	SUB	r0,#32
.LVL81:
	MOV	r5,#1
	LSL	r0,r5,r0
.LVL82:
.LM359:
	LD	r3,#1073747328
	LD.w	r5,[r3+#4]
	ORL	r5,r0,r5
	ST.w	[r3+#4],r5
.L188:
.LM360:
	LD	r4,#1073747328
	LD.w	r5,[r3+#3]
	ANL	r5,r0,r5
	JNZ	.L188
.LM361:
	LD.w	r5,[r4+#4]
	NOT	r0,r0
.LVL83:
	ANL	r0,r0,r5
.LVL84:
	ST.w	[r4+#4],r0
.LM362:
	JMP	lr
	.cfi_endproc
.LFE53:
	.size	PM_Clear_External_Wakeup_Pin_Flag, .-PM_Clear_External_Wakeup_Pin_Flag
	.section .text$PM_Get_Low_Power_Running_State
	.type	.text$PM_Get_Low_Power_Running_State$scode_local_54, @function
	.text$PM_Get_Low_Power_Running_State$scode_local_54:
	.align	1
	.export	PM_Get_Low_Power_Running_State
	.type	PM_Get_Low_Power_Running_State, @function
PM_Get_Low_Power_Running_State:
.LFB54:
.LM363:
	.cfi_startproc
.LM364:
	LD	r5,#1073747328
	LD.w	r0,[r5+#2]
	LSR	r0,#1
.LM365:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE54:
	.size	PM_Get_Low_Power_Running_State, .-PM_Get_Low_Power_Running_State
	.section .text$PM_Get_LPR_Status
	.type	.text$PM_Get_LPR_Status$scode_local_55, @function
	.text$PM_Get_LPR_Status$scode_local_55:
	.align	1
	.export	PM_Get_LPR_Status
	.type	PM_Get_LPR_Status, @function
PM_Get_LPR_Status:
.LFB55:
.LM366:
	.cfi_startproc
.LM367:
	LD	r5,#1073747328
	LD.w	r0,[r5+#2]
.LM368:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE55:
	.size	PM_Get_LPR_Status, .-PM_Get_LPR_Status
	.section .text$PM_Get_Peripheral_Voltage_Detection_Status
	.type	.text$PM_Get_Peripheral_Voltage_Detection_Status$scode_local_56, @function
	.text$PM_Get_Peripheral_Voltage_Detection_Status$scode_local_56:
	.align	1
	.export	PM_Get_Peripheral_Voltage_Detection_Status
	.type	PM_Get_Peripheral_Voltage_Detection_Status, @function
PM_Get_Peripheral_Voltage_Detection_Status:
.LFB56:
.LM369:
	.cfi_startproc
.LM370:
	LD	r5,#1073747328
	LD.w	r0,[r5+#3]
.LM371:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE56:
	.size	PM_Get_Peripheral_Voltage_Detection_Status, .-PM_Get_Peripheral_Voltage_Detection_Status
	.section .text$PM_Zero_Drift_Current_Config
	.type	.text$PM_Zero_Drift_Current_Config$scode_local_57, @function
	.text$PM_Zero_Drift_Current_Config$scode_local_57:
	.align	1
	.export	PM_Zero_Drift_Current_Config
	.type	PM_Zero_Drift_Current_Config, @function
PM_Zero_Drift_Current_Config:
.LFB57:
.LM372:
	.cfi_startproc
.LVL85:
.LM373:
	LD	r5,#1073747328
	LD.w	r4,[r5+#6]
.LVL86:
.LBB46:
.LBB47:
.LM374:
	CLR	r4,#24
	CLR	r4,#25
.LVL87:
	ORL	r0,r0,r4
.LVL88:
.LBE47:
.LBE46:
.LM375:
	ST.w	[r5+#6],r0
.LM376:
	JMP	lr
	.cfi_endproc
.LFE57:
	.size	PM_Zero_Drift_Current_Config, .-PM_Zero_Drift_Current_Config
	.section .text$PM_BOR_Voltage_Config
	.type	.text$PM_BOR_Voltage_Config$scode_local_58, @function
	.text$PM_BOR_Voltage_Config$scode_local_58:
	.align	1
	.export	PM_BOR_Voltage_Config
	.type	PM_BOR_Voltage_Config, @function
PM_BOR_Voltage_Config:
.LFB58:
.LM377:
	.cfi_startproc
.LVL89:
.LM378:
	LD	r5,#1073747328
	LD.w	r4,[r5+#6]
.LVL90:
.LBB48:
.LBB49:
.LM379:
	CLR	r4,#20
	CLR	r4,#21
.LVL91:
	ORL	r0,r0,r4
.LVL92:
.LBE49:
.LBE48:
.LM380:
	ST.w	[r5+#6],r0
.LM381:
	JMP	lr
	.cfi_endproc
.LFE58:
	.size	PM_BOR_Voltage_Config, .-PM_BOR_Voltage_Config
	.section .text$PM_Main_Regulator_Voltage_Config
	.type	.text$PM_Main_Regulator_Voltage_Config$scode_local_59, @function
	.text$PM_Main_Regulator_Voltage_Config$scode_local_59:
	.align	1
	.export	PM_Main_Regulator_Voltage_Config
	.type	PM_Main_Regulator_Voltage_Config, @function
PM_Main_Regulator_Voltage_Config:
.LFB59:
.LM382:
	.cfi_startproc
.LVL93:
.LM383:
	LD	r5,#1073747328
	LD.w	r3,[r5+#6]
.LVL94:
.LM384:
	MOV	r4,#15
	LSL	r4,r4,r0
.LVL95:
.LM385:
	NOT	r4,r4
.LVL96:
.LBB50:
.LBB51:
.LM386:
	ANL	r4,r4,r3
.LVL97:
.LBE51:
.LBE50:
.LM387:
	LSL	r1,r1,r0
.LVL98:
.LBB53:
.LBB52:
.LM388:
	ORL	r4,r4,r1
.LBE52:
.LBE53:
.LM389:
	ST.w	[r5+#6],r4
.LM390:
	JMP	lr
	.cfi_endproc
.LFE59:
	.size	PM_Main_Regulator_Voltage_Config, .-PM_Main_Regulator_Voltage_Config
	.section .text$PM_Main_Regulator_HV_Enable
	.type	.text$PM_Main_Regulator_HV_Enable$scode_local_60, @function
	.text$PM_Main_Regulator_HV_Enable$scode_local_60:
	.align	1
	.export	PM_Main_Regulator_HV_Enable
	.type	PM_Main_Regulator_HV_Enable, @function
PM_Main_Regulator_HV_Enable:
.LFB60:
.LM391:
	.cfi_startproc
.LVL99:
.LM392:
	LD	r5,#1073747352
.LM393:
	CMP	r0,#0
	JNZ	.L199
.LM394:
// inline asm begin
	// 1520 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #15
	// 0 "" 2
.LM395:
// inline asm end
	JMP	lr
.L199:
.LM396:
// inline asm begin
	// 1515 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #15
	// 0 "" 2
.LM397:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE60:
	.size	PM_Main_Regulator_HV_Enable, .-PM_Main_Regulator_HV_Enable
	.section .text$PM_Reference_Calibration_Config
	.type	.text$PM_Reference_Calibration_Config$scode_local_61, @function
	.text$PM_Reference_Calibration_Config$scode_local_61:
	.align	1
	.export	PM_Reference_Calibration_Config
	.type	PM_Reference_Calibration_Config, @function
PM_Reference_Calibration_Config:
.LFB61:
.LM398:
	.cfi_startproc
.LVL100:
.LM399:
	CMP	r0,#4
	JZ	.L203
	CMP	r0,#8
	JZ	.L204
	CMP	r0,#0
	JZ	.L205
	MOV	r3,#0
	NOT	r3,r3
.LM400:
	MOV	r1,#0
.LVL101:
.LM401:
	LD	r5,#1073747328
	LD.w	r4,[r5+#6]
.LVL102:
.LBB54:
.LBB55:
.LM402:
	ANL	r4,r3,r4
.LVL103:
	ORL	r1,r4,r1
.LVL104:
.LBE55:
.LBE54:
.LM403:
	ST.w	[r5+#6],r1
.LM404:
	JMP	lr
.LVL105:
.L205:
.LM405:
	MOV	r3,#15
	NOT	r3,r3
.LVL106:
.LM406:
	LD	r5,#1073747328
	LD.w	r4,[r5+#6]
.LVL107:
.LBB59:
.LBB56:
.LM407:
	ANL	r4,r3,r4
.LVL108:
	ORL	r1,r4,r1
.LVL109:
.LBE56:
.LBE59:
.LM408:
	ST.w	[r5+#6],r1
.LM409:
	JMP	lr
.LVL110:
.L204:
.LM410:
	LSL	r1,#8
.LVL111:
.LM411:
	LD	r3,#-7937
.LVL112:
.LM412:
	LD	r5,#1073747328
	LD.w	r4,[r5+#6]
.LVL113:
.LBB60:
.LBB57:
.LM413:
	ANL	r4,r3,r4
.LVL114:
	ORL	r1,r4,r1
.LVL115:
.LBE57:
.LBE60:
.LM414:
	ST.w	[r5+#6],r1
.LM415:
	JMP	lr
.LVL116:
.L203:
.LM416:
	LSL	r1,#4
.LVL117:
.LM417:
	MOV	r3,#240
	NOT	r3,r3
.LVL118:
.LM418:
	LD	r5,#1073747328
	LD.w	r4,[r5+#6]
.LVL119:
.LBB61:
.LBB58:
.LM419:
	ANL	r4,r3,r4
.LVL120:
	ORL	r1,r4,r1
.LVL121:
.LBE58:
.LBE61:
.LM420:
	ST.w	[r5+#6],r1
.LM421:
	JMP	lr
	.cfi_endproc
.LFE61:
	.size	PM_Reference_Calibration_Config, .-PM_Reference_Calibration_Config
	.section .text$PM_INTLF_Bias_Current_Config
	.type	.text$PM_INTLF_Bias_Current_Config$scode_local_62, @function
	.text$PM_INTLF_Bias_Current_Config$scode_local_62:
	.align	1
	.export	PM_INTLF_Bias_Current_Config
	.type	PM_INTLF_Bias_Current_Config, @function
PM_INTLF_Bias_Current_Config:
.LFB62:
.LM422:
	.cfi_startproc
.LVL122:
.LM423:
	LD	r5,#1073747328
	LD.w	r3,[r5+#7]
.LVL123:
.LBB62:
.LBB63:
.LM424:
	LD	r4,#536870911
	ANL	r4,r3,r4
	ORL	r0,r0,r4
.LVL124:
.LBE63:
.LBE62:
.LM425:
	ST.w	[r5+#7],r0
.LM426:
	JMP	lr
	.cfi_endproc
.LFE62:
	.size	PM_INTLF_Bias_Current_Config, .-PM_INTLF_Bias_Current_Config
	.section .text$PM_EXTLF_Bias_Current_Config
	.type	.text$PM_EXTLF_Bias_Current_Config$scode_local_63, @function
	.text$PM_EXTLF_Bias_Current_Config$scode_local_63:
	.align	1
	.export	PM_EXTLF_Bias_Current_Config
	.type	PM_EXTLF_Bias_Current_Config, @function
PM_EXTLF_Bias_Current_Config:
.LFB63:
.LM427:
	.cfi_startproc
.LVL125:
.LM428:
	LD	r5,#1073747328
	LD.w	r3,[r5+#7]
.LVL126:
.LBB64:
.LBB65:
.LM429:
	MOV	r4,#240
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
.LVL127:
.LBE65:
.LBE64:
.LM430:
	ST.w	[r5+#7],r0
.LM431:
	JMP	lr
	.cfi_endproc
.LFE63:
	.size	PM_EXTLF_Bias_Current_Config, .-PM_EXTLF_Bias_Current_Config
	.section .text$PM_INTLF_Capacitance_Calibration_Config
	.type	.text$PM_INTLF_Capacitance_Calibration_Config$scode_local_64, @function
	.text$PM_INTLF_Capacitance_Calibration_Config$scode_local_64:
	.align	1
	.export	PM_INTLF_Capacitance_Calibration_Config
	.type	PM_INTLF_Capacitance_Calibration_Config, @function
PM_INTLF_Capacitance_Calibration_Config:
.LFB64:
.LM432:
	.cfi_startproc
.LVL128:
.LM433:
	LD	r5,#1073747328
	LD.w	r4,[r5+#7]
.LVL129:
.LM434:
	LSL	r0,#4
.LVL130:
.LBB66:
.LBB67:
.LM435:
	MOV	r3,#240
	NOT	r3,r3
	ANL	r4,r4,r3
.LVL131:
	ORL	r4,r0,r4
.LBE67:
.LBE66:
.LM436:
	ST.w	[r5+#7],r4
.LM437:
	JMP	lr
	.cfi_endproc
.LFE64:
	.size	PM_INTLF_Capacitance_Calibration_Config, .-PM_INTLF_Capacitance_Calibration_Config
	.section .text$PM_LP_Bias_Calibration_Config
	.type	.text$PM_LP_Bias_Calibration_Config$scode_local_65, @function
	.text$PM_LP_Bias_Calibration_Config$scode_local_65:
	.align	1
	.export	PM_LP_Bias_Calibration_Config
	.type	PM_LP_Bias_Calibration_Config, @function
PM_LP_Bias_Calibration_Config:
.LFB65:
.LM438:
	.cfi_startproc
.LVL132:
.LM439:
	LD	r5,#1073747328
	LD.w	r4,[r5+#7]
.LVL133:
.LM440:
	LSL	r0,#20
.LVL134:
.LBB68:
.LBB69:
.LM441:
	LD	r3,#-7340033
	ANL	r4,r4,r3
.LVL135:
	ORL	r4,r0,r4
.LBE69:
.LBE68:
.LM442:
	ST.w	[r5+#7],r4
.LM443:
	JMP	lr
	.cfi_endproc
.LFE65:
	.size	PM_LP_Bias_Calibration_Config, .-PM_LP_Bias_Calibration_Config
	.section .text$PM_LPBG_Pump_Calibration_Config
	.type	.text$PM_LPBG_Pump_Calibration_Config$scode_local_66, @function
	.text$PM_LPBG_Pump_Calibration_Config$scode_local_66:
	.align	1
	.export	PM_LPBG_Pump_Calibration_Config
	.type	PM_LPBG_Pump_Calibration_Config, @function
PM_LPBG_Pump_Calibration_Config:
.LFB66:
.LM444:
	.cfi_startproc
.LVL136:
.LM445:
	LD	r5,#1073747328
	LD.w	r4,[r5+#7]
.LVL137:
.LM446:
	LSL	r0,#16
.LVL138:
.LBB70:
.LBB71:
.LM447:
	LD	r3,#-458753
	ANL	r4,r4,r3
.LVL139:
	ORL	r4,r0,r4
.LBE71:
.LBE70:
.LM448:
	ST.w	[r5+#7],r4
.LM449:
	JMP	lr
	.cfi_endproc
.LFE66:
	.size	PM_LPBG_Pump_Calibration_Config, .-PM_LPBG_Pump_Calibration_Config
	.section .text$PM_EXTLF_N_Bias_Current_Config
	.type	.text$PM_EXTLF_N_Bias_Current_Config$scode_local_67, @function
	.text$PM_EXTLF_N_Bias_Current_Config$scode_local_67:
	.align	1
	.export	PM_EXTLF_N_Bias_Current_Config
	.type	PM_EXTLF_N_Bias_Current_Config, @function
PM_EXTLF_N_Bias_Current_Config:
.LFB67:
.LM450:
	.cfi_startproc
.LVL140:
.LM451:
	LD	r5,#1073747328
	LD.w	r4,[r5+#7]
.LVL141:
.LBB72:
.LBB73:
.LM452:
	CLR	r4,#0
	CLR	r4,#1
.LVL142:
	ORL	r0,r0,r4
.LVL143:
.LBE73:
.LBE72:
.LM453:
	ST.w	[r5+#7],r0
.LM454:
	JMP	lr
	.cfi_endproc
.LFE67:
	.size	PM_EXTLF_N_Bias_Current_Config, .-PM_EXTLF_N_Bias_Current_Config
	.section .text$PM_EXTLF_PIN_Selection_Config
	.type	.text$PM_EXTLF_PIN_Selection_Config$scode_local_68, @function
	.text$PM_EXTLF_PIN_Selection_Config$scode_local_68:
	.align	1
	.export	PM_EXTLF_PIN_Selection_Config
	.type	PM_EXTLF_PIN_Selection_Config, @function
PM_EXTLF_PIN_Selection_Config:
.LFB68:
.LM455:
	.cfi_startproc
.LVL144:
.LM456:
	LD	r5,#1073747356
.LM457:
	CMP	r0,#0
	JNZ	.L215
.LM458:
// inline asm begin
	// 1707 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #19
	// 0 "" 2
.LM459:
// inline asm end
	JMP	lr
.L215:
.LM460:
// inline asm begin
	// 1702 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #19
	// 0 "" 2
.LM461:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE68:
	.size	PM_EXTLF_PIN_Selection_Config, .-PM_EXTLF_PIN_Selection_Config
	.section .text$PM_EXTHF_PIN_Selection_Config
	.type	.text$PM_EXTHF_PIN_Selection_Config$scode_local_69, @function
	.text$PM_EXTHF_PIN_Selection_Config$scode_local_69:
	.align	1
	.export	PM_EXTHF_PIN_Selection_Config
	.type	PM_EXTHF_PIN_Selection_Config, @function
PM_EXTHF_PIN_Selection_Config:
.LFB69:
.LM462:
	.cfi_startproc
.LVL145:
.LM463:
	LD	r5,#1073747356
.LM464:
	CMP	r0,#0
	JNZ	.L219
.LM465:
// inline asm begin
	// 1733 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #15
	// 0 "" 2
.LM466:
// inline asm end
	JMP	lr
.L219:
.LM467:
// inline asm begin
	// 1728 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #15
	// 0 "" 2
.LM468:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE69:
	.size	PM_EXTHF_PIN_Selection_Config, .-PM_EXTHF_PIN_Selection_Config
	.section .text$PM_LDO18_Module_Config
	.type	.text$PM_LDO18_Module_Config$scode_local_70, @function
	.text$PM_LDO18_Module_Config$scode_local_70:
	.align	1
	.export	PM_LDO18_Module_Config
	.type	PM_LDO18_Module_Config, @function
PM_LDO18_Module_Config:
.LFB70:
.LM469:
	.cfi_startproc
.LVL146:
.LM470:
	LD	r5,#1073747352
.LM471:
	CMP	r0,#0
	JNZ	.L223
.LM472:
// inline asm begin
	// 1766 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #31
	// 0 "" 2
.LM473:
// inline asm end
	JMP	lr
.L223:
.LM474:
// inline asm begin
	// 1761 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #31
	// 0 "" 2
.LM475:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE70:
	.size	PM_LDO18_Module_Config, .-PM_LDO18_Module_Config
	.section .text$PM_Main_Regulator_Bandgap_Config
	.type	.text$PM_Main_Regulator_Bandgap_Config$scode_local_71, @function
	.text$PM_Main_Regulator_Bandgap_Config$scode_local_71:
	.align	1
	.export	PM_Main_Regulator_Bandgap_Config
	.type	PM_Main_Regulator_Bandgap_Config, @function
PM_Main_Regulator_Bandgap_Config:
.LFB71:
.LM476:
	.cfi_startproc
.LVL147:
.LM477:
	LD	r5,#1073747352
.LM478:
	CMP	r0,#0
	JNZ	.L227
.LM479:
// inline asm begin
	// 1792 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #30
	// 0 "" 2
.LM480:
// inline asm end
	JMP	lr
.L227:
.LM481:
// inline asm begin
	// 1787 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #30
	// 0 "" 2
.LM482:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE71:
	.size	PM_Main_Regulator_Bandgap_Config, .-PM_Main_Regulator_Bandgap_Config
	.section .text$PM_LPR_Module_Config
	.type	.text$PM_LPR_Module_Config$scode_local_72, @function
	.text$PM_LPR_Module_Config$scode_local_72:
	.align	1
	.export	PM_LPR_Module_Config
	.type	PM_LPR_Module_Config, @function
PM_LPR_Module_Config:
.LFB72:
.LM483:
	.cfi_startproc
.LVL148:
.LM484:
	LD	r5,#1073747352
.LM485:
	CMP	r0,#0
	JNZ	.L231
.LM486:
// inline asm begin
	// 1818 "../Peripherals/src/kf32f_basic_pm.c" 1
	CLR [r5], #30
	// 0 "" 2
.LM487:
// inline asm end
	JMP	lr
.L231:
.LM488:
// inline asm begin
	// 1813 "../Peripherals/src/kf32f_basic_pm.c" 1
	SET [r5], #30
	// 0 "" 2
.LM489:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE72:
	.size	PM_LPR_Module_Config, .-PM_LPR_Module_Config
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_73, @function
	.debug_info$scode_local_73:
.Ldebug_info0:
	.long	0x10a3
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF120
	.byte	0x1
	.long	.LASF121
	.long	.LASF122
	.long	.Ldebug_ranges0+0x40
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
	.long	.LASF10
	.byte	0x3
	.byte	0x1a
	.long	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF7
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x25
	.long	0x88
	.uleb128 0x6
	.long	.LASF8
	.sleb128 0
	.uleb128 0x6
	.long	.LASF9
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0x28
	.long	0x73
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x2d
	.long	0xa8
	.uleb128 0x6
	.long	.LASF12
	.sleb128 0
	.uleb128 0x7
	.string	"SET"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x30
	.long	0x93
	.uleb128 0x8
	.long	0xb8
	.uleb128 0x9
	.long	0x53
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0xa
	.long	.LASF123
	.byte	0x24
	.byte	0x2
	.short	0x2dab
	.long	0x147
	.uleb128 0xb
	.long	.LASF15
	.byte	0x2
	.short	0x2dac
	.long	0xb8
	.byte	0
	.uleb128 0xb
	.long	.LASF16
	.byte	0x2
	.short	0x2dad
	.long	0xb8
	.byte	0x4
	.uleb128 0xb
	.long	.LASF17
	.byte	0x2
	.short	0x2dae
	.long	0xb3
	.byte	0x8
	.uleb128 0xb
	.long	.LASF18
	.byte	0x2
	.short	0x2daf
	.long	0xb3
	.byte	0xc
	.uleb128 0xb
	.long	.LASF19
	.byte	0x2
	.short	0x2db0
	.long	0xb8
	.byte	0x10
	.uleb128 0xb
	.long	.LASF20
	.byte	0x2
	.short	0x2db1
	.long	0xb8
	.byte	0x14
	.uleb128 0xb
	.long	.LASF21
	.byte	0x2
	.short	0x2db2
	.long	0xb8
	.byte	0x18
	.uleb128 0xb
	.long	.LASF22
	.byte	0x2
	.short	0x2db3
	.long	0xb8
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF23
	.byte	0x2
	.short	0x2db4
	.long	0xb8
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.long	.LASF24
	.byte	0x2
	.short	0x2db5
	.long	0xc4
	.uleb128 0xd
	.long	.LASF124
	.byte	0x2
	.short	0x3416
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x18a
	.uleb128 0xe
	.long	.LASF25
	.byte	0x2
	.short	0x3416
	.long	0x53
	.uleb128 0xe
	.long	.LASF26
	.byte	0x2
	.short	0x3416
	.long	0x53
	.uleb128 0xe
	.long	.LASF27
	.byte	0x2
	.short	0x3416
	.long	0x53
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1b0
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0x1c
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF96
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.long	0xa8
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1ee
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0x49
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x214
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0x61
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x23a
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0x79
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x260
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0x91
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x286
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0xa9
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2ac
	.uleb128 0x10
	.long	.LASF36
	.byte	0x1
	.byte	0xc3
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2d2
	.uleb128 0x10
	.long	.LASF38
	.byte	0x1
	.byte	0xdd
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2f8
	.uleb128 0x10
	.long	.LASF40
	.byte	0x1
	.byte	0xf7
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.short	0x111
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x320
	.uleb128 0x13
	.long	.LASF40
	.byte	0x1
	.short	0x111
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.short	0x12c
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x348
	.uleb128 0x13
	.long	.LASF43
	.byte	0x1
	.short	0x12c
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.short	0x146
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x370
	.uleb128 0x13
	.long	.LASF43
	.byte	0x1
	.short	0x146
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.short	0x160
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x398
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.short	0x160
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.short	0x177
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3c0
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x177
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.short	0x18f
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3e8
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x18f
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.short	0x1a8
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x410
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x1a8
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.short	0x1c0
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x438
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x1c0
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.short	0x1d7
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x460
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x1d7
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.short	0x1ee
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x488
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x1ee
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.short	0x209
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4dc
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.short	0x209
	.long	0x53
	.long	.LLST0
	.uleb128 0x15
	.long	0x153
	.long	.LBB34
	.long	.LBE34
	.byte	0x1
	.short	0x20f
	.uleb128 0x16
	.long	0x17d
	.long	.LLST1
	.uleb128 0x17
	.long	0x171
	.sleb128 -193
	.uleb128 0x16
	.long	0x165
	.long	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.short	0x217
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x504
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x217
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.short	0x233
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x555
	.uleb128 0x14
	.long	.LASF57
	.byte	0x1
	.short	0x233
	.long	0x53
	.long	.LLST3
	.uleb128 0x15
	.long	0x153
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.short	0x239
	.uleb128 0x16
	.long	0x17d
	.long	.LLST4
	.uleb128 0x17
	.long	0x171
	.sleb128 -8
	.uleb128 0x18
	.long	0x165
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.short	0x242
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x57d
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x242
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.short	0x25a
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5a5
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x25a
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.short	0x272
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5cd
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x272
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.short	0x28a
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5f5
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x28a
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.short	0x2a2
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x61d
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x2a2
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.short	0x2ba
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x645
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x2ba
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.short	0x2da
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x699
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.short	0x2da
	.long	0x53
	.long	.LLST5
	.uleb128 0x15
	.long	0x153
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.short	0x2e0
	.uleb128 0x16
	.long	0x17d
	.long	.LLST6
	.uleb128 0x17
	.long	0x171
	.sleb128 -29360129
	.uleb128 0x18
	.long	0x165
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.short	0x2e9
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x6c1
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x2e9
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF67
	.byte	0x1
	.short	0x301
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x6e9
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x301
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.short	0x319
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x711
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x319
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF69
	.byte	0x1
	.short	0x331
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x739
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x331
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.short	0x349
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x761
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x349
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.short	0x361
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x789
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x361
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.short	0x37f
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x7dc
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.short	0x37f
	.long	0x53
	.long	.LLST7
	.uleb128 0x15
	.long	0x153
	.long	.LBB40
	.long	.LBE40
	.byte	0x1
	.short	0x385
	.uleb128 0x16
	.long	0x17d
	.long	.LLST8
	.uleb128 0x17
	.long	0x171
	.sleb128 -28673
	.uleb128 0x18
	.long	0x165
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.short	0x38e
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x804
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x38e
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.short	0x3a6
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x82c
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x3a6
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.short	0x3c5
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x87d
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.short	0x3c5
	.long	0x53
	.long	.LLST9
	.uleb128 0x15
	.long	0x153
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.short	0x3cb
	.uleb128 0x16
	.long	0x17d
	.long	.LLST10
	.uleb128 0x17
	.long	0x171
	.sleb128 -29
	.uleb128 0x18
	.long	0x165
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.short	0x3d4
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8a5
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x3d4
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.short	0x3f2
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8ed
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.short	0x3f2
	.long	0x53
	.long	.LLST11
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x3f2
	.long	0x88
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.short	0x3f4
	.long	0x53
	.long	.LLST12
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.short	0x416
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x935
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.short	0x416
	.long	0x53
	.long	.LLST13
	.uleb128 0x13
	.long	.LASF80
	.byte	0x1
	.short	0x416
	.long	0x53
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.short	0x418
	.long	0x53
	.long	.LLST14
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.short	0x437
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x97d
	.uleb128 0x14
	.long	.LASF83
	.byte	0x1
	.short	0x437
	.long	0x53
	.long	.LLST15
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x438
	.long	0x88
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.short	0x43a
	.long	0x53
	.long	.LLST16
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.short	0x45b
	.byte	0x1
	.long	.LFB45
	.long	.LFE45
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9c5
	.uleb128 0x14
	.long	.LASF83
	.byte	0x1
	.short	0x45b
	.long	0x53
	.long	.LLST17
	.uleb128 0x13
	.long	.LASF85
	.byte	0x1
	.short	0x45b
	.long	0x53
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.short	0x45d
	.long	0x53
	.long	.LLST18
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.short	0x478
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9ed
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x478
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF87
	.byte	0x1
	.short	0x490
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa15
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x490
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.short	0x4aa
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa3d
	.uleb128 0x13
	.long	.LASF89
	.byte	0x1
	.short	0x4aa
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.short	0x4c5
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa91
	.uleb128 0x14
	.long	.LASF43
	.byte	0x1
	.short	0x4c5
	.long	0x53
	.long	.LLST19
	.uleb128 0x15
	.long	0x153
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.short	0x4cb
	.uleb128 0x16
	.long	0x17d
	.long	.LLST20
	.uleb128 0x17
	.long	0x171
	.sleb128 -1537
	.uleb128 0x16
	.long	0x165
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.short	0x4d4
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xab9
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x4d4
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF92
	.byte	0x1
	.short	0x4fa
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb00
	.uleb128 0x14
	.long	.LASF93
	.byte	0x1
	.short	0x4fa
	.long	0x53
	.long	.LLST22
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.short	0x4fc
	.long	0x53
	.byte	0
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.short	0x4fd
	.long	0x53
	.long	.LLST23
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF125
	.byte	0x1
	.short	0x51a
	.byte	0x1
	.long	0xa8
	.long	.LFB52
	.long	.LFE52
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb4e
	.uleb128 0x14
	.long	.LASF93
	.byte	0x1
	.short	0x51a
	.long	0x53
	.long	.LLST24
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.short	0x51c
	.long	0x53
	.long	.LLST25
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.short	0x51d
	.long	0x53
	.long	.LLST26
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.short	0x545
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb95
	.uleb128 0x14
	.long	.LASF93
	.byte	0x1
	.short	0x545
	.long	0x53
	.long	.LLST27
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.short	0x547
	.long	0x53
	.byte	0
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.short	0x548
	.long	0x53
	.long	.LLST28
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.short	0x558
	.byte	0x1
	.long	0xa8
	.long	.LFB54
	.long	.LFE54
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF98
	.byte	0x1
	.short	0x56e
	.byte	0x1
	.long	0xa8
	.long	.LFB55
	.long	.LFE55
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.short	0x584
	.byte	0x1
	.long	0xa8
	.long	.LFB56
	.long	.LFE56
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.short	0x5a4
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc36
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.short	0x5a4
	.long	0x53
	.long	.LLST29
	.uleb128 0x15
	.long	0x153
	.long	.LBB46
	.long	.LBE46
	.byte	0x1
	.short	0x5aa
	.uleb128 0x16
	.long	0x17d
	.long	.LLST30
	.uleb128 0x17
	.long	0x171
	.sleb128 -50331649
	.uleb128 0x16
	.long	0x165
	.long	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF102
	.byte	0x1
	.short	0x5b7
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc8c
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.short	0x5b7
	.long	0x53
	.long	.LLST32
	.uleb128 0x15
	.long	0x153
	.long	.LBB48
	.long	.LBE48
	.byte	0x1
	.short	0x5bd
	.uleb128 0x16
	.long	0x17d
	.long	.LLST33
	.uleb128 0x17
	.long	0x171
	.sleb128 -3145729
	.uleb128 0x16
	.long	0x165
	.long	.LLST34
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF103
	.byte	0x1
	.short	0x5cd
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd0e
	.uleb128 0x13
	.long	.LASF104
	.byte	0x1
	.short	0x5cd
	.long	0x53
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.short	0x5cd
	.long	0x53
	.long	.LLST35
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.short	0x5cf
	.long	0x53
	.long	.LLST36
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.short	0x5d0
	.long	0x53
	.long	.LLST37
	.uleb128 0x1d
	.long	0x153
	.long	.LBB50
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.short	0x5d9
	.uleb128 0x16
	.long	0x17d
	.long	.LLST38
	.uleb128 0x16
	.long	0x171
	.long	.LLST39
	.uleb128 0x18
	.long	0x165
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.short	0x5e2
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd36
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.short	0x5e2
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.short	0x601
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xdba
	.uleb128 0x13
	.long	.LASF107
	.byte	0x1
	.short	0x601
	.long	0x53
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.short	0x601
	.long	0x53
	.long	.LLST40
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.short	0x603
	.long	0x53
	.long	.LLST41
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.short	0x604
	.long	0x53
	.long	.LLST42
	.uleb128 0x1d
	.long	0x153
	.long	.LBB54
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.short	0x61e
	.uleb128 0x16
	.long	0x17d
	.long	.LLST43
	.uleb128 0x16
	.long	0x171
	.long	.LLST44
	.uleb128 0x16
	.long	0x165
	.long	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF108
	.byte	0x1
	.short	0x62f
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe0e
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.short	0x62f
	.long	0x53
	.long	.LLST46
	.uleb128 0x15
	.long	0x153
	.long	.LBB62
	.long	.LBE62
	.byte	0x1
	.short	0x635
	.uleb128 0x16
	.long	0x17d
	.long	.LLST47
	.uleb128 0x1e
	.long	0x171
	.long	0x1fffffff
	.uleb128 0x18
	.long	0x165
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF109
	.byte	0x1
	.short	0x646
	.byte	0x1
	.long	.LFB63
	.long	.LFE63
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe60
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.short	0x646
	.long	0x53
	.long	.LLST48
	.uleb128 0x15
	.long	0x153
	.long	.LBB64
	.long	.LBE64
	.byte	0x1
	.short	0x64c
	.uleb128 0x16
	.long	0x17d
	.long	.LLST49
	.uleb128 0x17
	.long	0x171
	.sleb128 -241
	.uleb128 0x18
	.long	0x165
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF110
	.byte	0x1
	.short	0x655
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xec4
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.short	0x655
	.long	0x53
	.long	.LLST50
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.short	0x657
	.long	0x53
	.long	.LLST51
	.uleb128 0x15
	.long	0x153
	.long	.LBB66
	.long	.LBE66
	.byte	0x1
	.short	0x65d
	.uleb128 0x16
	.long	0x17d
	.long	.LLST52
	.uleb128 0x17
	.long	0x171
	.sleb128 -241
	.uleb128 0x16
	.long	0x165
	.long	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF111
	.byte	0x1
	.short	0x666
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf2a
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.short	0x666
	.long	0x53
	.long	.LLST54
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.short	0x668
	.long	0x53
	.long	.LLST55
	.uleb128 0x15
	.long	0x153
	.long	.LBB68
	.long	.LBE68
	.byte	0x1
	.short	0x66e
	.uleb128 0x16
	.long	0x17d
	.long	.LLST56
	.uleb128 0x17
	.long	0x171
	.sleb128 -7340033
	.uleb128 0x16
	.long	0x165
	.long	.LLST57
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF112
	.byte	0x1
	.short	0x677
	.byte	0x1
	.long	.LFB66
	.long	.LFE66
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xf8f
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.short	0x677
	.long	0x53
	.long	.LLST58
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.short	0x679
	.long	0x53
	.long	.LLST59
	.uleb128 0x15
	.long	0x153
	.long	.LBB70
	.long	.LBE70
	.byte	0x1
	.short	0x67f
	.uleb128 0x16
	.long	0x17d
	.long	.LLST60
	.uleb128 0x17
	.long	0x171
	.sleb128 -458753
	.uleb128 0x16
	.long	0x165
	.long	.LLST61
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF113
	.byte	0x1
	.short	0x68d
	.byte	0x1
	.long	.LFB67
	.long	.LFE67
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xfe2
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.short	0x68d
	.long	0x53
	.long	.LLST62
	.uleb128 0x15
	.long	0x153
	.long	.LBB72
	.long	.LBE72
	.byte	0x1
	.short	0x693
	.uleb128 0x16
	.long	0x17d
	.long	.LLST63
	.uleb128 0x17
	.long	0x171
	.sleb128 -4
	.uleb128 0x16
	.long	0x165
	.long	.LLST64
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF114
	.byte	0x1
	.short	0x69d
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x100a
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.short	0x69d
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF115
	.byte	0x1
	.short	0x6b7
	.byte	0x1
	.long	.LFB69
	.long	.LFE69
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1032
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.short	0x6b7
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF116
	.byte	0x1
	.short	0x6d8
	.byte	0x1
	.long	.LFB70
	.long	.LFE70
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x105a
	.uleb128 0x13
	.long	.LASF117
	.byte	0x1
	.short	0x6d8
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.short	0x6f2
	.byte	0x1
	.long	.LFB71
	.long	.LFE71
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1082
	.uleb128 0x13
	.long	.LASF119
	.byte	0x1
	.short	0x6f2
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF126
	.byte	0x1
	.short	0x70c
	.byte	0x1
	.long	.LFB72
	.long	.LFE72
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x13
	.long	.LASF119
	.byte	0x1
	.short	0x70c
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_74, @function
	.debug_abbrev$scode_local_74:
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
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
	.type	.debug_loc$scode_local_75, @function
	.debug_loc$scode_local_75:
.Ldebug_loc0:
.LLST0:
	.long	.LVL19
	.long	.LVL22
	.short	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LFE21
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL20
	.long	.LVL22
	.short	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LFE21
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL20
	.long	.LVL21
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST3:
	.long	.LVL24
	.long	.LVL26
	.short	0x1
	.byte	0x50
	.long	.LVL26
	.long	.LFE23
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL25
	.long	.LVL26
	.short	0x1
	.byte	0x50
	.long	.LVL26
	.long	.LFE23
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL33
	.long	.LVL35
	.short	0x1
	.byte	0x50
	.long	.LVL35
	.long	.LFE30
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL34
	.long	.LVL35
	.short	0x1
	.byte	0x50
	.long	.LVL35
	.long	.LFE30
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL42
	.long	.LVL44
	.short	0x1
	.byte	0x50
	.long	.LVL44
	.long	.LFE37
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL43
	.long	.LVL44
	.short	0x1
	.byte	0x50
	.long	.LVL44
	.long	.LFE37
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL47
	.long	.LVL49
	.short	0x1
	.byte	0x50
	.long	.LVL49
	.long	.LFE40
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL48
	.long	.LVL49
	.short	0x1
	.byte	0x50
	.long	.LVL49
	.long	.LFE40
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL51
	.long	.LVL52
	.short	0x1
	.byte	0x50
	.long	.LVL52
	.long	.LFE42
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL51
	.long	.LVL52
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL52
	.long	.LFE42
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL53
	.long	.LVL54
	.short	0x1
	.byte	0x50
	.long	.LVL54
	.long	.LFE43
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL53
	.long	.LVL54
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL54
	.long	.LFE43
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST15:
	.long	.LVL55
	.long	.LVL56
	.short	0x1
	.byte	0x50
	.long	.LVL56
	.long	.LFE44
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL55
	.long	.LVL56
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL56
	.long	.LFE44
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL57
	.long	.LVL58
	.short	0x1
	.byte	0x50
	.long	.LVL58
	.long	.LFE45
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL57
	.long	.LVL58
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL58
	.long	.LFE45
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST19:
	.long	.LVL62
	.long	.LVL65
	.short	0x1
	.byte	0x50
	.long	.LVL65
	.long	.LFE49
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL63
	.long	.LVL65
	.short	0x1
	.byte	0x50
	.long	.LVL65
	.long	.LFE49
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL63
	.long	.LVL64
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST22:
	.long	.LVL67
	.long	.LVL68
	.short	0x1
	.byte	0x50
	.long	.LVL68
	.long	.LFE51
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL67
	.long	.LVL68
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL68
	.long	.LFE51
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST24:
	.long	.LVL69
	.long	.LVL71
	.short	0x1
	.byte	0x50
	.long	.LVL71
	.long	.LVL74
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL74
	.long	.LVL76
	.short	0x1
	.byte	0x50
	.long	.LVL76
	.long	.LVL77
	.short	0x3
	.byte	0x70
	.sleb128 32
	.byte	0x9f
	.long	.LVL77
	.long	.LFE52
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL69
	.long	.LVL70
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL70
	.long	.LVL73
	.short	0x1
	.byte	0x55
	.long	.LVL74
	.long	.LVL75
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL75
	.long	.LVL79
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST26:
	.long	.LVL69
	.long	.LVL71
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL71
	.long	.LVL72
	.short	0x1
	.byte	0x50
	.long	.LVL72
	.long	.LVL74
	.short	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x24
	.byte	0x9f
	.long	.LVL74
	.long	.LVL77
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL77
	.long	.LVL78
	.short	0x1
	.byte	0x50
	.long	.LVL78
	.long	.LFE52
	.short	0xa
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL80
	.long	.LVL81
	.short	0x1
	.byte	0x50
	.long	.LVL81
	.long	.LVL82
	.short	0x3
	.byte	0x70
	.sleb128 32
	.byte	0x9f
	.long	.LVL82
	.long	.LFE53
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL80
	.long	.LVL82
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL82
	.long	.LVL83
	.short	0x1
	.byte	0x50
	.long	.LVL83
	.long	.LVL84
	.short	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL84
	.long	.LFE53
	.short	0x9
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL85
	.long	.LVL88
	.short	0x1
	.byte	0x50
	.long	.LVL88
	.long	.LFE57
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL86
	.long	.LVL88
	.short	0x1
	.byte	0x50
	.long	.LVL88
	.long	.LFE57
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL86
	.long	.LVL87
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST32:
	.long	.LVL89
	.long	.LVL92
	.short	0x1
	.byte	0x50
	.long	.LVL92
	.long	.LFE58
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL90
	.long	.LVL92
	.short	0x1
	.byte	0x50
	.long	.LVL92
	.long	.LFE58
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL90
	.long	.LVL91
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST35:
	.long	.LVL93
	.long	.LVL98
	.short	0x1
	.byte	0x51
	.long	.LVL98
	.long	.LFE59
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL93
	.long	.LVL98
	.short	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL98
	.long	.LFE59
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST37:
	.long	.LVL93
	.long	.LVL95
	.short	0x5
	.byte	0x3f
	.byte	0x70
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL95
	.long	.LVL96
	.short	0x1
	.byte	0x54
	.long	.LVL96
	.long	.LVL97
	.short	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL97
	.long	.LFE59
	.short	0x5
	.byte	0x3f
	.byte	0x70
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL94
	.long	.LVL98
	.short	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL98
	.long	.LFE59
	.short	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST39:
	.long	.LVL94
	.long	.LVL96
	.short	0x6
	.byte	0x3f
	.byte	0x70
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	.LVL96
	.long	.LVL97
	.short	0x1
	.byte	0x54
	.long	.LVL97
	.long	.LFE59
	.short	0x6
	.byte	0x3f
	.byte	0x70
	.sleb128 0
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL100
	.long	.LVL101
	.short	0x1
	.byte	0x51
	.long	.LVL101
	.long	.LVL105
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL105
	.long	.LVL109
	.short	0x1
	.byte	0x51
	.long	.LVL109
	.long	.LVL110
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL110
	.long	.LVL111
	.short	0x1
	.byte	0x51
	.long	.LVL111
	.long	.LVL116
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL116
	.long	.LVL117
	.short	0x1
	.byte	0x51
	.long	.LVL117
	.long	.LFE61
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL100
	.long	.LVL101
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL101
	.long	.LVL104
	.short	0x1
	.byte	0x51
	.long	.LVL104
	.long	.LVL106
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL106
	.long	.LVL109
	.short	0x1
	.byte	0x51
	.long	.LVL109
	.long	.LVL110
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL110
	.long	.LVL111
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL111
	.long	.LVL115
	.short	0x1
	.byte	0x51
	.long	.LVL115
	.long	.LVL116
	.short	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL116
	.long	.LVL117
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL117
	.long	.LVL121
	.short	0x1
	.byte	0x51
	.long	.LVL121
	.long	.LFE61
	.short	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL100
	.long	.LVL101
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL105
	.long	.LVL106
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL110
	.long	.LVL111
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL111
	.long	.LVL112
	.short	0x4
	.byte	0xa
	.short	0x1f00
	.byte	0x9f
	.long	.LVL116
	.long	.LVL117
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL117
	.long	.LVL118
	.short	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL102
	.long	.LVL104
	.short	0x1
	.byte	0x51
	.long	.LVL104
	.long	.LVL105
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL107
	.long	.LVL109
	.short	0x1
	.byte	0x51
	.long	.LVL109
	.long	.LVL110
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	.LVL113
	.long	.LVL115
	.short	0x1
	.byte	0x51
	.long	.LVL115
	.long	.LVL116
	.short	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL119
	.long	.LVL121
	.short	0x1
	.byte	0x51
	.long	.LVL121
	.long	.LFE61
	.short	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL102
	.long	.LVL105
	.short	0x1
	.byte	0x53
	.long	.LVL107
	.long	.LVL110
	.short	0x1
	.byte	0x53
	.long	.LVL113
	.long	.LVL116
	.short	0x1
	.byte	0x53
	.long	.LVL119
	.long	.LFE61
	.short	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST45:
	.long	.LVL102
	.long	.LVL103
	.short	0x1
	.byte	0x54
	.long	.LVL107
	.long	.LVL108
	.short	0x1
	.byte	0x54
	.long	.LVL113
	.long	.LVL114
	.short	0x1
	.byte	0x54
	.long	.LVL119
	.long	.LVL120
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST46:
	.long	.LVL122
	.long	.LVL124
	.short	0x1
	.byte	0x50
	.long	.LVL124
	.long	.LFE62
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL123
	.long	.LVL124
	.short	0x1
	.byte	0x50
	.long	.LVL124
	.long	.LFE62
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL125
	.long	.LVL127
	.short	0x1
	.byte	0x50
	.long	.LVL127
	.long	.LFE63
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL126
	.long	.LVL127
	.short	0x1
	.byte	0x50
	.long	.LVL127
	.long	.LFE63
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL128
	.long	.LVL130
	.short	0x1
	.byte	0x50
	.long	.LVL130
	.long	.LFE64
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL128
	.long	.LVL130
	.short	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.long	.LVL130
	.long	.LFE64
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST52:
	.long	.LVL129
	.long	.LVL130
	.short	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.long	.LVL130
	.long	.LFE64
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST53:
	.long	.LVL129
	.long	.LVL131
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST54:
	.long	.LVL132
	.long	.LVL134
	.short	0x1
	.byte	0x50
	.long	.LVL134
	.long	.LFE65
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LVL132
	.long	.LVL134
	.short	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x44
	.byte	0x24
	.byte	0x9f
	.long	.LVL134
	.long	.LFE65
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST56:
	.long	.LVL133
	.long	.LVL134
	.short	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x44
	.byte	0x24
	.byte	0x9f
	.long	.LVL134
	.long	.LFE65
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST57:
	.long	.LVL133
	.long	.LVL135
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST58:
	.long	.LVL136
	.long	.LVL138
	.short	0x1
	.byte	0x50
	.long	.LVL138
	.long	.LFE66
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL136
	.long	.LVL138
	.short	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	.LVL138
	.long	.LFE66
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST60:
	.long	.LVL137
	.long	.LVL138
	.short	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.long	.LVL138
	.long	.LFE66
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST61:
	.long	.LVL137
	.long	.LVL139
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST62:
	.long	.LVL140
	.long	.LVL143
	.short	0x1
	.byte	0x50
	.long	.LVL143
	.long	.LFE67
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST63:
	.long	.LVL141
	.long	.LVL143
	.short	0x1
	.byte	0x50
	.long	.LVL143
	.long	.LFE67
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST64:
	.long	.LVL141
	.long	.LVL142
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_76, @function
	.debug_aranges$scode_local_76:
	.long	0x254
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
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB63
	.long	.LFE63-.LFB63
	.long	.LFB64
	.long	.LFE64-.LFB64
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	.LFB66
	.long	.LFE66-.LFB66
	.long	.LFB67
	.long	.LFE67-.LFB67
	.long	.LFB68
	.long	.LFE68-.LFB68
	.long	.LFB69
	.long	.LFE69-.LFB69
	.long	.LFB70
	.long	.LFE70-.LFB70
	.long	.LFB71
	.long	.LFE71-.LFB71
	.long	.LFB72
	.long	.LFE72-.LFB72
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_77, @function
	.debug_ranges$scode_local_77:
.Ldebug_ranges0:
	.long	.LBB50
	.long	.LBE50
	.long	.LBB53
	.long	.LBE53
	.long	0
	.long	0
	.long	.LBB54
	.long	.LBE54
	.long	.LBB59
	.long	.LBE59
	.long	.LBB60
	.long	.LBE60
	.long	.LBB61
	.long	.LBE61
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
	.long	.LFB62
	.long	.LFE62
	.long	.LFB63
	.long	.LFE63
	.long	.LFB64
	.long	.LFE64
	.long	.LFB65
	.long	.LFE65
	.long	.LFB66
	.long	.LFE66
	.long	.LFB67
	.long	.LFE67
	.long	.LFB68
	.long	.LFE68
	.long	.LFB69
	.long	.LFE69
	.long	.LFB70
	.long	.LFE70
	.long	.LFB71
	.long	.LFE71
	.long	.LFB72
	.long	.LFE72
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_78, @function
	.debug_line$scode_local_78:
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
	.string	"kf32f_basic_pm.c"
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
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x33
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x1e
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
	.long	.LM8
	.byte	0x4b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x21
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
	.long	.LM11
	.byte	0x60
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x1e
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
	.long	.LM18
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
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
	.long	.LM25
	.byte	0x90
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
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
	.long	.LM32
	.byte	0xa8
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
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
	.long	.LM39
	.byte	0xc0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
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
	.long	.LM46
	.byte	0xda
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x14
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
	.long	.LFE8
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0xf4
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
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
	.long	.LM60
	.byte	0x3
	.sleb128 247
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
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
	.long	.LM67
	.byte	0x3
	.sleb128 273
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x14
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
	.long	.LFE11
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM74
	.byte	0x3
	.sleb128 300
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM78
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM79
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM80
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
	.long	.LM81
	.byte	0x3
	.sleb128 326
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x14
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
	.long	.LFE13
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM88
	.byte	0x3
	.sleb128 352
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM89
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM90
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM91
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM92
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
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
	.long	.LM95
	.byte	0x3
	.sleb128 375
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM96
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM97
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM100
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM101
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
	.long	.LM102
	.byte	0x3
	.sleb128 399
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM103
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM104
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM105
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM106
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM107
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM108
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
	.long	.LM109
	.byte	0x3
	.sleb128 424
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM110
	.byte	0x1f
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
	.long	.LFE17
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM116
	.byte	0x3
	.sleb128 448
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM117
	.byte	0x1f
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
	.long	.LFE18
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM123
	.byte	0x3
	.sleb128 471
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM124
	.byte	0x1f
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
	.long	.LFE19
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM130
	.byte	0x3
	.sleb128 494
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM131
	.byte	0x1f
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
	.long	.LFE20
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM137
	.byte	0x3
	.sleb128 521
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM138
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM139
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12809
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM140
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12809
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM141
	.byte	0x18
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
	.long	.LM142
	.byte	0x3
	.sleb128 535
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
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM145
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM146
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM147
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM148
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
	.long	.LM149
	.byte	0x3
	.sleb128 563
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM150
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM151
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12767
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM152
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12767
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM153
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
	.long	.LM154
	.byte	0x3
	.sleb128 578
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM155
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM156
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM157
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM158
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM159
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM160
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
	.long	.LM161
	.byte	0x3
	.sleb128 602
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM162
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM163
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM164
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM165
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM166
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM167
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
	.long	.LM168
	.byte	0x3
	.sleb128 626
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM169
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM170
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM171
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM172
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM173
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM174
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
	.long	.LM175
	.byte	0x3
	.sleb128 650
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM176
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM177
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM178
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM179
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM180
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM181
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
	.long	.LM182
	.byte	0x3
	.sleb128 674
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM183
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM184
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM185
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM186
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM187
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM188
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
	.long	.LM189
	.byte	0x3
	.sleb128 698
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM190
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM191
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM192
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM193
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM194
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM195
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
	.long	.LM196
	.byte	0x3
	.sleb128 730
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM197
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM198
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12600
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM199
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12600
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM200
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
	.long	.LM201
	.byte	0x3
	.sleb128 745
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM202
	.byte	0x1f
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
	.long	.LFE31
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM208
	.byte	0x3
	.sleb128 769
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM209
	.byte	0x1f
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
	.long	.LFE32
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM215
	.byte	0x3
	.sleb128 793
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM216
	.byte	0x1f
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
	.long	.LFE33
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM222
	.byte	0x3
	.sleb128 817
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM223
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM224
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM225
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM226
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM227
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM228
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
	.long	.LM229
	.byte	0x3
	.sleb128 841
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM230
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM231
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM232
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM233
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM234
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM235
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
	.long	.LM236
	.byte	0x3
	.sleb128 865
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM237
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM238
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM239
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM240
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM241
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM242
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
	.long	.LM243
	.byte	0x3
	.sleb128 895
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
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12435
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM246
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12435
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM247
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
	.long	.LM248
	.byte	0x3
	.sleb128 910
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM249
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM250
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM251
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM252
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM253
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM254
	.byte	0x1e
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
	.long	.LM255
	.byte	0x3
	.sleb128 934
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM256
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM257
	.byte	0x14
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
	.long	.LFE39
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM262
	.byte	0x3
	.sleb128 965
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
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12365
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM265
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12365
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM266
	.byte	0x18
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
	.long	.LM267
	.byte	0x3
	.sleb128 980
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM268
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM269
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM270
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM271
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM272
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM273
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
	.long	.LM274
	.byte	0x3
	.sleb128 1010
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM275
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM276
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM277
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM278
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM279
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM280
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM281
	.byte	0x1e
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
	.long	.LM282
	.byte	0x3
	.sleb128 1046
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM283
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM284
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM285
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM286
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM287
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM288
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM289
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
	.long	.LM290
	.byte	0x3
	.sleb128 1080
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM291
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM292
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM293
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM294
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM295
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM296
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM297
	.byte	0x1e
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
	.long	.LM298
	.byte	0x3
	.sleb128 1115
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM299
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM300
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM301
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM302
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM303
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM304
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM305
	.byte	0x1e
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
	.long	.LM306
	.byte	0x3
	.sleb128 1144
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM307
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM308
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM309
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM310
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM311
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM312
	.byte	0x1e
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
	.long	.LM313
	.byte	0x3
	.sleb128 1168
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM314
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM315
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM316
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM317
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM318
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM319
	.byte	0x1e
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
	.long	.LM320
	.byte	0x3
	.sleb128 1194
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM321
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM322
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM323
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM324
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM325
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM326
	.byte	0x1e
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
	.long	.LM327
	.byte	0x3
	.sleb128 1221
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM328
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM329
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12109
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM330
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12109
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM331
	.byte	0x18
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
	.long	.LM332
	.byte	0x3
	.sleb128 1236
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM333
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM334
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM335
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM336
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM337
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM338
	.byte	0x1e
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
	.long	.LM339
	.byte	0x3
	.sleb128 1274
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM340
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM341
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM342
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM343
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM344
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM345
	.byte	0x18
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
	.long	.LM346
	.byte	0x3
	.sleb128 1306
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM347
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM348
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM349
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM350
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM351
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM352
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM353
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM354
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM355
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM356
	.byte	0x21
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
	.long	.LM357
	.byte	0x3
	.sleb128 1349
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM358
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM359
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM360
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM361
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM362
	.byte	0x18
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
	.long	.LM363
	.byte	0x3
	.sleb128 1368
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM364
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM365
	.byte	0x21
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
	.long	.LM366
	.byte	0x3
	.sleb128 1390
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM367
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM368
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
	.long	.LM369
	.byte	0x3
	.sleb128 1412
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM370
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM371
	.byte	0x21
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
	.long	.LM372
	.byte	0x3
	.sleb128 1444
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM373
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM374
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11886
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM375
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11886
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM376
	.byte	0x18
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
	.long	.LM377
	.byte	0x3
	.sleb128 1463
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM378
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM379
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11867
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM380
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11867
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM381
	.byte	0x18
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
	.long	.LM382
	.byte	0x3
	.sleb128 1485
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM383
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM384
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM385
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM386
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11839
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM387
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11841
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM388
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11841
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM389
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11839
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM390
	.byte	0x18
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
	.long	.LM391
	.byte	0x3
	.sleb128 1506
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM392
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM393
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM394
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM395
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM396
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM397
	.byte	0x1e
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
	.long	.LM398
	.byte	0x3
	.sleb128 1537
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM399
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM400
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM401
	.byte	0x32
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM402
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11770
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM403
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11770
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM404
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM405
	.byte	0x3
	.sleb128 -24
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM406
	.byte	0x2e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM407
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11770
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM408
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11770
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM409
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM410
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM411
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM412
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM413
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11770
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM414
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11770
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM415
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM416
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM417
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM418
	.byte	0x23
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM419
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11770
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM420
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11770
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM421
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE61
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM422
	.byte	0x3
	.sleb128 1583
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM423
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM424
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11747
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM425
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11747
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM426
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE62
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM427
	.byte	0x3
	.sleb128 1606
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM428
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM429
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11724
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM430
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11724
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM431
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE63
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM432
	.byte	0x3
	.sleb128 1621
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM433
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM434
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM435
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11708
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM436
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11707
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM437
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE64
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM438
	.byte	0x3
	.sleb128 1638
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM439
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM440
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM441
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11691
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM442
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11690
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM443
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE65
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM444
	.byte	0x3
	.sleb128 1655
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM445
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM446
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM447
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11674
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM448
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11673
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM449
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE66
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM450
	.byte	0x3
	.sleb128 1677
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM451
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM452
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 11653
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM453
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -11653
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM454
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE67
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM455
	.byte	0x3
	.sleb128 1693
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM456
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM457
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM458
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM459
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM460
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM461
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE68
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM462
	.byte	0x3
	.sleb128 1719
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM463
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM464
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM465
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM466
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM467
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM468
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE69
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM469
	.byte	0x3
	.sleb128 1752
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM470
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM471
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM472
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM473
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM474
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM475
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE70
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM476
	.byte	0x3
	.sleb128 1778
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM477
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM478
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM479
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM480
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM481
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM482
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE71
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM483
	.byte	0x3
	.sleb128 1804
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM484
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM485
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM486
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM487
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM488
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM489
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE72
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_79, @function
	.debug_str$scode_local_79:
.LASF72:
	.string	"PM_Battery_BOR_Config"
.LASF102:
	.string	"PM_BOR_Voltage_Config"
.LASF21:
	.string	"CAL0"
.LASF22:
	.string	"CAL1"
.LASF23:
	.string	"CAL2"
.LASF66:
	.string	"PM_PLL0_Output_Buffer_Enable"
.LASF96:
	.string	"PM_Get_IO_Latch_Status"
.LASF90:
	.string	"PM_Power_Dissipation_Mode_Delay_Config"
.LASF58:
	.string	"PM_BOR_Enable"
.LASF0:
	.string	"unsigned int"
.LASF108:
	.string	"PM_INTLF_Bias_Current_Config"
.LASF11:
	.string	"FunctionalState"
.LASF17:
	.string	"STA0"
.LASF18:
	.string	"STA1"
.LASF46:
	.string	"PeripheralPort"
.LASF32:
	.string	"PM_External_Low_Frequency_Clock_Enable"
.LASF19:
	.string	"STAC"
.LASF13:
	.string	"FlagStatus"
.LASF55:
	.string	"PM_LPR_Software_Enable"
.LASF48:
	.string	"PM_MEMSEL_Enable"
.LASF99:
	.string	"PM_Get_Peripheral_Voltage_Detection_Status"
.LASF52:
	.string	"PM_VREF_Software_Enable"
.LASF28:
	.string	"PM_IO_Latch_Enable"
.LASF94:
	.string	"tmpmask"
.LASF33:
	.string	"PM_Main_Bandgap_Enable"
.LASF101:
	.string	"Calibration"
.LASF92:
	.string	"PM_Clear_Reset_And_Wakeup_Flag"
.LASF10:
	.string	"uint32_t"
.LASF9:
	.string	"TRUE"
.LASF75:
	.string	"PM_Voltage_Detection_Config"
.LASF109:
	.string	"PM_EXTLF_Bias_Current_Config"
.LASF120:
	.string	"GNU C 4.7.0"
.LASF34:
	.string	"PM_LDO18_Enable"
.LASF63:
	.string	"PM_Internal_Test_Buffer_Clock_Enable"
.LASF69:
	.string	"PM_PLL0LDO_Output_Buffer_Enable"
.LASF123:
	.string	"PM_MemMap"
.LASF25:
	.string	"SfrMem"
.LASF6:
	.string	"long long unsigned int"
.LASF54:
	.string	"Voltage"
.LASF115:
	.string	"PM_EXTHF_PIN_Selection_Config"
.LASF59:
	.string	"PM_Low_Power_BOR_Enable"
.LASF88:
	.string	"PM_Power_Dissipation_Mode_Config"
.LASF79:
	.string	"PM_External_Wakeup_Edge_Config"
.LASF41:
	.string	"PM_LPRAM_In_Standby_Work_Mode_Config"
.LASF97:
	.string	"PM_Get_Low_Power_Running_State"
.LASF43:
	.string	"DelayTime"
.LASF64:
	.string	"PM_Internal_Test_Buffer_Clock_Scaler_Config"
.LASF81:
	.string	"tmpreg"
.LASF100:
	.string	"PM_Zero_Drift_Current_Config"
.LASF91:
	.string	"PM_Internal_Test_Buffer_Enable"
.LASF26:
	.string	"SfrMask"
.LASF105:
	.string	"PM_Main_Regulator_HV_Enable"
.LASF117:
	.string	"LDO18Config"
.LASF121:
	.string	"../Peripherals/src/kf32f_basic_pm.c"
.LASF39:
	.string	"PM_SRAMA_In_Standby_Work_Mode_Config"
.LASF30:
	.string	"NewState"
.LASF62:
	.string	"PM_Reference_Voltage_Enable"
.LASF7:
	.string	"char"
.LASF118:
	.string	"PM_Main_Regulator_Bandgap_Config"
.LASF110:
	.string	"PM_INTLF_Capacitance_Calibration_Config"
.LASF60:
	.string	"PM_Temperature_Sensor_Enable"
.LASF106:
	.string	"PM_Reference_Calibration_Config"
.LASF56:
	.string	"PM_Low_Power_Mode_Config"
.LASF38:
	.string	"IWDTReset"
.LASF78:
	.string	"PinSel"
.LASF42:
	.string	"PM_Backup_POR_Delay_Time_Config"
.LASF65:
	.string	"SclkScaler"
.LASF5:
	.string	"long long int"
.LASF95:
	.string	"PM_Clear_External_Wakeup_Pin_Flag"
.LASF74:
	.string	"PM_Peripheral_Voltage_Monitoring_Enable"
.LASF31:
	.string	"PM_External_Low_Frequency_Enable"
.LASF86:
	.string	"PM_Vdd_Por_Enable"
.LASF67:
	.string	"PM_PLL1_Output_Buffer_Enable"
.LASF111:
	.string	"PM_LP_Bias_Calibration_Config"
.LASF70:
	.string	"PM_PLL1LDO_Output_Buffer_Enable"
.LASF122:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF98:
	.string	"PM_Get_LPR_Status"
.LASF61:
	.string	"PM_Temperature_Sensor_Buffer_Enable"
.LASF124:
	.string	"SFR_Config"
.LASF45:
	.string	"PM_Peripheral_IO_Port_Config"
.LASF15:
	.string	"CTL0"
.LASF16:
	.string	"CTL1"
.LASF20:
	.string	"CTL2"
.LASF27:
	.string	"WriteVal"
.LASF84:
	.string	"PM_Peripheral_Reset_Config"
.LASF83:
	.string	"Peripheral"
.LASF87:
	.string	"PM_Low_Power_Bandgap_Enable"
.LASF85:
	.string	"ResetStatus"
.LASF73:
	.string	"PM_Battery_BOR_Enable"
.LASF119:
	.string	"ModeSel"
.LASF4:
	.string	"short int"
.LASF89:
	.string	"Mode"
.LASF35:
	.string	"PM_Backup_Registers_Reset_Config"
.LASF93:
	.string	"EventSel"
.LASF77:
	.string	"PM_External_Wakeup_Pin_Enable"
.LASF49:
	.string	"PM_Flash_Power_Off_Enable"
.LASF12:
	.string	"RESET"
.LASF8:
	.string	"FALSE"
.LASF40:
	.string	"WorkMode"
.LASF47:
	.string	"PM_OCAL0LOCK_Enable"
.LASF24:
	.string	"PM_SFRmap"
.LASF29:
	.string	"PM_Internal_Low_Frequency_Enable"
.LASF51:
	.string	"PM_Backup_Write_And_Read_Enable"
.LASF14:
	.string	"sizetype"
.LASF114:
	.string	"PM_EXTLF_PIN_Selection_Config"
.LASF104:
	.string	"MRSel"
.LASF76:
	.string	"PM_Voltage_Detection_Enable"
.LASF3:
	.string	"unsigned char"
.LASF71:
	.string	"PM_PLL2LDO_Output_Buffer_Enable"
.LASF44:
	.string	"PM_Main_POR_Delay_Time_Config"
.LASF103:
	.string	"PM_Main_Regulator_Voltage_Config"
.LASF113:
	.string	"PM_EXTLF_N_Bias_Current_Config"
.LASF116:
	.string	"PM_LDO18_Module_Config"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF37:
	.string	"PM_Independent_Watchdog_Reset_Config"
.LASF125:
	.string	"PM_Get_IWDT_Reset_Flag"
.LASF112:
	.string	"PM_LPBG_Pump_Calibration_Config"
.LASF53:
	.string	"PM_VREF_SELECT"
.LASF107:
	.string	"Reference"
.LASF50:
	.string	"PM_CCP0CLKLPEN_Enable"
.LASF36:
	.string	"BkpReset"
.LASF82:
	.string	"PM_Stop_Mode_Peripheral_INLF_Enable"
.LASF57:
	.string	"LowPowerMode"
.LASF68:
	.string	"PM_PLL2_Output_Buffer_Enable"
.LASF126:
	.string	"PM_LPR_Module_Config"
.LASF80:
	.string	"TriggerEdge"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
