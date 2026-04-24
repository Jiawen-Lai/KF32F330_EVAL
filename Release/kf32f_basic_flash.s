	.file	"kf32f_basic_flash.c"
	.section .indata$CHECK_RESTRICTION_RAM
	.align	1
	.export	CHECK_RESTRICTION_RAM
	.type	CHECK_RESTRICTION_RAM, @function
CHECK_RESTRICTION_RAM:
	CMP	r0,#0
	JNZ	.L5
.L4:
	JMP	.L4
.L5:
	JMP	lr
	.size	CHECK_RESTRICTION_RAM, .-CHECK_RESTRICTION_RAM
	.section .indata$FLASH_Get_NonVolatile_Memory_Unlock_Status_RAM
	.align	1
	.export	FLASH_Get_NonVolatile_Memory_Unlock_Status_RAM
	.type	FLASH_Get_NonVolatile_Memory_Unlock_Status_RAM, @function
FLASH_Get_NonVolatile_Memory_Unlock_Status_RAM:
	LD	r5,#1075839232
	LD.w	r0,[r5]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	FLASH_Get_NonVolatile_Memory_Unlock_Status_RAM, .-FLASH_Get_NonVolatile_Memory_Unlock_Status_RAM
	.section .indata$FLASH_Clear_NonVolatile_Memory_Unlock_Status_RAM
	.align	1
	.export	FLASH_Clear_NonVolatile_Memory_Unlock_Status_RAM
	.type	FLASH_Clear_NonVolatile_Memory_Unlock_Status_RAM, @function
FLASH_Clear_NonVolatile_Memory_Unlock_Status_RAM:
	LD	r5,#1075839232
	LD.w	r3,[r5]
	LD	r4,#65534
	ANL	r4,r3,r4
	LD	r3,#1353646081
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
	.size	FLASH_Clear_NonVolatile_Memory_Unlock_Status_RAM, .-FLASH_Clear_NonVolatile_Memory_Unlock_Status_RAM
	.section .text$FLASH_Clear_NonVolatile_Memory_Unlock_Status
	.align	1
	.export	FLASH_Clear_NonVolatile_Memory_Unlock_Status
	.type	FLASH_Clear_NonVolatile_Memory_Unlock_Status, @function
FLASH_Clear_NonVolatile_Memory_Unlock_Status:
	LD	r5,#1075839232
	LD.w	r3,[r5]
	LD	r4,#65534
	ANL	r4,r3,r4
	LD	r3,#1353646081
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
	.size	FLASH_Clear_NonVolatile_Memory_Unlock_Status, .-FLASH_Clear_NonVolatile_Memory_Unlock_Status
	.section .indata$FLASH_Unlock_ISP_RAM
	.align	1
	.export	FLASH_Unlock_ISP_RAM
	.type	FLASH_Unlock_ISP_RAM, @function
