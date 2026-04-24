	.file	"kf32f_basic_rst.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$RST_CTL0_Peripheral_Reset_Enable
	.type	.text$RST_CTL0_Peripheral_Reset_Enable$scode_local_1, @function
	.text$RST_CTL0_Peripheral_Reset_Enable$scode_local_1:
	.align	1
	.export	RST_CTL0_Peripheral_Reset_Enable
	.type	RST_CTL0_Peripheral_Reset_Enable, @function
RST_CTL0_Peripheral_Reset_Enable:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
.LM2:
	LD	r5,#1073747200
	LD.w	r4,[r5]
.LM3:
	CMP	r1,#0
	JNZ	.L5
.LM4:
	NOT	r0,r0
.LVL1:
	ANL	r0,r0,r4
.LVL2:
	ST.w	[r5],r0
.LM5:
	JMP	lr
.LVL3:
.L5:
.LM6:
	ORL	r0,r0,r4
.LVL4:
	ST.w	[r5],r0
.LM7:
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	RST_CTL0_Peripheral_Reset_Enable, .-RST_CTL0_Peripheral_Reset_Enable
	.section .text$RST_CTL1_Peripheral_Reset_Enable
	.type	.text$RST_CTL1_Peripheral_Reset_Enable$scode_local_2, @function
	.text$RST_CTL1_Peripheral_Reset_Enable$scode_local_2:
	.align	1
	.export	RST_CTL1_Peripheral_Reset_Enable
	.type	RST_CTL1_Peripheral_Reset_Enable, @function
RST_CTL1_Peripheral_Reset_Enable:
.LFB2:
.LM8:
	.cfi_startproc
