	.file	"boot.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$iap_is_app_valid
	.type	.text$iap_is_app_valid$scode_local_1, @function
	.text$iap_is_app_valid$scode_local_1:
	.align	1
	.export	iap_is_app_valid
	.type	iap_is_app_valid, @function
iap_is_app_valid:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
.LBB6:
.LBB7:
.LM2:
	LD.w	r5,[r0]
.LBE7:
.LBE6:
.LM3:
	MOV	r3,#1
	LSL	r3,#28
	SUB	r3,r5,r3
.LM4:
	MOV	r0,#0
.LVL1:
.LM5:
	LD	r4,#98304
	CMP	r3,r4
	JHI	.L2
.LM6:
	MOV	r4,#3
	ANL	r5,r5,r4
	MOV	r4,#1
	CMP	r5,r0
	JNZ	.L9
.LM7:
	ZXT.b	r0,r4
.L2:
.LM8:
	JMP	lr
.L9:
.LM9:
	MOV	r4,r0
.LM10:
	ZXT.b	r0,r4
	JMP	.L2
	.cfi_endproc
.LFE1:
	.size	iap_is_app_valid, .-iap_is_app_valid
	.section .text$iap_jump_to_app
	.type	.text$iap_jump_to_app$scode_local_2, @function
	.text$iap_jump_to_app$scode_local_2:
	.align	1
	.export	iap_jump_to_app
	.type	iap_jump_to_app, @function
iap_jump_to_app:
.LFB2:
.LM11:
	.cfi_startproc
.LVL2:
	PUSH	lr
	.cfi_def_cfa_offset 4
.LM12:
	LD	r5,#1075839152
	ST.w	[r5+#3],r0
.LVL3:
.LBB8:
.LBB9:
.LM13:
	LD.w	r5,[r0+#1]
.LVL4:
.LBE9:
.LBE8:
.LM14:
	LJMP	r5
.LVL5:
.LM15:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	iap_jump_to_app, .-iap_jump_to_app
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_3, @function
	.debug_info$scode_local_3:
.Ldebug_info0:
	.long	0x1f4
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF25
	.byte	0x1
	.long	.LASF26
	.long	.LASF27
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
	.uleb128 0x4
	.long	.LASF5
	.byte	0x2
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
	.byte	0x2
	.byte	0x1a
	.long	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x5
	.long	0x5e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x6
	.long	.LASF28
	.byte	0x1c
	.byte	0x3
	.short	0xced
	.long	0xf3
	.uleb128 0x7
	.string	"PSW"
	.byte	0x3
	.short	0xcee
	.long	0x7e
	.byte	0
	.uleb128 0x8
	.long	.LASF11
	.byte	0x3
	.short	0xcef
	.long	0x7e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF12
	.byte	0x3
	.short	0xcf0
	.long	0x7e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF13
	.byte	0x3
	.short	0xcf1
	.long	0x7e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF14
	.byte	0x3
	.short	0xcf2
	.long	0x5e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.short	0xcf3
	.long	0x7e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF16
	.byte	0x3
	.short	0xcf4
	.long	0x7e
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.long	.LASF17
	.byte	0x3
	.short	0xcf5
	.long	0x8a
	.uleb128 0x4
	.long	.LASF18
	.byte	0x1
	.byte	0xb
	.long	0x10a
	.uleb128 0xa
	.byte	0x4
	.long	0x110
	.uleb128 0xb
	.byte	0x1
	.uleb128 0xc
	.long	.LASF19
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.long	0x5e
	.byte	0x1
	.long	0x12f
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.byte	0x36
	.long	0x5e
	.byte	0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.long	0x5e
	.byte	0x1
	.long	0x14c
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.byte	0x40
	.long	0x5e
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.long	0x45
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x19e
	.uleb128 0xf
	.long	.LASF21
	.byte	0x1
	.byte	0x16
	.long	0x5e
	.long	.LLST0
	.uleb128 0x10
	.long	.LASF22
	.byte	0x1
	.byte	0x18
	.long	0x5e
	.byte	0x1
	.byte	0x55
	.uleb128 0x11
	.long	0x112
	.long	.LBB6
	.long	.LBE6
	.byte	0x1
	.byte	0x18
	.uleb128 0x12
	.long	0x123
	.long	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xf
	.long	.LASF21
	.byte	0x1
	.byte	0x27
	.long	0x5e
	.long	.LLST2
	.uleb128 0x10
	.long	.LASF23
	.byte	0x1
	.byte	0x2a
	.long	0x5e
	.byte	0x1
	.byte	0x55
	.uleb128 0x14
	.long	.LASF24
	.byte	0x1
	.byte	0x2b
	.long	0xff
	.long	.LLST3
	.uleb128 0x11
	.long	0x12f
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x2a
	.uleb128 0x12
	.long	0x140
	.long	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_4, @function
	.debug_abbrev$scode_local_4:
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_5, @function
	.debug_loc$scode_local_5:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.short	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LFE1
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL5-1
	.short	0x1
	.byte	0x50
	.long	.LVL5-1
	.long	.LFE2
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL5-1
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL5-1
	.short	0x1
	.byte	0x50
	.long	.LVL5-1
	.long	.LFE2
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_6, @function
	.debug_aranges$scode_local_6:
	.long	0x24
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
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_7, @function
	.debug_ranges$scode_local_7:
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_8, @function
	.debug_line$scode_local_8:
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
	.ascii	"../Middle"
	.byte	0
	.ascii	"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys"
	.byte	0
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\"
	.ascii	"inc"
	.byte	0
	.byte	0
	.string	"boot.c"
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
	.byte	0x2d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x38
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x3
	.sleb128 -30
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x6
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x19
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
	.byte	0x3e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE2
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_9, @function
	.debug_str$scode_local_9:
.LASF30:
	.string	"iap_jump_to_app"
.LASF23:
	.string	"jump_address"
.LASF20:
	.string	"iap_get_jumpaddress"
.LASF19:
	.string	"iap_get_appstackpointer"
.LASF29:
	.string	"iap_is_app_valid"
.LASF24:
	.string	"jump_to_app"
.LASF12:
	.string	"ARCTL"
.LASF3:
	.string	"unsigned char"
.LASF1:
	.string	"short unsigned int"
.LASF22:
	.string	"app_stack"
.LASF18:
	.string	"pFunction"
.LASF17:
	.string	"SYSCTL_SFRmap"
.LASF21:
	.string	"app_addr"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint8_t"
.LASF13:
	.string	"VECTOFF"
.LASF10:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF15:
	.string	"RAMSPA"
.LASF9:
	.string	"char"
.LASF25:
	.string	"GNU C 4.7.0"
.LASF14:
	.string	"RESEVRVE1"
.LASF4:
	.string	"short int"
.LASF16:
	.string	"MEMCTL"
.LASF6:
	.string	"uint32_t"
.LASF28:
	.string	"SYSCTL_MemMap"
.LASF2:
	.string	"signed char"
.LASF11:
	.string	"MCTL"
.LASF27:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF26:
	.string	"../Middle/boot.c"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
