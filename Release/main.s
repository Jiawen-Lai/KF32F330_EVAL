	.file	"main.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .rodata.str1.4
	.type	.rodata.str1.4$scode_local_1, @function
	.rodata.str1.4$scode_local_1:
	.align	2
.LC0:
	.string	"read_byte=0x%02X\r\n"
	.section .text.startup.main
	.type	.text.startup.main$scode_local_2, @function
	.text.startup.main$scode_local_2:
	.align	1
	.export	main
	.type	main, @function
main:
.LFB1:
.LM1:
	.cfi_startproc
	PUSH	{r6, lr}
	.cfi_def_cfa_offset 8
	SUB	sp,#4
	.cfi_def_cfa_offset 12
.LVL0:
.LM2:
	LJMP	SystemInit
.LVL1:
.LM3:
	MOV	r0,#2
	LJMP	kf_eval_usart_init
.LVL2:
.LM4:
	MOV	r0,#0
	LJMP	kf_eval_led_init
.LVL3:
.LM5:
	MOV	r0,#0
	LJMP	kf_eval_led_off
.LVL4:
.LM6:
	MOV	r0,#1
	LJMP	kf_eval_led_init
.LVL5:
.LM7:
	MOV	r0,#1
	LJMP	kf_eval_led_off
.LVL6:
.LM8:
	MOV	r0,#2
	LJMP	kf_eval_led_init
.LVL7:
.LM9:
	MOV	r0,#2
	LJMP	kf_eval_led_off
.LVL8:
.LM10:
	LD	r5,#1075838976
	LD.w	r0,[r5]
	LD	r5,#65534
	ANL	r0,r0,r5
	JNZ	.L12
.LM11:
	LD	r1,#204800
	LJMP	FLASH_Wipe_Configuration_RAM
.LVL9:
.L6:
.LM12:
	MOV	r0,#0
	ST.b	[sp],r0
.LVL10:
.LM13:
	LD	r5,#1075838976
	LD.w	r4,[r5]
	LD	r5,#65534
	ANL	r5,r4,r5
	CMP	r5,r0
	JNZ	.L13
.LM14:
	LD	r0,#204800
	MOV	r1,#170
	LJMP	FLASH_WriteByte
.LVL11:
.L7:
.LM15:
	LD	r0,#204800
	MOV	r1,sp
	LJMP	FLASH_ReadByte
.LVL12:
.LM16:
	MOV	r6,#170
.L10:
	LD	r0,#204800
	MOV	r1,#0
	LJMP	Read_Flash_or_CFR_RAM
.LVL13:
	CMP	r0,r6
	JNZ	.L10
.LM17:
	MOV	r0,#0
	LJMP	kf_eval_led_toggle
.LVL14:
.LM18:
	LD	r0,#.LC0
	LD.b	r1,[sp]
	LJMP	printf
.LVL15:
.LM19:
	LD	r0,#500
	LJMP	delay_ms
.LVL16:
	JMP	.L10
.L13:
.LVL17:
.LM20:
	LJMP	INT_All_Enable
.LVL18:
.LM21:
	LD	r0,#204800
	MOV	r1,#170
	LJMP	FLASH_WriteByte
.LVL19:
.LM22:
	MOV	r0,#1
	LJMP	INT_All_Enable
.LVL20:
	JMP	.L7
.LVL21:
.L12:
.LM23:
	MOV	r0,#0
	LJMP	INT_All_Enable
.LVL22:
.LM24:
	MOV	r0,#0
	LD	r1,#204800
	LJMP	FLASH_Wipe_Configuration_RAM
.LVL23:
.LM25:
	MOV	r0,#1
	LJMP	INT_All_Enable
.LVL24:
	JMP	.L6
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_3, @function
	.debug_info$scode_local_3:
