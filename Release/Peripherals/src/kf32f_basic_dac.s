	.file	"kf32f_basic_dac.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$DAC_Reset
	.type	.text$DAC_Reset$scode_local_1, @function
	.text$DAC_Reset$scode_local_1:
	.align	1
	.export	DAC_Reset
	.type	DAC_Reset, @function
DAC_Reset:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
	PUSH	lr
	.cfi_def_cfa_offset 4
.LM2:
	LD	r5,#1073743616
	CMP	r0,r5
	JZ	.L5
.LM3:
	LD	r5,#1073743744
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
	LSL	r0,#15
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL4:
.LM6:
	MOV	r0,#1
	LSL	r0,#15
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL5:
.LM7:
	MOV	r0,#1
	LSL	r0,#15
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
	LSL	r0,#14
	MOV	r1,#1
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL9:
.LM10:
	MOV	r0,#1
	LSL	r0,#14
	MOV	r1,#0
	LJMP	RST_CTL1_Peripheral_Reset_Enable
.LVL10:
.LM11:
	MOV	r0,#1
	LSL	r0,#14
	MOV	r1,#1
	LJMP	PCLK_CTL1_Peripheral_Clock_Enable
.LVL11:
	JMP	.L1
	.cfi_endproc
.LFE1:
	.size	DAC_Reset, .-DAC_Reset
	.section .text$DAC_Configuration
	.type	.text$DAC_Configuration$scode_local_2, @function
	.text$DAC_Configuration$scode_local_2:
	.align	1
	.export	DAC_Configuration
	.type	DAC_Configuration, @function
DAC_Configuration:
.LFB2:
.LM12:
	.cfi_startproc
.LVL12:
.LM13:
	LD.w	r3,[r0]
