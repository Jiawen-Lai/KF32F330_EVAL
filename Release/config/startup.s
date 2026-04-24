	.file	"startup.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$startup
	.type	.text$startup$scode_local_1, @function
	.text$startup$scode_local_1:
	.align	2
	.export	startup
	.type	startup, @function
startup:
.LFB0:
.LM1:
	.cfi_startproc
	PUSH	lr
	.cfi_def_cfa_offset 4
.LVL0:
.LM2:
	LD	r5,#__data_start__
	LD	r1,#__bss_start__
	CMP	r1,r5
	JLS	.L6
	LD	r4,#__text_end__
.LM3:
	LD	r3,#__data_start__+4
	LD	r2,#__bss_start__+3
	SUB	r2,r2,r3
	LSR	r2,#2
	ADD	r2,r2,#1
	LSL	r2,#2
	ADD	r2,r2,r5
.LVL1:
.L5:
.LM4:
	LD.w	r3,[r4++]
	ST.w	[r5++],r3
.LVL2:
.LM5:
	CMP	r5,r2
	JNZ	.L5
.LVL3:
.L6:
.LM6:
	LD	r5,#__bss_start__
	LD	r4,#__bss_end__
	CMP	r4,r1
	JLS	.L4
.LM7:
	LD	r4,#__bss_start__+4
	LD	r3,#__bss_end__+3
	SUB	r3,r3,r4
	LSR	r3,#2
	ADD	r3,r3,#1
	LSL	r3,#2
	ADD	r3,r3,r5
.LM8:
	MOV	r4,#0
.LVL4:
.L7:
	ST.w	[r5++],r4
.LVL5:
.LM9:
	CMP	r5,r3
	JNZ	.L7
.LVL6:
.L4:
.LM10:
	LJMP	main
.LVL7:
.LM11:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE0:
	.size	startup, .-startup
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_2, @function
	.debug_info$scode_local_2:
.Ldebug_info0:
	.long	0xb4
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF7
	.byte	0x1
	.long	.LASF8
	.long	.LASF9
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.long	.LASF10
	.byte	0x1
	.byte	0x7
	.long	.LFB0
	.long	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x6f
	.uleb128 0x3
	.long	.LASF0
	.byte	0x1
	.byte	0x9
	.long	0x6f
	.uleb128 0x4
	.string	"s"
	.byte	0x1
	.byte	0xa
	.long	0x76
	.uleb128 0x5
	.long	.LASF11
	.byte	0x1
	.byte	0xa
	.long	0x76
	.long	.LLST1
	.uleb128 0x4
	.string	"end"
	.byte	0x1
	.byte	0xa
	.long	0x76
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x7
	.byte	0x4
	.long	0x7c
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x8
	.long	.LASF3
	.byte	0x1
	.byte	0x1
	.long	0x6f
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	.LASF4
	.byte	0x1
	.byte	0x2
	.long	0x6f
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	.LASF5
	.byte	0x1
	.byte	0x3
	.long	0x6f
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	.LASF6
	.byte	0x1
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.byte	0x1
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_3, @function
	.debug_abbrev$scode_local_3:
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_4, @function
	.debug_loc$scode_local_4:
.Ldebug_loc0:
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.short	0x1
	.byte	0x55
	.long	.LVL5
	.long	.LVL6
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_5, @function
	.debug_aranges$scode_local_5:
	.long	0x1c
	.short	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.short	0
	.short	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_6, @function
	.debug_ranges$scode_local_6:
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_7, @function
	.debug_line$scode_local_7:
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
	.ascii	"../config"
	.byte	0
	.byte	0
	.string	"startup.c"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE0
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_8, @function
	.debug_str$scode_local_8:
.LASF2:
	.string	"unsigned int"
.LASF9:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF7:
	.string	"GNU C 4.7.0"
.LASF0:
	.string	"length"
.LASF10:
	.string	"startup"
.LASF3:
	.string	"__text_end__"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"__bss_end__"
.LASF8:
	.string	"../config/startup.c"
.LASF11:
	.string	"begin"
.LASF6:
	.string	"__data_start__"
.LASF4:
	.string	"__bss_start__"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
