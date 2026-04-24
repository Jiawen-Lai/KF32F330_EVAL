	.file	"kf32f_basic_pm.c"
	.section .text$PM_IO_Latch_Enable
	.align	1
	.export	PM_IO_Latch_Enable
	.type	PM_IO_Latch_Enable, @function
PM_IO_Latch_Enable:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L5
// inline asm begin
	// 42 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #31
// inline asm end
	JMP	lr
.L5:
// inline asm begin
	// 37 "../src/kf32f_basic_pm.c" 1
	SET [r5], #31
// inline asm end
	JMP	lr
	.size	PM_IO_Latch_Enable, .-PM_IO_Latch_Enable
	.section .text$PM_Get_IO_Latch_Status
	.align	1
	.export	PM_Get_IO_Latch_Status
	.type	PM_Get_IO_Latch_Status, @function
PM_Get_IO_Latch_Status:
	LD	r5,#1073747328
	LD.w	r0,[r5]
	LSR	r0,#31
	JMP	lr
	.size	PM_Get_IO_Latch_Status, .-PM_Get_IO_Latch_Status
	.section .text$PM_Internal_Low_Frequency_Enable
	.align	1
	.export	PM_Internal_Low_Frequency_Enable
	.type	PM_Internal_Low_Frequency_Enable, @function
PM_Internal_Low_Frequency_Enable:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L10
// inline asm begin
	// 87 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #29
// inline asm end
	JMP	lr
.L10:
// inline asm begin
	// 82 "../src/kf32f_basic_pm.c" 1
	SET [r5], #29
// inline asm end
	JMP	lr
	.size	PM_Internal_Low_Frequency_Enable, .-PM_Internal_Low_Frequency_Enable
	.section .text$PM_External_Low_Frequency_Enable
	.align	1
	.export	PM_External_Low_Frequency_Enable
	.type	PM_External_Low_Frequency_Enable, @function
PM_External_Low_Frequency_Enable:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L14
// inline asm begin
	// 111 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #28
// inline asm end
	JMP	lr
.L14:
// inline asm begin
	// 106 "../src/kf32f_basic_pm.c" 1
	SET [r5], #28
// inline asm end
	JMP	lr
	.size	PM_External_Low_Frequency_Enable, .-PM_External_Low_Frequency_Enable
	.section .text$PM_External_Low_Frequency_Clock_Enable
	.align	1
	.export	PM_External_Low_Frequency_Clock_Enable
	.type	PM_External_Low_Frequency_Clock_Enable, @function
PM_External_Low_Frequency_Clock_Enable:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L18
// inline asm begin
	// 135 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #27
// inline asm end
	JMP	lr
.L18:
// inline asm begin
	// 130 "../src/kf32f_basic_pm.c" 1
	SET [r5], #27
// inline asm end
	JMP	lr
	.size	PM_External_Low_Frequency_Clock_Enable, .-PM_External_Low_Frequency_Clock_Enable
	.section .text$PM_Main_Bandgap_Enable
	.align	1
	.export	PM_Main_Bandgap_Enable
	.type	PM_Main_Bandgap_Enable, @function
PM_Main_Bandgap_Enable:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L22
// inline asm begin
	// 159 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #25
// inline asm end
	JMP	lr
.L22:
// inline asm begin
	// 154 "../src/kf32f_basic_pm.c" 1
	SET [r5], #25
// inline asm end
	JMP	lr
	.size	PM_Main_Bandgap_Enable, .-PM_Main_Bandgap_Enable
	.section .text$PM_LDO18_Enable
	.align	1
	.export	PM_LDO18_Enable
	.type	PM_LDO18_Enable, @function
PM_LDO18_Enable:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L26
// inline asm begin
	// 183 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #24
// inline asm end
	JMP	lr
.L26:
// inline asm begin
	// 178 "../src/kf32f_basic_pm.c" 1
	SET [r5], #24
// inline asm end
	JMP	lr
	.size	PM_LDO18_Enable, .-PM_LDO18_Enable
	.section .text$PM_Backup_Registers_Reset_Config
	.align	1
	.export	PM_Backup_Registers_Reset_Config
	.type	PM_Backup_Registers_Reset_Config, @function
PM_Backup_Registers_Reset_Config:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L30
// inline asm begin
	// 209 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #22
// inline asm end
	JMP	lr
.L30:
// inline asm begin
	// 204 "../src/kf32f_basic_pm.c" 1
	SET [r5], #22
// inline asm end
	JMP	lr
	.size	PM_Backup_Registers_Reset_Config, .-PM_Backup_Registers_Reset_Config
	.section .text$PM_Independent_Watchdog_Reset_Config
	.align	1
	.export	PM_Independent_Watchdog_Reset_Config
	.type	PM_Independent_Watchdog_Reset_Config, @function
PM_Independent_Watchdog_Reset_Config:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L34
// inline asm begin
	// 235 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #21
// inline asm end
	JMP	lr
.L34:
// inline asm begin
	// 230 "../src/kf32f_basic_pm.c" 1
	SET [r5], #21
// inline asm end
	JMP	lr
	.size	PM_Independent_Watchdog_Reset_Config, .-PM_Independent_Watchdog_Reset_Config
	.section .text$PM_Backup_POR_Delay_Time_Config
	.align	1
	.export	PM_Backup_POR_Delay_Time_Config
	.type	PM_Backup_POR_Delay_Time_Config, @function