.LVL5:
.LM9:
	LD	r5,#1073747200
	LD.w	r4,[r5+#1]
.LM10:
	CMP	r1,#0
	JNZ	.L9
.LM11:
	NOT	r0,r0
.LVL6:
	ANL	r0,r0,r4
.LVL7:
	ST.w	[r5+#1],r0
.LM12:
	JMP	lr
.LVL8:
.L9:
.LM13:
	ORL	r0,r0,r4
.LVL9:
	ST.w	[r5+#1],r0
.LM14:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	RST_CTL1_Peripheral_Reset_Enable, .-RST_CTL1_Peripheral_Reset_Enable
	.section .text$RST_CTL2_Peripheral_Reset_Enable
	.type	.text$RST_CTL2_Peripheral_Reset_Enable$scode_local_3, @function
	.text$RST_CTL2_Peripheral_Reset_Enable$scode_local_3:
	.align	1
	.export	RST_CTL2_Peripheral_Reset_Enable
	.type	RST_CTL2_Peripheral_Reset_Enable, @function
RST_CTL2_Peripheral_Reset_Enable:
.LFB3:
.LM15:
	.cfi_startproc
.LVL10:
.LM16:
	LD	r5,#1073747200
	LD.w	r4,[r5+#2]
.LM17:
	CMP	r1,#0
	JNZ	.L13
.LM18:
	NOT	r0,r0
.LVL11:
	ANL	r0,r0,r4
.LVL12:
	ST.w	[r5+#2],r0
.LM19:
	JMP	lr
.LVL13:
.L13:
.LM20:
	ORL	r0,r0,r4
.LVL14:
	ST.w	[r5+#2],r0
.LM21:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	RST_CTL2_Peripheral_Reset_Enable, .-RST_CTL2_Peripheral_Reset_Enable
	.section .text$RST_CTL3_Peripheral_Reset_Enable
	.type	.text$RST_CTL3_Peripheral_Reset_Enable$scode_local_4, @function
	.text$RST_CTL3_Peripheral_Reset_Enable$scode_local_4:
	.align	1
	.export	RST_CTL3_Peripheral_Reset_Enable
	.type	RST_CTL3_Peripheral_Reset_Enable, @function
RST_CTL3_Peripheral_Reset_Enable:
.LFB4:
.LM22:
	.cfi_startproc
.LVL15:
.LM23:
	LD	r5,#1073747200
	LD.w	r4,[r5+#3]
.LM24:
	CMP	r1,#0
	JNZ	.L17
.LM25:
	NOT	r0,r0
.LVL16:
	ANL	r0,r0,r4
.LVL17:
	ST.w	[r5+#3],r0
.LM26:
	JMP	lr
.LVL18:
.L17:
.LM27:
	ORL	r0,r0,r4
.LVL19:
	ST.w	[r5+#3],r0
.LM28:
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	RST_CTL3_Peripheral_Reset_Enable, .-RST_CTL3_Peripheral_Reset_Enable
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_5, @function
	.debug_info$scode_local_5:
.Ldebug_info0:
	.long	0x1ba
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF26
	.byte	0x1
	.long	.LASF27
	.long	.LASF28
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
	.byte	0x2
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x28
	.long	0x73
	.uleb128 0x7
	.long	0x53
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x8
	.long	.LASF29
	.byte	0x10
	.byte	0x3
	.short	0x2229
	.long	0xe1
	.uleb128 0x9
	.long	.LASF13
	.byte	0x3
	.short	0x222a
	.long	0x93
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x3
	.short	0x222b
	.long	0x93
	.byte	0x4
	.uleb128 0x9
	.long	.LASF15
	.byte	0x3
	.short	0x222c
	.long	0x93
	.byte	0x8
	.uleb128 0x9
	.long	.LASF16
	.byte	0x3
	.short	0x222d
	.long	0x93
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x3
	.short	0x222e
	.long	0x9f
	.uleb128 0xb
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x122
	.uleb128 0xc
	.long	.LASF18
	.byte	0x1
	.byte	0x23
	.long	0x53
	.long	.LLST0
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0x24
	.long	0x88
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x157
	.uleb128 0xc
	.long	.LASF22
	.byte	0x1
	.byte	0x57
	.long	0x53
	.long	.LLST1
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0x58
	.long	0x88
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x18c
	.uleb128 0xc
	.long	.LASF24
	.byte	0x1
	.byte	0x81
	.long	0x53
	.long	.LLST2
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0x82
	.long	0x88
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.byte	0xa4
	.long	0x53
	.long	.LLST3
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0xa5
	.long	0x88
	.byte	0x1
	.byte	0x51
	.byte	0
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_7, @function
	.debug_loc$scode_local_7:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.short	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LVL2
	.short	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL3
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
	.long	.LVL5
	.long	.LVL6
	.short	0x1
	.byte	0x50
	.long	.LVL6
	.long	.LVL7
	.short	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.short	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LFE2
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL10
	.long	.LVL11
	.short	0x1
	.byte	0x50
	.long	.LVL11
	.long	.LVL12
	.short	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.short	0x1
	.byte	0x50
	.long	.LVL14
	.long	.LFE3
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL15
	.long	.LVL16
	.short	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LVL17
	.short	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.short	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LFE4
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
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
	.string	"kf32f_basic_rst.c"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"stdint.h"
	.uleb128 0x2
	.uleb128 0
	.uleb128 0
	.string	"KF32F_BASIC.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x3b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x1d
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
	.byte	0x6f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x1d
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
	.long	.LM15
	.byte	0x99
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x1d
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
	.long	.LM22
	.byte	0xbc
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x1d
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
.LASF23:
	.string	"RST_CTL2_Peripheral_Reset_Enable"
.LASF18:
	.string	"RST_CTL0_bit"
.LASF9:
	.string	"TRUE"
.LASF11:
	.string	"FunctionalState"
.LASF20:
	.string	"RST_CTL0_Peripheral_Reset_Enable"
.LASF13:
	.string	"CTL0"
.LASF14:
	.string	"CTL1"
.LASF15:
	.string	"CTL2"
.LASF16:
	.string	"CTL3"
.LASF21:
	.string	"RST_CTL1_Peripheral_Reset_Enable"
.LASF3:
	.string	"unsigned char"
.LASF17:
	.string	"RST_SFRmap"
.LASF1:
	.string	"short unsigned int"
.LASF8:
	.string	"FALSE"
.LASF24:
	.string	"RST_CTL2_bit"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF22:
	.string	"RST_CTL1_bit"
.LASF27:
	.string	"../Peripherals/src/kf32f_basic_rst.c"
.LASF29:
	.string	"RST_MemMap"
.LASF12:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF7:
	.string	"char"
.LASF26:
	.string	"GNU C 4.7.0"
.LASF25:
	.string	"RST_CTL3_bit"
.LASF4:
	.string	"short int"
.LASF19:
	.string	"NewState"
.LASF30:
	.string	"RST_CTL3_Peripheral_Reset_Enable"
.LASF10:
	.string	"uint32_t"
.LASF2:
	.string	"signed char"
.LASF28:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