.Ldebug_info0:
	.long	0x4bf
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF58
	.byte	0x1
	.long	.LASF59
	.long	.LASF60
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x2
	.byte	0x16
	.long	0x29
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
	.byte	0x1a
	.long	0x30
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x25
	.long	0x93
	.uleb128 0x6
	.long	.LASF10
	.sleb128 0
	.uleb128 0x6
	.long	.LASF11
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x8
	.long	.LASF61
	.byte	0xa0
	.byte	0x3
	.short	0x5aa
	.long	0x2b5
	.uleb128 0x9
	.long	.LASF13
	.byte	0x3
	.short	0x5ab
	.long	0x93
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x3
	.short	0x5ac
	.long	0x93
	.byte	0x4
	.uleb128 0x9
	.long	.LASF15
	.byte	0x3
	.short	0x5ad
	.long	0x5e
	.byte	0x8
	.uleb128 0x9
	.long	.LASF16
	.byte	0x3
	.short	0x5ae
	.long	0x93
	.byte	0xc
	.uleb128 0x9
	.long	.LASF17
	.byte	0x3
	.short	0x5af
	.long	0x5e
	.byte	0x10
	.uleb128 0x9
	.long	.LASF18
	.byte	0x3
	.short	0x5b0
	.long	0x93
	.byte	0x14
	.uleb128 0x9
	.long	.LASF19
	.byte	0x3
	.short	0x5b1
	.long	0x5e
	.byte	0x18
	.uleb128 0x9
	.long	.LASF20
	.byte	0x3
	.short	0x5b2
	.long	0x93
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF21
	.byte	0x3
	.short	0x5b3
	.long	0x5e
	.byte	0x20
	.uleb128 0x9
	.long	.LASF22
	.byte	0x3
	.short	0x5b4
	.long	0x93
	.byte	0x24
	.uleb128 0x9
	.long	.LASF23
	.byte	0x3
	.short	0x5b5
	.long	0x5e
	.byte	0x28
	.uleb128 0x9
	.long	.LASF24
	.byte	0x3
	.short	0x5b6
	.long	0x93
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF25
	.byte	0x3
	.short	0x5b7
	.long	0x5e
	.byte	0x30
	.uleb128 0xa
	.string	"IP0"
	.byte	0x3
	.short	0x5b8
	.long	0x93
	.byte	0x34
	.uleb128 0xa
	.string	"IP1"
	.byte	0x3
	.short	0x5b9
	.long	0x93
	.byte	0x38
	.uleb128 0xa
	.string	"IP2"
	.byte	0x3
	.short	0x5ba
	.long	0x93
	.byte	0x3c
	.uleb128 0xa
	.string	"IP3"
	.byte	0x3
	.short	0x5bb
	.long	0x93
	.byte	0x40
	.uleb128 0xa
	.string	"IP4"
	.byte	0x3
	.short	0x5bc
	.long	0x93
	.byte	0x44
	.uleb128 0xa
	.string	"IP5"
	.byte	0x3
	.short	0x5bd
	.long	0x93
	.byte	0x48
	.uleb128 0xa
	.string	"IP6"
	.byte	0x3
	.short	0x5be
	.long	0x93
	.byte	0x4c
	.uleb128 0xa
	.string	"IP7"
	.byte	0x3
	.short	0x5bf
	.long	0x93
	.byte	0x50
	.uleb128 0xa
	.string	"IP8"
	.byte	0x3
	.short	0x5c0
	.long	0x93
	.byte	0x54
	.uleb128 0xa
	.string	"IP9"
	.byte	0x3
	.short	0x5c1
	.long	0x93
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x3
	.short	0x5c2
	.long	0x93
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF27
	.byte	0x3
	.short	0x5c3
	.long	0x93
	.byte	0x60
	.uleb128 0x9
	.long	.LASF28
	.byte	0x3
	.short	0x5c4
	.long	0x93
	.byte	0x64
	.uleb128 0x9
	.long	.LASF29
	.byte	0x3
	.short	0x5c5
	.long	0x93
	.byte	0x68
	.uleb128 0x9
	.long	.LASF30
	.byte	0x3
	.short	0x5c6
	.long	0x93
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF31
	.byte	0x3
	.short	0x5c7
	.long	0x93
	.byte	0x70
	.uleb128 0x9
	.long	.LASF32
	.byte	0x3
	.short	0x5c8
	.long	0x93
	.byte	0x74
	.uleb128 0x9
	.long	.LASF33
	.byte	0x3
	.short	0x5c9
	.long	0x93
	.byte	0x78
	.uleb128 0x9
	.long	.LASF34
	.byte	0x3
	.short	0x5ca
	.long	0x93
	.byte	0x7c
	.uleb128 0x9
	.long	.LASF35
	.byte	0x3
	.short	0x5cb
	.long	0x93
	.byte	0x80
	.uleb128 0x9
	.long	.LASF36
	.byte	0x3
	.short	0x5cc
	.long	0x93
	.byte	0x84
	.uleb128 0x9
	.long	.LASF37
	.byte	0x3
	.short	0x5cd
	.long	0x93
	.byte	0x88
	.uleb128 0x9
	.long	.LASF38
	.byte	0x3
	.short	0x5ce
	.long	0x93
	.byte	0x8c
	.uleb128 0x9
	.long	.LASF39
	.byte	0x3
	.short	0x5cf
	.long	0x5e
	.byte	0x90
	.uleb128 0x9
	.long	.LASF40
	.byte	0x3
	.short	0x5d0
	.long	0x93
	.byte	0x94
	.uleb128 0x9
	.long	.LASF41
	.byte	0x3
	.short	0x5d1
	.long	0x93
	.byte	0x98
	.uleb128 0x9
	.long	.LASF42
	.byte	0x3
	.short	0x5d2
	.long	0x93
	.byte	0x9c
	.byte	0
	.uleb128 0xb
	.long	.LASF43
	.byte	0x3
	.short	0x5d3
	.long	0x9f
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	0x2dc
	.uleb128 0x6
	.long	.LASF44
	.sleb128 0
	.uleb128 0x6
	.long	.LASF45
	.sleb128 1
	.uleb128 0x6
	.long	.LASF46
	.sleb128 2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0xf
	.long	0x2fd
	.uleb128 0x6
	.long	.LASF47
	.sleb128 0
	.uleb128 0x6
	.long	.LASF48
	.sleb128 1
	.uleb128 0x6
	.long	.LASF49
	.sleb128 2
	.uleb128 0x6
	.long	.LASF50
	.sleb128 3
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.byte	0xe
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.long	.LASF51
	.byte	0x1
	.byte	0x10
	.long	0x4c
	.long	.LLST0
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x11
	.long	0x5e
	.byte	0
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.byte	0x12
	.long	0x5e
	.byte	0
	.uleb128 0xf
	.long	.LASF53
	.byte	0x1
	.byte	0x13
	.long	0x5e
	.byte	0
	.uleb128 0xf
	.long	.LASF54
	.byte	0x1
	.byte	0x14
	.long	0x5e
	.byte	0
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.byte	0x23
	.long	0x5e
	.long	0x32000
	.uleb128 0xd
	.long	.LASF56
	.byte	0x1
	.byte	0x31
	.long	0x4c
	.long	.LLST1
	.uleb128 0xd
	.long	.LASF57
	.byte	0x1
	.byte	0x32
	.long	0x4c
	.long	.LLST2
	.uleb128 0x11
	.long	.LVL2
	.long	0x389
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x11
	.long	.LVL3
	.long	0x398
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LVL4
	.long	0x3a7
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LVL5
	.long	0x3b6
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x11
	.long	.LVL6
	.long	0x3c5
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x11
	.long	.LVL7
	.long	0x3d4
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x11
	.long	.LVL8
	.long	0x3e3
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x11
	.long	.LVL9
	.long	0x3f4
	.uleb128 0x12
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0x49
	.byte	0x3d
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.long	.LVL11
	.long	0x40b
	.uleb128 0x12
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0xaa
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x49
	.byte	0x3d
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.long	.LVL12
	.long	0x422
	.uleb128 0x12
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x49
	.byte	0x3d
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.long	.LVL13
	.long	0x438
	.uleb128 0x12
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x49
	.byte	0x3d
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.long	.LVL14
	.long	0x447
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LVL15
	.long	0x45a
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.long	.LC0
	.byte	0
	.uleb128 0x11
	.long	.LVL16
	.long	0x46b
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.short	0x1f4
	.byte	0
	.uleb128 0x11
	.long	.LVL19
	.long	0x482
	.uleb128 0x12
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0xaa
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0x49
	.byte	0x3d
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.long	.LVL20
	.long	0x491
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x11
	.long	.LVL22
	.long	0x4a0
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LVL23
	.long	0x4b6
	.uleb128 0x12
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0x49
	.byte	0x3d
	.byte	0x24
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.long	.LVL24
	.uleb128 0x12
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
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
	.uleb128 0xe
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
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_5, @function
	.debug_loc$scode_local_5:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL17
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL19
	.short	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL19
	.long	.LVL21
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21
	.long	.LVL23
	.short	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL23
	.long	.LFE1
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL9
	.long	.LVL21
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL10
	.long	.LVL21
	.short	0x2
	.byte	0x91
	.sleb128 -12
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_6, @function
	.debug_aranges$scode_local_6:
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
	.type	.debug_ranges$scode_local_7, @function
	.debug_ranges$scode_local_7:
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
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
	.ascii	".."
	.byte	0
	.ascii	"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys"
	.byte	0
	.ascii	"E:\\KF_Workspace\\Project_WorkSpace\\TEST_Prj\\Peripherals\\"
	.ascii	"inc"
	.byte	0
	.byte	0
	.string	"main.c"
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
	.string	"KF32_EVAL.h"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.byte	0
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x19
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
	.byte	0x18
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
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE1
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_9, @function
	.debug_str$scode_local_9:
.LASF10:
	.string	"FALSE"
.LASF44:
	.string	"LED3"
.LASF4:
	.string	"short int"
.LASF45:
	.string	"LED4"
.LASF60:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF12:
	.string	"sizetype"
.LASF62:
	.string	"main"
.LASF5:
	.string	"uint8_t"
.LASF61:
	.string	"INT_MemMap"
.LASF35:
	.string	"EINTMASK"
.LASF52:
	.string	"temp"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF46:
	.string	"LED5"
.LASF0:
	.string	"unsigned char"
.LASF59:
	.string	"../main.c"
.LASF3:
	.string	"signed char"
.LASF51:
	.string	"INTstate"
.LASF6:
	.string	"uint32_t"
.LASF33:
	.string	"IP17"
.LASF1:
	.string	"unsigned int"
.LASF58:
	.string	"GNU C 4.7.0"
.LASF55:
	.string	"addrtest"
.LASF26:
	.string	"IP10"
.LASF27:
	.string	"IP11"
.LASF28:
	.string	"IP12"
.LASF29:
	.string	"IP13"
.LASF30:
	.string	"IP14"
.LASF31:
	.string	"IP15"
.LASF32:
	.string	"IP16"
.LASF37:
	.string	"EINTFALL"
.LASF34:
	.string	"IP18"