PM_Backup_POR_Delay_Time_Config:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L38
// inline asm begin
	// 262 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #14
// inline asm end
	JMP	lr
.L38:
// inline asm begin
	// 257 "../src/kf32f_basic_pm.c" 1
	SET [r5], #14
// inline asm end
	JMP	lr
	.size	PM_Backup_POR_Delay_Time_Config, .-PM_Backup_POR_Delay_Time_Config
	.section .text$PM_Main_POR_Delay_Time_Config
	.align	1
	.export	PM_Main_POR_Delay_Time_Config
	.type	PM_Main_POR_Delay_Time_Config, @function
PM_Main_POR_Delay_Time_Config:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L42
// inline asm begin
	// 288 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #15
// inline asm end
	JMP	lr
.L42:
// inline asm begin
	// 283 "../src/kf32f_basic_pm.c" 1
	SET [r5], #15
// inline asm end
	JMP	lr
	.size	PM_Main_POR_Delay_Time_Config, .-PM_Main_POR_Delay_Time_Config
	.section .text$PM_Peripheral_IO_Port_Config
	.align	1
	.export	PM_Peripheral_IO_Port_Config
	.type	PM_Peripheral_IO_Port_Config, @function
PM_Peripheral_IO_Port_Config:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L46
// inline asm begin
	// 314 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #13
// inline asm end
	JMP	lr
.L46:
// inline asm begin
	// 309 "../src/kf32f_basic_pm.c" 1
	SET [r5], #13
// inline asm end
	JMP	lr
	.size	PM_Peripheral_IO_Port_Config, .-PM_Peripheral_IO_Port_Config
	.section .text$PM_Flash_Power_Off_Enable
	.align	1
	.export	PM_Flash_Power_Off_Enable
	.type	PM_Flash_Power_Off_Enable, @function
PM_Flash_Power_Off_Enable:
	LD	r5,#1073747348
	CMP	r0,#0
	JNZ	.L50
// inline asm begin
	// 338 "../src/kf32f_basic_pm.c" 1
	SET [r5], #11
// inline asm end
	JMP	lr
.L50:
// inline asm begin
	// 333 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #11
// inline asm end
	JMP	lr
	.size	PM_Flash_Power_Off_Enable, .-PM_Flash_Power_Off_Enable
	.section .text$PM_CCP0CLKLPEN_Enable
	.align	1
	.export	PM_CCP0CLKLPEN_Enable
	.type	PM_CCP0CLKLPEN_Enable, @function
PM_CCP0CLKLPEN_Enable:
	LD	r5,#1073747348
	CMP	r0,#0
	JNZ	.L54
// inline asm begin
	// 361 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #5
// inline asm end
	JMP	lr
.L54:
// inline asm begin
	// 356 "../src/kf32f_basic_pm.c" 1
	SET [r5], #5
// inline asm end
	JMP	lr
	.size	PM_CCP0CLKLPEN_Enable, .-PM_CCP0CLKLPEN_Enable
	.section .text$PM_Backup_Write_And_Read_Enable
	.align	1
	.export	PM_Backup_Write_And_Read_Enable
	.type	PM_Backup_Write_And_Read_Enable, @function
PM_Backup_Write_And_Read_Enable:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L58
// inline asm begin
	// 384 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #7
// inline asm end
	JMP	lr
.L58:
// inline asm begin
	// 379 "../src/kf32f_basic_pm.c" 1
	SET [r5], #7
// inline asm end
	JMP	lr
	.size	PM_Backup_Write_And_Read_Enable, .-PM_Backup_Write_And_Read_Enable
	.section .text$PM_VREF_Software_Enable
	.align	1
	.export	PM_VREF_Software_Enable
	.type	PM_VREF_Software_Enable, @function
PM_VREF_Software_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L62
// inline asm begin
	// 407 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #5
// inline asm end
	JMP	lr
.L62:
// inline asm begin
	// 402 "../src/kf32f_basic_pm.c" 1
	SET [r5], #5
// inline asm end
	JMP	lr
	.size	PM_VREF_Software_Enable, .-PM_VREF_Software_Enable
	.section .text$PM_VREF_SELECT
	.align	1
	.export	PM_VREF_SELECT
	.type	PM_VREF_SELECT, @function