.LVL13:
.LM14:
	LD.w	r2,[r1+#3]
	LD.w	r5,[r1+#1]
	ORL	r4,r2,r5
.LM15:
	LD.w	r2,[r1+#4]
	ORL	r4,r4,r2
.LM16:
	LDP.w	r2,[r1]	<<	#3
.LM17:
	ORL	r4,r4,r2
	LD.w	r5,[r1+#2]
	ADD	r5,r5,r5
.LM18:
	ORL	r5,r4,r5
.LBB10:
.LBB11:
.LM19:
	LD	r4,#-16379
	ANL	r4,r3,r4
	ORL	r5,r5,r4
.LBE11:
.LBE10:
.LM20:
	ST.w	[r0],r5
.LVL14:
.LM21:
	LD.w	r3,[r0+#3]
.LVL15:
.LM22:
	LD.w	r4,[r1+#5]
	LD.w	r2,[r1+#6]
	ORL	r5,r4,r2
.LM23:
	LD.w	r4,[r1+#7]
	ORL	r5,r5,r4
.LM24:
	LD.w	r2,[r1+#9]
	ORL	r5,r5,r2
	LD.w	r4,[r1+#8]
	LSL	r4,#6
.LM25:
	ORL	r5,r5,r4
.LBB12:
.LBB13:
.LM26:
	MOV	r4,#83
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r5,r5,r4
.LBE13:
.LBE12:
.LM27:
	ST.w	[r0+#3],r5
.LVL16:
.LM28:
	LD.w	r4,[r0+#1]
.LVL17:
.LBB14:
.LBB15:
.LM29:
	LD	r5,#-4096
	ANL	r5,r4,r5
	LD.w	r4,[r1+#10]
.LVL18:
	ORL	r5,r5,r4
.LBE15:
.LBE14:
.LM30:
	ST.w	[r0+#1],r5
.LM31:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	DAC_Configuration, .-DAC_Configuration
	.section .text$DAC_Struct_Init
	.type	.text$DAC_Struct_Init$scode_local_3, @function
	.text$DAC_Struct_Init$scode_local_3:
	.align	1
	.export	DAC_Struct_Init
	.type	DAC_Struct_Init, @function
DAC_Struct_Init:
.LFB3:
.LM32:
	.cfi_startproc
.LVL19:
.LM33:
	MOV	r5,#0
	ST.w	[r0],r5
.LM34:
	ST.w	[r0+#1],r5
.LM35:
	ST.w	[r0+#2],r5
.LM36:
	ST.w	[r0+#3],r5
.LM37:
	ST.w	[r0+#4],r5
.LM38:
	ST.w	[r0+#5],r5
.LM39:
	ST.w	[r0+#6],r5
.LM40:
	ST.w	[r0+#7],r5
.LM41:
	ST.w	[r0+#8],r5
.LM42:
	ST.w	[r0+#9],r5
.LM43:
	ST.w	[r0+#10],r5
.LM44:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	DAC_Struct_Init, .-DAC_Struct_Init
	.section .text$DAC_Cmd
	.type	.text$DAC_Cmd$scode_local_4, @function
	.text$DAC_Cmd$scode_local_4:
	.align	1
	.export	DAC_Cmd
	.type	DAC_Cmd, @function
DAC_Cmd:
.LFB4:
.LM45:
	.cfi_startproc
.LVL20:
.LM46:
	CMP	r1,#0
	JNZ	.L12
.LM47:
// inline asm begin
	// 185 "../Peripherals/src/kf32f_basic_dac.c" 1
	CLR [r0], #0
	// 0 "" 2
.LM48:
// inline asm end
	JMP	lr
.L12:
.LM49:
// inline asm begin
	// 180 "../Peripherals/src/kf32f_basic_dac.c" 1
	SET [r0], #0
	// 0 "" 2
.LM50:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	DAC_Cmd, .-DAC_Cmd
	.section .text$DAC_Software_Trigger_Cmd
	.type	.text$DAC_Software_Trigger_Cmd$scode_local_5, @function
	.text$DAC_Software_Trigger_Cmd$scode_local_5:
	.align	1
	.export	DAC_Software_Trigger_Cmd
	.type	DAC_Software_Trigger_Cmd, @function
DAC_Software_Trigger_Cmd:
.LFB5:
.LM51:
	.cfi_startproc
.LVL21:
.LM52:
	CMP	r1,#0
	JNZ	.L16
.LM53:
// inline asm begin
	// 211 "../Peripherals/src/kf32f_basic_dac.c" 1
	CLR [r0], #14
	// 0 "" 2
.LM54:
// inline asm end
	JMP	lr
.L16:
.LM55:
// inline asm begin
	// 206 "../Peripherals/src/kf32f_basic_dac.c" 1
	SET [r0], #14
	// 0 "" 2
.LM56:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	DAC_Software_Trigger_Cmd, .-DAC_Software_Trigger_Cmd
	.section .text$DAC_DMA_Cmd
	.type	.text$DAC_DMA_Cmd$scode_local_6, @function
	.text$DAC_DMA_Cmd$scode_local_6:
	.align	1
	.export	DAC_DMA_Cmd
	.type	DAC_DMA_Cmd, @function
DAC_DMA_Cmd:
.LFB6:
.LM57:
	.cfi_startproc
.LVL22:
.LM58:
	CMP	r1,#0
	JNZ	.L20
.LM59:
// inline asm begin
	// 237 "../Peripherals/src/kf32f_basic_dac.c" 1
	CLR [r0], #1
	// 0 "" 2
.LM60:
// inline asm end
	JMP	lr
.L20:
.LM61:
// inline asm begin
	// 232 "../Peripherals/src/kf32f_basic_dac.c" 1
	SET [r0], #1
	// 0 "" 2
.LM62:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	DAC_DMA_Cmd, .-DAC_DMA_Cmd
	.section .text$DAC_Output_Buffer_Config
	.type	.text$DAC_Output_Buffer_Config$scode_local_7, @function
	.text$DAC_Output_Buffer_Config$scode_local_7:
	.align	1
	.export	DAC_Output_Buffer_Config
	.type	DAC_Output_Buffer_Config, @function
DAC_Output_Buffer_Config:
.LFB7:
.LM63:
	.cfi_startproc
.LVL23:
.LM64:
	ADD	r0,#12
.LVL24:
.LM65:
	CMP	r1,#0
	JNZ	.L24
.LM66:
// inline asm begin
	// 263 "../Peripherals/src/kf32f_basic_dac.c" 1
	CLR [r0], #6
	// 0 "" 2
.LM67:
// inline asm end
	JMP	lr
.L24:
.LM68:
// inline asm begin
	// 258 "../Peripherals/src/kf32f_basic_dac.c" 1
	SET [r0], #6
	// 0 "" 2
.LM69:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	DAC_Output_Buffer_Config, .-DAC_Output_Buffer_Config
	.section .text$DAC_Output_Port_Config
	.type	.text$DAC_Output_Port_Config$scode_local_8, @function
	.text$DAC_Output_Port_Config$scode_local_8:
	.align	1
	.export	DAC_Output_Port_Config
	.type	DAC_Output_Port_Config, @function
DAC_Output_Port_Config:
.LFB8:
.LM70:
	.cfi_startproc
.LVL25:
.LM71:
	ADD	r0,#12
.LVL26:
.LM72:
	CMP	r1,#0
	JNZ	.L28
.LM73:
// inline asm begin
	// 289 "../Peripherals/src/kf32f_basic_dac.c" 1
	CLR [r0], #0
	// 0 "" 2
.LM74:
// inline asm end
	JMP	lr
.L28:
.LM75:
// inline asm begin
	// 284 "../Peripherals/src/kf32f_basic_dac.c" 1
	SET [r0], #0
	// 0 "" 2
.LM76:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE8:
	.size	DAC_Output_Port_Config, .-DAC_Output_Port_Config
	.section .text$DAC_Write_Output_Data
	.type	.text$DAC_Write_Output_Data$scode_local_9, @function
	.text$DAC_Write_Output_Data$scode_local_9:
	.align	1
	.export	DAC_Write_Output_Data
	.type	DAC_Write_Output_Data, @function
DAC_Write_Output_Data:
.LFB9:
.LM77:
	.cfi_startproc
.LVL27:
.LM78:
	ST.w	[r0+#1],r1
.LM79:
	JMP	lr
	.cfi_endproc
.LFE9:
	.size	DAC_Write_Output_Data, .-DAC_Write_Output_Data
	.section .text$DAC_Read_Output_Data
	.type	.text$DAC_Read_Output_Data$scode_local_10, @function
	.text$DAC_Read_Output_Data$scode_local_10:
	.align	1
	.export	DAC_Read_Output_Data
	.type	DAC_Read_Output_Data, @function
DAC_Read_Output_Data:
.LFB10:
.LM80:
	.cfi_startproc
.LVL28:
.LM81:
	LD.w	r0,[r0+#2]
.LVL29:
.LM82:
	LD	r5,#4095
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE10:
	.size	DAC_Read_Output_Data, .-DAC_Read_Output_Data
	.section .text$DAC_Calibration_Config
	.type	.text$DAC_Calibration_Config$scode_local_11, @function
	.text$DAC_Calibration_Config$scode_local_11:
	.align	1
	.export	DAC_Calibration_Config
	.type	DAC_Calibration_Config, @function
DAC_Calibration_Config:
.LFB11:
.LM83:
	.cfi_startproc
.LVL30:
.LM84:
	LD.w	r3,[r0+#5]
.LVL31:
.LM85:
	LD.w	r4,[r1+#1]
	LSL	r4,#24
.LM86:
	LD.w	r5,[r1]
	LSL	r5,#28
	ORL	r5,r4,r5
.LM87:
	LD.w	r4,[r1+#2]
	LSL	r4,#20
.LM88:
	ORL	r5,r5,r4
.LM89:
	LD.w	r4,[r1+#3]
	LSL	r4,#16
.LM90:
	ORL	r5,r5,r4
.LM91:
	LD.w	r4,[r1+#4]
	LSL	r4,#15
.LM92:
	ORL	r5,r5,r4
.LVL32:
.LBB16:
.LBB17:
.LM93:
	LD	r4,#32767
	ANL	r4,r3,r4
	ORL	r5,r5,r4
.LVL33:
.LBE17:
.LBE16:
.LM94:
	ST.w	[r0+#5],r5
.LM95:
	JMP	lr
	.cfi_endproc
.LFE11:
	.size	DAC_Calibration_Config, .-DAC_Calibration_Config
	.section .text$DAC_Calibration_Struct_Init
	.type	.text$DAC_Calibration_Struct_Init$scode_local_12, @function
	.text$DAC_Calibration_Struct_Init$scode_local_12:
	.align	1
	.export	DAC_Calibration_Struct_Init
	.type	DAC_Calibration_Struct_Init, @function
DAC_Calibration_Struct_Init:
.LFB12:
.LM96:
	.cfi_startproc
.LVL34:
.LM97:
	MOV	r5,#0
	ST.w	[r0],r5
.LM98:
	ST.w	[r0+#1],r5
.LM99:
	ST.w	[r0+#2],r5
.LM100:
	ST.w	[r0+#3],r5
.LM101:
	ST.w	[r0+#4],r5
.LM102:
	JMP	lr
	.cfi_endproc
.LFE12:
	.size	DAC_Calibration_Struct_Init, .-DAC_Calibration_Struct_Init
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_13, @function
	.debug_info$scode_local_13:
.Ldebug_info0:
	.long	0x5ef
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF55
	.byte	0x1
	.long	.LASF56
	.long	.LASF57
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
	.uleb128 0x7
	.long	0x98
	.uleb128 0x8
	.long	0x53
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x9
	.long	.LASF58
	.byte	0x18
	.byte	0x2
	.short	0x190c
	.long	0x100
	.uleb128 0xa
	.string	"CTL"
	.byte	0x2
	.short	0x190d
	.long	0x98
	.byte	0
	.uleb128 0xb
	.long	.LASF13
	.byte	0x2
	.short	0x190e
	.long	0x98
	.byte	0x4
	.uleb128 0xb
	.long	.LASF14
	.byte	0x2
	.short	0x190f
	.long	0x93
	.byte	0x8
	.uleb128 0xb
	.long	.LASF15
	.byte	0x2
	.short	0x1910
	.long	0x98
	.byte	0xc
	.uleb128 0xb
	.long	.LASF16
	.byte	0x2
	.short	0x1911
	.long	0x53
	.byte	0x10
	.uleb128 0xa
	.string	"CAL"
	.byte	0x2
	.short	0x1912
	.long	0x98
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	.LASF17
	.byte	0x2
	.short	0x1913
	.long	0xa4
	.uleb128 0xd
	.byte	0x2c
	.byte	0x4
	.byte	0x1c
	.long	0x199
	.uleb128 0xe
	.long	.LASF18
	.byte	0x4
	.byte	0x1e
	.long	0x88
	.byte	0
	.uleb128 0xe
	.long	.LASF19
	.byte	0x4
	.byte	0x20
	.long	0x53
	.byte	0x4
	.uleb128 0xe
	.long	.LASF20
	.byte	0x4
	.byte	0x22
	.long	0x88
	.byte	0x8
	.uleb128 0xe
	.long	.LASF21
	.byte	0x4
	.byte	0x24
	.long	0x53
	.byte	0xc
	.uleb128 0xe
	.long	.LASF22
	.byte	0x4
	.byte	0x26
	.long	0x53
	.byte	0x10
	.uleb128 0xe
	.long	.LASF23
	.byte	0x4
	.byte	0x28
	.long	0x53
	.byte	0x14
	.uleb128 0xe
	.long	.LASF24
	.byte	0x4
	.byte	0x2a
	.long	0x53
	.byte	0x18
	.uleb128 0xe
	.long	.LASF25
	.byte	0x4
	.byte	0x2c
	.long	0x53
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF26
	.byte	0x4
	.byte	0x2e
	.long	0x88
	.byte	0x20
	.uleb128 0xe
	.long	.LASF27
	.byte	0x4
	.byte	0x30
	.long	0x53
	.byte	0x24
	.uleb128 0xe
	.long	.LASF28
	.byte	0x4
	.byte	0x32
	.long	0x53
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.long	.LASF29
	.byte	0x4
	.byte	0x34
	.long	0x10c
	.uleb128 0xd
	.byte	0x14
	.byte	0x4
	.byte	0x39
	.long	0x1e9
	.uleb128 0xe
	.long	.LASF30
	.byte	0x4
	.byte	0x3b
	.long	0x53
	.byte	0
	.uleb128 0xe
	.long	.LASF31
	.byte	0x4
	.byte	0x3d
	.long	0x53
	.byte	0x4
	.uleb128 0xe
	.long	.LASF32
	.byte	0x4
	.byte	0x3f
	.long	0x53
	.byte	0x8
	.uleb128 0xe
	.long	.LASF33
	.byte	0x4
	.byte	0x41
	.long	0x53
	.byte	0xc
	.uleb128 0xe
	.long	.LASF34
	.byte	0x4
	.byte	0x43
	.long	0x53
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF35
	.byte	0x4
	.byte	0x45
	.long	0x1a4
	.uleb128 0xf
	.long	.LASF59
	.byte	0x2
	.short	0x3416
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x22b
	.uleb128 0x10
	.long	.LASF36
	.byte	0x2
	.short	0x3416
	.long	0x53
	.uleb128 0x10
	.long	.LASF37
	.byte	0x2
	.short	0x3416
	.long	0x53
	.uleb128 0x10
	.long	.LASF38
	.byte	0x2
	.short	0x3416
	.long	0x53
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2d3
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.byte	0x33
	.long	0x2d3
	.long	.LLST0
	.uleb128 0x13
	.long	.LVL4
	.long	0x268
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
	.short	0x8000
	.byte	0
	.uleb128 0x13
	.long	.LVL5
	.long	0x27e
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
	.short	0x8000
	.byte	0
	.uleb128 0x13
	.long	.LVL6
	.long	0x294
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
	.short	0x8000
	.byte	0
	.uleb128 0x13
	.long	.LVL9
	.long	0x2aa
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
	.short	0x4000
	.byte	0
	.uleb128 0x13
	.long	.LVL10
	.long	0x2c0
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
	.short	0x4000
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
	.short	0x4000
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.long	0x100
	.uleb128 0x11
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3c4
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.byte	0x51
	.long	0x2d3
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF42
	.byte	0x1
	.byte	0x51
	.long	0x3c4
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.long	.LASF54
	.byte	0x1
	.byte	0x53
	.long	0x53
	.long	.LLST1
	.uleb128 0x19
	.long	0x1f4
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.byte	0x6e
	.long	0x35d
	.uleb128 0x1a
	.long	0x21e
	.byte	0x18
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 16
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.uleb128 0x1b
	.long	0x212
	.sleb128 -16379
	.uleb128 0x1c
	.long	0x206
	.long	.LLST2
	.byte	0
	.uleb128 0x19
	.long	0x1f4
	.long	.LBB12
	.long	.LBE12
	.byte	0x1
	.byte	0x7b
	.long	0x39b
	.uleb128 0x1a
	.long	0x21e
	.byte	0x16
	.byte	0x71
	.sleb128 32
	.byte	0x6
	.byte	0x36
	.byte	0x24
	.byte	0x71
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 24
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 28
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 36
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.uleb128 0x1b
	.long	0x212
	.sleb128 -84
	.uleb128 0x1a
	.long	0x206
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1d
	.long	0x1f4
	.long	.LBB14
	.long	.LBE14
	.byte	0x1
	.byte	0x80
	.uleb128 0x1a
	.long	0x21e
	.byte	0x2
	.byte	0x71
	.sleb128 40
	.uleb128 0x1b
	.long	0x212
	.sleb128 -4096
	.uleb128 0x1c
	.long	0x206
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.long	0x199
	.uleb128 0x11
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3f0
	.uleb128 0x17
	.long	.LASF42
	.byte	0x1
	.byte	0x89
	.long	0x3c4
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x423
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.byte	0xab
	.long	0x2d3
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.byte	0xab
	.long	0x88
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x456
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.byte	0xc5
	.long	0x2d3
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.byte	0xc5
	.long	0x88
	.byte	0x1
	.byte	0x51
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
	.long	0x489
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.byte	0xdf
	.long	0x2d3
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.byte	0xdf
	.long	0x88
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4be
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.byte	0xf9
	.long	0x2d3
	.long	.LLST4
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.byte	0xf9
	.long	0x88
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.short	0x113
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4f6
	.uleb128 0x1f
	.long	.LASF41
	.byte	0x1
	.short	0x113
	.long	0x2d3
	.long	.LLST5
	.uleb128 0x20
	.long	.LASF45
	.byte	0x1
	.short	0x113
	.long	0x88
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.short	0x136
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x52c
	.uleb128 0x20
	.long	.LASF41
	.byte	0x1
	.short	0x136
	.long	0x2d3
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	.LASF51
	.byte	0x1
	.short	0x136
	.long	0x53
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.short	0x145
	.byte	0x1
	.long	0x53
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x55a
	.uleb128 0x1f
	.long	.LASF41
	.byte	0x1
	.short	0x145
	.long	0x2d3
	.long	.LLST6
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.short	0x15d
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5c8
	.uleb128 0x20
	.long	.LASF41
	.byte	0x1
	.short	0x15d
	.long	0x2d3
	.byte	0x1
	.byte	0x50
	.uleb128 0x20
	.long	.LASF53
	.byte	0x1
	.short	0x15d
	.long	0x5c8
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.long	.LASF54
	.byte	0x1
	.short	0x15f
	.long	0x53
	.long	.LLST7
	.uleb128 0x23
	.long	0x1f4
	.long	.LBB16
	.long	.LBE16
	.byte	0x1
	.short	0x173
	.uleb128 0x1c
	.long	0x21e
	.long	.LLST8
	.uleb128 0x24
	.long	0x212
	.short	0x7fff
	.uleb128 0x1a
	.long	0x206
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.long	0x1e9
	.uleb128 0x25
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.short	0x17c
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.long	.LASF53
	.byte	0x1
	.short	0x17c
	.long	0x5c8
	.byte	0x1
	.byte	0x50
	.byte	0
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_14, @function
	.debug_abbrev$scode_local_14:
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0xa
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
	.type	.debug_loc$scode_local_15, @function
	.debug_loc$scode_local_15:
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
	.short	0x18
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 16
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL14
	.long	.LVL16
	.short	0x16
	.byte	0x71
	.sleb128 32
	.byte	0x6
	.byte	0x36
	.byte	0x24
	.byte	0x71
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 24
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 28
	.byte	0x6
	.byte	0x21
	.byte	0x71
	.sleb128 36
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL16
	.long	.LFE2
	.short	0x2
	.byte	0x71
	.sleb128 40
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
	.long	.LVL17
	.long	.LVL18
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST4:
	.long	.LVL23
	.long	.LVL24
	.short	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LFE7
	.short	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL25
	.long	.LVL26
	.short	0x1
	.byte	0x50
	.long	.LVL26
	.long	.LFE8
	.short	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL28
	.long	.LVL29
	.short	0x1
	.byte	0x50
	.long	.LVL29
	.long	.LFE10
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL30
	.long	.LVL32
	.short	0x1e
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x48
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x4c
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x44
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 16
	.byte	0x6
	.byte	0x3f
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.short	0x1
	.byte	0x55
	.long	.LVL33
	.long	.LFE11
	.short	0x1e
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x48
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x4c
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x44
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 16
	.byte	0x6
	.byte	0x3f
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL31
	.long	.LVL32
	.short	0x1e
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x48
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x4c
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x44
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 16
	.byte	0x6
	.byte	0x3f
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.short	0x1
	.byte	0x55
	.long	.LVL33
	.long	.LFE11
	.short	0x1e
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x48
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x4c
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x44
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 12
	.byte	0x6
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x71
	.sleb128 16
	.byte	0x6
	.byte	0x3f
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_16, @function
	.debug_aranges$scode_local_16:
	.long	0x74
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
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_17, @function
	.debug_ranges$scode_local_17:
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
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_18, @function
	.debug_line$scode_local_18:
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
	.string	"kf32f_basic_dac.c"
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
	.string	"kf32f_basic_dac.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x4a
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
	.byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x33
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
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x15
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
	.sleb128 -13226
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13218
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13213
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13208
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13208
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
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
	.long	.LM32
	.byte	0xa0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x19
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
	.long	.LM45
	.byte	0xc2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
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
	.long	.LM51
	.byte	0xdc
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
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
	.long	.LM57
	.byte	0xf6
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
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
	.long	.LM63
	.byte	0x3
	.sleb128 249
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x14
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
	.long	.LFE7
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0x3
	.sleb128 275
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x14
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
	.long	.LFE8
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x3
	.sleb128 310
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM78
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM79
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
	.long	.LM80
	.byte	0x3
	.sleb128 325
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM81
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
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
	.long	.LM83
	.byte	0x3
	.sleb128 349
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM84
	.byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM85
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM86
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM87
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM88
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM89
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM90
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM91
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM92
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 12970
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -12965
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM95
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
	.long	.LM96
	.byte	0x3
	.sleb128 380
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM97
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM100
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM101
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM102
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE12
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_19, @function
	.debug_str$scode_local_19:
.LASF58:
	.string	"DAC_MemMap"
.LASF8:
	.string	"FALSE"
.LASF43:
	.string	"DAC_Struct_Init"
.LASF54:
	.string	"tmpreg"
.LASF4:
	.string	"short int"
.LASF40:
	.string	"DAC_Configuration"
.LASF57:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF12:
	.string	"sizetype"
.LASF41:
	.string	"DACx"
.LASF39:
	.string	"DAC_Reset"
.LASF32:
	.string	"m_NPositrim"
.LASF18:
	.string	"m_TriggerEnable"
.LASF20:
	.string	"m_TriggerDMAEnable"
.LASF30:
	.string	"m_PPositrim"
.LASF29:
	.string	"DAC_InitTypeDef"
.LASF13:
	.string	"DAHD"
.LASF47:
	.string	"DAC_DMA_Cmd"
.LASF45:
	.string	"NewState"
.LASF27:
	.string	"m_OutputPin"
.LASF34:
	.string	"m_Buftrim"
.LASF22:
	.string	"m_Mas"
.LASF33:
	.string	"m_NNegatrim"
.LASF5:
	.string	"long long int"
.LASF25:
	.string	"m_ReferenceVoltage"
.LASF24:
	.string	"m_ClockDiv"
.LASF61:
	.string	"DAC_Calibration_Struct_Init"
.LASF7:
	.string	"char"
.LASF52:
	.string	"DAC_Calibration_Config"
.LASF49:
	.string	"DAC_Output_Port_Config"
.LASF31:
	.string	"m_PNegatrim"
.LASF17:
	.string	"DAC_SFRmap"
.LASF59:
	.string	"SFR_Config"
.LASF38:
	.string	"WriteVal"
.LASF53:
	.string	"dacCalStruct"
.LASF14:
	.string	"DATA"
.LASF51:
	.string	"Value"
.LASF3:
	.string	"unsigned char"
.LASF23:
	.string	"m_Clock"
.LASF46:
	.string	"DAC_Software_Trigger_Cmd"
.LASF56:
	.string	"../Peripherals/src/kf32f_basic_dac.c"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF36:
	.string	"SfrMem"
.LASF0:
	.string	"unsigned int"
.LASF55:
	.string	"GNU C 4.7.0"
.LASF1:
	.string	"short unsigned int"
.LASF48:
	.string	"DAC_Output_Buffer_Config"
.LASF19:
	.string	"m_TriggerEvent"
.LASF37:
	.string	"SfrMask"
.LASF60:
	.string	"DAC_Read_Output_Data"
.LASF35:
	.string	"DAC_CALTypeDef"
.LASF11:
	.string	"FunctionalState"
.LASF15:
	.string	"CTL1"
.LASF44:
	.string	"DAC_Cmd"
.LASF26:
	.string	"m_OutputBuffer"
.LASF42:
	.string	"dacInitStruct"
.LASF16:
	.string	"RESERVED"
.LASF9:
	.string	"TRUE"
.LASF50:
	.string	"DAC_Write_Output_Data"
.LASF28:
	.string	"m_Output"
.LASF21:
	.string	"m_Wave"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