.LASF9:
	.string	"char"
.LASF47:
	.string	"COM1"
.LASF48:
	.string	"COM2"
.LASF49:
	.string	"COM3"
.LASF36:
	.string	"EINTRISE"
.LASF2:
	.string	"short unsigned int"
.LASF14:
	.string	"EIE0"
.LASF16:
	.string	"EIE1"
.LASF18:
	.string	"EIE2"
.LASF15:
	.string	"RESERVED1"
.LASF17:
	.string	"RESERVED2"
.LASF19:
	.string	"RESERVED3"
.LASF21:
	.string	"RESERVED4"
.LASF23:
	.string	"RESERVED5"
.LASF25:
	.string	"RESERVED6"
.LASF39:
	.string	"RESERVED7"
.LASF50:
	.string	"COM4"
.LASF13:
	.string	"CTL0"
.LASF42:
	.string	"CTL1"
.LASF40:
	.string	"EINTSS0"
.LASF41:
	.string	"EINTSS1"
.LASF38:
	.string	"EINTF"
.LASF53:
	.string	"temp1"
.LASF54:
	.string	"temp2"
.LASF11:
	.string	"TRUE"
.LASF57:
	.string	"read_byte"
.LASF56:
	.string	"num8"
.LASF43:
	.string	"INT_SFRmap"
.LASF20:
	.string	"EIF0"
.LASF22:
	.string	"EIF1"
.LASF24:
	.string	"EIF2"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
