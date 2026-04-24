	.file	"kf32f_basic_systick.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$SYSTICK_Configuration
	.type	.text$SYSTICK_Configuration$scode_local_1, @function
	.text$SYSTICK_Configuration$scode_local_1:
	.align	1
	.export	SYSTICK_Configuration
	.type	SYSTICK_Configuration, @function
SYSTICK_Configuration:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
.LM2:
	LD	r5,#1075839136
// inline asm begin
	// 54 "../Peripherals/src/kf32f_basic_systick.c" 1
	CLR [r5], #0
	// 0 "" 2
.LM3:
// inline asm end
	ST.w	[r5+#1],r2
.LM4:
	MOV	r4,#0
	ST.w	[r5+#2],r4
.LVL1:
.LM5:
	LD.w	r4,[r5]
.LVL2:
.LBB4:
.LBB5:
.LM6:
	CLR	r4,#1
	CLR	r4,#2
.LVL3:
.LBE5:
.LBE4:
.LM7:
	ORL	r0,r0,r4
.LVL4:
	ADD	r1,r1,r1
.LVL5:
.LBB7:
.LBB6:
.LM8:
	ORL	r1,r0,r1
.LBE6:
.LBE7:
.LM9:
	ST.w	[r5],r1
.LM10:
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	SYSTICK_Configuration, .-SYSTICK_Configuration
	.section .text$SYSTICK_Cmd
	.type	.text$SYSTICK_Cmd$scode_local_2, @function
	.text$SYSTICK_Cmd$scode_local_2:
	.align	1
	.export	SYSTICK_Cmd
	.type	SYSTICK_Cmd, @function
SYSTICK_Cmd:
.LFB2:
.LM11:
	.cfi_startproc
.LVL6:
.LM12:
	LD	r5,#1075839136
.LM13:
	CMP	r0,#0
	JNZ	.L6
.LM14:
// inline asm begin
	// 101 "../Peripherals/src/kf32f_basic_systick.c" 1
	CLR [r5], #0
	// 0 "" 2
.LM15:
// inline asm end
	JMP	lr
.L6:
.LM16:
// inline asm begin
	// 96 "../Peripherals/src/kf32f_basic_systick.c" 1
	SET [r5], #0
	// 0 "" 2
.LM17:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	SYSTICK_Cmd, .-SYSTICK_Cmd
	.section .text$SYSTICK_Clock_Config
	.type	.text$SYSTICK_Clock_Config$scode_local_3, @function
	.text$SYSTICK_Clock_Config$scode_local_3:
	.align	1
	.export	SYSTICK_Clock_Config
	.type	SYSTICK_Clock_Config, @function
SYSTICK_Clock_Config:
.LFB3:
.LM18:
	.cfi_startproc
.LVL7:
.LM19:
	LD	r5,#1075839136
.LM20:
	CMP	r0,#0
	JNZ	.L10
.LM21:
// inline asm begin
	// 128 "../Peripherals/src/kf32f_basic_systick.c" 1
	CLR [r5], #2
	// 0 "" 2
.LM22:
// inline asm end
	JMP	lr
.L10:
.LM23:
// inline asm begin
	// 123 "../Peripherals/src/kf32f_basic_systick.c" 1
	SET [r5], #2
	// 0 "" 2
.LM24:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	SYSTICK_Clock_Config, .-SYSTICK_Clock_Config
	.section .text$SYSTICK_Systick_INT_Enable
	.type	.text$SYSTICK_Systick_INT_Enable$scode_local_4, @function
	.text$SYSTICK_Systick_INT_Enable$scode_local_4:
	.align	1
	.export	SYSTICK_Systick_INT_Enable
	.type	SYSTICK_Systick_INT_Enable, @function
SYSTICK_Systick_INT_Enable:
.LFB4:
.LM25:
	.cfi_startproc
.LVL8:
.LM26:
	LD	r5,#1075839136
.LM27:
	CMP	r0,#0
	JNZ	.L14
.LM28:
// inline asm begin
	// 153 "../Peripherals/src/kf32f_basic_systick.c" 1
	CLR [r5], #1
	// 0 "" 2
.LM29:
// inline asm end
	JMP	lr
.L14:
.LM30:
// inline asm begin
	// 148 "../Peripherals/src/kf32f_basic_systick.c" 1
	SET [r5], #1
	// 0 "" 2
.LM31:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	SYSTICK_Systick_INT_Enable, .-SYSTICK_Systick_INT_Enable
	.section .text$SYSTICK_Get_Count_Zero_Flag
	.type	.text$SYSTICK_Get_Count_Zero_Flag$scode_local_5, @function
	.text$SYSTICK_Get_Count_Zero_Flag$scode_local_5:
	.align	1
	.export	SYSTICK_Get_Count_Zero_Flag
	.type	SYSTICK_Get_Count_Zero_Flag, @function
SYSTICK_Get_Count_Zero_Flag:
.LFB5:
.LM32:
	.cfi_startproc
.LM33:
	LD	r5,#1075839136
	LD.w	r0,[r5]
	LSR	r0,#16
.LM34:
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	SYSTICK_Get_Count_Zero_Flag, .-SYSTICK_Get_Count_Zero_Flag
	.section .text$SYSTICK_Reload_Config
	.type	.text$SYSTICK_Reload_Config$scode_local_6, @function
	.text$SYSTICK_Reload_Config$scode_local_6:
	.align	1
	.export	SYSTICK_Reload_Config
	.type	SYSTICK_Reload_Config, @function
SYSTICK_Reload_Config:
.LFB6:
.LM35:
	.cfi_startproc
.LVL9:
.LM36:
	LD	r5,#1075839136
	ST.w	[r5+#1],r0
.LM37:
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	SYSTICK_Reload_Config, .-SYSTICK_Reload_Config
	.section .text$SYSTICK_Counter_Updata
	.type	.text$SYSTICK_Counter_Updata$scode_local_7, @function
	.text$SYSTICK_Counter_Updata$scode_local_7:
	.align	1
	.export	SYSTICK_Counter_Updata
	.type	SYSTICK_Counter_Updata, @function
SYSTICK_Counter_Updata:
.LFB7:
.LM38:
	.cfi_startproc
.LM39:
	MOV	r4,#0
	LD	r5,#1075839136
	ST.w	[r5+#2],r4
.LM40:
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	SYSTICK_Counter_Updata, .-SYSTICK_Counter_Updata
	.section .text$SYSTICK_Get_Reload
	.type	.text$SYSTICK_Get_Reload$scode_local_8, @function
	.text$SYSTICK_Get_Reload$scode_local_8:
	.align	1
	.export	SYSTICK_Get_Reload
	.type	SYSTICK_Get_Reload, @function
SYSTICK_Get_Reload:
.LFB8:
.LM41:
	.cfi_startproc
.LVL10:
.LM42:
	LD	r5,#1075839136
	LD.w	r0,[r5+#1]
.LVL11:
.LM43:
	LD	r5,#16777215
	ANL	r0,r0,r5
.LVL12:
	JMP	lr
	.cfi_endproc
.LFE8:
	.size	SYSTICK_Get_Reload, .-SYSTICK_Get_Reload
	.section .text$SYSTICK_Get_Counter
	.type	.text$SYSTICK_Get_Counter$scode_local_9, @function
	.text$SYSTICK_Get_Counter$scode_local_9:
	.align	1
	.export	SYSTICK_Get_Counter
	.type	SYSTICK_Get_Counter, @function
SYSTICK_Get_Counter:
.LFB9:
.LM44:
	.cfi_startproc
.LVL13:
.LM45:
	LD	r5,#1075839136
	LD.w	r0,[r5+#2]
.LVL14:
.LM46:
	LD	r5,#16777215
	ANL	r0,r0,r5
.LVL15:
	JMP	lr
	.cfi_endproc
.LFE9:
	.size	SYSTICK_Get_Counter, .-SYSTICK_Get_Counter
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_10, @function
	.debug_info$scode_local_10:
.Ldebug_info0:
	.long	0x2d3
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF33
	.byte	0x1
	.long	.LASF34
	.long	.LASF35
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
	.long	.LASF36
	.byte	0x10
	.byte	0x2
	.short	0x1269
	.long	0x100
	.uleb128 0xa
	.string	"CTL"
	.byte	0x2
	.short	0x126a
	.long	0xb3
	.byte	0
	.uleb128 0xb
	.long	.LASF15
	.byte	0x2
	.short	0x126b
	.long	0xb3
	.byte	0x4
	.uleb128 0xa
	.string	"CV"
	.byte	0x2
	.short	0x126c
	.long	0xb3
	.byte	0x8
	.uleb128 0xb
	.long	.LASF16
	.byte	0x2
	.short	0x126d
	.long	0xb3
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.long	.LASF17
	.byte	0x2
	.short	0x126e
	.long	0xbf
	.uleb128 0xd
	.long	.LASF37
	.byte	0x2
	.short	0x3416
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x143
	.uleb128 0xe
	.long	.LASF18
	.byte	0x2
	.short	0x3416
	.long	0x53
	.uleb128 0xe
	.long	.LASF19
	.byte	0x2
	.short	0x3416
	.long	0x53
	.uleb128 0xe
	.long	.LASF20
	.byte	0x2
	.short	0x3416
	.long	0x53
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1be
	.uleb128 0x10
	.long	.LASF21
	.byte	0x1
	.byte	0x2b
	.long	0x53
	.long	.LLST0
	.uleb128 0x10
	.long	.LASF22
	.byte	0x1
	.byte	0x2b
	.long	0x53
	.long	.LLST1
	.uleb128 0x11
	.long	.LASF23
	.byte	0x1
	.byte	0x2c
	.long	0x53
	.byte	0x1
	.byte	0x52
	.uleb128 0x12
	.long	.LASF31
	.byte	0x1
	.byte	0x2e
	.long	0x53
	.long	.LLST2
	.uleb128 0x13
	.long	0x10c
	.long	.LBB4
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x43
	.uleb128 0x14
	.long	0x136
	.long	.LLST3
	.uleb128 0x15
	.long	0x12a
	.sleb128 -7
	.uleb128 0x14
	.long	0x11e
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1e4
	.uleb128 0x11
	.long	.LASF26
	.byte	0x1
	.byte	0x57
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x20a
	.uleb128 0x11
	.long	.LASF28
	.byte	0x1
	.byte	0x72
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x230
	.uleb128 0x11
	.long	.LASF28
	.byte	0x1
	.byte	0x8b
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.long	0xa8
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x26e
	.uleb128 0x11
	.long	.LASF23
	.byte	0x1
	.byte	0xb9
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.long	0x53
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2ae
	.uleb128 0x12
	.long	.LASF31
	.byte	0x1
	.byte	0xd8
	.long	0x53
	.long	.LLST5
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.long	0x53
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x12
	.long	.LASF31
	.byte	0x1
	.byte	0xe8
	.long	0x53
	.long	.LLST6
	.byte	0
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_12, @function
	.debug_loc$scode_local_12:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL4
	.short	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LFE1
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL5
	.short	0x1
	.byte	0x51
	.long	.LVL5
	.long	.LFE1
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL4
	.short	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.short	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x21
	.byte	0x9f
	.long	.LVL5
	.long	.LFE1
	.short	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL4
	.short	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.short	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x21
	.byte	0x9f
	.long	.LVL5
	.long	.LFE1
	.short	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x31
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL2
	.long	.LVL3
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST5:
	.long	.LVL10
	.long	.LVL11
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.short	0x9
	.byte	0x70
	.sleb128 0
	.byte	0xc
	.long	0xffffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL12
	.long	.LFE8
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL14
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.short	0x9
	.byte	0x70
	.sleb128 0
	.byte	0xc
	.long	0xffffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL15
	.long	.LFE9
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
	.long	.LBB4
	.long	.LBE4
	.long	.LBB7
	.long	.LBE7
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
	.string	"kf32f_basic_systick.c"
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
	.byte	0x43
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13269
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13270
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13270
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13269
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x1a
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
	.long	.LM11
	.byte	0x6e
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
	.long	.LFE2
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x89
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
	.long	.LFE3
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0xa2
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
	.long	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0xba
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x21
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
	.long	.LM35
	.byte	0xd0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
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
	.long	.LM38
	.byte	0xe0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
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
	.long	.LM41
	.byte	0xed
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
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
	.long	.LM44
	.byte	0xfd
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x1a
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
.LASF5:
	.string	"long long int"
.LASF32:
	.string	"SYSTICK_Get_Counter"
.LASF39:
	.string	"SYSTICK_Counter_Updata"
.LASF23:
	.string	"Reload"
.LASF19:
	.string	"SfrMask"
.LASF9:
	.string	"TRUE"
.LASF1:
	.string	"short unsigned int"
.LASF11:
	.string	"FunctionalState"
.LASF15:
	.string	"RELOAD"
.LASF25:
	.string	"SYSTICK_Cmd"
.LASF3:
	.string	"unsigned char"
.LASF18:
	.string	"SfrMem"
.LASF13:
	.string	"FlagStatus"
.LASF17:
	.string	"SYSTICK_SFRmap"
.LASF40:
	.string	"SYSTICK_Get_Reload"
.LASF12:
	.string	"RESET"
.LASF29:
	.string	"SYSTICK_Systick_INT_Enable"
.LASF8:
	.string	"FALSE"
.LASF30:
	.string	"SYSTICK_Reload_Config"
.LASF20:
	.string	"WriteVal"
.LASF36:
	.string	"SYSTICK_MemMap"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF28:
	.string	"SysClock"
.LASF37:
	.string	"SFR_Config"
.LASF22:
	.string	"SysTickINT"
.LASF38:
	.string	"SYSTICK_Get_Count_Zero_Flag"
.LASF21:
	.string	"Clock"
.LASF27:
	.string	"SYSTICK_Clock_Config"
.LASF14:
	.string	"sizetype"
.LASF7:
	.string	"char"
.LASF33:
	.string	"GNU C 4.7.0"
.LASF24:
	.string	"SYSTICK_Configuration"
.LASF4:
	.string	"short int"
.LASF31:
	.string	"tmpreg"
.LASF26:
	.string	"NewState"
.LASF34:
	.string	"../Peripherals/src/kf32f_basic_systick.c"
.LASF10:
	.string	"uint32_t"
.LASF16:
	.string	"CALI"
.LASF2:
	.string	"signed char"
.LASF35:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
