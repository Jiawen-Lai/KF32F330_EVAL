	.file	"system_init.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$SystemInit
	.type	.text$SystemInit$scode_local_1, @function
	.text$SystemInit$scode_local_1:
	.align	1
	.export	SystemInit
	.type	SystemInit, @function
SystemInit:
.LFB2:
.LM1:
	.cfi_startproc
	PUSH	{r6, lr}
	.cfi_def_cfa_offset 8
	SUB	sp,#4
	.cfi_def_cfa_offset 12
.LBB4:
.LBB5:
.LM2:
	MOV	r0,#1
	LJMP	OSC_INTLF_Software_Enable
.LVL0:
.LM3:
	MOV	r0,#1
	LJMP	OSC_INTHF_Software_Enable
.LVL1:
.LM4:
	MOV	r4,#194
	LD	r5,#1075839232
	ST.w	[r5+#5],r4
.LM5:
	MOV	r0,#0
	LJMP	OSC_SCK_Division_Config
.LVL2:
.LM6:
	MOV	r0,#0
	LJMP	OSC_SCK_Source_Config
.LVL3:
.LM7:
	MOV	r5,#112
	ST.w	[sp],r5
.LVL4:
.L2:
.LM8:
	LD.w	r5,[sp]
	SUB	r5,r5,#1
	ST.w	[sp],r5
	CMP	r5,#0
	JNZ	.L2
.L5:
.LM9:
	LJMP	OSC_Get_INTHF_INT_Flag
.LVL5:
	MOV	r6,r0
	CMP	r0,#1
	JNZ	.L5
.LM10:
	MOV	r0,#0
	LJMP	OSC_PLL_Input_Source_Config
.LVL6:
.LM11:
	MOV	r0,#36
	MOV	r1,#2
	MOV	r2,#4
	LJMP	OSC_PLL_Multiple_Value_Select
.LVL7:
.LM12:
	MOV	r0,#7
	LJMP	OSC_PLL_Start_Delay_Config
.LVL8:
.LM13:
	MOV	r0,r6
	LJMP	OSC_PLL_Software_Enable
.LVL9:
.LM14:
	LJMP	OSC_PLL_RST
.LVL10:
.L4:
.LM15:
	LJMP	OSC_Get_PLL_INT_Flag
.LVL11:
	MOV	r6,r0
	CMP	r0,#1
	JNZ	.L4
.LM16:
	MOV	r4,#195
	LD	r5,#1075839232
	ST.w	[r5+#5],r4
.LM17:
	MOV	r0,#0
	LJMP	OSC_SCK_Division_Config
.LVL12:
.LM18:
	MOV	r0,#4
	LJMP	OSC_SCK_Source_Config
.LVL13:
.LM19:
	MOV	r0,#0
	LJMP	OSC_HFCK_Division_Config
.LVL14:
.LM20:
	MOV	r0,#0
	LJMP	OSC_HFCK_Source_Config
.LVL15:
.LM21:
	MOV	r0,r6
	LJMP	OSC_HFCK_Enable
.LVL16:
.LM22:
	MOV	r0,#0
	LJMP	OSC_LFCK_Division_Config
.LVL17:
.LM23:
	MOV	r0,#0
	LJMP	OSC_LFCK_Source_Config
.LVL18:
.LM24:
	MOV	r0,r6
	LJMP	OSC_LFCK_Enable
.LVL19:
.LBE5:
.LBE4:
.LM25:
	ADD	sp,#4
	.cfi_def_cfa_offset 8
	POP	r6
	.cfi_def_cfa_offset 4
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	SystemInit, .-SystemInit
	.section .text$systick_delay_init
	.type	.text$systick_delay_init$scode_local_2, @function
	.text$systick_delay_init$scode_local_2:
	.align	1
	.export	systick_delay_init
	.type	systick_delay_init, @function
systick_delay_init:
.LFB3:
.LM26:
	.cfi_startproc
	PUSH	lr
	.cfi_def_cfa_offset 4
.LM27:
	MOV	r0,#0
	LJMP	SYSTICK_Cmd
.LVL20:
.LM28:
	MOV	r0,#0
	LJMP	SYSTICK_Clock_Config
.LVL21:
.LM29:
	LD	r5,#1075839148
// inline asm begin
	// 259 "../system_init.c" 1
	CLR [r5], #31
	// 0 "" 2
.LM30:
// inline asm end
	LD	r5,#SystemCoreClock
	LD.w	r4,[r5]
	LD	r5,#2000000
	DIVU	r5,r4,r5
	ZXT.b	r5,r5
	LD	r4,#fac_us
	ST.b	[r4],r5
.LM31:
	LD	r4,#1000
	MULS	r5,r5,r4 ;
	NOP
	LD	r4,#fac_ms
	ST.h	[r4],r5
.LM32:
	POP	lr
	.cfi_def_cfa_offset 0
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	systick_delay_init, .-systick_delay_init
	.section .text$systick_delay_us
	.type	.text$systick_delay_us$scode_local_3, @function
	.text$systick_delay_us$scode_local_3:
	.align	1
	.export	systick_delay_us
	.type	systick_delay_us, @function
systick_delay_us:
.LFB4:
.LM33:
	.cfi_startproc
.LVL22:
.LM34:
	LD	r5,#fac_us
	LD.b	r5,[r5]
	MULS	r0,r0,r5 ;
	NOP
.LVL23:
	LD	r2,#1075839136
	ST.w	[r2+#1],r0
.LM35:
	MOV	r5,#0
	ST.w	[r2+#2],r5
.LM36:
	LD.w	r5,[r2]
	SET	r5,#0
	ST.w	[r2],r5
.LM37:
	LD	r3,#65537
.L12:
.LM38:
	LD	r4,#1075839136
	LD.w	r5,[r2]
.LVL24:
.LM39:
	ANL	r5,r5,r3
.LVL25:
	CMP	r5,#1
	JZ	.L12
.LM40:
	LD.w	r5,[r4]
	CLR	r5,#0
	ST.w	[r4],r5
.LM41:
	MOV	r5,#0
	ST.w	[r4+#2],r5
.LM42:
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	systick_delay_us, .-systick_delay_us
	.section .text$systick_delay_ms
	.type	.text$systick_delay_ms$scode_local_4, @function
	.text$systick_delay_ms$scode_local_4:
	.align	1
	.export	systick_delay_ms
	.type	systick_delay_ms, @function
systick_delay_ms:
.LFB5:
.LM43:
	.cfi_startproc
.LVL26:
.LM44:
	LD	r5,#fac_ms
	LD.h	r5,[r5]
	MULS	r0,r0,r5 ;
	NOP
.LVL27:
	LD	r2,#1075839136
	ST.w	[r2+#1],r0
.LM45:
	MOV	r5,#0
	ST.w	[r2+#2],r5
.LM46:
	LD.w	r5,[r2]
	SET	r5,#0
	ST.w	[r2],r5
.LM47:
	LD	r3,#65537
.L18:
.LM48:
	LD	r4,#1075839136
	LD.w	r5,[r2]
.LVL28:
.LM49:
	ANL	r5,r5,r3
.LVL29:
	CMP	r5,#1
	JZ	.L18
.LM50:
	LD.w	r5,[r4]
	CLR	r5,#0
	ST.w	[r4],r5
.LM51:
	MOV	r5,#0
	ST.w	[r4+#2],r5
.LM52:
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	systick_delay_ms, .-systick_delay_ms
	.section .text$SystemCoreClockUpdate
	.type	.text$SystemCoreClockUpdate$scode_local_5, @function
	.text$SystemCoreClockUpdate$scode_local_5:
	.align	1
	.export	SystemCoreClockUpdate
	.type	SystemCoreClockUpdate, @function
SystemCoreClockUpdate:
.LFB6:
.LM53:
	.cfi_startproc
.LVL30:
.LM54:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r5,[r5]
.LVL31:
	LSR	r5,#1
.LVL32:
	MOV	r4,#7
	ANL	r5,r5,r4
.LVL33:
.LM55:
	CMP	r5,#6
	JLS	.L33
.LVL34:
.L24:
.LM56:
	LD	r4,#16000000
	LD	r5,#SystemCoreClock
	ST.w	[r5],r4
.LM57:
	JMP	lr
.LVL35:
.L33:
.LM58:
	LSL	r5,#2
.LVL36:
	LD	r4,#.L31
	LD.w	r5,[r4+r5]
	JMP	r5
	.align	2
	.align 2
.L31:
	.long	.L24
	.long	.L26
	.long	.L24
	.long	.L28
	.long	.L29
	.long	.L24
	.long	.L30
.L28:
.LM59:
	MOV	r4,#1
	LSL	r4,#15
	LD	r5,#SystemCoreClock
	ST.w	[r5],r4
.LM60:
	JMP	lr
.L30:
.LM61:
	LD	r4,#4000000
	LD	r5,#SystemCoreClock
	ST.w	[r5],r4
.LM62:
	JMP	lr
.L26:
.LM63:
	LD	r4,#32000
	LD	r5,#SystemCoreClock
	ST.w	[r5],r4
.LM64:
	JMP	lr
.L29:
.LM65:
	MOV	r4,#1
	LSL	r4,#30
	LD.w	r5,[r4]
.LM66:
	LD	r5,#1073751424
	LD.w	r0,[r5]
.LVL37:
.LM67:
	LD.w	r3,[r5]
.LVL38:
.LM68:
	LD.w	r2,[r5]
.LVL39:
.LM69:
	LD.w	r1,[r4]
.LVL40:
.LM70:
	MOV	r5,#16
	LSL	r4,r0,r5
	LSR	r4,#18
.LM71:
	LD	r0,#16000000
.LVL41:
	MULS	r4,r4,r0 ;
	NOP
.LM72:
	LSR	r2,#20
.LVL42:
	MOV	r5,#3
	ANL	r2,r2,r5
	MOV	r5,#1
	LSL	r2,r5,r2
.LVL43:
.LM73:
	LSR	r1,#16
.LVL44:
	MOV	r0,#7
	ANL	r1,r1,r0
	LSL	r5,r5,r1
.LVL45:
.LM74:
	MULS	r5,r2,r5 ;
	NOP
.LVL46:
.LM75:
	LSR	r3,#16
.LVL47:
	MOV	r2,#15
.LVL48:
	ANL	r3,r3,r2
.LVL49:
.LM76:
	MULS	r5,r5,r3 ;
	NOP
	DIVU	r5,r4,r5
	LD	r4,#SystemCoreClock
	ST.w	[r4],r5
.LM77:
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
	.export	SystemCoreClock
	.section .data$init$SystemCoreClock
	.type	.data$init$SystemCoreClock$scode_local_6, @function
	.data$init$SystemCoreClock$scode_local_6:
	.align	2
	.type	SystemCoreClock, @object
	.size	SystemCoreClock, 4
SystemCoreClock:
	.long	72000000
	.section .bss$static$fac_us
	.type	.bss$static$fac_us$scode_local_7, @function
	.bss$static$fac_us$scode_local_7:
	.type	fac_us, @object
	.size	fac_us, 1
fac_us:
	.fill 1, 1
	.section .bss$static$fac_ms
	.type	.bss$static$fac_ms$scode_local_8, @function
	.bss$static$fac_ms$scode_local_8:
	.align	1
	.type	fac_ms, @object
	.size	fac_ms, 2
fac_ms:
	.fill 2, 1
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_9, @function
	.debug_info$scode_local_9:
.Ldebug_info0:
	.long	0x547
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF59
	.byte	0x1
	.long	.LASF60
	.long	.LASF61
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
	.byte	0x18
	.long	0x3e
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x1a
	.long	0x30
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
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
	.byte	0x2d
	.long	0xb3
	.uleb128 0x6
	.long	.LASF13
	.sleb128 0
	.uleb128 0x7
	.string	"SET"
	.sleb128 1
	.byte	0
	.uleb128 0x8
	.long	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x9
	.long	.LASF21
	.byte	0x18
	.byte	0x3
	.short	0x467
	.long	0x11b
	.uleb128 0xa
	.long	.LASF15
	.byte	0x3
	.short	0x468
	.long	0xb3
	.byte	0
	.uleb128 0xa
	.long	.LASF16
	.byte	0x3
	.short	0x469
	.long	0xb3
	.byte	0x4
	.uleb128 0xb
	.string	"INT"
	.byte	0x3
	.short	0x46a
	.long	0xb3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF17
	.byte	0x3
	.short	0x46b
	.long	0xb3
	.byte	0xc
	.uleb128 0xa
	.long	.LASF18
	.byte	0x3
	.short	0x46c
	.long	0xb3
	.byte	0x10
	.uleb128 0xa
	.long	.LASF19
	.byte	0x3
	.short	0x46d
	.long	0xb3
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x3
	.short	0x46e
	.long	0xbf
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x3
	.short	0x471
	.long	0x142
	.uleb128 0xb
	.string	"CTL"
	.byte	0x3
	.short	0x472
	.long	0xb3
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF23
	.byte	0x3
	.short	0x473
	.long	0x127
	.uleb128 0x9
	.long	.LASF24
	.byte	0x10
	.byte	0x3
	.short	0x1269
	.long	0x18f
	.uleb128 0xb
	.string	"CTL"
	.byte	0x3
	.short	0x126a
	.long	0xb3
	.byte	0
	.uleb128 0xa
	.long	.LASF25
	.byte	0x3
	.short	0x126b
	.long	0xb3
	.byte	0x4
	.uleb128 0xb
	.string	"CV"
	.byte	0x3
	.short	0x126c
	.long	0xb3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF26
	.byte	0x3
	.short	0x126d
	.long	0xb3
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.long	.LASF27
	.byte	0x3
	.short	0x126e
	.long	0x14e
	.uleb128 0x9
	.long	.LASF28
	.byte	0x50
	.byte	0x3
	.short	0x2fa4
	.long	0x286
	.uleb128 0xa
	.long	.LASF29
	.byte	0x3
	.short	0x2fa5
	.long	0xb3
	.byte	0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x3
	.short	0x2fa6
	.long	0xb3
	.byte	0x4
	.uleb128 0xa
	.long	.LASF31
	.byte	0x3
	.short	0x2fa7
	.long	0xb3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF32
	.byte	0x3
	.short	0x2fa8
	.long	0xb3
	.byte	0xc
	.uleb128 0xa
	.long	.LASF33
	.byte	0x3
	.short	0x2fa9
	.long	0x69
	.byte	0x10
	.uleb128 0xb
	.string	"CFG"
	.byte	0x3
	.short	0x2faa
	.long	0xb3
	.byte	0x14
	.uleb128 0xa
	.long	.LASF34
	.byte	0x3
	.short	0x2fab
	.long	0x69
	.byte	0x18
	.uleb128 0xa
	.long	.LASF35
	.byte	0x3
	.short	0x2fac
	.long	0xb3
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF36
	.byte	0x3
	.short	0x2fad
	.long	0xb3
	.byte	0x20
	.uleb128 0xa
	.long	.LASF37
	.byte	0x3
	.short	0x2fae
	.long	0x69
	.byte	0x24
	.uleb128 0xa
	.long	.LASF38
	.byte	0x3
	.short	0x2faf
	.long	0xb3
	.byte	0x28
	.uleb128 0xa
	.long	.LASF39
	.byte	0x3
	.short	0x2fb0
	.long	0xb3
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF40
	.byte	0x3
	.short	0x2fb1
	.long	0xb3
	.byte	0x30
	.uleb128 0xa
	.long	.LASF41
	.byte	0x3
	.short	0x2fb2
	.long	0x69
	.byte	0x34
	.uleb128 0xa
	.long	.LASF42
	.byte	0x3
	.short	0x2fb3
	.long	0xb3
	.byte	0x38
	.uleb128 0xa
	.long	.LASF43
	.byte	0x3
	.short	0x2fb4
	.long	0xb3
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF44
	.byte	0x3
	.short	0x2fb5
	.long	0x296
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.long	0x69
	.long	0x296
	.uleb128 0xe
	.long	0xb8
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x286
	.uleb128 0xc
	.long	.LASF45
	.byte	0x3
	.short	0x2fb6
	.long	0x19b
	.uleb128 0xf
	.long	.LASF62
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.byte	0x1
	.long	0x2c0
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0x6f
	.long	0xb3
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3f5
	.uleb128 0x12
	.long	0x2a7
	.long	.LBB4
	.long	.LBE4
	.byte	0x1
	.byte	0xf6
	.uleb128 0x13
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x14
	.long	0x2b4
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.long	.LVL0
	.long	0x307
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.long	.LVL1
	.long	0x316
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.long	.LVL2
	.long	0x325
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL3
	.long	0x334
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL6
	.long	0x343
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL7
	.long	0x35d
	.uleb128 0x16
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x34
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x32
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LVL8
	.long	0x36c
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x15
	.long	.LVL9
	.long	0x37c
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LVL12
	.long	0x38b
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL13
	.long	0x39a
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x15
	.long	.LVL14
	.long	0x3a9
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL15
	.long	0x3b8
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL16
	.long	0x3c8
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LVL17
	.long	0x3d7
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LVL18
	.long	0x3e6
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.long	.LVL19
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x428
	.uleb128 0x15
	.long	.LVL20
	.long	0x41c
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.long	.LVL21
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.short	0x113
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x462
	.uleb128 0x1a
	.string	"nus"
	.byte	0x1
	.short	0x113
	.long	0x30
	.long	.LLST0
	.uleb128 0x1b
	.long	.LASF50
	.byte	0x1
	.short	0x115
	.long	0x69
	.long	.LLST1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.short	0x12c
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x49c
	.uleb128 0x1a
	.string	"nms"
	.byte	0x1
	.short	0x12c
	.long	0x30
	.long	.LLST2
	.uleb128 0x1b
	.long	.LASF50
	.byte	0x1
	.short	0x12e
	.long	0x69
	.long	.LLST3
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.short	0x142
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x516
	.uleb128 0x1c
	.string	"tmp"
	.byte	0x1
	.short	0x144
	.long	0x69
	.long	.LLST4
	.uleb128 0x1b
	.long	.LASF52
	.byte	0x1
	.short	0x144
	.long	0x69
	.long	.LLST5
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x1
	.short	0x144
	.long	0x69
	.long	.LLST6
	.uleb128 0x1b
	.long	.LASF54
	.byte	0x1
	.short	0x144
	.long	0x69
	.long	.LLST7
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.short	0x145
	.long	0x69
	.long	.LLST8
	.uleb128 0x1d
	.long	.LASF56
	.byte	0x1
	.short	0x146
	.long	0x69
	.long	0xf42400
	.byte	0
	.uleb128 0x1e
	.long	.LASF57
	.byte	0x1
	.byte	0x41
	.long	0x4c
	.byte	0x5
	.byte	0x3
	.long	fac_us
	.uleb128 0x1e
	.long	.LASF58
	.byte	0x1
	.byte	0x42
	.long	0x5e
	.byte	0x5
	.byte	0x3
	.long	fac_ms
	.uleb128 0x1f
	.long	.LASF64
	.byte	0x1
	.byte	0x3b
	.long	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	SystemCoreClock
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_10, @function
	.debug_abbrev$scode_local_10:
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
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x5
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_11, @function
	.debug_loc$scode_local_11:
.Ldebug_loc0:
.LLST0:
	.long	.LVL22
	.long	.LVL23
	.short	0x1
	.byte	0x50
	.long	.LVL23
	.long	.LFE4
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL24
	.long	.LVL25
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST2:
	.long	.LVL26
	.long	.LVL27
	.short	0x1
	.byte	0x50
	.long	.LVL27
	.long	.LFE5
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL28
	.long	.LVL29
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST4:
	.long	.LVL30
	.long	.LVL31
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31
	.long	.LVL32
	.short	0x7
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.long	.LVL33
	.long	.LVL34
	.short	0x1
	.byte	0x55
	.long	.LVL35
	.long	.LVL36
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
.LLST5:
	.long	.LVL30
	.long	.LVL38
	.short	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL38
	.long	.LVL47
	.short	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL49
	.long	.LFE6
	.short	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST6:
	.long	.LVL30
	.long	.LVL37
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL37
	.long	.LVL41
	.short	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0xa
	.short	0x3fff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL30
	.long	.LVL39
	.short	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL39
	.long	.LVL42
	.short	0x9
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x44
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.long	.LVL43
	.long	.LVL48
	.short	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST8:
	.long	.LVL30
	.long	.LVL40
	.short	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL40
	.long	.LVL44
	.short	0x9
	.byte	0x31
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x37
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.long	.LVL45
	.long	.LVL46
	.short	0x1
	.byte	0x55
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_12, @function
	.debug_aranges$scode_local_12:
	.long	0x3c
	.short	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.short	0
	.short	0
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
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_13, @function
	.debug_ranges$scode_local_13:
.Ldebug_ranges0:
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
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_14, @function
	.debug_line$scode_local_14:
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
	.string	"system_init.c"
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
	.byte	0x3
	.sleb128 243
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x3
	.sleb128 -126
	.byte	0x1
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
	.byte	0x19
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
	.byte	0x23
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x4a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x21
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
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x18
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
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x24
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
	.long	.LM26
	.byte	0x3
	.sleb128 255
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x18
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
	.long	.LM31
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
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
	.long	.LM33
	.byte	0x3
	.sleb128 275
	.byte	0x1
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
	.long	.LM36
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
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
	.long	.LM43
	.byte	0x3
	.sleb128 300
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
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
	.long	.LM53
	.byte	0x3
	.sleb128 322
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
	.byte	0x34
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x3
	.sleb128 -32
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x22
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x29
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x3
	.sleb128 -27
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0x32
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM74
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE6
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_15, @function
	.debug_str$scode_local_15:
.LASF39:
	.string	"PROUNLOCK"
.LASF35:
	.string	"ISPADDR"
.LASF11:
	.string	"FALSE"
.LASF26:
	.string	"CALI"
.LASF36:
	.string	"STATE"
.LASF61:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF14:
	.string	"sizetype"
.LASF40:
	.string	"CFGUNLOCK"
.LASF4:
	.string	"short int"
.LASF46:
	.string	"SystemInit"
.LASF54:
	.string	"pll_no"
.LASF37:
	.string	"RESERVED3"
.LASF5:
	.string	"uint8_t"
.LASF38:
	.string	"NVMUNLOCK"
.LASF57:
	.string	"fac_us"
.LASF44:
	.string	"CSRES"
.LASF22:
	.string	"PLL_MemMap"
.LASF50:
	.string	"temp"
.LASF8:
	.string	"long long int"
.LASF12:
	.string	"TRUE"
.LASF58:
	.string	"fac_ms"
.LASF18:
	.string	"HFOSCCAL0"
.LASF19:
	.string	"HFOSCCAL1"
.LASF56:
	.string	"pllsource"
.LASF55:
	.string	"sckdivfactor"
.LASF0:
	.string	"unsigned char"
.LASF27:
	.string	"SYSTICK_SFRmap"
.LASF63:
	.string	"StartUpCounter"
.LASF3:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF28:
	.string	"FLASH_MemMap"
.LASF7:
	.string	"uint32_t"
.LASF1:
	.string	"unsigned int"
.LASF59:
	.string	"GNU C 4.7.0"
.LASF21:
	.string	"OSC_MemMap"
.LASF24:
	.string	"SYSTICK_MemMap"
.LASF53:
	.string	"pll_m"
.LASF52:
	.string	"pll_n"
.LASF2:
	.string	"short unsigned int"
.LASF32:
	.string	"ISPTRG"
.LASF10:
	.string	"char"
.LASF6:
	.string	"uint16_t"
.LASF51:
	.string	"SystemCoreClockUpdate"
.LASF43:
	.string	"CSSTOP"
.LASF45:
	.string	"FLASH_SFRmap"
.LASF64:
	.string	"SystemCoreClock"
.LASF23:
	.string	"PLL_SFRmap"
.LASF33:
	.string	"RESERVED1"
.LASF34:
	.string	"RESERVED2"
.LASF62:
	.string	"SetSysClock"
.LASF41:
	.string	"RESERVED4"
.LASF49:
	.string	"systick_delay_ms"
.LASF15:
	.string	"CTL0"
.LASF16:
	.string	"CTL1"
.LASF17:
	.string	"CTL2"
.LASF13:
	.string	"RESET"
.LASF29:
	.string	"ISPCON0"
.LASF30:
	.string	"ISPCON1"
.LASF60:
	.string	"../system_init.c"
.LASF42:
	.string	"CSSTART"
.LASF47:
	.string	"systick_delay_init"
.LASF48:
	.string	"systick_delay_us"
.LASF25:
	.string	"RELOAD"
.LASF20:
	.string	"OSC_SFRmap"
.LASF31:
	.string	"ISPCMD"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