PM_VREF_SELECT:
	LD	r5,#1073747328
	LD.w	r4,[r5+#1]
	CLR	r4,#6
	CLR	r4,#7
	ORL	r0,r0,r4
	ST.w	[r5+#1],r0
	JMP	lr
	.size	PM_VREF_SELECT, .-PM_VREF_SELECT
	.section .text$PM_LPR_Software_Enable
	.align	1
	.export	PM_LPR_Software_Enable
	.type	PM_LPR_Software_Enable, @function
PM_LPR_Software_Enable:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L67
// inline asm begin
	// 448 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #5
// inline asm end
	JMP	lr
.L67:
// inline asm begin
	// 443 "../src/kf32f_basic_pm.c" 1
	SET [r5], #5
// inline asm end
	JMP	lr
	.size	PM_LPR_Software_Enable, .-PM_LPR_Software_Enable
	.section .text$PM_Low_Power_Mode_Config
	.align	1
	.export	PM_Low_Power_Mode_Config
	.type	PM_Low_Power_Mode_Config, @function
PM_Low_Power_Mode_Config:
	LD	r5,#1073747328
	LD.w	r3,[r5]
	MOV	r4,#7
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5],r0
	JMP	lr
	.size	PM_Low_Power_Mode_Config, .-PM_Low_Power_Mode_Config
	.section .text$PM_BOR_Enable
	.align	1
	.export	PM_BOR_Enable
	.type	PM_BOR_Enable, @function
PM_BOR_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L72
// inline asm begin
	// 489 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #31
// inline asm end
	JMP	lr
.L72:
// inline asm begin
	// 484 "../src/kf32f_basic_pm.c" 1
	SET [r5], #31
// inline asm end
	JMP	lr
	.size	PM_BOR_Enable, .-PM_BOR_Enable
	.section .text$PM_Low_Power_BOR_Enable
	.align	1
	.export	PM_Low_Power_BOR_Enable
	.type	PM_Low_Power_BOR_Enable, @function
PM_Low_Power_BOR_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L76
// inline asm begin
	// 513 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #30
// inline asm end
	JMP	lr
.L76:
// inline asm begin
	// 508 "../src/kf32f_basic_pm.c" 1
	SET [r5], #30
// inline asm end
	JMP	lr
	.size	PM_Low_Power_BOR_Enable, .-PM_Low_Power_BOR_Enable
	.section .text$PM_Temperature_Sensor_Enable
	.align	1
	.export	PM_Temperature_Sensor_Enable
	.type	PM_Temperature_Sensor_Enable, @function
PM_Temperature_Sensor_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L80
// inline asm begin
	// 537 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #29
// inline asm end
	JMP	lr
.L80:
// inline asm begin
	// 532 "../src/kf32f_basic_pm.c" 1
	SET [r5], #29
// inline asm end
	JMP	lr
	.size	PM_Temperature_Sensor_Enable, .-PM_Temperature_Sensor_Enable
	.section .text$PM_Temperature_Sensor_Buffer_Enable
	.align	1
	.export	PM_Temperature_Sensor_Buffer_Enable
	.type	PM_Temperature_Sensor_Buffer_Enable, @function
PM_Temperature_Sensor_Buffer_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L84
// inline asm begin
	// 561 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #28
// inline asm end
	JMP	lr
.L84:
// inline asm begin
	// 556 "../src/kf32f_basic_pm.c" 1
	SET [r5], #28
// inline asm end
	JMP	lr
	.size	PM_Temperature_Sensor_Buffer_Enable, .-PM_Temperature_Sensor_Buffer_Enable
	.section .text$PM_Reference_Voltage_Enable
	.align	1
	.export	PM_Reference_Voltage_Enable
	.type	PM_Reference_Voltage_Enable, @function
PM_Reference_Voltage_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L88
// inline asm begin
	// 585 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #5
// inline asm end
	JMP	lr
.L88:
// inline asm begin
	// 580 "../src/kf32f_basic_pm.c" 1
	SET [r5], #5
// inline asm end
	JMP	lr
	.size	PM_Reference_Voltage_Enable, .-PM_Reference_Voltage_Enable
	.section .text$PM_Internal_Test_Buffer_Clock_Enable
	.align	1
	.export	PM_Internal_Test_Buffer_Clock_Enable
	.type	PM_Internal_Test_Buffer_Clock_Enable, @function
PM_Internal_Test_Buffer_Clock_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L92
// inline asm begin
	// 609 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #25
// inline asm end
	JMP	lr
.L92:
// inline asm begin
	// 604 "../src/kf32f_basic_pm.c" 1
	SET [r5], #25
// inline asm end
	JMP	lr
	.size	PM_Internal_Test_Buffer_Clock_Enable, .-PM_Internal_Test_Buffer_Clock_Enable
	.section .text$PM_Internal_Test_Buffer_Clock_Scaler_Config
	.align	1
	.export	PM_Internal_Test_Buffer_Clock_Scaler_Config
	.type	PM_Internal_Test_Buffer_Clock_Scaler_Config, @function
PM_Internal_Test_Buffer_Clock_Scaler_Config:
	LD	r5,#1073747328
	LD.w	r3,[r5+#1]
	LD	r4,#-29360129
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#1],r0
	JMP	lr
	.size	PM_Internal_Test_Buffer_Clock_Scaler_Config, .-PM_Internal_Test_Buffer_Clock_Scaler_Config
	.section .text$PM_PLL0_Output_Buffer_Enable
	.align	1
	.export	PM_PLL0_Output_Buffer_Enable
	.type	PM_PLL0_Output_Buffer_Enable, @function
PM_PLL0_Output_Buffer_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L97
// inline asm begin
	// 656 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #21
// inline asm end
	JMP	lr
.L97:
// inline asm begin
	// 651 "../src/kf32f_basic_pm.c" 1
	SET [r5], #21
// inline asm end
	JMP	lr
	.size	PM_PLL0_Output_Buffer_Enable, .-PM_PLL0_Output_Buffer_Enable
	.section .text$PM_PLL1_Output_Buffer_Enable
	.align	1
	.export	PM_PLL1_Output_Buffer_Enable
	.type	PM_PLL1_Output_Buffer_Enable, @function
PM_PLL1_Output_Buffer_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L101
// inline asm begin
	// 680 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #20
// inline asm end
	JMP	lr
.L101:
// inline asm begin
	// 675 "../src/kf32f_basic_pm.c" 1
	SET [r5], #20
// inline asm end
	JMP	lr
	.size	PM_PLL1_Output_Buffer_Enable, .-PM_PLL1_Output_Buffer_Enable
	.section .text$PM_PLL2_Output_Buffer_Enable
	.align	1
	.export	PM_PLL2_Output_Buffer_Enable
	.type	PM_PLL2_Output_Buffer_Enable, @function
PM_PLL2_Output_Buffer_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L105
// inline asm begin
	// 704 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #19
// inline asm end
	JMP	lr
.L105:
// inline asm begin
	// 699 "../src/kf32f_basic_pm.c" 1
	SET [r5], #19
// inline asm end
	JMP	lr
	.size	PM_PLL2_Output_Buffer_Enable, .-PM_PLL2_Output_Buffer_Enable
	.section .text$PM_PLL0LDO_Output_Buffer_Enable
	.align	1
	.export	PM_PLL0LDO_Output_Buffer_Enable
	.type	PM_PLL0LDO_Output_Buffer_Enable, @function
PM_PLL0LDO_Output_Buffer_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L109
// inline asm begin
	// 728 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #18
// inline asm end
	JMP	lr
.L109:
// inline asm begin
	// 723 "../src/kf32f_basic_pm.c" 1
	SET [r5], #18
// inline asm end
	JMP	lr
	.size	PM_PLL0LDO_Output_Buffer_Enable, .-PM_PLL0LDO_Output_Buffer_Enable
	.section .text$PM_PLL1LDO_Output_Buffer_Enable
	.align	1
	.export	PM_PLL1LDO_Output_Buffer_Enable
	.type	PM_PLL1LDO_Output_Buffer_Enable, @function
PM_PLL1LDO_Output_Buffer_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L113
// inline asm begin
	// 752 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #17
// inline asm end
	JMP	lr
.L113:
// inline asm begin
	// 747 "../src/kf32f_basic_pm.c" 1
	SET [r5], #17
// inline asm end
	JMP	lr
	.size	PM_PLL1LDO_Output_Buffer_Enable, .-PM_PLL1LDO_Output_Buffer_Enable
	.section .text$PM_PLL2LDO_Output_Buffer_Enable
	.align	1
	.export	PM_PLL2LDO_Output_Buffer_Enable
	.type	PM_PLL2LDO_Output_Buffer_Enable, @function
PM_PLL2LDO_Output_Buffer_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L117
// inline asm begin
	// 776 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #16
// inline asm end
	JMP	lr
.L117:
// inline asm begin
	// 771 "../src/kf32f_basic_pm.c" 1
	SET [r5], #16
// inline asm end
	JMP	lr
	.size	PM_PLL2LDO_Output_Buffer_Enable, .-PM_PLL2LDO_Output_Buffer_Enable
	.section .text$PM_Battery_BOR_Config
	.align	1
	.export	PM_Battery_BOR_Config
	.type	PM_Battery_BOR_Config, @function
PM_Battery_BOR_Config:
	LD	r5,#1073747328
	LD.w	r3,[r5+#1]
	LD	r4,#-28673
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#1],r0
	JMP	lr
	.size	PM_Battery_BOR_Config, .-PM_Battery_BOR_Config
	.section .text$PM_Battery_BOR_Enable
	.align	1
	.export	PM_Battery_BOR_Enable
	.type	PM_Battery_BOR_Enable, @function
PM_Battery_BOR_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L122
// inline asm begin
	// 821 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #15
// inline asm end
	JMP	lr
.L122:
// inline asm begin
	// 816 "../src/kf32f_basic_pm.c" 1
	SET [r5], #15
// inline asm end
	JMP	lr
	.size	PM_Battery_BOR_Enable, .-PM_Battery_BOR_Enable
	.section .text$PM_Peripheral_Voltage_Monitoring_Enable
	.align	1
	.export	PM_Peripheral_Voltage_Monitoring_Enable
	.type	PM_Peripheral_Voltage_Monitoring_Enable, @function
PM_Peripheral_Voltage_Monitoring_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L126
// inline asm begin
	// 845 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #5
// inline asm end
	JMP	lr
.L126:
// inline asm begin
	// 840 "../src/kf32f_basic_pm.c" 1
	SET [r5], #5
// inline asm end
	JMP	lr
	.size	PM_Peripheral_Voltage_Monitoring_Enable, .-PM_Peripheral_Voltage_Monitoring_Enable
	.section .text$PM_Voltage_Detection_Config
	.align	1
	.export	PM_Voltage_Detection_Config
	.type	PM_Voltage_Detection_Config, @function
PM_Voltage_Detection_Config:
	LD	r5,#1073747328
	LD.w	r3,[r5+#1]
	MOV	r4,#28
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#1],r0
	JMP	lr
	.size	PM_Voltage_Detection_Config, .-PM_Voltage_Detection_Config
	.section .text$PM_Voltage_Detection_Enable
	.align	1
	.export	PM_Voltage_Detection_Enable
	.type	PM_Voltage_Detection_Enable, @function
PM_Voltage_Detection_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L131
// inline asm begin
	// 891 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #0
// inline asm end
	JMP	lr
.L131:
// inline asm begin
	// 886 "../src/kf32f_basic_pm.c" 1
	SET [r5], #0
// inline asm end
	JMP	lr
	.size	PM_Voltage_Detection_Enable, .-PM_Voltage_Detection_Enable
	.section .text$PM_External_Wakeup_Pin_Enable
	.align	1
	.export	PM_External_Wakeup_Pin_Enable
	.type	PM_External_Wakeup_Pin_Enable, @function
PM_External_Wakeup_Pin_Enable:
	MOV	r5,#1
	LSL	r5,#27
	LSL	r0,r5,r0
	LD	r4,#1073747328
	LD.w	r3,[r4+#5]
	CMP	r1,#0
	JNZ	.L135
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4+#5],r5
	JMP	lr
.L135:
	ORL	r5,r0,r3
	ST.w	[r4+#5],r5
	JMP	lr
	.size	PM_External_Wakeup_Pin_Enable, .-PM_External_Wakeup_Pin_Enable
	.section .text$PM_External_Wakeup_Edge_Config
	.align	1
	.export	PM_External_Wakeup_Edge_Config
	.type	PM_External_Wakeup_Edge_Config, @function
PM_External_Wakeup_Edge_Config:
	MOV	r5,#1
	LSL	r5,#22
	LSL	r0,r5,r0
	LD	r4,#1073747328
	LD.w	r3,[r4+#5]
	CMP	r1,#0
	JNZ	.L139
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4+#5],r5
	JMP	lr
.L139:
	ORL	r5,r0,r3
	ST.w	[r4+#5],r5
	JMP	lr
	.size	PM_External_Wakeup_Edge_Config, .-PM_External_Wakeup_Edge_Config
	.section .text$PM_Stop_Mode_Peripheral_INLF_Enable
	.align	1
	.export	PM_Stop_Mode_Peripheral_INLF_Enable
	.type	PM_Stop_Mode_Peripheral_INLF_Enable, @function
PM_Stop_Mode_Peripheral_INLF_Enable:
	MOV	r5,#16
	LSL	r0,r5,r0
	LD	r4,#1073747328
	LD.w	r3,[r4+#5]
	CMP	r1,#0
	JNZ	.L143
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4+#5],r5
	JMP	lr
.L143:
	ORL	r5,r0,r3
	ST.w	[r4+#5],r5
	JMP	lr
	.size	PM_Stop_Mode_Peripheral_INLF_Enable, .-PM_Stop_Mode_Peripheral_INLF_Enable
	.section .text$PM_Peripheral_Reset_Config
	.align	1
	.export	PM_Peripheral_Reset_Config
	.type	PM_Peripheral_Reset_Config, @function
PM_Peripheral_Reset_Config:
	MOV	r5,#1
	LSL	r0,r5,r0
	LD	r4,#1073747328
	LD.w	r3,[r4+#5]
	CMP	r1,#0
	JNZ	.L147
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4+#5],r5
	JMP	lr
.L147:
	ORL	r5,r0,r3
	ST.w	[r4+#5],r5
	JMP	lr
	.size	PM_Peripheral_Reset_Config, .-PM_Peripheral_Reset_Config
	.section .text$PM_Vdd_Por_Enable
	.align	1
	.export	PM_Vdd_Por_Enable
	.type	PM_Vdd_Por_Enable, @function
PM_Vdd_Por_Enable:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L151
// inline asm begin
	// 1055 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #30
// inline asm end
	JMP	lr
.L151:
// inline asm begin
	// 1050 "../src/kf32f_basic_pm.c" 1
	SET [r5], #30
// inline asm end
	JMP	lr
	.size	PM_Vdd_Por_Enable, .-PM_Vdd_Por_Enable
	.section .text$PM_Low_Power_Bandgap_Enable
	.align	1
	.export	PM_Low_Power_Bandgap_Enable
	.type	PM_Low_Power_Bandgap_Enable, @function
PM_Low_Power_Bandgap_Enable:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L155
// inline asm begin
	// 1079 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #23
// inline asm end
	JMP	lr
.L155:
// inline asm begin
	// 1074 "../src/kf32f_basic_pm.c" 1
	SET [r5], #23
// inline asm end
	JMP	lr
	.size	PM_Low_Power_Bandgap_Enable, .-PM_Low_Power_Bandgap_Enable
	.section .text$PM_Power_Dissipation_Mode_Config
	.align	1
	.export	PM_Power_Dissipation_Mode_Config
	.type	PM_Power_Dissipation_Mode_Config, @function
PM_Power_Dissipation_Mode_Config:
	LD	r5,#1073747328
	CMP	r0,#0
	JNZ	.L159
// inline asm begin
	// 1105 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #11
// inline asm end
	JMP	lr
.L159:
// inline asm begin
	// 1100 "../src/kf32f_basic_pm.c" 1
	SET [r5], #11
// inline asm end
	JMP	lr
	.size	PM_Power_Dissipation_Mode_Config, .-PM_Power_Dissipation_Mode_Config
	.section .text$PM_Power_Dissipation_Mode_Delay_Config
	.align	1
	.export	PM_Power_Dissipation_Mode_Delay_Config
	.type	PM_Power_Dissipation_Mode_Delay_Config, @function
PM_Power_Dissipation_Mode_Delay_Config:
	LD	r5,#1073747328
	LD.w	r4,[r5]
	CLR	r4,#9
	CLR	r4,#10
	ORL	r0,r0,r4
	ST.w	[r5],r0
	JMP	lr
	.size	PM_Power_Dissipation_Mode_Delay_Config, .-PM_Power_Dissipation_Mode_Delay_Config
	.section .text$PM_Internal_Test_Buffer_Enable
	.align	1
	.export	PM_Internal_Test_Buffer_Enable
	.type	PM_Internal_Test_Buffer_Enable, @function
PM_Internal_Test_Buffer_Enable:
	LD	r5,#1073747332
	CMP	r0,#0
	JNZ	.L164
// inline asm begin
	// 1147 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #26
// inline asm end
	JMP	lr
.L164:
// inline asm begin
	// 1142 "../src/kf32f_basic_pm.c" 1
	SET [r5], #26
// inline asm end
	JMP	lr
	.size	PM_Internal_Test_Buffer_Enable, .-PM_Internal_Test_Buffer_Enable
	.section .text$PM_Clear_Reset_And_Wakeup_Flag
	.align	1
	.export	PM_Clear_Reset_And_Wakeup_Flag
	.type	PM_Clear_Reset_And_Wakeup_Flag, @function
PM_Clear_Reset_And_Wakeup_Flag:
	MOV	r5,#1
	LSL	r0,r5,r0
	LD	r5,#1073747336
// inline asm begin
	// 1180 "../src/kf32f_basic_pm.c" 1
	SET [r5], #31
// inline asm end
	LD	r4,#1073747328
.L166:
	LD.w	r5,[r4+#2]
	ANL	r5,r0,r5
	JNZ	.L166
	LD	r5,#1073747336
// inline asm begin
	// 1182 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #31
// inline asm end
	JMP	lr
	.size	PM_Clear_Reset_And_Wakeup_Flag, .-PM_Clear_Reset_And_Wakeup_Flag
	.section .text$PM_Get_IWDT_Reset_Flag
	.align	1
	.export	PM_Get_IWDT_Reset_Flag
	.type	PM_Get_IWDT_Reset_Flag, @function
PM_Get_IWDT_Reset_Flag:
	LD	r5,#1073747328
	CMP	r0,#31
	JHI	.L169
	LD.w	r5,[r5+#2]
	MOV	r4,#1
	LSL	r0,r4,r0
	ANL	r0,r0,r5
	MOV	r5,#0
	SUB	r5,r5,r0
	ORL	r0,r5,r0
	LSR	r0,#31
	JMP	lr
.L169:
	LD.w	r5,[r5+#3]
	SUB	r0,#32
	MOV	r4,#1
	LSL	r0,r4,r0
	ANL	r0,r0,r5
	MOV	r5,#0
	SUB	r5,r5,r0
	ORL	r0,r5,r0
	LSR	r0,#31
	JMP	lr
	.size	PM_Get_IWDT_Reset_Flag, .-PM_Get_IWDT_Reset_Flag
	.section .text$PM_Clear_External_Wakeup_Pin_Flag
	.align	1
	.export	PM_Clear_External_Wakeup_Pin_Flag
	.type	PM_Clear_External_Wakeup_Pin_Flag, @function
PM_Clear_External_Wakeup_Pin_Flag:
	SUB	r0,#32
	MOV	r5,#1
	LSL	r0,r5,r0
	LD	r3,#1073747328
	LD.w	r5,[r3+#4]
	ORL	r5,r0,r5
	ST.w	[r3+#4],r5
.L172:
	LD	r4,#1073747328
	LD.w	r5,[r3+#3]
	ANL	r5,r0,r5
	JNZ	.L172
	LD.w	r5,[r4+#4]
	NOT	r0,r0
	ANL	r0,r0,r5
	ST.w	[r4+#4],r0
	JMP	lr
	.size	PM_Clear_External_Wakeup_Pin_Flag, .-PM_Clear_External_Wakeup_Pin_Flag
	.section .text$PM_Get_Low_Power_Running_State
	.align	1
	.export	PM_Get_Low_Power_Running_State
	.type	PM_Get_Low_Power_Running_State, @function
PM_Get_Low_Power_Running_State:
	LD	r5,#1073747328
	LD.w	r0,[r5+#2]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	PM_Get_Low_Power_Running_State, .-PM_Get_Low_Power_Running_State
	.section .text$PM_Get_LPR_Status
	.align	1
	.export	PM_Get_LPR_Status
	.type	PM_Get_LPR_Status, @function
PM_Get_LPR_Status:
	LD	r5,#1073747328
	LD.w	r0,[r5+#2]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	PM_Get_LPR_Status, .-PM_Get_LPR_Status
	.section .text$PM_Get_Peripheral_Voltage_Detection_Status
	.align	1
	.export	PM_Get_Peripheral_Voltage_Detection_Status
	.type	PM_Get_Peripheral_Voltage_Detection_Status, @function
PM_Get_Peripheral_Voltage_Detection_Status:
	LD	r5,#1073747328
	LD.w	r0,[r5+#3]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	PM_Get_Peripheral_Voltage_Detection_Status, .-PM_Get_Peripheral_Voltage_Detection_Status
	.section .text$PM_Zero_Drift_Current_Config
	.align	1
	.export	PM_Zero_Drift_Current_Config
	.type	PM_Zero_Drift_Current_Config, @function
PM_Zero_Drift_Current_Config:
	LD	r5,#1073747328
	LD.w	r4,[r5+#6]
	CLR	r4,#24
	CLR	r4,#25
	ORL	r0,r0,r4
	ST.w	[r5+#6],r0
	JMP	lr
	.size	PM_Zero_Drift_Current_Config, .-PM_Zero_Drift_Current_Config
	.section .text$PM_BOR_Voltage_Config
	.align	1
	.export	PM_BOR_Voltage_Config
	.type	PM_BOR_Voltage_Config, @function
PM_BOR_Voltage_Config:
	LD	r5,#1073747328
	LD.w	r4,[r5+#6]
	CLR	r4,#20
	CLR	r4,#21
	ORL	r0,r0,r4
	ST.w	[r5+#6],r0
	JMP	lr
	.size	PM_BOR_Voltage_Config, .-PM_BOR_Voltage_Config
	.section .text$PM_Main_Regulator_Voltage_Config
	.align	1
	.export	PM_Main_Regulator_Voltage_Config
	.type	PM_Main_Regulator_Voltage_Config, @function
PM_Main_Regulator_Voltage_Config:
	LD	r5,#1073747328
	LD.w	r3,[r5+#6]
	MOV	r4,#15
	LSL	r4,r4,r0
	NOT	r4,r4
	ANL	r4,r4,r3
	LSL	r1,r1,r0
	ORL	r4,r4,r1
	ST.w	[r5+#6],r4
	JMP	lr
	.size	PM_Main_Regulator_Voltage_Config, .-PM_Main_Regulator_Voltage_Config
	.section .text$PM_Main_Regulator_HV_Enable
	.align	1
	.export	PM_Main_Regulator_HV_Enable
	.type	PM_Main_Regulator_HV_Enable, @function
PM_Main_Regulator_HV_Enable:
	LD	r5,#1073747352
	CMP	r0,#0
	JNZ	.L183
// inline asm begin
	// 1417 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #15
// inline asm end
	JMP	lr
.L183:
// inline asm begin
	// 1412 "../src/kf32f_basic_pm.c" 1
	SET [r5], #15
// inline asm end
	JMP	lr
	.size	PM_Main_Regulator_HV_Enable, .-PM_Main_Regulator_HV_Enable
	.section .text$PM_Reference_Calibration_Config
	.align	1
	.export	PM_Reference_Calibration_Config
	.type	PM_Reference_Calibration_Config, @function
PM_Reference_Calibration_Config:
	CMP	r0,#4
	JZ	.L187
	CMP	r0,#8
	JZ	.L188
	CMP	r0,#0
	JZ	.L189
	MOV	r3,#0
	NOT	r3,r3
	MOV	r1,#0
	LD	r5,#1073747328
	LD.w	r4,[r5+#6]
	ANL	r4,r3,r4
	ORL	r1,r4,r1
	ST.w	[r5+#6],r1
	JMP	lr
.L189:
	MOV	r3,#15
	NOT	r3,r3
	LD	r5,#1073747328
	LD.w	r4,[r5+#6]
	ANL	r4,r3,r4
	ORL	r1,r4,r1
	ST.w	[r5+#6],r1
	JMP	lr
.L188:
	LSL	r1,#8
	LD	r3,#-7937
	LD	r5,#1073747328
	LD.w	r4,[r5+#6]
	ANL	r4,r3,r4
	ORL	r1,r4,r1
	ST.w	[r5+#6],r1
	JMP	lr
.L187:
	LSL	r1,#4
	MOV	r3,#240
	NOT	r3,r3
	LD	r5,#1073747328
	LD.w	r4,[r5+#6]
	ANL	r4,r3,r4
	ORL	r1,r4,r1
	ST.w	[r5+#6],r1
	JMP	lr
	.size	PM_Reference_Calibration_Config, .-PM_Reference_Calibration_Config
	.section .text$PM_INTLF_Bias_Current_Config
	.align	1
	.export	PM_INTLF_Bias_Current_Config
	.type	PM_INTLF_Bias_Current_Config, @function
PM_INTLF_Bias_Current_Config:
	LD	r5,#1073747328
	LD.w	r3,[r5+#7]
	LD	r4,#536870911
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#7],r0
	JMP	lr
	.size	PM_INTLF_Bias_Current_Config, .-PM_INTLF_Bias_Current_Config
	.section .text$PM_EXTLF_Bias_Current_Config
	.align	1
	.export	PM_EXTLF_Bias_Current_Config
	.type	PM_EXTLF_Bias_Current_Config, @function
PM_EXTLF_Bias_Current_Config:
	LD	r5,#1073747328
	LD.w	r3,[r5+#7]
	MOV	r4,#240
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#7],r0
	JMP	lr
	.size	PM_EXTLF_Bias_Current_Config, .-PM_EXTLF_Bias_Current_Config
	.section .text$PM_INTLF_Capacitance_Calibration_Config
	.align	1
	.export	PM_INTLF_Capacitance_Calibration_Config
	.type	PM_INTLF_Capacitance_Calibration_Config, @function
PM_INTLF_Capacitance_Calibration_Config:
	LD	r5,#1073747328
	LD.w	r4,[r5+#7]
	LSL	r0,#4
	MOV	r3,#240
	NOT	r3,r3
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#7],r4
	JMP	lr
	.size	PM_INTLF_Capacitance_Calibration_Config, .-PM_INTLF_Capacitance_Calibration_Config
	.section .text$PM_LP_Bias_Calibration_Config
	.align	1
	.export	PM_LP_Bias_Calibration_Config
	.type	PM_LP_Bias_Calibration_Config, @function
PM_LP_Bias_Calibration_Config:
	LD	r5,#1073747328
	LD.w	r4,[r5+#7]
	LSL	r0,#20
	LD	r3,#-7340033
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#7],r4
	JMP	lr
	.size	PM_LP_Bias_Calibration_Config, .-PM_LP_Bias_Calibration_Config
	.section .text$PM_LPBG_Pump_Calibration_Config
	.align	1
	.export	PM_LPBG_Pump_Calibration_Config
	.type	PM_LPBG_Pump_Calibration_Config, @function
PM_LPBG_Pump_Calibration_Config:
	LD	r5,#1073747328
	LD.w	r4,[r5+#7]
	LSL	r0,#16
	LD	r3,#-458753
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#7],r4
	JMP	lr
	.size	PM_LPBG_Pump_Calibration_Config, .-PM_LPBG_Pump_Calibration_Config
	.section .text$PM_EXTLF_N_Bias_Current_Config
	.align	1
	.export	PM_EXTLF_N_Bias_Current_Config
	.type	PM_EXTLF_N_Bias_Current_Config, @function
PM_EXTLF_N_Bias_Current_Config:
	LD	r5,#1073747328
	LD.w	r4,[r5+#7]
	CLR	r4,#0
	CLR	r4,#1
	ORL	r0,r0,r4
	ST.w	[r5+#7],r0
	JMP	lr
	.size	PM_EXTLF_N_Bias_Current_Config, .-PM_EXTLF_N_Bias_Current_Config
	.section .text$PM_EXTLF_PIN_Selection_Config
	.align	1
	.export	PM_EXTLF_PIN_Selection_Config
	.type	PM_EXTLF_PIN_Selection_Config, @function
PM_EXTLF_PIN_Selection_Config:
	LD	r5,#1073747356
	CMP	r0,#0
	JNZ	.L199
// inline asm begin
	// 1604 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #19
// inline asm end
	JMP	lr
.L199:
// inline asm begin
	// 1599 "../src/kf32f_basic_pm.c" 1
	SET [r5], #19
// inline asm end
	JMP	lr
	.size	PM_EXTLF_PIN_Selection_Config, .-PM_EXTLF_PIN_Selection_Config
	.section .text$PM_EXTHF_PIN_Selection_Config
	.align	1
	.export	PM_EXTHF_PIN_Selection_Config
	.type	PM_EXTHF_PIN_Selection_Config, @function
PM_EXTHF_PIN_Selection_Config:
	LD	r5,#1073747356
	CMP	r0,#0
	JNZ	.L203
// inline asm begin
	// 1630 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #15
// inline asm end
	JMP	lr
.L203:
// inline asm begin
	// 1625 "../src/kf32f_basic_pm.c" 1
	SET [r5], #15
// inline asm end
	JMP	lr
	.size	PM_EXTHF_PIN_Selection_Config, .-PM_EXTHF_PIN_Selection_Config
	.section .text$PM_LDO18_Module_Config
	.align	1
	.export	PM_LDO18_Module_Config
	.type	PM_LDO18_Module_Config, @function
PM_LDO18_Module_Config:
	LD	r5,#1073747352
	CMP	r0,#0
	JNZ	.L207
// inline asm begin
	// 1657 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #31
// inline asm end
	JMP	lr
.L207:
// inline asm begin
	// 1652 "../src/kf32f_basic_pm.c" 1
	SET [r5], #31
// inline asm end
	JMP	lr
	.size	PM_LDO18_Module_Config, .-PM_LDO18_Module_Config
	.section .text$PM_Main_Regulator_Bandgap_Config
	.align	1
	.export	PM_Main_Regulator_Bandgap_Config
	.type	PM_Main_Regulator_Bandgap_Config, @function
PM_Main_Regulator_Bandgap_Config:
	LD	r5,#1073747352
	CMP	r0,#0
	JNZ	.L211
// inline asm begin
	// 1683 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #30
// inline asm end
	JMP	lr
.L211:
// inline asm begin
	// 1678 "../src/kf32f_basic_pm.c" 1
	SET [r5], #30
// inline asm end
	JMP	lr
	.size	PM_Main_Regulator_Bandgap_Config, .-PM_Main_Regulator_Bandgap_Config
	.section .text$PM_LPR_Module_Config
	.align	1
	.export	PM_LPR_Module_Config
	.type	PM_LPR_Module_Config, @function
PM_LPR_Module_Config:
	LD	r5,#1073747352
	CMP	r0,#0
	JNZ	.L215
// inline asm begin
	// 1709 "../src/kf32f_basic_pm.c" 1
	CLR [r5], #30
// inline asm end
	JMP	lr
.L215:
// inline asm begin
	// 1704 "../src/kf32f_basic_pm.c" 1
	SET [r5], #30
// inline asm end
	JMP	lr
	.size	PM_LPR_Module_Config, .-PM_LPR_Module_Config
