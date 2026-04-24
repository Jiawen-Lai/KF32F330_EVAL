	.file	"delay.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$delay_ms
	.type	.text$delay_ms$scode_local_1, @function
	.text$delay_ms$scode_local_1:
	.align	1
	.export	delay_ms
	.type	delay_ms, @function
delay_ms:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
	SUB	sp,#12
	.cfi_def_cfa_offset 12
	ST.w	[sp+#2],r0
.LM2:
	MOV	r5,#0
	ST.w	[sp+#1],r5
.LVL1:
	LD.w	r5,[sp+#1]
	LD.w	r4,[sp+#2]
	CMP	r4,r5
	JLS	.L1
.LM3:
	LD	r3,#6050
.LVL2:
.L5:
	ST.w	[sp],r3
.L3:
.LM4:
	LD.w	r5,[sp]
	SUB	r4,r5,#1
.LVL3:
	ST.w	[sp],r4
.LVL4:
	CMP	r5,#0
	JNZ	.L3
.LM5:
	LD.w	r5,[sp+#1]
	ADD	r5,r5,#1
.LVL5:
	ST.w	[sp+#1],r5
.LVL6:
	LD.w	r5,[sp+#1]
.LVL7:
	LD.w	r4,[sp+#2]
	CMP	r4,r5
	JHI	.L5
.L1:
.LM6:
	ADD	sp,#12
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	delay_ms, .-delay_ms
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_2, @function
	.debug_info$scode_local_2:
.Ldebug_info0:
	.long	0xb8
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF9
	.byte	0x1
	.long	.LASF10
	.long	.LASF11
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
	.long	.LASF12
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
	.long	0x53
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x6
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x7
	.string	"nms"
	.byte	0x1
	.byte	0xb
	.long	0x73
	.byte	0x1
	.byte	0x50
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0xd
	.long	0x73
	.long	.LLST0
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0xd
	.long	0x73
	.long	.LLST1
	.byte	0
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
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_4, @function
	.debug_loc$scode_local_4:
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL5
	.short	0x2
	.byte	0x91
	.sleb128 -8
	.long	.LVL6
	.long	.LVL7
	.short	0x1
	.byte	0x55
	.long	.LVL7
	.long	.LFE1
	.short	0x2
	.byte	0x91
	.sleb128 -8
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.short	0x2
	.byte	0x91
	.sleb128 -12
	.long	.LVL4
	.long	.LFE1
	.short	0x1
	.byte	0x54
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
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_6, @function
	.debug_ranges$scode_local_6:
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
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
	.ascii	"../Middle"
	.byte	0
	.ascii	"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys"
	.byte	0
	.byte	0
	.string	"delay.c"
	.uleb128 0x1
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
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE1
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_8, @function
	.debug_str$scode_local_8:
.LASF5:
	.string	"long long int"
.LASF1:
	.string	"short unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF9:
	.string	"GNU C 4.7.0"
.LASF10:
	.string	"../Middle/delay.c"
.LASF6:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"char"
.LASF12:
	.string	"uint32_t"
.LASF13:
	.string	"delay_ms"
.LASF2:
	.string	"signed char"
.LASF4:
	.string	"short int"
.LASF8:
	.string	"sizetype"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
