	.file	"kf32f_basic_wwdt.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$WWDT_Reset
	.type	.text$WWDT_Reset$scode_local_1, @function
	.text$WWDT_Reset$scode_local_1:
	.align	1
	.export	WWDT_Reset
	.type	WWDT_Reset, @function
WWDT_Reset:
.LFB1:
.LM1:
	.cfi_startproc
	PUSH	lr
	.cfi_def_cfa_offset 4
.LM2:
	MOV	r0,#32
	MOV	r1,#1
	LJMP	RST_CTL2_Peripheral_Reset_Enable
.LVL0:
.LM3:
	MOV	r0,#32
	MOV	r1,#0
	LJMP	RST_CTL2_Peripheral_Reset_Enable
.LVL1:
.LM4:
	MOV	r0,#32
	MOV	r1,#1
	LJMP	PCLK_CTL2_Peripheral_Clock_Enable
.LVL2:
.LM5:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	WWDT_Reset, .-WWDT_Reset
	.section .text$WWDT_Threshold_Config
	.type	.text$WWDT_Threshold_Config$scode_local_2, @function
	.text$WWDT_Threshold_Config$scode_local_2:
	.align	1
	.export	WWDT_Threshold_Config
	.type	WWDT_Threshold_Config, @function
WWDT_Threshold_Config:
.LFB2:
.LM6:
	.cfi_startproc
.LVL3:
.LM7:
	LD	r5,#1073746560
	LD.w	r4,[r5]
.LVL4:
.LM8:
	LSL	r0,#8
.LVL5:
.LBB6:
.LBB7:
.LM9:
	LD	r3,#-32513
	ANL	r4,r4,r3
.LVL6:
	ORL	r4,r0,r4
.LBE7:
.LBE6:
.LM10:
	ST.w	[r5],r4
.LM11:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	WWDT_Threshold_Config, .-WWDT_Threshold_Config
	.section .text$WWDT_Prescaler_Config
	.type	.text$WWDT_Prescaler_Config$scode_local_3, @function
	.text$WWDT_Prescaler_Config$scode_local_3:
	.align	1
	.export	WWDT_Prescaler_Config
	.type	WWDT_Prescaler_Config, @function
WWDT_Prescaler_Config:
.LFB3:
.LM12:
	.cfi_startproc
.LVL7:
.LM13:
	LD	r5,#1073746560
	LD.w	r3,[r5]
.LVL8:
.LBB8:
.LBB9:
.LM14:
	MOV	r4,#248
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
.LVL9:
.LBE9:
.LBE8:
.LM15:
	ST.w	[r5],r0
.LM16:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	WWDT_Prescaler_Config, .-WWDT_Prescaler_Config
	.section .text$WWDT_Enable
	.type	.text$WWDT_Enable$scode_local_4, @function
	.text$WWDT_Enable$scode_local_4:
	.align	1
	.export	WWDT_Enable
	.type	WWDT_Enable, @function
WWDT_Enable:
.LFB4:
.LM17:
	.cfi_startproc
.LVL10:
.LM18:
	LD	r5,#1073746560
.LM19:
	CMP	r0,#0
	JNZ	.L8
.LM20:
// inline asm begin
	// 110 "../Peripherals/src/kf32f_basic_wwdt.c" 1
	CLR [r5], #0
	// 0 "" 2
.LM21:
// inline asm end
	JMP	lr
.L8:
.LM22:
// inline asm begin
	// 105 "../Peripherals/src/kf32f_basic_wwdt.c" 1
	SET [r5], #0
	// 0 "" 2
.LM23:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	WWDT_Enable, .-WWDT_Enable
	.section .text$WWDT_Counter_Config
	.type	.text$WWDT_Counter_Config$scode_local_5, @function
	.text$WWDT_Counter_Config$scode_local_5:
	.align	1
	.export	WWDT_Counter_Config
	.type	WWDT_Counter_Config, @function
WWDT_Counter_Config:
.LFB5:
.LM24:
	.cfi_startproc
