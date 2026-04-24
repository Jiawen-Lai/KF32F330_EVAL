	.file	"bsp_usart.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$bsp_usart_init
	.type	.text$bsp_usart_init$scode_local_1, @function
	.text$bsp_usart_init$scode_local_1:
	.align	1
	.export	bsp_usart_init
	.type	bsp_usart_init, @function
bsp_usart_init:
.LFB1:
.LM1:
	.cfi_startproc
.LVL0:
	PUSH	{r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 24
	SUB	sp,#52
	.cfi_def_cfa_offset 76
	MOV	r6,r0
.LM2:
	CMP	r0,#3
	JLS	.L7
.LM3:
	ADD	sp,#52
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	POP	{r6, r7, r8, r9, r10}
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.L7:
	.cfi_restore_state
.LM4:
	MOV	r3,r0
	LSL	r3,#2
	MOV	r9,r3
	LD	r5,#COM_GPIO_PORT
	LD.w	r7,[r5+r3]
	ADD	r4,r0,r0
	MOV	r8,r4
	LD	r5,#COM_TX_PIN
	LD.h	r5,[r5+r4]
	ZXT.h	r10,r5
	MOV	r0,r7
.LVL1:
	MOV	r1,r10
	MOV	r2,#2
	LJMP	GPIO_Write_Mode_Bits
.LVL2:
.LM5:
	MOV	r0,r7
	LD	r5,#COM_TX_PIN_NUM
	MOV	r3,r8
	LD.h	r5,[r5+r3]
	ZXT.h	r1,r5
	LD	r5,#COM_TX_PIN_RMP
	LD.b	r2,[r5+r6]
	LJMP	GPIO_Pin_RMP_Config
.LVL3:
.LM6:
	MOV	r0,r7
	MOV	r1,r10
	MOV	r2,#1
	LJMP	GPIO_Pin_Lock_Config
.LVL4:
.LM7:
	LD	r5,#COM_RX_PIN
	MOV	r4,r8
	LD.h	r5,[r5+r4]
	ZXT.h	r10,r5
	MOV	r0,r7
	MOV	r1,r10
	MOV	r2,#2
	LJMP	GPIO_Write_Mode_Bits
.LVL5:
.LM8:
	MOV	r0,r7
	LD	r5,#COM_RX_PIN_NUM
	MOV	r3,r8
	LD.h	r5,[r5+r3]
	ZXT.h	r1,r5
	LD	r5,#COM_RX_PIN_RMP
	LD.b	r2,[r5+r6]
	LJMP	GPIO_Pin_RMP_Config
.LVL6:
.LM9:
	MOV	r0,r7
	MOV	r1,r10
	MOV	r2,#1
	LJMP	GPIO_Pin_Lock_Config
.LVL7:
.LM10:
	MOV	r0,sp
	LJMP	USART_Struct_Init
.LVL8:
.LM11:
	MOV	r5,#0
	ST.w	[sp],r5
.LM12:
	LD	r4,#98304
	ST.w	[sp+#2],r4
.LM13:
	ST.w	[sp+#3],r5
.LM14:
	ST.w	[sp+#4],r5
.LM15:
	MOV	r4,#2
	ST.h	[sp+#22],r4
.LM16:
	LD	r4,#COM_BAUD
	MOV	r3,r9
	LD.w	r4,[r4+r3]
	LD	r3,#115200
	CMP	r4,r3
	JZ	.L8
.LM17:
	LD	r3,#9600
	CMP	r4,r3
	JZ	.L9
.L4:
.LM18:
	LD	r5,#COM_USART
	MOV	r4,r9
	LD.w	r6,[r5+r4]
.LVL9:
	MOV	r0,r6
	LJMP	USART_Reset
.LVL10:
.LM19:
	MOV	r0,r6
	MOV	r1,sp
	LJMP	USART_Configuration
.LVL11:
.LM20:
	MOV	r0,r6
	MOV	r1,#0
	LJMP	USART_Passageway_Select_Config
.LVL12:
.LM21:
	MOV	r0,r6
	LJMP	USART_Clear_Transmit_BUFR_INT_Flag
.LVL13:
.LM22:
	MOV	r0,r6
	MOV	r1,#1
	LJMP	USART_RESHD_Enable
.LVL14:
.LM23:
	MOV	r0,r6
	MOV	r1,#1
	LJMP	USART_Cmd
.LVL15:
.LM24:
	ADD	sp,#52
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	POP	{r6, r7, r8, r9, r10}
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
.LVL16:
.L9:
	.cfi_restore_state
.LM25:
	MOV	r4,#104
	ST.h	[sp+#23],r4
.LM26:
	ST.h	[sp+#24],r5
.LM27:
	ST.h	[sp+#25],r5
	JMP	.L4
.L8:
.LM28:
	MOV	r5,#8
	ST.h	[sp+#23],r5
.LM29:
	MOV	r5,#1
	ST.h	[sp+#24],r5
.LM30:
	MOV	r5,#13
	ST.h	[sp+#25],r5
	JMP	.L4
	.cfi_endproc
.LFE1:
	.size	bsp_usart_init, .-bsp_usart_init
	.section .rdata$COM_GPIO_PORT
	.type	.rdata$COM_GPIO_PORT$scode_local_2, @function
	.rdata$COM_GPIO_PORT$scode_local_2:
	.align	2
	.type	COM_GPIO_PORT, @object
	.size	COM_GPIO_PORT, 16
COM_GPIO_PORT:
	.long	1342177280
	.long	1342177280
	.long	1342177280
	.long	1342177408
	.section .rdata$COM_TX_PIN
	.type	.rdata$COM_TX_PIN$scode_local_3, @function
	.rdata$COM_TX_PIN$scode_local_3:
	.align	1
	.type	COM_TX_PIN, @object
	.size	COM_TX_PIN, 8
COM_TX_PIN:
	.short	8
	.short	64
	.short	2
	.short	2048
	.section .rdata$COM_TX_PIN_NUM
	.type	.rdata$COM_TX_PIN_NUM$scode_local_4, @function
	.rdata$COM_TX_PIN_NUM$scode_local_4:
	.align	1
	.type	COM_TX_PIN_NUM, @object
	.size	COM_TX_PIN_NUM, 8
COM_TX_PIN_NUM:
	.short	3
	.short	6
	.short	1
	.short	11
	.section .rdata$COM_TX_PIN_RMP
	.type	.rdata$COM_TX_PIN_RMP$scode_local_5, @function
	.rdata$COM_TX_PIN_RMP$scode_local_5:
	.align	2
	.type	COM_TX_PIN_RMP, @object
	.size	COM_TX_PIN_RMP, 4
COM_TX_PIN_RMP:
	.byte	6
	.byte	6
	.byte	5
	.byte	5
	.section .rdata$COM_RX_PIN
	.type	.rdata$COM_RX_PIN$scode_local_6, @function
	.rdata$COM_RX_PIN$scode_local_6:
	.align	1
	.type	COM_RX_PIN, @object
	.size	COM_RX_PIN, 8
COM_RX_PIN:
	.short	4
	.short	32
	.short	1
	.short	1024
	.section .rdata$COM_RX_PIN_NUM
	.type	.rdata$COM_RX_PIN_NUM$scode_local_7, @function
	.rdata$COM_RX_PIN_NUM$scode_local_7:
	.align	1
	.type	COM_RX_PIN_NUM, @object
	.size	COM_RX_PIN_NUM, 8
COM_RX_PIN_NUM:
	.short	2
	.short	5
	.short	0
	.short	10
	.section .rdata$COM_RX_PIN_RMP
	.type	.rdata$COM_RX_PIN_RMP$scode_local_8, @function
	.rdata$COM_RX_PIN_RMP$scode_local_8:
	.align	2
	.type	COM_RX_PIN_RMP, @object
	.size	COM_RX_PIN_RMP, 4
COM_RX_PIN_RMP:
	.byte	6
	.byte	6
	.byte	5
	.byte	11
	.section .rdata$COM_BAUD
	.type	.rdata$COM_BAUD$scode_local_9, @function
	.rdata$COM_BAUD$scode_local_9:
	.align	2
	.type	COM_BAUD, @object
	.size	COM_BAUD, 16
COM_BAUD:
	.long	115200
	.long	115200
	.long	115200
	.long	115200
	.section .rdata$COM_USART
	.type	.rdata$COM_USART$scode_local_10, @function
	.rdata$COM_USART$scode_local_10:
	.align	2
	.type	COM_USART, @object
	.size	COM_USART, 16
COM_USART:
	.long	1073744640
	.long	1073749632
	.long	1073744256
	.long	1073744384
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_11, @function
	.debug_info$scode_local_11:
.Ldebug_info0:
	.long	0x80c
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF153
	.byte	0x1
	.long	.LASF154
	.long	.LASF155
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
	.byte	0x18
	.long	0x37
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x1a
	.long	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.long	0x9e
	.uleb128 0x6
	.long	.LASF11
	.sleb128 0
	.uleb128 0x6
	.long	.LASF12
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x45
	.long	0x2cc
	.uleb128 0x6
	.long	.LASF13
	.sleb128 0
	.uleb128 0x6
	.long	.LASF14
	.sleb128 1
	.uleb128 0x6
	.long	.LASF15
	.sleb128 2
	.uleb128 0x6
	.long	.LASF16
	.sleb128 3
	.uleb128 0x6
	.long	.LASF17
	.sleb128 4
	.uleb128 0x6
	.long	.LASF18
	.sleb128 5
	.uleb128 0x6
	.long	.LASF19
	.sleb128 6
	.uleb128 0x6
	.long	.LASF20
	.sleb128 7
	.uleb128 0x6
	.long	.LASF21
	.sleb128 8
	.uleb128 0x6
	.long	.LASF22
	.sleb128 9
	.uleb128 0x6
	.long	.LASF23
	.sleb128 10
	.uleb128 0x6
	.long	.LASF24
	.sleb128 11
	.uleb128 0x6
	.long	.LASF25
	.sleb128 12
	.uleb128 0x6
	.long	.LASF26
	.sleb128 13
	.uleb128 0x6
	.long	.LASF27
	.sleb128 14
	.uleb128 0x6
	.long	.LASF28
	.sleb128 15
	.uleb128 0x6
	.long	.LASF29
	.sleb128 16
	.uleb128 0x6
	.long	.LASF30
	.sleb128 17
	.uleb128 0x6
	.long	.LASF31
	.sleb128 18
	.uleb128 0x6
	.long	.LASF32
	.sleb128 19
	.uleb128 0x6
	.long	.LASF33
	.sleb128 20
	.uleb128 0x6
	.long	.LASF34
	.sleb128 21
	.uleb128 0x6
	.long	.LASF35
	.sleb128 22
	.uleb128 0x6
	.long	.LASF36
	.sleb128 23
	.uleb128 0x6
	.long	.LASF37
	.sleb128 24
	.uleb128 0x6
	.long	.LASF38
	.sleb128 25
	.uleb128 0x6
	.long	.LASF39
	.sleb128 26
	.uleb128 0x6
	.long	.LASF40
	.sleb128 27
	.uleb128 0x6
	.long	.LASF41
	.sleb128 28
	.uleb128 0x6
	.long	.LASF42
	.sleb128 29
	.uleb128 0x6
	.long	.LASF43
	.sleb128 29
	.uleb128 0x6
	.long	.LASF44
	.sleb128 29
	.uleb128 0x6
	.long	.LASF45
	.sleb128 30
	.uleb128 0x6
	.long	.LASF46
	.sleb128 31
	.uleb128 0x6
	.long	.LASF47
	.sleb128 32
	.uleb128 0x6
	.long	.LASF48
	.sleb128 33
	.uleb128 0x6
	.long	.LASF49
	.sleb128 34
	.uleb128 0x6
	.long	.LASF50
	.sleb128 35
	.uleb128 0x6
	.long	.LASF51
	.sleb128 36
	.uleb128 0x6
	.long	.LASF52
	.sleb128 37
	.uleb128 0x6
	.long	.LASF53
	.sleb128 38
	.uleb128 0x6
	.long	.LASF54
	.sleb128 39
	.uleb128 0x6
	.long	.LASF55
	.sleb128 40
	.uleb128 0x6
	.long	.LASF56
	.sleb128 41
	.uleb128 0x6
	.long	.LASF57
	.sleb128 42
	.uleb128 0x6
	.long	.LASF58
	.sleb128 43
	.uleb128 0x6
	.long	.LASF59
	.sleb128 44
	.uleb128 0x6
	.long	.LASF60
	.sleb128 45
	.uleb128 0x6
	.long	.LASF61
	.sleb128 46
	.uleb128 0x6
	.long	.LASF62
	.sleb128 47
	.uleb128 0x6
	.long	.LASF63
	.sleb128 48
	.uleb128 0x6
	.long	.LASF64
	.sleb128 49
	.uleb128 0x6
	.long	.LASF65
	.sleb128 50
	.uleb128 0x6
	.long	.LASF66
	.sleb128 51
	.uleb128 0x6
	.long	.LASF67
	.sleb128 52
	.uleb128 0x6
	.long	.LASF68
	.sleb128 53
	.uleb128 0x6
	.long	.LASF69
	.sleb128 54
	.uleb128 0x6
	.long	.LASF70
	.sleb128 55
	.uleb128 0x6
	.long	.LASF71
	.sleb128 56
	.uleb128 0x6
	.long	.LASF72
	.sleb128 56
	.uleb128 0x6
	.long	.LASF73
	.sleb128 57
	.uleb128 0x6
	.long	.LASF74
	.sleb128 58
	.uleb128 0x6
	.long	.LASF75
	.sleb128 59
	.uleb128 0x6
	.long	.LASF76
	.sleb128 60
	.uleb128 0x6
	.long	.LASF77
	.sleb128 61
	.uleb128 0x6
	.long	.LASF78
	.sleb128 62
	.uleb128 0x6
	.long	.LASF79
	.sleb128 63
	.uleb128 0x6
	.long	.LASF80
	.sleb128 64
	.uleb128 0x6
	.long	.LASF81
	.sleb128 65
	.uleb128 0x6
	.long	.LASF82
	.sleb128 66
	.uleb128 0x6
	.long	.LASF83
	.sleb128 67
	.uleb128 0x6
	.long	.LASF84
	.sleb128 68
	.uleb128 0x6
	.long	.LASF85
	.sleb128 69
	.uleb128 0x6
	.long	.LASF86
	.sleb128 70
	.uleb128 0x6
	.long	.LASF87
	.sleb128 71
	.uleb128 0x6
	.long	.LASF88
	.sleb128 72
	.uleb128 0x6
	.long	.LASF89
	.sleb128 72
	.uleb128 0x6
	.long	.LASF90
	.sleb128 73
	.uleb128 0x6
	.long	.LASF91
	.sleb128 73
	.uleb128 0x6
	.long	.LASF92
	.sleb128 73
	.uleb128 0x6
	.long	.LASF93
	.sleb128 73
	.uleb128 0x6
	.long	.LASF94
	.sleb128 73
	.uleb128 0x6
	.long	.LASF95
	.sleb128 74
	.uleb128 0x6
	.long	.LASF96
	.sleb128 75
	.uleb128 0x6
	.long	.LASF97
	.sleb128 76
	.uleb128 0x6
	.long	.LASF98
	.sleb128 77
	.uleb128 0x6
	.long	.LASF99
	.sleb128 78
	.uleb128 0x6
	.long	.LASF100
	.sleb128 79
	.byte	0
	.uleb128 0x4
	.long	.LASF101
	.byte	0x3
	.byte	0x9e
	.long	0x9e
	.uleb128 0x7
	.long	.LASF112
	.byte	0x34
	.byte	0x3
	.byte	0xab
	.long	0x368
	.uleb128 0x8
	.string	"PIR"
	.byte	0x3
	.byte	0xac
	.long	0x368
	.byte	0
	.uleb128 0x8
	.string	"POR"
	.byte	0x3
	.byte	0xad
	.long	0x36d
	.byte	0x4
	.uleb128 0x8
	.string	"PUR"
	.byte	0x3
	.byte	0xae
	.long	0x36d
	.byte	0x8
	.uleb128 0x8
	.string	"PDR"
	.byte	0x3
	.byte	0xaf
	.long	0x36d
	.byte	0xc
	.uleb128 0x9
	.long	.LASF102
	.byte	0x3
	.byte	0xb0
	.long	0x36d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF103
	.byte	0x3
	.byte	0xb1
	.long	0x36d
	.byte	0x14
	.uleb128 0x9
	.long	.LASF104
	.byte	0x3
	.byte	0xb2
	.long	0x36d
	.byte	0x18
	.uleb128 0x9
	.long	.LASF105
	.byte	0x3
	.byte	0xb3
	.long	0x36d
	.byte	0x1c
	.uleb128 0x8
	.string	"RMP"
	.byte	0x3
	.byte	0xb4
	.long	0x389
	.byte	0x20
	.uleb128 0x9
	.long	.LASF106
	.byte	0x3
	.byte	0xb5
	.long	0x69
	.byte	0x28
	.uleb128 0x9
	.long	.LASF107
	.byte	0x3
	.byte	0xb6
	.long	0x38e
	.byte	0x2c
	.byte	0
	.uleb128 0xa
	.long	0x36d
	.uleb128 0xb
	.long	0x69
	.uleb128 0xc
	.long	0x69
	.long	0x382
	.uleb128 0xd
	.long	0x382
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF108
	.uleb128 0xb
	.long	0x372
	.uleb128 0xb
	.long	0x372
	.uleb128 0x4
	.long	.LASF109
	.byte	0x3
	.byte	0xb7
	.long	0x2d7
	.uleb128 0xe
	.byte	0x4
	.byte	0x3
	.short	0x26d4
	.long	0x3c0
	.uleb128 0xf
	.long	.LASF110
	.byte	0x3
	.short	0x26d5
	.long	0x36d
	.uleb128 0xf
	.long	.LASF111
	.byte	0x3
	.short	0x26d6
	.long	0x368
	.byte	0
	.uleb128 0x10
	.long	.LASF113
	.byte	0x1c
	.byte	0x3
	.short	0x26d0
	.long	0x422
	.uleb128 0x11
	.long	.LASF114
	.byte	0x3
	.short	0x26d1
	.long	0x36d
	.byte	0
	.uleb128 0x11
	.long	.LASF115
	.byte	0x3
	.short	0x26d2
	.long	0x36d
	.byte	0x4
	.uleb128 0x12
	.string	"STR"
	.byte	0x3
	.short	0x26d3
	.long	0x36d
	.byte	0x8
	.uleb128 0x13
	.long	0x39e
	.byte	0xc
	.uleb128 0x11
	.long	.LASF116
	.byte	0x3
	.short	0x26d8
	.long	0x36d
	.byte	0x10
	.uleb128 0x12
	.string	"IER"
	.byte	0x3
	.short	0x26d9
	.long	0x36d
	.byte	0x14
	.uleb128 0x12
	.string	"ADM"
	.byte	0x3
	.short	0x26da
	.long	0x36d
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.long	.LASF117
	.byte	0x3
	.short	0x26db
	.long	0x3c0
	.uleb128 0xc
	.long	0x69
	.long	0x43e
	.uleb128 0xd
	.long	0x382
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	0x45f
	.uleb128 0x6
	.long	.LASF118
	.sleb128 0
	.uleb128 0x6
	.long	.LASF119
	.sleb128 1
	.uleb128 0x6
	.long	.LASF120
	.sleb128 2
	.uleb128 0x6
	.long	.LASF121
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.long	.LASF122
	.byte	0x4
	.byte	0xd
	.long	0x43e
	.uleb128 0x15
	.byte	0x34
	.byte	0x5
	.byte	0x24
	.long	0x527
	.uleb128 0x9
	.long	.LASF123
	.byte	0x5
	.byte	0x26
	.long	0x69
	.byte	0
	.uleb128 0x9
	.long	.LASF124
	.byte	0x5
	.byte	0x28
	.long	0x69
	.byte	0x4
	.uleb128 0x9
	.long	.LASF125
	.byte	0x5
	.byte	0x29
	.long	0x69
	.byte	0x8
	.uleb128 0x9
	.long	.LASF126
	.byte	0x5
	.byte	0x2a
	.long	0x69
	.byte	0xc
	.uleb128 0x9
	.long	.LASF127
	.byte	0x5
	.byte	0x2b
	.long	0x69
	.byte	0x10
	.uleb128 0x9
	.long	.LASF128
	.byte	0x5
	.byte	0x2c
	.long	0x69
	.byte	0x14
	.uleb128 0x9
	.long	.LASF129
	.byte	0x5
	.byte	0x2d
	.long	0x69
	.byte	0x18
	.uleb128 0x9
	.long	.LASF130
	.byte	0x5
	.byte	0x2e
	.long	0x69
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF131
	.byte	0x5
	.byte	0x2f
	.long	0x69
	.byte	0x20
	.uleb128 0x9
	.long	.LASF132
	.byte	0x5
	.byte	0x30
	.long	0x69
	.byte	0x24
	.uleb128 0x9
	.long	.LASF133
	.byte	0x5
	.byte	0x31
	.long	0x69
	.byte	0x28
	.uleb128 0x9
	.long	.LASF134
	.byte	0x5
	.byte	0x32
	.long	0x5e
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF135
	.byte	0x5
	.byte	0x33
	.long	0x5e
	.byte	0x2e
	.uleb128 0x9
	.long	.LASF136
	.byte	0x5
	.byte	0x34
	.long	0x5e
	.byte	0x30
	.uleb128 0x9
	.long	.LASF137
	.byte	0x5
	.byte	0x35
	.long	0x5e
	.byte	0x32
	.byte	0
	.uleb128 0x4
	.long	.LASF138
	.byte	0x5
	.byte	0x36
	.long	0x46a
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0x3b
	.long	0x553
	.uleb128 0x6
	.long	.LASF139
	.sleb128 0
	.uleb128 0x6
	.long	.LASF140
	.sleb128 1
	.uleb128 0x6
	.long	.LASF141
	.sleb128 2
	.uleb128 0x6
	.long	.LASF142
	.sleb128 3
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF156
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x6dd
	.uleb128 0x17
	.long	.LASF157
	.byte	0x1
	.byte	0x29
	.long	0x45f
	.long	.LLST0
	.uleb128 0x18
	.long	.LASF143
	.byte	0x1
	.byte	0x37
	.long	0x527
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x19
	.long	.LVL2
	.long	0x5a4
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x32
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL3
	.long	0x5d7
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.long	COM_TX_PIN_RMP
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0xe
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.long	COM_TX_PIN_NUM
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL4
	.long	0x5f2
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL5
	.long	0x60d
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x32
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL6
	.long	0x640
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.long	COM_RX_PIN_RMP
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0xe
	.byte	0x78
	.sleb128 0
	.byte	0x3
	.long	COM_RX_PIN_NUM
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.short	0xffff
	.byte	0x1a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL7
	.long	0x65b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL8
	.long	0x66b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL10
	.long	0x67b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL11
	.long	0x691
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL12
	.long	0x6a6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL13
	.long	0x6b6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LVL14
	.long	0x6cb
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL15
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x6ed
	.long	0x6ed
	.uleb128 0xd
	.long	0x382
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.byte	0x4
	.long	0x422
	.uleb128 0x18
	.long	.LASF144
	.byte	0x1
	.byte	0xc
	.long	0x704
	.byte	0x5
	.byte	0x3
	.long	COM_USART
	.uleb128 0xa
	.long	0x6dd
	.uleb128 0xc
	.long	0x719
	.long	0x719
	.uleb128 0xd
	.long	0x382
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.byte	0x4
	.long	0x393
	.uleb128 0x18
	.long	.LASF145
	.byte	0x1
	.byte	0xd
	.long	0x730
	.byte	0x5
	.byte	0x3
	.long	COM_GPIO_PORT
	.uleb128 0xa
	.long	0x709
	.uleb128 0xc
	.long	0x5e
	.long	0x745
	.uleb128 0xd
	.long	0x382
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.long	.LASF146
	.byte	0x1
	.byte	0xf
	.long	0x756
	.byte	0x5
	.byte	0x3
	.long	COM_TX_PIN_NUM
	.uleb128 0xa
	.long	0x735
	.uleb128 0x18
	.long	.LASF147
	.byte	0x1
	.byte	0x10
	.long	0x76c
	.byte	0x5
	.byte	0x3
	.long	COM_RX_PIN_NUM
	.uleb128 0xa
	.long	0x735
	.uleb128 0xc
	.long	0x45
	.long	0x781
	.uleb128 0xd
	.long	0x382
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.long	.LASF148
	.byte	0x1
	.byte	0x12
	.long	0x792
	.byte	0x5
	.byte	0x3
	.long	COM_TX_PIN_RMP
	.uleb128 0xa
	.long	0x771
	.uleb128 0x18
	.long	.LASF149
	.byte	0x1
	.byte	0x13
	.long	0x7a8
	.byte	0x5
	.byte	0x3
	.long	COM_RX_PIN_RMP
	.uleb128 0xa
	.long	0x771
	.uleb128 0x18
	.long	.LASF150
	.byte	0x1
	.byte	0x15
	.long	0x7be
	.byte	0x5
	.byte	0x3
	.long	COM_TX_PIN
	.uleb128 0xa
	.long	0x735
	.uleb128 0x18
	.long	.LASF151
	.byte	0x1
	.byte	0x16
	.long	0x7d4
	.byte	0x5
	.byte	0x3
	.long	COM_RX_PIN
	.uleb128 0xa
	.long	0x735
	.uleb128 0x18
	.long	.LASF152
	.byte	0x1
	.byte	0x18
	.long	0x7ea
	.byte	0x5
	.byte	0x3
	.long	COM_BAUD
	.uleb128 0xa
	.long	0x42e
	.uleb128 0xc
	.long	0x2cc
	.long	0x7ff
	.uleb128 0xd
	.long	0x382
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.long	.LASF158
	.byte	0x1
	.byte	0x1a
	.long	0x80a
	.uleb128 0xa
	.long	0x7ef
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_12, @function
	.debug_abbrev$scode_local_12:
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_13, @function
	.debug_loc$scode_local_13:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.short	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LVL9
	.short	0x1
	.byte	0x56
	.long	.LVL9
	.long	.LVL16
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL16
	.long	.LFE1
	.short	0x1
	.byte	0x56
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_14, @function
	.debug_aranges$scode_local_14:
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
	.type	.debug_ranges$scode_local_15, @function
	.debug_ranges$scode_local_15:
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_16, @function
	.debug_line$scode_local_16:
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
	.ascii	"../BSP"
	.byte	0
	.ascii	"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys"
	.byte	0
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\"
	.ascii	"inc"
	.byte	0
	.byte	0
	.string	"bsp_usart.c"
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
	.string	"bsp_usart.h"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.string	"kf32f_basic_usart.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.string	"kf32f_basic_gpio.h"
	.uleb128 0x3
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x45
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x3
	.sleb128 -42
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x18
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
	.long	.LM22
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE1
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_17, @function
	.debug_str$scode_local_17:
.LASF106:
	.string	"RESERVED"
.LASF15:
	.string	"INT_NMI"
.LASF64:
	.string	"INT_EINT19TO17"
.LASF147:
	.string	"COM_RX_PIN_NUM"
.LASF18:
	.string	"INT_StackFault"
.LASF16:
	.string	"INT_HardFault"
.LASF70:
	.string	"INT_EINT31TO22"
.LASF156:
	.string	"bsp_usart_init"
.LASF0:
	.string	"unsigned int"
.LASF124:
	.string	"m_HalfDuplexClkSource"
.LASF123:
	.string	"m_Mode"
.LASF110:
	.string	"TBUFR"
.LASF128:
	.string	"m_Bit9SEL"
.LASF76:
	.string	"INT_USB"
.LASF52:
	.string	"INT_ADC0"
.LASF53:
	.string	"INT_ADC1"
.LASF85:
	.string	"INT_ADC2"
.LASF151:
	.string	"COM_RX_PIN"
.LASF23:
	.string	"INT_Reserved10"
.LASF7:
	.string	"uint32_t"
.LASF25:
	.string	"INT_Reserved12"
.LASF26:
	.string	"INT_Reserved13"
.LASF12:
	.string	"TRUE"
.LASF38:
	.string	"INT_T1"
.LASF77:
	.string	"INT_T2"
.LASF39:
	.string	"INT_T3"
.LASF78:
	.string	"INT_T4"
.LASF40:
	.string	"INT_T5"
.LASF41:
	.string	"INT_T6"
.LASF43:
	.string	"INT_T7"
.LASF44:
	.string	"INT_T8"
.LASF153:
	.string	"GNU C 4.7.0"
.LASF139:
	.string	"GPIO_MODE_IN"
.LASF125:
	.string	"m_TransferDir"
.LASF105:
	.string	"LOCK"
.LASF31:
	.string	"INT_EINT0"
.LASF32:
	.string	"INT_EINT1"
.LASF33:
	.string	"INT_EINT2"
.LASF34:
	.string	"INT_EINT3"
.LASF35:
	.string	"INT_EINT4"
.LASF116:
	.string	"U7816R"
.LASF83:
	.string	"INT_SPI2"
.LASF135:
	.string	"m_BaudRateInteger"
.LASF49:
	.string	"INT_T15"
.LASF9:
	.string	"long long unsigned int"
.LASF157:
	.string	"com_id"
.LASF107:
	.string	"CTMDCTL"
.LASF145:
	.string	"COM_GPIO_PORT"
.LASF137:
	.string	"m_BaudRateDenominator"
.LASF17:
	.string	"INT_Reserved4"
.LASF20:
	.string	"INT_Reserved7"
.LASF21:
	.string	"INT_Reserved8"
.LASF22:
	.string	"INT_Reserved9"
.LASF24:
	.string	"INT_SVCAll"
.LASF57:
	.string	"INT_DMA0"
.LASF63:
	.string	"INT_DMA1"
.LASF150:
	.string	"COM_TX_PIN"
.LASF27:
	.string	"INT_SoftSV"
.LASF138:
	.string	"USART_InitTypeDef"
.LASF37:
	.string	"INT_EINT15TO10"
.LASF143:
	.string	"USART_InitStructure"
.LASF10:
	.string	"char"
.LASF126:
	.string	"m_WordLength"
.LASF54:
	.string	"INT_CFGL"
.LASF30:
	.string	"INT_EINT16"
.LASF113:
	.string	"USART_MemMap"
.LASF28:
	.string	"INT_SysTick"
.LASF19:
	.string	"INT_AriFault"
.LASF112:
	.string	"GPIO_MemMap"
.LASF5:
	.string	"uint8_t"
.LASF146:
	.string	"COM_TX_PIN_NUM"
.LASF79:
	.string	"INT_CTOUCH"
.LASF99:
	.string	"INT_USART6"
.LASF134:
	.string	"m_BaudRateBRCKS"
.LASF8:
	.string	"long long int"
.LASF69:
	.string	"INT_EINT21TO20"
.LASF90:
	.string	"INT_WKP0"
.LASF91:
	.string	"INT_WKP1"
.LASF92:
	.string	"INT_WKP2"
.LASF93:
	.string	"INT_WKP3"
.LASF94:
	.string	"INT_WKP4"
.LASF29:
	.string	"INT_WWDT"
.LASF103:
	.string	"PMOD"
.LASF136:
	.string	"m_BaudRateNumerator"
.LASF68:
	.string	"INT_T10"
.LASF48:
	.string	"INT_T14"
.LASF155:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF148:
	.string	"COM_TX_PIN_RMP"
.LASF86:
	.string	"INT_T18"
.LASF87:
	.string	"INT_T19"
.LASF13:
	.string	"INT_Initial_SP"
.LASF122:
	.string	"usart_typedef_t"
.LASF55:
	.string	"INT_LCD"
.LASF133:
	.string	"m_HardwareFlowControl"
.LASF72:
	.string	"INT_CLK"
.LASF95:
	.string	"INT_T20"
.LASF96:
	.string	"INT_T21"
.LASF88:
	.string	"INT_T22"
.LASF89:
	.string	"INT_T23"
.LASF102:
	.string	"PODR"
.LASF141:
	.string	"GPIO_MODE_RMP"
.LASF114:
	.string	"CTLR"
.LASF59:
	.string	"INT_USART0"
.LASF60:
	.string	"INT_USART1"
.LASF80:
	.string	"INT_USART2"
.LASF81:
	.string	"INT_USART3"
.LASF82:
	.string	"INT_USART4"
.LASF98:
	.string	"INT_USART5"
.LASF6:
	.string	"uint16_t"
.LASF100:
	.string	"INT_USART7"
.LASF58:
	.string	"INT_CMP"
.LASF73:
	.string	"INT_I2C0"
.LASF74:
	.string	"INT_I2C1"
.LASF75:
	.string	"INT_I2C2"
.LASF97:
	.string	"INT_I2C3"
.LASF42:
	.string	"INT_QEI"
.LASF4:
	.string	"short int"
.LASF142:
	.string	"GPIO_MODE_AN"
.LASF14:
	.string	"INT_Reset"
.LASF131:
	.string	"m_TransmitOrder"
.LASF11:
	.string	"FALSE"
.LASF62:
	.string	"INT_SPI1"
.LASF56:
	.string	"INT_T0"
.LASF84:
	.string	"INT_SPI3"
.LASF36:
	.string	"INT_EINT9TO5"
.LASF61:
	.string	"INT_SPI0"
.LASF67:
	.string	"INT_T9"
.LASF149:
	.string	"COM_RX_PIN_RMP"
.LASF127:
	.string	"m_StopBits"
.LASF108:
	.string	"sizetype"
.LASF154:
	.string	"../BSP/bsp_usart.c"
.LASF71:
	.string	"INT_OSC"
.LASF158:
	.string	"COM_INT"
.LASF118:
	.string	"COM1"
.LASF119:
	.string	"COM2"
.LASF120:
	.string	"COM3"
.LASF121:
	.string	"COM4"
.LASF152:
	.string	"COM_BAUD"
.LASF3:
	.string	"unsigned char"
.LASF129:
	.string	"m_Parity"
.LASF51:
	.string	"INT_EXIC"
.LASF111:
	.string	"RBUFR"
.LASF130:
	.string	"m_ReceiveOrder"
.LASF65:
	.string	"INT_CAN0"
.LASF66:
	.string	"INT_CAN1"
.LASF45:
	.string	"INT_CAN2"
.LASF46:
	.string	"INT_CAN3"
.LASF47:
	.string	"INT_CAN4"
.LASF50:
	.string	"INT_CAN5"
.LASF101:
	.string	"InterruptIndex"
.LASF115:
	.string	"BRGR"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF104:
	.string	"OMOD"
.LASF140:
	.string	"GPIO_MODE_OUT"
.LASF132:
	.string	"m_BRAutoDetect"
.LASF144:
	.string	"COM_USART"
.LASF117:
	.string	"USART_SFRmap"
.LASF109:
	.string	"GPIO_SFRmap"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