FLASH_Unlock_ISP_RAM:
	LD	r5,#1075839232
	LD	r4,#-2023406815
	ST.w	[r5+#10],r4
	LD	r4,#84148994
	ST.w	[r5+#10],r4
	JMP	lr
	.size	FLASH_Unlock_ISP_RAM, .-FLASH_Unlock_ISP_RAM
	.section .text$FLASH_Unlock_ISP
	.align	1
	.export	FLASH_Unlock_ISP
	.type	FLASH_Unlock_ISP, @function
FLASH_Unlock_ISP:
	LD	r5,#1075839232
	LD	r4,#-2023406815
	ST.w	[r5+#10],r4
	LD	r4,#84148994
	ST.w	[r5+#10],r4
	JMP	lr
	.size	FLASH_Unlock_ISP, .-FLASH_Unlock_ISP
	.section .indata$FLASH_Get_Flash_Unlock_Status_RAM
	.align	1
	.export	FLASH_Get_Flash_Unlock_Status_RAM
	.type	FLASH_Get_Flash_Unlock_Status_RAM, @function
FLASH_Get_Flash_Unlock_Status_RAM:
	LD	r5,#1075839232
	LD.w	r0,[r5]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	FLASH_Get_Flash_Unlock_Status_RAM, .-FLASH_Get_Flash_Unlock_Status_RAM
	.section .indata$FLASH_Clear_Flash_Unlock_Status_RAM
	.align	1
	.export	FLASH_Clear_Flash_Unlock_Status_RAM
	.type	FLASH_Clear_Flash_Unlock_Status_RAM, @function
FLASH_Clear_Flash_Unlock_Status_RAM:
	LD	r5,#1075839232
	LD.w	r3,[r5]
	LD	r4,#65533
	ANL	r4,r3,r4
	LD	r3,#1353646082
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
	.size	FLASH_Clear_Flash_Unlock_Status_RAM, .-FLASH_Clear_Flash_Unlock_Status_RAM
	.section .text$FLASH_Clear_Flash_Unlock_Status
	.align	1
	.export	FLASH_Clear_Flash_Unlock_Status
	.type	FLASH_Clear_Flash_Unlock_Status, @function
FLASH_Clear_Flash_Unlock_Status:
	LD	r5,#1075839232
	LD.w	r3,[r5]
	LD	r4,#65533
	ANL	r4,r3,r4
	LD	r3,#1353646082
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
	.size	FLASH_Clear_Flash_Unlock_Status, .-FLASH_Clear_Flash_Unlock_Status
	.section .indata$FLASH_Unlock_Code_RAM
	.align	1
	.export	FLASH_Unlock_Code_RAM
	.type	FLASH_Unlock_Code_RAM, @function
FLASH_Unlock_Code_RAM:
	LD	r5,#1075839232
	LD	r4,#2023406814
	ST.w	[r5+#11],r4
	LD	r4,#370480147
	ST.w	[r5+#11],r4
	JMP	lr
	.size	FLASH_Unlock_Code_RAM, .-FLASH_Unlock_Code_RAM
	.section .text$FLASH_Unlock_Code
	.align	1
	.export	FLASH_Unlock_Code
	.type	FLASH_Unlock_Code, @function
FLASH_Unlock_Code:
	LD	r5,#1075839232
	LD	r4,#2023406814
	ST.w	[r5+#11],r4
	LD	r4,#370480147
	ST.w	[r5+#11],r4
	JMP	lr
	.size	FLASH_Unlock_Code, .-FLASH_Unlock_Code
	.section .indata$FLASH_Get_Config_Unlock_Status_RAM
	.align	1
	.export	FLASH_Get_Config_Unlock_Status_RAM
	.type	FLASH_Get_Config_Unlock_Status_RAM, @function
FLASH_Get_Config_Unlock_Status_RAM:
	LD	r5,#1075839232
	LD.w	r0,[r5]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	FLASH_Get_Config_Unlock_Status_RAM, .-FLASH_Get_Config_Unlock_Status_RAM
	.section .indata$FLASH_Clear_Config_Unlock_Status_RAM
	.align	1
	.export	FLASH_Clear_Config_Unlock_Status_RAM
	.type	FLASH_Clear_Config_Unlock_Status_RAM, @function
FLASH_Clear_Config_Unlock_Status_RAM:
	LD	r5,#1075839232
	LD.w	r3,[r5]
	LD	r4,#65531
	ANL	r4,r3,r4
	LD	r3,#1353646084
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
	.size	FLASH_Clear_Config_Unlock_Status_RAM, .-FLASH_Clear_Config_Unlock_Status_RAM
	.section .text$FLASH_Clear_Config_Unlock_Status
	.align	1
	.export	FLASH_Clear_Config_Unlock_Status
	.type	FLASH_Clear_Config_Unlock_Status, @function
FLASH_Clear_Config_Unlock_Status:
	LD	r5,#1075839232
	LD.w	r3,[r5]
	LD	r4,#65531
	ANL	r4,r3,r4
	LD	r3,#1353646084
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
	.size	FLASH_Clear_Config_Unlock_Status, .-FLASH_Clear_Config_Unlock_Status
	.section .indata$FLASH_Unlock_User_Config_RAM
	.align	1
	.export	FLASH_Unlock_User_Config_RAM
	.type	FLASH_Unlock_User_Config_RAM, @function
FLASH_Unlock_User_Config_RAM:
	LD	r5,#1075839232
	LD	r4,#-2019933218
	ST.w	[r5+#12],r4
	LD	r4,#656811300
	ST.w	[r5+#12],r4
	JMP	lr
	.size	FLASH_Unlock_User_Config_RAM, .-FLASH_Unlock_User_Config_RAM
	.section .text$FLASH_Unlock_User_Config
	.align	1
	.export	FLASH_Unlock_User_Config
	.type	FLASH_Unlock_User_Config, @function
FLASH_Unlock_User_Config:
	LD	r5,#1075839232
	LD	r4,#-2019933218
	ST.w	[r5+#12],r4
	LD	r4,#656811300
	ST.w	[r5+#12],r4
	JMP	lr
	.size	FLASH_Unlock_User_Config, .-FLASH_Unlock_User_Config
	.section .text$FLASH_Data_Write_Enable_RAM
	.align	1
	.export	FLASH_Data_Write_Enable_RAM
	.type	FLASH_Data_Write_Enable_RAM, @function
FLASH_Data_Write_Enable_RAM:
	CMP	r0,#1
	JLS	.L27
.L26:
	JMP	.L26
.L27:
	LD	r5,#1075839232
	CMP	r0,#0
	JNZ	.L28
// inline asm begin
	// 314 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #3
// inline asm end
	JMP	lr
.L28:
// inline asm begin
	// 309 "../src/kf32f_basic_flash.c" 1
	SET [r5], #3
// inline asm end
	JMP	lr
	.size	FLASH_Data_Write_Enable_RAM, .-FLASH_Data_Write_Enable_RAM
	.section .indata$FLASH_Zone_Config_RAM
	.align	1
	.export	FLASH_Zone_Config_RAM
	.type	FLASH_Zone_Config_RAM, @function
FLASH_Zone_Config_RAM:
	CMP	r0,#0
	JZ	.L30
	CMP	r0,#16
	JZ	.L34
.L33:
	JMP	.L33
.L30:
	LD	r5,#1075839232
// inline asm begin
	// 340 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #4
// inline asm end
	JMP	lr
.L34:
	LD	r5,#1075839232
// inline asm begin
	// 335 "../src/kf32f_basic_flash.c" 1
	SET [r5], #4
// inline asm end
	JMP	lr
	.size	FLASH_Zone_Config_RAM, .-FLASH_Zone_Config_RAM
	.section .text$FLASH_Zone_Config
	.align	1
	.export	FLASH_Zone_Config
	.type	FLASH_Zone_Config, @function
FLASH_Zone_Config:
	LD	r5,#1075839232
	CMP	r0,#0
	JNZ	.L38
// inline asm begin
	// 365 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #4
// inline asm end
	JMP	lr
.L38:
// inline asm begin
	// 360 "../src/kf32f_basic_flash.c" 1
	SET [r5], #4
// inline asm end
	JMP	lr
	.size	FLASH_Zone_Config, .-FLASH_Zone_Config
	.section .indata$FLASH_Standby_Mode_Config_RAM
	.align	1
	.export	FLASH_Standby_Mode_Config_RAM
	.type	FLASH_Standby_Mode_Config_RAM, @function
FLASH_Standby_Mode_Config_RAM:
	CMP	r0,#0
	JZ	.L40
	CMP	r0,#32
	JZ	.L40
	CMP	r0,#64
	JZ	.L40
	CMP	r0,#96
	JZ	.L40
.L51:
	JMP	.L51
.L40:
	LD	r5,#1075839232
	LD.w	r3,[r5]
	LD	r4,#65503
	ANL	r4,r3,r4
	LD	r3,#1353646080
	ORL	r4,r4,r3
	ORL	r0,r4,r0
	ST.w	[r5],r0
	JMP	lr
	.size	FLASH_Standby_Mode_Config_RAM, .-FLASH_Standby_Mode_Config_RAM
	.section .indata$FLASH_Read_Mode_Config_RAM
	.align	1
	.export	FLASH_Read_Mode_Config_RAM
	.type	FLASH_Read_Mode_Config_RAM, @function
FLASH_Read_Mode_Config_RAM:
	CMP	r0,#0
	JZ	.L54
	CMP	r0,#2
	JZ	.L58
.L57:
	JMP	.L57
.L54:
	LD	r5,#1075839236
// inline asm begin
	// 416 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #1
// inline asm end
	JMP	lr
.L58:
	LD	r5,#1075839236
// inline asm begin
	// 411 "../src/kf32f_basic_flash.c" 1
	SET [r5], #1
// inline asm end
	JMP	lr
	.size	FLASH_Read_Mode_Config_RAM, .-FLASH_Read_Mode_Config_RAM
	.section .indata$FLASH_Calibration_Updata_Enable_RAM
	.align	1
	.export	FLASH_Calibration_Updata_Enable_RAM
	.type	FLASH_Calibration_Updata_Enable_RAM, @function
FLASH_Calibration_Updata_Enable_RAM:
	CMP	r0,#1
	JLS	.L63
.L61:
	JMP	.L61
.L63:
	LD	r5,#1075839232
	LD.w	r3,[r5+#1]
	LD	r4,#65534
	ANL	r4,r3,r4
	LD	r3,#-1604386816
	ORL	r4,r4,r3
	LSL	r0,#2
	ORL	r0,r4,r0
	ST.w	[r5+#1],r0
	JMP	lr
	.size	FLASH_Calibration_Updata_Enable_RAM, .-FLASH_Calibration_Updata_Enable_RAM
	.section .indata$FLASH_Information_Zone_Wipe_Unlock_Config_RAM
	.align	1
	.export	FLASH_Information_Zone_Wipe_Unlock_Config_RAM
	.type	FLASH_Information_Zone_Wipe_Unlock_Config_RAM, @function
FLASH_Information_Zone_Wipe_Unlock_Config_RAM:
	CMP	r0,#1
	JLS	.L68
.L66:
	JMP	.L66
.L68:
	LD	r5,#1075839232
	LD.w	r3,[r5+#1]
	LD	r4,#65534
	ANL	r4,r3,r4
	LD	r3,#-1604386816
	ORL	r4,r4,r3
	LSL	r0,#15
	ORL	r0,r4,r0
	ST.w	[r5+#1],r0
	JMP	lr
	.size	FLASH_Information_Zone_Wipe_Unlock_Config_RAM, .-FLASH_Information_Zone_Wipe_Unlock_Config_RAM
	.section .indata$FLASH_Half_Page_Write_Size_Config_RAM
	.align	1
	.export	FLASH_Half_Page_Write_Size_Config_RAM
	.type	FLASH_Half_Page_Write_Size_Config_RAM, @function
FLASH_Half_Page_Write_Size_Config_RAM:
	MOV	r4,#6
	LSR	r5,r0,r4
	CMP	r5,#0
	JZ	.L73
.L71:
	JMP	.L71
.L73:
	LD	r5,#1075839232
	LD.w	r3,[r5+#2]
	LSL	r0,#5
	LD	r4,#-2017
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#2],r0
	JMP	lr
	.size	FLASH_Half_Page_Write_Size_Config_RAM, .-FLASH_Half_Page_Write_Size_Config_RAM
	.section .indata$FLASH_Program_Cmd_Config_RAM
	.align	1
	.export	FLASH_Program_Cmd_Config_RAM
	.type	FLASH_Program_Cmd_Config_RAM, @function
FLASH_Program_Cmd_Config_RAM:
	CMP	r0,#21
	JZ	.L75
	CMP	r0,#10
	JZ	.L75
	CMP	r0,#27
	JZ	.L75
	CMP	r0,#5
	JZ	.L75
.L86:
	JMP	.L86
.L75:
	LD	r5,#1075839232
	LD.w	r3,[r5+#2]
	MOV	r4,#31
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#2],r0
	JMP	lr
	.size	FLASH_Program_Cmd_Config_RAM, .-FLASH_Program_Cmd_Config_RAM
	.section .indata$FLASH_Executive_Cmd_RAM
	.align	1
	.export	FLASH_Executive_Cmd_RAM
	.type	FLASH_Executive_Cmd_RAM, @function
FLASH_Executive_Cmd_RAM:
	LD	r5,#1075839232
	LD.w	r3,[r5+#3]
	LD	r4,#65534
	ANL	r4,r3,r4
	LD	r3,#1353646081
	ORL	r4,r4,r3
	ST.w	[r5+#3],r4
	JMP	lr
	.size	FLASH_Executive_Cmd_RAM, .-FLASH_Executive_Cmd_RAM
	.section .text$FLASH_Executive_Cmd
	.align	1
	.export	FLASH_Executive_Cmd
	.type	FLASH_Executive_Cmd, @function
FLASH_Executive_Cmd:
	LD	r5,#1075839232
	LD.w	r3,[r5+#3]
	LD	r4,#65534
	ANL	r4,r3,r4
	LD	r3,#1353646081
	ORL	r4,r4,r3
	ST.w	[r5+#3],r4
	JMP	lr
	.size	FLASH_Executive_Cmd, .-FLASH_Executive_Cmd
	.section .indata$FLASH_NonVolatile_Memory_ECC_Enable_RAM
	.align	1
	.export	FLASH_NonVolatile_Memory_ECC_Enable_RAM
	.type	FLASH_NonVolatile_Memory_ECC_Enable_RAM, @function
FLASH_NonVolatile_Memory_ECC_Enable_RAM:
	CMP	r0,#1
	JLS	.L95
.L94:
	JMP	.L94
.L95:
	LD	r5,#1075839252
	CMP	r0,#0
	JNZ	.L96
// inline asm begin
	// 559 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #7
// inline asm end
	JMP	lr
.L96:
// inline asm begin
	// 554 "../src/kf32f_basic_flash.c" 1
	SET [r5], #7
// inline asm end
	JMP	lr
	.size	FLASH_NonVolatile_Memory_ECC_Enable_RAM, .-FLASH_NonVolatile_Memory_ECC_Enable_RAM
	.section .indata$FLASH_Linear_Prefetch_Enable_RAM
	.align	1
	.export	FLASH_Linear_Prefetch_Enable_RAM
	.type	FLASH_Linear_Prefetch_Enable_RAM, @function
FLASH_Linear_Prefetch_Enable_RAM:
	CMP	r0,#1
	JLS	.L102
.L101:
	JMP	.L101
.L102:
	LD	r5,#1075839252
	CMP	r0,#0
	JNZ	.L103
// inline asm begin
	// 583 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #6
// inline asm end
	JMP	lr
.L103:
// inline asm begin
	// 578 "../src/kf32f_basic_flash.c" 1
	SET [r5], #6
// inline asm end
	JMP	lr
	.size	FLASH_Linear_Prefetch_Enable_RAM, .-FLASH_Linear_Prefetch_Enable_RAM
	.section .indata$FLASH_Period_Number_Config_RAM
	.align	1
	.export	FLASH_Period_Number_Config_RAM
	.type	FLASH_Period_Number_Config_RAM, @function
FLASH_Period_Number_Config_RAM:
	MOV	r4,#4
	LSR	r5,r0,r4
	CMP	r5,#0
	JZ	.L108
.L106:
	JMP	.L106
.L108:
	LD	r5,#1075839232
	LD.w	r3,[r5+#5]
	SUB	r0,r0,#1
	MOV	r4,#15
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#5],r0
	JMP	lr
	.size	FLASH_Period_Number_Config_RAM, .-FLASH_Period_Number_Config_RAM
	.section .indata$FLASH_Program_Addr_Config_RAM
	.align	1
	.export	FLASH_Program_Addr_Config_RAM
	.type	FLASH_Program_Addr_Config_RAM, @function
FLASH_Program_Addr_Config_RAM:
	MOV	r4,#20
	LSR	r5,r0,r4
	CMP	r5,#0
	JZ	.L113
.L111:
	JMP	.L111
.L113:
	LD	r5,#1075839232
	LD.w	r3,[r5+#7]
	LD	r4,#-1048576
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#7],r0
	JMP	lr
	.size	FLASH_Program_Addr_Config_RAM, .-FLASH_Program_Addr_Config_RAM
	.section .indata$FLASH_Get_Program_Status_RAM
	.align	1
	.export	FLASH_Get_Program_Status_RAM
	.type	FLASH_Get_Program_Status_RAM, @function
FLASH_Get_Program_Status_RAM:
	LD	r5,#1075839232
	LD.w	r0,[r5+#8]
	LSR	r0,#3
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	FLASH_Get_Program_Status_RAM, .-FLASH_Get_Program_Status_RAM
	.section .text$FLASH_Get_Program_Status
	.align	1
	.export	FLASH_Get_Program_Status
	.type	FLASH_Get_Program_Status, @function
FLASH_Get_Program_Status:
	LD	r5,#1075839232
	LD.w	r0,[r5+#8]
	LSR	r0,#3
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	FLASH_Get_Program_Status, .-FLASH_Get_Program_Status
	.section .indata$FLASH_Get_Wipe_Status_RAM
	.align	1
	.export	FLASH_Get_Wipe_Status_RAM
	.type	FLASH_Get_Wipe_Status_RAM, @function
FLASH_Get_Wipe_Status_RAM:
	LD	r5,#1075839232
	LD.w	r0,[r5+#8]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	FLASH_Get_Wipe_Status_RAM, .-FLASH_Get_Wipe_Status_RAM
	.section .text$FLASH_Get_Wipe_Status
	.align	1
	.export	FLASH_Get_Wipe_Status
	.type	FLASH_Get_Wipe_Status, @function
FLASH_Get_Wipe_Status:
	LD	r5,#1075839232
	LD.w	r0,[r5+#8]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	FLASH_Get_Wipe_Status, .-FLASH_Get_Wipe_Status
	.section .indata$FLASH_Get_Compute_Complete_Status_RAM
	.align	1
	.export	FLASH_Get_Compute_Complete_Status_RAM
	.type	FLASH_Get_Compute_Complete_Status_RAM, @function
FLASH_Get_Compute_Complete_Status_RAM:
	LD	r5,#1075839232
	LD.w	r0,[r5+#8]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	FLASH_Get_Compute_Complete_Status_RAM, .-FLASH_Get_Compute_Complete_Status_RAM
	.section .indata$FLASH_Clear_Compute_Complete_Status_RAM
	.align	1
	.export	FLASH_Clear_Compute_Complete_Status_RAM
	.type	FLASH_Clear_Compute_Complete_Status_RAM, @function
FLASH_Clear_Compute_Complete_Status_RAM:
	LD	r3,#1075839232
	LD.w	r5,[r3+#8]
	MOV	r4,#2
	ANL	r5,r5,r4
	JZ	.L119
	LD	r2,#1075839264
.L124:
// inline asm begin
	// 738 "../src/kf32f_basic_flash.c" 1
	SET [r2], #1
// inline asm end
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L124
.L119:
	JMP	lr
	.size	FLASH_Clear_Compute_Complete_Status_RAM, .-FLASH_Clear_Compute_Complete_Status_RAM
	.section .indata$FLASH_Get_CFG_Error_Flag_RAM
	.align	1
	.export	FLASH_Get_CFG_Error_Flag_RAM
	.type	FLASH_Get_CFG_Error_Flag_RAM, @function
FLASH_Get_CFG_Error_Flag_RAM:
	LD	r5,#1075839232
	LD.w	r0,[r5+#8]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	FLASH_Get_CFG_Error_Flag_RAM, .-FLASH_Get_CFG_Error_Flag_RAM
	.section .indata$FLASH_Clear_CFG_Error_Flag_RAM
	.align	1
	.export	FLASH_Clear_CFG_Error_Flag_RAM
	.type	FLASH_Clear_CFG_Error_Flag_RAM, @function
FLASH_Clear_CFG_Error_Flag_RAM:
	LD	r3,#1075839232
	LD.w	r5,[r3+#8]
	MOV	r4,#1
	ANL	r5,r5,r4
	JZ	.L128
	LD	r2,#1075839264
.L133:
// inline asm begin
	// 776 "../src/kf32f_basic_flash.c" 1
	SET [r2], #0
// inline asm end
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L133
.L128:
	JMP	lr
	.size	FLASH_Clear_CFG_Error_Flag_RAM, .-FLASH_Clear_CFG_Error_Flag_RAM
	.section .indata$FLASH_CheckSum_Addr_Config_RAM
	.align	1
	.export	FLASH_CheckSum_Addr_Config_RAM
	.type	FLASH_CheckSum_Addr_Config_RAM, @function
FLASH_CheckSum_Addr_Config_RAM:
	MOV	r4,#20
	LSR	r5,r0,r4
	CMP	r5,#0
	JZ	.L142
.L139:
	JMP	.L139
.L142:
	LSR	r5,r1,r4
	CMP	r5,#0
	JZ	.L143
.L140:
	JMP	.L140
.L143:
	LD	r5,#1075839232
	ST.w	[r5+#14],r0
	ST.w	[r5+#15],r1
	JMP	lr
	.size	FLASH_CheckSum_Addr_Config_RAM, .-FLASH_CheckSum_Addr_Config_RAM
	.section .indata$FLASH_Start_SIG_Compute_Enable_RAM
	.align	1
	.export	FLASH_Start_SIG_Compute_Enable_RAM
	.type	FLASH_Start_SIG_Compute_Enable_RAM, @function
FLASH_Start_SIG_Compute_Enable_RAM:
	CMP	r0,#1
	JLS	.L149
.L148:
	JMP	.L148
.L149:
	LD	r5,#1075839292
	CMP	r0,#0
	JNZ	.L150
// inline asm begin
	// 818 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #20
// inline asm end
	JMP	lr
.L150:
// inline asm begin
	// 813 "../src/kf32f_basic_flash.c" 1
	SET [r5], #20
// inline asm end
	JMP	lr
	.size	FLASH_Start_SIG_Compute_Enable_RAM, .-FLASH_Start_SIG_Compute_Enable_RAM
	.section .indata$FLASH_Get_CheckSum_Result_RAM
	.align	1
	.export	FLASH_Get_CheckSum_Result_RAM
	.type	FLASH_Get_CheckSum_Result_RAM, @function
FLASH_Get_CheckSum_Result_RAM:
	LD	r5,#1075839232
	LD.w	r4,[r5+#16]
	ST.w	[r0],r4
	LD.w	r4,[r5+#17]
	ST.w	[r0+#1],r4
	LD.w	r4,[r5+#18]
	ST.w	[r0+#2],r4
	LD.w	r5,[r5+#19]
	ST.w	[r0+#3],r5
	JMP	lr
	.size	FLASH_Get_CheckSum_Result_RAM, .-FLASH_Get_CheckSum_Result_RAM
	.section .indata$FLASH_Wipe_Configuration_RAM
	.align	1
	.export	FLASH_Wipe_Configuration_RAM
	.type	FLASH_Wipe_Configuration_RAM, @function
FLASH_Wipe_Configuration_RAM:
	CMP	r0,#2
	JLS	.L164
.L161:
	JMP	.L161
.L164:
	MOV	r4,#20
	LSR	r5,r1,r4
	CMP	r5,#0
	JZ	.L165
.L162:
	JMP	.L162
.L165:
	LD	r5,#1075839232
	LD	r4,#-2023406815
	ST.w	[r5+#10],r4
	LD	r4,#84148994
	ST.w	[r5+#10],r4
	LD	r4,#2023406814
	ST.w	[r5+#11],r4
	LD	r4,#370480147
	ST.w	[r5+#11],r4
	LD	r4,#-2019933218
	ST.w	[r5+#12],r4
	LD	r4,#656811300
	ST.w	[r5+#12],r4
	MOV	r4,#10
	CMP	r0,#2
	JZ	.L155
	ST.w	[r5+#7],r1
	MOV	r4,#27
	CMP	r0,#1
	JZ	.L166
.L155:
	LD	r3,#1075839232
	LD.w	r2,[r3+#2]
	MOV	r5,#31
	NOT	r5,r5
	ANL	r5,r2,r5
	ORL	r4,r4,r5
	ST.w	[r3+#2],r4
	LD.w	r4,[r3+#3]
	LD	r5,#65534
	ANL	r5,r4,r5
	LD	r4,#1353646081
	ORL	r5,r5,r4
	ST.w	[r3+#3],r5
	MOV	r4,#4
.L156:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L156
	LD	r5,#1075839232
// inline asm begin
	// 340 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #4
// inline asm end
	LD.w	r3,[r5]
	LD	r4,#65534
	ANL	r4,r3,r4
	LD	r3,#1353646081
	ORL	r4,r4,r3
	ST.w	[r5],r4
	LD.w	r3,[r5]
	LD	r4,#65533
	ANL	r4,r3,r4
	LD	r3,#1353646082
	ORL	r4,r4,r3
	ST.w	[r5],r4
	LD.w	r3,[r5]
	LD	r4,#65531
	ANL	r4,r3,r4
	LD	r3,#1353646084
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
.L166:
// inline asm begin
	// 896 "../src/kf32f_basic_flash.c" 1
	SET [r5], #4
// inline asm end
	JMP	.L155
	.size	FLASH_Wipe_Configuration_RAM, .-FLASH_Wipe_Configuration_RAM
	.section .text$FLASH_Wipe_Configuration
	.align	1
	.export	FLASH_Wipe_Configuration
	.type	FLASH_Wipe_Configuration, @function
FLASH_Wipe_Configuration:
	LD	r5,#1075839232
	LD	r4,#-2023406815
	ST.w	[r5+#10],r4
	LD	r4,#84148994
	ST.w	[r5+#10],r4
	LD	r4,#2023406814
	ST.w	[r5+#11],r4
	LD	r4,#370480147
	ST.w	[r5+#11],r4
	LD	r4,#-2019933218
	ST.w	[r5+#12],r4
	LD	r4,#656811300
	ST.w	[r5+#12],r4
	MOV	r4,#10
	CMP	r0,#2
	JZ	.L168
	ST.w	[r5+#7],r1
	MOV	r4,#27
	CMP	r0,#1
	JZ	.L174
.L168:
	LD	r3,#1075839232
	LD.w	r2,[r3+#2]
	MOV	r5,#31
	NOT	r5,r5
	ANL	r5,r2,r5
	ORL	r4,r4,r5
	ST.w	[r3+#2],r4
	LD.w	r4,[r3+#3]
	LD	r5,#65534
	ANL	r5,r4,r5
	LD	r4,#1353646081
	ORL	r5,r5,r4
	ST.w	[r3+#3],r5
	MOV	r4,#4
.L169:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L169
	LD	r5,#1075839232
// inline asm begin
	// 340 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #4
// inline asm end
	LD.w	r3,[r5]
	LD	r4,#65534
	ANL	r4,r3,r4
	LD	r3,#1353646081
	ORL	r4,r4,r3
	ST.w	[r5],r4
	LD.w	r3,[r5]
	LD	r4,#65533
	ANL	r4,r3,r4
	LD	r3,#1353646082
	ORL	r4,r4,r3
	ST.w	[r5],r4
	LD.w	r3,[r5]
	LD	r4,#65531
	ANL	r4,r3,r4
	LD	r3,#1353646084
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
.L174:
// inline asm begin
	// 982 "../src/kf32f_basic_flash.c" 1
	SET [r5], #4
// inline asm end
	JMP	.L168
	.size	FLASH_Wipe_Configuration, .-FLASH_Wipe_Configuration
	.section .indata$FLASH_Program_Configuration_RAM
	.align	1
	.export	FLASH_Program_Configuration_RAM
	.type	FLASH_Program_Configuration_RAM, @function
FLASH_Program_Configuration_RAM:
	PUSH	r6
	LD.w	r3,[r0]
	CMP	r3,#21
	JZ	.L176
	CMP	r3,#5
	JZ	.L176
.L199:
	JMP	.L199
.L176:
	LD.w	r2,[r0+#1]
	CMP	r2,#1
	JLS	.L206
.L201:
	JMP	.L201
.L206:
	LD.w	r4,[r0+#2]
	MOV	r1,#20
	LSR	r5,r4,r1
	CMP	r5,#0
	JZ	.L207
.L200:
	JMP	.L200
.L207:
	LD.w	r1,[r0+#3]
	MOV	r6,#6
	LSR	r5,r1,r6
	CMP	r5,#0
	JZ	.L208
.L202:
	JMP	.L202
.L208:
	LD	r5,#1075839232
	LD	r6,#-2023406815
	ST.w	[r5+#10],r6
	LD	r6,#84148994
	ST.w	[r5+#10],r6
	LD	r6,#-2019933218
	ST.w	[r5+#12],r6
	LD	r6,#656811300
	ST.w	[r5+#12],r6
	LD	r6,#2023406814
	ST.w	[r5+#11],r6
	LD	r6,#370480147
	ST.w	[r5+#11],r6
// inline asm begin
	// 1059 "../src/kf32f_basic_flash.c" 1
	SET [r5], #3
// inline asm end
	CMP	r2,#0
	JZ	.L181
// inline asm begin
	// 1064 "../src/kf32f_basic_flash.c" 1
	SET [r5], #4
// inline asm end
.L181:
	LD.w	r0,[r0+#4]
	CMP	r3,#21
	JZ	.L182
	LD	r2,#1075839232
	LD.w	r6,[r2+#2]
	LSL	r1,#5
	LD	r5,#-2048
	ANL	r5,r6,r5
	ORL	r1,r1,r5
	ORL	r3,r1,r3
	ST.w	[r2+#2],r3
	LD.w	r3,[r2+#3]
	LD	r5,#65534
	ANL	r3,r3,r5
	LD	r5,#1353646081
	ORL	r5,r3,r5
	ST.w	[r2+#3],r5
	MOV	r1,#1
	LSL	r1,#9
	ADD	r1,r4,r1
	SUB	r0,r0,r4
	MOV	r3,#8
.L187:
	LD.w	r5,[r0+r4]
// inline asm begin
	// 1089 "../src/kf32f_basic_flash.c" 1
	ST.w [r4], r5
// inline asm end
	ADD	r5,r4,#4
	ADD	r6,r0,r4
	LD.w	r6,[r6+#1]
// inline asm begin
	// 1092 "../src/kf32f_basic_flash.c" 1
	ST.w [r5], r6
// inline asm end
	ADD	r4,#8
.L183:
	LD.w	r5,[r2+#8]
	ANL	r5,r5,r3
	JNZ	.L183
	CMP	r4,r1
	JNZ	.L187
.L185:
	LD	r3,#1075839232
	MOV	r4,#4
.L193:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L193
	LD	r5,#1075839232
// inline asm begin
	// 340 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #4
	// 314 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #3
// inline asm end
	LD.w	r3,[r5]
	LD	r4,#65534
	ANL	r3,r3,r4
	LD	r4,#1353646081
	ORL	r4,r3,r4
	ST.w	[r5],r4
	LD.w	r3,[r5]
	LD	r4,#65533
	ANL	r3,r3,r4
	LD	r4,#1353646082
	ORL	r4,r3,r4
	ST.w	[r5],r4
	LD.w	r3,[r5]
	LD	r4,#65531
	ANL	r3,r3,r4
	LD	r4,#1353646084
	ORL	r4,r3,r4
	ST.w	[r5],r4
	POP	r6
	JMP	lr
.L182:
	LD	r5,#1075839232
	LD.w	r1,[r5+#2]
	MOV	r2,#31
	NOT	r2,r2
	ANL	r2,r1,r2
	ORL	r3,r2,r3
	ST.w	[r5+#2],r3
	LD.w	r5,[r0]
// inline asm begin
	// 1108 "../src/kf32f_basic_flash.c" 1
	ST.w [r4], r5
// inline asm end
	ADD	r4,r4,#4
	LD.w	r5,[r0+#1]
// inline asm begin
	// 1111 "../src/kf32f_basic_flash.c" 1
	ST.w [r4], r5
// inline asm end
	LD	r5,#1075839232
	LD.w	r3,[r5+#3]
	LD	r4,#65534
	ANL	r3,r3,r4
	LD	r4,#1353646081
	ORL	r4,r3,r4
	ST.w	[r5+#3],r4
	JMP	.L185
	.size	FLASH_Program_Configuration_RAM, .-FLASH_Program_Configuration_RAM
	.section .text$FLASH_Program_Configuration
	.align	1
	.export	FLASH_Program_Configuration
	.type	FLASH_Program_Configuration, @function
FLASH_Program_Configuration:
	PUSH	r6
	LD	r5,#1075839232
	LD	r4,#-2023406815
	ST.w	[r5+#10],r4
	LD	r4,#84148994
	ST.w	[r5+#10],r4
	LD	r4,#-2019933218
	ST.w	[r5+#12],r4
	LD	r4,#656811300
	ST.w	[r5+#12],r4
	LD	r4,#2023406814
	ST.w	[r5+#11],r4
	LD	r4,#370480147
	ST.w	[r5+#11],r4
// inline asm begin
	// 1165 "../src/kf32f_basic_flash.c" 1
	SET [r5], #3
// inline asm end
	LD.w	r5,[r0+#1]
	CMP	r5,#0
	JZ	.L210
	LD	r5,#1075839232
// inline asm begin
	// 1170 "../src/kf32f_basic_flash.c" 1
	SET [r5], #4
// inline asm end
.L210:
	LD.w	r4,[r0+#2]
	LD.w	r3,[r0+#4]
	LD.w	r5,[r0]
	LD	r2,#1075839232
	CMP	r5,#21
	JZ	.L211
	LD.w	r6,[r2+#2]
	LD.w	r0,[r0+#3]
	LSL	r0,#5
	LD	r1,#-2048
	ANL	r1,r6,r1
	ORL	r1,r0,r1
	ORL	r5,r1,r5
	ST.w	[r2+#2],r5
	LD.w	r1,[r2+#3]
	LD	r5,#65534
	ANL	r1,r1,r5
	LD	r5,#1353646081
	ORL	r5,r1,r5
	ST.w	[r2+#3],r5
	MOV	r1,#1
	LSL	r1,#9
	ADD	r1,r4,r1
	SUB	r0,r3,r4
	MOV	r3,#8
.L216:
	LD.w	r5,[r0+r4]
// inline asm begin
	// 1195 "../src/kf32f_basic_flash.c" 1
	ST.w [r4], r5
// inline asm end
	ADD	r5,r4,#4
	ADD	r6,r0,r4
	LD.w	r6,[r6+#1]
// inline asm begin
	// 1198 "../src/kf32f_basic_flash.c" 1
	ST.w [r5], r6
// inline asm end
	ADD	r4,#8
.L212:
	LD.w	r5,[r2+#8]
	ANL	r5,r5,r3
	JNZ	.L212
	CMP	r4,r1
	JNZ	.L216
.L214:
	LD	r3,#1075839232
	MOV	r4,#4
.L220:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L220
	LD	r5,#1075839232
// inline asm begin
	// 365 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #4
	// 314 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #3
// inline asm end
	LD.w	r3,[r5]
	LD	r4,#65534
	ANL	r3,r3,r4
	LD	r4,#1353646081
	ORL	r4,r3,r4
	ST.w	[r5],r4
	LD.w	r3,[r5]
	LD	r4,#65533
	ANL	r3,r3,r4
	LD	r4,#1353646082
	ORL	r4,r3,r4
	ST.w	[r5],r4
	LD.w	r3,[r5]
	LD	r4,#65531
	ANL	r3,r3,r4
	LD	r4,#1353646084
	ORL	r4,r3,r4
	ST.w	[r5],r4
	POP	r6
	JMP	lr
.L211:
	LD.w	r0,[r2+#2]
	MOV	r1,#31
	NOT	r1,r1
	ANL	r1,r0,r1
	ORL	r5,r1,r5
	ST.w	[r2+#2],r5
	LD.w	r5,[r3]
// inline asm begin
	// 1214 "../src/kf32f_basic_flash.c" 1
	ST.w [r4], r5
// inline asm end
	ADD	r4,r4,#4
	LD.w	r5,[r3+#1]
// inline asm begin
	// 1217 "../src/kf32f_basic_flash.c" 1
	ST.w [r4], r5
// inline asm end
	LD	r5,#1075839232
	LD.w	r3,[r5+#3]
	LD	r4,#65534
	ANL	r3,r3,r4
	LD	r4,#1353646081
	ORL	r4,r3,r4
	ST.w	[r5+#3],r4
	JMP	.L214
	.size	FLASH_Program_Configuration, .-FLASH_Program_Configuration
	.section .indata$Read_Flash_or_CFR_RAM
	.align	1
	.export	Read_Flash_or_CFR_RAM
	.type	Read_Flash_or_CFR_RAM, @function
Read_Flash_or_CFR_RAM:
	CMP	r1,#1
	JLS	.L233
.L231:
	JMP	.L231
.L233:
	LD	r5,#1075839232
	LD	r4,#-2023406815
	ST.w	[r5+#10],r4
	LD	r4,#84148994
	ST.w	[r5+#10],r4
	LD	r4,#-2019933218
	ST.w	[r5+#12],r4
	LD	r4,#656811300
	ST.w	[r5+#12],r4
	LD	r4,#2023406814
	ST.w	[r5+#11],r4
	LD	r4,#370480147
	ST.w	[r5+#11],r4
	CMP	r1,#1
	JNZ	.L234
// inline asm begin
	// 335 "../src/kf32f_basic_flash.c" 1
	SET [r5], #4
// inline asm end
	LD.w	r0,[r0]
	LD	r5,#read_data
	ST.w	[r5],r0
	LD	r5,#1075839232
// inline asm begin
	// 340 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #4
// inline asm end
.L230:
	LD	r5,#1075839232
	LD.w	r3,[r5]
	LD	r4,#65534
	ANL	r4,r3,r4
	LD	r3,#1353646081
	ORL	r4,r4,r3
	ST.w	[r5],r4
	LD.w	r3,[r5]
	LD	r4,#65533
	ANL	r4,r3,r4
	LD	r3,#1353646082
	ORL	r4,r4,r3
	ST.w	[r5],r4
	LD.w	r3,[r5]
	LD	r4,#65531
	ANL	r4,r3,r4
	LD	r3,#1353646084
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
.L234:
	LD.w	r0,[r0]
	LD	r5,#read_data
	ST.w	[r5],r0
	JMP	.L230
	.size	Read_Flash_or_CFR_RAM, .-Read_Flash_or_CFR_RAM
	.section .text$Read_Flash_or_CFR
	.align	1
	.export	Read_Flash_or_CFR
	.type	Read_Flash_or_CFR, @function
Read_Flash_or_CFR:
	LD	r5,#1075839232
	LD	r4,#-2023406815
	ST.w	[r5+#10],r4
	LD	r4,#84148994
	ST.w	[r5+#10],r4
	LD	r4,#-2019933218
	ST.w	[r5+#12],r4
	LD	r4,#656811300
	ST.w	[r5+#12],r4
	LD	r4,#2023406814
	ST.w	[r5+#11],r4
	LD	r4,#370480147
	ST.w	[r5+#11],r4
	CMP	r1,#1
	JZ	.L236
	LD.w	r0,[r0]
	LD	r5,#read_data
	ST.w	[r5],r0
.L237:
	LD	r5,#1075839232
	LD.w	r3,[r5]
	LD	r4,#65534
	ANL	r4,r3,r4
	LD	r3,#1353646081
	ORL	r4,r4,r3
	ST.w	[r5],r4
	LD.w	r3,[r5]
	LD	r4,#65533
	ANL	r4,r3,r4
	LD	r3,#1353646082
	ORL	r4,r4,r3
	ST.w	[r5],r4
	LD.w	r3,[r5]
	LD	r4,#65531
	ANL	r4,r3,r4
	LD	r3,#1353646084
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
.L236:
// inline asm begin
	// 335 "../src/kf32f_basic_flash.c" 1
	SET [r5], #4
// inline asm end
	LD.w	r0,[r0]
	LD	r5,#read_data
	ST.w	[r5],r0
	LD	r5,#1075839232
// inline asm begin
	// 340 "../src/kf32f_basic_flash.c" 1
	CLR [r5], #4
// inline asm end
	JMP	.L237
	.size	Read_Flash_or_CFR, .-Read_Flash_or_CFR
	.comm	read_data,4
