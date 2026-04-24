	.file	"kf32f_basic_aes.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$AES_Reset
	.type	.text$AES_Reset$scode_local_1, @function
	.text$AES_Reset$scode_local_1:
	.align	1
	.export	AES_Reset
	.type	AES_Reset, @function
AES_Reset:
.LFB1:
.LM1:
	.cfi_startproc
	PUSH	{r6, lr}
	.cfi_def_cfa_offset 8
.LM2:
	MOV	r6,#1
	LSL	r6,#14
	MOV	r0,r6
	MOV	r1,#1
	LJMP	RST_CTL3_Peripheral_Reset_Enable
.LVL0:
.LM3:
	MOV	r0,r6
	MOV	r1,#0
	LJMP	RST_CTL3_Peripheral_Reset_Enable
.LVL1:
.LM4:
	MOV	r0,r6
	MOV	r1,#1
	LJMP	PCLK_CTL3_Peripheral_Clock_Enable
.LVL2:
.LM5:
	POP	r6
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	AES_Reset, .-AES_Reset
	.section .text$AES_Configuration
	.type	.text$AES_Configuration$scode_local_2, @function
	.text$AES_Configuration$scode_local_2:
	.align	1
	.export	AES_Configuration
	.type	AES_Configuration, @function
AES_Configuration:
.LFB2:
.LM6:
	.cfi_startproc
.LVL3:
.LM7:
	LD	r5,#1073751808
	LD.w	r2,[r5]
