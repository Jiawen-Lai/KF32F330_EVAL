	.file	"kf32f_basic_iwdt.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$IWDT_Prescaler_Config
	.type	.text$IWDT_Prescaler_Config$scode_local_1, @function
	.text$IWDT_Prescaler_Config$scode_local_1:
	.align	1
	.export	IWDT_Prescaler_Config
	.type	IWDT_Prescaler_Config, @function
IWDT_Prescaler_Config:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
.LM2:
	LD	r5,#1073746432
	LD.w	r3,[r5]
.LVL1:
.LBB6:
.LBB7:
.LM3:
	MOV	r4,#15
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
.LVL2:
.LBE7:
.LBE6:
.LM4:
	ST.w	[r5],r0
.LM5:
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	IWDT_Prescaler_Config, .-IWDT_Prescaler_Config
	.section .text$IWDT_Overflow_Config
	.type	.text$IWDT_Overflow_Config$scode_local_2, @function
	.text$IWDT_Overflow_Config$scode_local_2:
	.align	1
	.export	IWDT_Overflow_Config
	.type	IWDT_Overflow_Config, @function
IWDT_Overflow_Config:
.LFB2:
.LM6:
	.cfi_startproc
.LVL3:
.LM7:
	LD	r5,#1073746432
	LD.w	r4,[r5]
.LVL4:
.LM8:
	LSL	r0,#4
.LVL5:
.LBB8:
.LBB9:
.LM9:
	LD	r3,#-65521
	ANL	r4,r4,r3
.LVL6:
	ORL	r4,r0,r4
.LBE9:
.LBE8:
.LM10:
	ST.w	[r5],r4
.LM11:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	IWDT_Overflow_Config, .-IWDT_Overflow_Config
	.section .text$IWDT_Enable
	.type	.text$IWDT_Enable$scode_local_3, @function
	.text$IWDT_Enable$scode_local_3:
	.align	1
	.export	IWDT_Enable
	.type	IWDT_Enable, @function
IWDT_Enable:
.LFB3:
.LM12:
	.cfi_startproc
.LVL7:
.LM13:
	LD	r5,#1073746432
.LM14:
	CMP	r0,#0
	JNZ	.L7
.LM15:
// inline asm begin
	// 87 "../Peripherals/src/kf32f_basic_iwdt.c" 1
	CLR [r5], #31
	// 0 "" 2
.LM16:
// inline asm end
	JMP	lr
.L7:
.LM17:
// inline asm begin
	// 82 "../Peripherals/src/kf32f_basic_iwdt.c" 1
	SET [r5], #31
	// 0 "" 2
.LM18:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	IWDT_Enable, .-IWDT_Enable
	.section .text$IWDT_Feed_The_Dog
	.type	.text$IWDT_Feed_The_Dog$scode_local_4, @function
	.text$IWDT_Feed_The_Dog$scode_local_4:
	.align	1
	.export	IWDT_Feed_The_Dog
	.type	IWDT_Feed_The_Dog, @function
IWDT_Feed_The_Dog:
.LFB4:
.LM19:
	.cfi_startproc