.LVL11:
.LM25:
	LD	r5,#1073746560
	ST.w	[r5+#1],r0
.LM26:
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	WWDT_Counter_Config, .-WWDT_Counter_Config
	.section .text$WWDT_Get_Counter
	.type	.text$WWDT_Get_Counter$scode_local_6, @function
	.text$WWDT_Get_Counter$scode_local_6:
	.align	1
	.export	WWDT_Get_Counter
	.type	WWDT_Get_Counter, @function
WWDT_Get_Counter:
.LFB6:
.LM27:
	.cfi_startproc
.LVL12:
.LM28:
	LD	r5,#1073746560
	LD.w	r0,[r5+#1]
.LVL13:
.LM29:
	MOV	r5,#127
	ANL	r0,r0,r5
.LVL14:
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	WWDT_Get_Counter, .-WWDT_Get_Counter
	.section .text$WWDT_INT_Enable
	.type	.text$WWDT_INT_Enable$scode_local_7, @function
	.text$WWDT_INT_Enable$scode_local_7:
	.align	1
	.export	WWDT_INT_Enable
	.type	WWDT_INT_Enable, @function
WWDT_INT_Enable:
.LFB7:
.LM30:
	.cfi_startproc
.LVL15:
.LM31:
	LD	r5,#1073746560
.LM32:
	CMP	r0,#0
	JNZ	.L14
.LM33:
// inline asm begin
	// 173 "../Peripherals/src/kf32f_basic_wwdt.c" 1
	CLR [r5], #1
	// 0 "" 2
.LM34:
// inline asm end
	JMP	lr
.L14:
.LM35:
// inline asm begin
	// 168 "../Peripherals/src/kf32f_basic_wwdt.c" 1
	SET [r5], #1
	// 0 "" 2
.LM36:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	WWDT_INT_Enable, .-WWDT_INT_Enable
	.section .text$WWDT_Get_INT_Flag
	.type	.text$WWDT_Get_INT_Flag$scode_local_8, @function
	.text$WWDT_Get_INT_Flag$scode_local_8:
	.align	1
	.export	WWDT_Get_INT_Flag
	.type	WWDT_Get_INT_Flag, @function
WWDT_Get_INT_Flag:
.LFB8:
.LM37:
	.cfi_startproc
.LM38:
	LD	r5,#1073746560
	LD.w	r0,[r5]
	LSR	r0,#2
.LM39:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE8:
	.size	WWDT_Get_INT_Flag, .-WWDT_Get_INT_Flag
	.section .text$WWDT_Clear_INT_Flag
	.type	.text$WWDT_Clear_INT_Flag$scode_local_9, @function
	.text$WWDT_Clear_INT_Flag$scode_local_9:
	.align	1
	.export	WWDT_Clear_INT_Flag
	.type	WWDT_Clear_INT_Flag, @function
WWDT_Clear_INT_Flag:
.LFB9:
.LM40:
	.cfi_startproc
.LM41:
	LD	r5,#1073746560
// inline asm begin
	// 207 "../Peripherals/src/kf32f_basic_wwdt.c" 1
	SET [r5], #15
	// 0 "" 2
.LM42:
// inline asm end
	LD	r3,#1073746560
	MOV	r4,#4
.L17:
.LM43:
	LD.w	r5,[r3]
	ANL	r5,r5,r4
	JNZ	.L17
.LM44:
	LD	r5,#1073746560
// inline asm begin
	// 209 "../Peripherals/src/kf32f_basic_wwdt.c" 1
	CLR [r5], #15
	// 0 "" 2
.LM45:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE9:
	.size	WWDT_Clear_INT_Flag, .-WWDT_Clear_INT_Flag
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_10, @function
	.debug_info$scode_local_10:
.Ldebug_info0:
	.long	0x2f5
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF30
	.byte	0x1
	.long	.LASF31
	.long	.LASF32
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
	.long	0x53
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x9
	.long	.LASF33
	.byte	0x8
	.byte	0x2
	.short	0x2201
	.long	0xe7
	.uleb128 0xa
	.string	"CTL"
	.byte	0x2
	.short	0x2202
	.long	0xb3
	.byte	0
	.uleb128 0xa
	.string	"CNT"
	.byte	0x2
	.short	0x2203
	.long	0xb3
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF15
	.byte	0x2
	.short	0x2204
	.long	0xbf
	.uleb128 0xc
	.long	.LASF34
	.byte	0x2
	.short	0x3416
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x12a
	.uleb128 0xd
	.long	.LASF16
	.byte	0x2
	.short	0x3416
	.long	0x53
	.uleb128 0xd
	.long	.LASF17
	.byte	0x2
	.short	0x3416
	.long	0x53
	.uleb128 0xd
	.long	.LASF18
	.byte	0x2
	.short	0x3416
	.long	0x53
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x17e
	.uleb128 0xf
	.long	.LVL0
	.long	0x157
	.uleb128 0x10
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x10
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LVL1
	.long	0x16c
	.uleb128 0x10
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x10
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LVL2
	.uleb128 0x10
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x10
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1df
	.uleb128 0x12
	.long	.LASF22
	.byte	0x1
	.byte	0x2c
	.long	0x53
	.long	.LLST0
	.uleb128 0x13
	.long	.LASF28
	.byte	0x1
	.byte	0x2e
	.long	0x53
	.long	.LLST1
	.uleb128 0x14
	.long	0xf3
	.long	.LBB6
	.long	.LBE6
	.byte	0x1
	.byte	0x35
	.uleb128 0x15
	.long	0x11d
	.long	.LLST2
	.uleb128 0x16
	.long	0x111
	.sleb128 -32513
	.uleb128 0x15
	.long	0x105
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x22e
	.uleb128 0x12
	.long	.LASF23
	.byte	0x1
	.byte	0x51
	.long	0x53
	.long	.LLST4
	.uleb128 0x14
	.long	0xf3
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x57
	.uleb128 0x15
	.long	0x11d
	.long	.LLST5
	.uleb128 0x16
	.long	0x111
	.sleb128 -249
	.uleb128 0x17
	.long	0x105
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x254
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.byte	0x60
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x27a
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.byte	0x78
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.long	0x53
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2a6
	.uleb128 0x13
	.long	.LASF28
	.byte	0x1
	.byte	0x89
	.long	0x53
	.long	.LLST6
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2cc
	.uleb128 0x18
	.long	.LASF25
	.byte	0x1
	.byte	0x9f
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	0xa8
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_11, @function
	.debug_abbrev$scode_local_11:
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.type	.debug_loc$scode_local_12, @function
	.debug_loc$scode_local_12:
.Ldebug_loc0:
.LLST0:
	.long	.LVL3
	.long	.LVL5
	.short	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LFE2
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL5
	.short	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL5
	.long	.LFE2
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.short	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL5
	.long	.LFE2
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL6
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL9
	.short	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LFE3
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL9
	.short	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LFE3
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL12
	.long	.LVL13
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.short	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL14
	.long	.LFE6
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_13, @function
	.debug_aranges$scode_local_13:
	.long	0x5c
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
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_14, @function
	.debug_ranges$scode_local_14:
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
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_15, @function
	.debug_line$scode_local_15:
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
	.string	"kf32f_basic_wwdt.c"
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
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
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
	.long	.LM6
	.byte	0x43
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13284
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13283
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
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
	.long	.LM12
	.byte	0x68
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13249
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13249
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
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
	.long	.LM17
	.byte	0x77
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
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
	.long	.LM24
	.byte	0x8f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
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
	.long	.LM27
	.byte	0x9e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x1b
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
	.long	.LM30
	.byte	0xb6
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
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
	.long	.LM37
	.byte	0xce
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x21
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
	.long	.LM40
	.byte	0xe3
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE9
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_16, @function
	.debug_str$scode_local_16:
.LASF33:
	.string	"WWDT_MemMap"
.LASF17:
	.string	"SfrMask"
.LASF36:
	.string	"WWDT_Get_INT_Flag"
.LASF20:
	.string	"WWDT_Threshold_Config"
.LASF1:
	.string	"short unsigned int"
.LASF11:
	.string	"FunctionalState"
.LASF29:
	.string	"WWDT_INT_Enable"
.LASF31:
	.string	"../Peripherals/src/kf32f_basic_wwdt.c"
.LASF3:
	.string	"unsigned char"
.LASF16:
	.string	"SfrMem"
.LASF13:
	.string	"FlagStatus"
.LASF25:
	.string	"NewState"
.LASF24:
	.string	"WWDT_Enable"
.LASF8:
	.string	"FALSE"
.LASF27:
	.string	"Counter"
.LASF18:
	.string	"WriteVal"
.LASF35:
	.string	"WWDT_Get_Counter"
.LASF19:
	.string	"WWDT_Reset"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF34:
	.string	"SFR_Config"
.LASF14:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF7:
	.string	"char"
.LASF30:
	.string	"GNU C 4.7.0"
.LASF37:
	.string	"WWDT_Clear_INT_Flag"
.LASF4:
	.string	"short int"
.LASF28:
	.string	"tmpreg"
.LASF9:
	.string	"TRUE"
.LASF26:
	.string	"WWDT_Counter_Config"
.LASF10:
	.string	"uint32_t"
.LASF21:
	.string	"WWDT_Prescaler_Config"
.LASF15:
	.string	"WWDT_SFRmap"
.LASF2:
	.string	"signed char"
.LASF23:
	.string	"Prescaler"
.LASF32:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF12:
	.string	"RESET"
.LASF22:
	.string	"Threshold"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