.LVL4:
.LM8:
	LD.w	r1,[r0+#1]
	LD.w	r3,[r0]
	ORL	r4,r1,r3
.LM9:
	LD.w	r1,[r0+#2]
	ORL	r4,r4,r1
.LM10:
	LD.w	r3,[r0+#3]
	ORL	r4,r4,r3
.LM11:
	LD.w	r1,[r0+#4]
	ORL	r4,r4,r1
.LM12:
	LD.w	r3,[r0+#5]
	ORL	r4,r4,r3
.LVL5:
.LBB6:
.LBB7:
.LM13:
	LD	r3,#-8421568
	ANL	r3,r2,r3
	ORL	r4,r4,r3
.LVL6:
.LBE7:
.LBE6:
.LM14:
	ST.w	[r5],r4
.LM15:
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	AES_Configuration, .-AES_Configuration
	.section .text$AES_Struct_Init
	.type	.text$AES_Struct_Init$scode_local_3, @function
	.text$AES_Struct_Init$scode_local_3:
	.align	1
	.export	AES_Struct_Init
	.type	AES_Struct_Init, @function
AES_Struct_Init:
.LFB3:
.LM16:
	.cfi_startproc
.LVL7:
.LM17:
	MOV	r5,#0
	ST.w	[r0],r5
.LM18:
	ST.w	[r0+#1],r5
.LM19:
	ST.w	[r0+#2],r5
.LM20:
	ST.w	[r0+#3],r5
.LM21:
	ST.w	[r0+#4],r5
.LM22:
	ST.w	[r0+#5],r5
.LM23:
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	AES_Struct_Init, .-AES_Struct_Init
	.section .text$AES_KEY0_DATA
	.type	.text$AES_KEY0_DATA$scode_local_4, @function
	.text$AES_KEY0_DATA$scode_local_4:
	.align	1
	.export	AES_KEY0_DATA
	.type	AES_KEY0_DATA, @function
AES_KEY0_DATA:
.LFB4:
.LM24:
	.cfi_startproc
.LVL8:
.LM25:
	LD	r5,#1073751808
	ST.w	[r5+#4],r0
.LM26:
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	AES_KEY0_DATA, .-AES_KEY0_DATA
	.section .text$AES_KEY1_DATA
	.type	.text$AES_KEY1_DATA$scode_local_5, @function
	.text$AES_KEY1_DATA$scode_local_5:
	.align	1
	.export	AES_KEY1_DATA
	.type	AES_KEY1_DATA, @function
AES_KEY1_DATA:
.LFB5:
.LM27:
	.cfi_startproc
.LVL9:
.LM28:
	LD	r5,#1073751808
	ST.w	[r5+#5],r0
.LM29:
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	AES_KEY1_DATA, .-AES_KEY1_DATA
	.section .text$AES_KEY2_DATA
	.type	.text$AES_KEY2_DATA$scode_local_6, @function
	.text$AES_KEY2_DATA$scode_local_6:
	.align	1
	.export	AES_KEY2_DATA
	.type	AES_KEY2_DATA, @function
AES_KEY2_DATA:
.LFB6:
.LM30:
	.cfi_startproc
.LVL10:
.LM31:
	LD	r5,#1073751808
	ST.w	[r5+#6],r0
.LM32:
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	AES_KEY2_DATA, .-AES_KEY2_DATA
	.section .text$AES_KEY3_DATA
	.type	.text$AES_KEY3_DATA$scode_local_7, @function
	.text$AES_KEY3_DATA$scode_local_7:
	.align	1
	.export	AES_KEY3_DATA
	.type	AES_KEY3_DATA, @function
AES_KEY3_DATA:
.LFB7:
.LM33:
	.cfi_startproc
.LVL11:
.LM34:
	LD	r5,#1073751808
	ST.w	[r5+#7],r0
.LM35:
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	AES_KEY3_DATA, .-AES_KEY3_DATA
	.section .text$AES_INPUT0_DATA
	.type	.text$AES_INPUT0_DATA$scode_local_8, @function
	.text$AES_INPUT0_DATA$scode_local_8:
	.align	1
	.export	AES_INPUT0_DATA
	.type	AES_INPUT0_DATA, @function
AES_INPUT0_DATA:
.LFB8:
.LM36:
	.cfi_startproc
.LVL12:
.LM37:
	LD	r5,#1073751808
	ST.w	[r5+#8],r0
.LM38:
	JMP	lr
	.cfi_endproc
.LFE8:
	.size	AES_INPUT0_DATA, .-AES_INPUT0_DATA
	.section .text$AES_INPUT1_DATA
	.type	.text$AES_INPUT1_DATA$scode_local_9, @function
	.text$AES_INPUT1_DATA$scode_local_9:
	.align	1
	.export	AES_INPUT1_DATA
	.type	AES_INPUT1_DATA, @function
AES_INPUT1_DATA:
.LFB9:
.LM39:
	.cfi_startproc
.LVL13:
.LM40:
	LD	r5,#1073751808
	ST.w	[r5+#9],r0
.LM41:
	JMP	lr
	.cfi_endproc
.LFE9:
	.size	AES_INPUT1_DATA, .-AES_INPUT1_DATA
	.section .text$AES_INPUT2_DATA
	.type	.text$AES_INPUT2_DATA$scode_local_10, @function
	.text$AES_INPUT2_DATA$scode_local_10:
	.align	1
	.export	AES_INPUT2_DATA
	.type	AES_INPUT2_DATA, @function
AES_INPUT2_DATA:
.LFB10:
.LM42:
	.cfi_startproc
.LVL14:
.LM43:
	LD	r5,#1073751808
	ST.w	[r5+#10],r0
.LM44:
	JMP	lr
	.cfi_endproc
.LFE10:
	.size	AES_INPUT2_DATA, .-AES_INPUT2_DATA
	.section .text$AES_INPUT3_DATA
	.type	.text$AES_INPUT3_DATA$scode_local_11, @function
	.text$AES_INPUT3_DATA$scode_local_11:
	.align	1
	.export	AES_INPUT3_DATA
	.type	AES_INPUT3_DATA, @function
AES_INPUT3_DATA:
.LFB11:
.LM45:
	.cfi_startproc
.LVL15:
.LM46:
	LD	r5,#1073751808
	ST.w	[r5+#11],r0
.LM47:
	JMP	lr
	.cfi_endproc
.LFE11:
	.size	AES_INPUT3_DATA, .-AES_INPUT3_DATA
	.section .text$GET_AES_OUTPUT0_DATA
	.type	.text$GET_AES_OUTPUT0_DATA$scode_local_12, @function
	.text$GET_AES_OUTPUT0_DATA$scode_local_12:
	.align	1
	.export	GET_AES_OUTPUT0_DATA
	.type	GET_AES_OUTPUT0_DATA, @function
GET_AES_OUTPUT0_DATA:
.LFB12:
.LM48:
	.cfi_startproc
.LM49:
	LD	r5,#1073751808
	LD.w	r0,[r5+#12]
.LVL16:
.LM50:
	JMP	lr
	.cfi_endproc
.LFE12:
	.size	GET_AES_OUTPUT0_DATA, .-GET_AES_OUTPUT0_DATA
	.section .text$GET_AES_OUTPUT1_DATA
	.type	.text$GET_AES_OUTPUT1_DATA$scode_local_13, @function
	.text$GET_AES_OUTPUT1_DATA$scode_local_13:
	.align	1
	.export	GET_AES_OUTPUT1_DATA
	.type	GET_AES_OUTPUT1_DATA, @function
GET_AES_OUTPUT1_DATA:
.LFB13:
.LM51:
	.cfi_startproc
.LM52:
	LD	r5,#1073751808
	LD.w	r0,[r5+#13]
.LVL17:
.LM53:
	JMP	lr
	.cfi_endproc
.LFE13:
	.size	GET_AES_OUTPUT1_DATA, .-GET_AES_OUTPUT1_DATA
	.section .text$GET_AES_OUTPUT2_DATA
	.type	.text$GET_AES_OUTPUT2_DATA$scode_local_14, @function
	.text$GET_AES_OUTPUT2_DATA$scode_local_14:
	.align	1
	.export	GET_AES_OUTPUT2_DATA
	.type	GET_AES_OUTPUT2_DATA, @function
GET_AES_OUTPUT2_DATA:
.LFB14:
.LM54:
	.cfi_startproc
.LM55:
	LD	r5,#1073751808
	LD.w	r0,[r5+#14]
.LVL18:
.LM56:
	JMP	lr
	.cfi_endproc
.LFE14:
	.size	GET_AES_OUTPUT2_DATA, .-GET_AES_OUTPUT2_DATA
	.section .text$GET_AES_OUTPUT3_DATA
	.type	.text$GET_AES_OUTPUT3_DATA$scode_local_15, @function
	.text$GET_AES_OUTPUT3_DATA$scode_local_15:
	.align	1
	.export	GET_AES_OUTPUT3_DATA
	.type	GET_AES_OUTPUT3_DATA, @function
GET_AES_OUTPUT3_DATA:
.LFB15:
.LM57:
	.cfi_startproc
.LM58:
	LD	r5,#1073751808
	LD.w	r0,[r5+#15]
.LVL19:
.LM59:
	JMP	lr
	.cfi_endproc
.LFE15:
	.size	GET_AES_OUTPUT3_DATA, .-GET_AES_OUTPUT3_DATA
	.section .text$AES_Get_Flag_Status
	.type	.text$AES_Get_Flag_Status$scode_local_16, @function
	.text$AES_Get_Flag_Status$scode_local_16:
	.align	1
	.export	AES_Get_Flag_Status
	.type	AES_Get_Flag_Status, @function
AES_Get_Flag_Status:
.LFB16:
.LM60:
	.cfi_startproc
.LM61:
	LD	r5,#1073751808
	LD.w	r0,[r5]
.LM62:
	LSR	r0,#31
	JMP	lr
	.cfi_endproc
.LFE16:
	.size	AES_Get_Flag_Status, .-AES_Get_Flag_Status
	.section .text$AES_Start
	.type	.text$AES_Start$scode_local_17, @function
	.text$AES_Start$scode_local_17:
	.align	1
	.export	AES_Start
	.type	AES_Start, @function
AES_Start:
.LFB17:
.LM63:
	.cfi_startproc
.LM64:
	LD	r5,#1073751808
	LD.w	r4,[r5]
	SET	r4,#7
	ST.w	[r5],r4
.LM65:
	JMP	lr
	.cfi_endproc
.LFE17:
	.size	AES_Start, .-AES_Start
	.section .text$AES_CLR_Flag_Status
	.type	.text$AES_CLR_Flag_Status$scode_local_18, @function
	.text$AES_CLR_Flag_Status$scode_local_18:
	.align	1
	.export	AES_CLR_Flag_Status
	.type	AES_CLR_Flag_Status, @function
AES_CLR_Flag_Status:
.LFB18:
.LM66:
	.cfi_startproc
.LM67:
	LD	r3,#1073751808
	LD.w	r5,[r3]
	SET	r5,#23
	ST.w	[r3],r5
.L19:
.LBB8:
.LBB9:
.LM68:
	LD	r5,#1073751808
	LD.w	r4,[r3]
	CMP	r4,#0
	JMI	.L19
.LBE9:
.LBE8:
.LM69:
	LD.w	r4,[r5]
	CLR	r4,#23
	ST.w	[r5],r4
.LM70:
	JMP	lr
	.cfi_endproc
.LFE18:
	.size	AES_CLR_Flag_Status, .-AES_CLR_Flag_Status
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_19, @function
	.debug_info$scode_local_19:
.Ldebug_info0:
	.long	0x537
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF57
	.byte	0x1
	.long	.LASF58
	.long	.LASF59
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
	.long	.LASF11
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x2d
	.long	0x9d
	.uleb128 0x6
	.long	.LASF10
	.sleb128 0
	.uleb128 0x7
	.string	"SET"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x30
	.long	0x88
	.uleb128 0x8
	.long	0x53
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x9
	.long	.LASF60
	.byte	0x40
	.byte	0x2
	.short	0x309c
	.long	0x192
	.uleb128 0xa
	.string	"CTL"
	.byte	0x2
	.short	0x309d
	.long	0xa8
	.byte	0
	.uleb128 0xb
	.long	.LASF14
	.byte	0x2
	.short	0x309e
	.long	0x53
	.byte	0x4
	.uleb128 0xb
	.long	.LASF15
	.byte	0x2
	.short	0x309f
	.long	0xa8
	.byte	0x8
	.uleb128 0xb
	.long	.LASF16
	.byte	0x2
	.short	0x30a0
	.long	0xa8
	.byte	0xc
	.uleb128 0xb
	.long	.LASF17
	.byte	0x2
	.short	0x30a1
	.long	0xa8
	.byte	0x10
	.uleb128 0xb
	.long	.LASF18
	.byte	0x2
	.short	0x30a2
	.long	0xa8
	.byte	0x14
	.uleb128 0xb
	.long	.LASF19
	.byte	0x2
	.short	0x30a3
	.long	0xa8
	.byte	0x18
	.uleb128 0xb
	.long	.LASF20
	.byte	0x2
	.short	0x30a4
	.long	0xa8
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF21
	.byte	0x2
	.short	0x30a5
	.long	0xa8
	.byte	0x20
	.uleb128 0xb
	.long	.LASF22
	.byte	0x2
	.short	0x30a6
	.long	0xa8
	.byte	0x24
	.uleb128 0xb
	.long	.LASF23
	.byte	0x2
	.short	0x30a7
	.long	0xa8
	.byte	0x28
	.uleb128 0xb
	.long	.LASF24
	.byte	0x2
	.short	0x30a8
	.long	0xa8
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF25
	.byte	0x2
	.short	0x30a9
	.long	0xa8
	.byte	0x30
	.uleb128 0xb
	.long	.LASF26
	.byte	0x2
	.short	0x30aa
	.long	0xa8
	.byte	0x34
	.uleb128 0xb
	.long	.LASF27
	.byte	0x2
	.short	0x30ab
	.long	0xa8
	.byte	0x38
	.uleb128 0xb
	.long	.LASF28
	.byte	0x2
	.short	0x30ac
	.long	0xa8
	.byte	0x3c
	.byte	0
	.uleb128 0xc
	.long	.LASF29
	.byte	0x2
	.short	0x30ad
	.long	0xb4
	.uleb128 0xd
	.byte	0x18
	.byte	0x4
	.byte	0x19
	.long	0x1ef
	.uleb128 0xe
	.long	.LASF30
	.byte	0x4
	.byte	0x1b
	.long	0x53
	.byte	0
	.uleb128 0xe
	.long	.LASF31
	.byte	0x4
	.byte	0x1d
	.long	0x53
	.byte	0x4
	.uleb128 0xe
	.long	.LASF32
	.byte	0x4
	.byte	0x1f
	.long	0x53
	.byte	0x8
	.uleb128 0xe
	.long	.LASF33
	.byte	0x4
	.byte	0x21
	.long	0x53
	.byte	0xc
	.uleb128 0xe
	.long	.LASF34
	.byte	0x4
	.byte	0x23
	.long	0x53
	.byte	0x10
	.uleb128 0xe
	.long	.LASF35
	.byte	0x4
	.byte	0x25
	.long	0x53
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF36
	.byte	0x4
	.byte	0x28
	.long	0x19e
	.uleb128 0xf
	.long	.LASF61
	.byte	0x2
	.short	0x3416
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x231
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
	.uleb128 0x10
	.long	.LASF39
	.byte	0x2
	.short	0x3416
	.long	0x53
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.long	0x9d
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.byte	0x25
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x292
	.uleb128 0x13
	.long	.LVL0
	.long	0x26b
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.long	.LVL1
	.long	0x280
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LVL2
	.uleb128 0x14
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2f0
	.uleb128 0x17
	.long	.LASF42
	.byte	0x1
	.byte	0x32
	.long	0x2f0
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.long	.LASF52
	.byte	0x1
	.byte	0x34
	.long	0x53
	.long	.LLST0
	.uleb128 0x19
	.long	0x1fa
	.long	.LBB6
	.long	.LBE6
	.byte	0x1
	.byte	0x4b
	.uleb128 0x1a
	.long	0x224
	.long	.LLST1
	.uleb128 0x1b
	.long	0x218
	.sleb128 -8421568
	.uleb128 0x1c
	.long	0x20c
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.long	0x1ef
	.uleb128 0x16
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x31c
	.uleb128 0x17
	.long	.LASF42
	.byte	0x1
	.byte	0x56
	.long	0x2f0
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x342
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.byte	0x6c
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x368
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.byte	0x72
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x38e
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.byte	0x78
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3b4
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.byte	0x7e
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3da
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.byte	0x89
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x400
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.byte	0x8f
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x426
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.byte	0x95
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x44c
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.byte	0x9b
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.long	0x53
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x476
	.uleb128 0x1f
	.long	.LASF44
	.byte	0x1
	.byte	0xa9
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.long	0x53
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4a0
	.uleb128 0x1f
	.long	.LASF44
	.byte	0x1
	.byte	0xb1
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.long	0x53
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4ca
	.uleb128 0x1f
	.long	.LASF44
	.byte	0x1
	.byte	0xb9
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	0x53
	.long	.LFB15
	.long	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4f4
	.uleb128 0x1f
	.long	.LASF44
	.byte	0x1
	.byte	0xc1
	.long	0x53
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x20
	.long	0x231
	.long	.LFB16
	.long	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0xdc
	.long	.LFB17
	.long	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.byte	0xe9
	.long	.LFB18
	.long	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x23
	.long	0x231
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0xed
	.byte	0
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_20, @function
	.debug_abbrev$scode_local_20:
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0
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
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_21, @function
	.debug_loc$scode_local_21:
.Ldebug_loc0:
.LLST0:
	.long	.LVL3
	.long	.LVL5
	.short	0x18
	.byte	0x70
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 12
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 16
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.short	0x1
	.byte	0x54
	.long	.LVL6
	.long	.LFE2
	.short	0x18
	.byte	0x70
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 12
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 16
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.short	0x18
	.byte	0x70
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 12
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 16
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.short	0x1
	.byte	0x54
	.long	.LVL6
	.long	.LFE2
	.short	0x18
	.byte	0x70
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 12
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 16
	.byte	0x6
	.byte	0x21
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_22, @function
	.debug_aranges$scode_local_22:
	.long	0xa4
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
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_23, @function
	.debug_ranges$scode_local_23:
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
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_24, @function
	.debug_line$scode_local_24:
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
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\SmartDriver_Bootloader\\"
	.ascii	"Peripherals\\inc"
	.byte	0
	.byte	0
	.string	"kf32f_basic_aes.c"
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
	.string	"kf32f_basic_aes.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x18
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
	.byte	0x49
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x2f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x18
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
	.long	.LM12
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13268
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13261
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x1b
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
	.long	.LM16
	.byte	0x6d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x19
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
	.long	.LM24
	.byte	0x83
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x18
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
	.long	.LM27
	.byte	0x89
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
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
	.long	.LM30
	.byte	0x8f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
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
	.long	.LM33
	.byte	0x95
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
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
	.long	.LM36
	.byte	0xa0
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x18
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
	.long	.LM39
	.byte	0xa6
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
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
	.long	.LM42
	.byte	0xac
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
	.long	.LFE10
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0xb2
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
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
	.long	.LM48
	.byte	0xbe
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE12
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
	.byte	0xc6
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE13
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0xce
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE14
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0xd6
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE15
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0xdf
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE16
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0xf3
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE17
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x3
	.sleb128 233
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -34
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x3b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE18
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_25, @function
	.debug_str$scode_local_25:
.LASF41:
	.string	"AES_Struct_Init"
.LASF8:
	.string	"FALSE"
.LASF50:
	.string	"AES_INPUT2_DATA"
.LASF33:
	.string	"m_Run"
.LASF17:
	.string	"KEY0"
.LASF18:
	.string	"KEY1"
.LASF19:
	.string	"KEY2"
.LASF20:
	.string	"KEY3"
.LASF52:
	.string	"tmpreg"
.LASF63:
	.string	"AES_Reset"
.LASF13:
	.string	"sizetype"
.LASF45:
	.string	"AES_KEY1_DATA"
.LASF42:
	.string	"AESInitStruct"
.LASF36:
	.string	"AES_InitTypeDef"
.LASF21:
	.string	"INPUT0"
.LASF22:
	.string	"INPUT1"
.LASF4:
	.string	"short int"
.LASF24:
	.string	"INPUT3"
.LASF25:
	.string	"OUTPUT0"
.LASF26:
	.string	"OUTPUT1"
.LASF27:
	.string	"OUTPUT2"
.LASF28:
	.string	"OUTPUT3"
.LASF23:
	.string	"INPUT2"
.LASF5:
	.string	"long long int"
.LASF32:
	.string	"m_ClockDiv"
.LASF49:
	.string	"AES_INPUT1_DATA"
.LASF35:
	.string	"m_FinishIntClr"
.LASF56:
	.string	"GET_AES_OUTPUT3_DATA"
.LASF61:
	.string	"SFR_Config"
.LASF54:
	.string	"GET_AES_OUTPUT1_DATA"
.LASF39:
	.string	"WriteVal"
.LASF47:
	.string	"AES_KEY3_DATA"
.LASF44:
	.string	"DATA"
.LASF43:
	.string	"AES_KEY0_DATA"
.LASF3:
	.string	"unsigned char"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint32_t"
.LASF37:
	.string	"SfrMem"
.LASF0:
	.string	"unsigned int"
.LASF57:
	.string	"GNU C 4.7.0"
.LASF55:
	.string	"GET_AES_OUTPUT2_DATA"
.LASF1:
	.string	"short unsigned int"
.LASF59:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\SmartDriver_Bootloader\\\\Release"
.LASF34:
	.string	"m_FinishIntEn"
.LASF7:
	.string	"char"
.LASF58:
	.string	"../Peripherals/src/kf32f_basic_aes.c"
.LASF38:
	.string	"SfrMask"
.LASF30:
	.string	"m_OFB"
.LASF14:
	.string	"RESERVED1"
.LASF16:
	.string	"AES_invMCout"
.LASF10:
	.string	"RESET"
.LASF29:
	.string	"AES_SFRmap"
.LASF64:
	.string	"AES_Start"
.LASF51:
	.string	"AES_INPUT3_DATA"
.LASF62:
	.string	"AES_Get_Flag_Status"
.LASF40:
	.string	"AES_Configuration"
.LASF48:
	.string	"AES_INPUT0_DATA"
.LASF9:
	.string	"TRUE"
.LASF53:
	.string	"GET_AES_OUTPUT0_DATA"
.LASF65:
	.string	"AES_CLR_Flag_Status"
.LASF46:
	.string	"AES_KEY2_DATA"
.LASF60:
	.string	"AES_MemMap"
.LASF12:
	.string	"FlagStatus"
.LASF31:
	.string	"m_ClockSelect"
.LASF15:
	.string	"AES_invMCin"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