.LM20:
	LD	r4,#1437226410
	LD	r5,#1073746432
	ST.w	[r5+#1],r4
.LM21:
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	IWDT_Feed_The_Dog, .-IWDT_Feed_The_Dog
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_5, @function
	.debug_info$scode_local_5:
.Ldebug_info0:
	.long	0x1ef
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF23
	.byte	0x1
	.long	.LASF24
	.long	.LASF25
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
	.long	0x53
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x8
	.long	.LASF26
	.byte	0x8
	.byte	0x2
	.short	0x21e0
	.long	0xc6
	.uleb128 0x9
	.string	"CTL"
	.byte	0x2
	.short	0x21e1
	.long	0x93
	.byte	0
	.uleb128 0x9
	.string	"FD"
	.byte	0x2
	.short	0x21e2
	.long	0x93
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	.LASF13
	.byte	0x2
	.short	0x21e3
	.long	0x9f
	.uleb128 0xb
	.long	.LASF27
	.byte	0x2
	.short	0x3416
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x109
	.uleb128 0xc
	.long	.LASF14
	.byte	0x2
	.short	0x3416
	.long	0x53
	.uleb128 0xc
	.long	.LASF15
	.byte	0x2
	.short	0x3416
	.long	0x53
	.uleb128 0xc
	.long	.LASF16
	.byte	0x2
	.short	0x3416
	.long	0x53
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x157
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0x28
	.long	0x53
	.long	.LLST0
	.uleb128 0xf
	.long	0xd2
	.long	.LBB6
	.long	.LBE6
	.byte	0x1
	.byte	0x2e
	.uleb128 0x10
	.long	0xfc
	.long	.LLST1
	.uleb128 0x11
	.long	0xf0
	.sleb128 -16
	.uleb128 0x12
	.long	0xe4
	.byte	0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1b8
	.uleb128 0xe
	.long	.LASF20
	.byte	0x1
	.byte	0x37
	.long	0x53
	.long	.LLST2
	.uleb128 0x13
	.long	.LASF28
	.byte	0x1
	.byte	0x39
	.long	0x53
	.long	.LLST3
	.uleb128 0xf
	.long	0xd2
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x40
	.uleb128 0x10
	.long	0xfc
	.long	.LLST4
	.uleb128 0x11
	.long	0xf0
	.sleb128 -65521
	.uleb128 0x10
	.long	0xe4
	.long	.LLST5
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1de
	.uleb128 0x14
	.long	.LASF22
	.byte	0x1
	.byte	0x49
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_6, @function
	.debug_abbrev$scode_local_6:
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x15
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
	.type	.debug_loc$scode_local_7, @function
	.debug_loc$scode_local_7:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.short	0x1
	.byte	0x50
	.long	.LVL2
	.long	.LFE1
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.short	0x1
	.byte	0x50
	.long	.LVL2
	.long	.LFE1
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
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
.LLST3:
	.long	.LVL3
	.long	.LVL5
	.short	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.long	.LVL5
	.long	.LFE2
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL5
	.short	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.long	.LVL5
	.long	.LFE2
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL4
	.long	.LVL6
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_8, @function
	.debug_aranges$scode_local_8:
	.long	0x34
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
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_9, @function
	.debug_ranges$scode_local_9:
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_10, @function
	.debug_line$scode_local_10:
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
	.string	"kf32f_basic_iwdt.c"
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
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13290
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13290
	.byte	0x1
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
	.byte	0x4e
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
	.sleb128 13273
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13272
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
	.byte	0x60
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
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
	.long	.LM19
	.byte	0x78
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
	.long	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_11, @function
	.debug_str$scode_local_11:
.LASF15:
	.string	"SfrMask"
.LASF9:
	.string	"TRUE"
.LASF13:
	.string	"IWDT_SFRmap"
.LASF11:
	.string	"FunctionalState"
.LASF20:
	.string	"Overflow"
.LASF3:
	.string	"unsigned char"
.LASF14:
	.string	"SfrMem"
.LASF1:
	.string	"short unsigned int"
.LASF29:
	.string	"IWDT_Feed_The_Dog"
.LASF8:
	.string	"FALSE"
.LASF26:
	.string	"IWDT_MemMap"
.LASF16:
	.string	"WriteVal"
.LASF17:
	.string	"IWDT_Prescaler_Config"
.LASF21:
	.string	"IWDT_Enable"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF27:
	.string	"SFR_Config"
.LASF12:
	.string	"sizetype"
.LASF24:
	.string	"../Peripherals/src/kf32f_basic_iwdt.c"
.LASF5:
	.string	"long long int"
.LASF7:
	.string	"char"
.LASF23:
	.string	"GNU C 4.7.0"
.LASF4:
	.string	"short int"
.LASF28:
	.string	"tmpreg"
.LASF22:
	.string	"NewState"
.LASF10:
	.string	"uint32_t"
.LASF18:
	.string	"IWDT_Overflow_Config"
.LASF2:
	.string	"signed char"
.LASF19:
	.string	"Prescaler"
.LASF25:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
