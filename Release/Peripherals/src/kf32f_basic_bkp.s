	.file	"kf32f_basic_bkp.c"
	.text	
.Ltext0:
	.cfi_sections	.debug_frame
	.section .text$BKP_Reset
	.type	.text$BKP_Reset$scode_local_1, @function
	.text$BKP_Reset$scode_local_1:
	.align	1
	.export	BKP_Reset
	.type	BKP_Reset, @function
BKP_Reset:
.LFB1:
.LM1:
	.cfi_startproc
.LM2:
	LD	r5,#1073746944
// inline asm begin
	// 30 "../Peripherals/src/kf32f_basic_bkp.c" 1
	SET [r5], #31
	// 0 "" 2
.LM3:
	// 31 "../Peripherals/src/kf32f_basic_bkp.c" 1
	CLR [r5], #31
	// 0 "" 2
.LM4:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE1:
	.size	BKP_Reset, .-BKP_Reset
	.section .text$BKP_Write_And_Read_Enable
	.type	.text$BKP_Write_And_Read_Enable$scode_local_2, @function
	.text$BKP_Write_And_Read_Enable$scode_local_2:
	.align	1
	.export	BKP_Write_And_Read_Enable
	.type	BKP_Write_And_Read_Enable, @function
BKP_Write_And_Read_Enable:
.LFB2:
.LM5:
	.cfi_startproc
.LVL0:
.LM6:
	CMP	r0,#0
	JZ	.L3
.LM7:
	MOV	r5,#1
	LSL	r5,#30
	LD.w	r4,[r5]
.LVL1:
.LM8:
	MOV	r3,#1
	ANL	r4,r4,r3
.LVL2:
	JNZ	.L16
.LM9:
	LD	r3,#pmwrenbkp.1938
	ST.w	[r3],r4
.LM10:
// inline asm begin
	// 69 "../Peripherals/src/kf32f_basic_bkp.c" 1
	SET [r5], #0
	// 0 "" 2
.LM11:
// inline asm end
	LD	r5,#1073747328
	LD.w	r3,[r5]
.LVL3:
.LM12:
	MOV	r4,#1
	LSL	r4,#22
	ANL	r4,r3,r4
	JZ	.L6
.L20:
.LM13:
	MOV	r4,#1
	LD	r5,#bkpregclrbkp.1939
	ST.w	[r5],r4
.LM14:
	LD	r5,#1073747328
	LD.w	r3,[r5]
.LVL4:
.LM15:
	MOV	r4,#128
	ANL	r4,r3,r4
	JZ	.L8
.L21:
.LM16:
	MOV	r4,#1
	LD	r5,#bkpwrbkp.1940
	ST.w	[r5],r4
.LM17:
	JMP	lr
.LVL5:
.L3:
.LM18:
	LD	r5,#pmwrenbkp.1938
	LD.w	r4,[r5]
	CMP	r4,#0
	JNZ	.L17
.LM19:
	MOV	r5,#1
	LSL	r5,#30
// inline asm begin
	// 110 "../Peripherals/src/kf32f_basic_bkp.c" 1
	CLR [r5], #0
	// 0 "" 2
.LM20:
// inline asm end
	LD	r5,#bkpregclrbkp.1939
	LD.w	r4,[r5]
	CMP	r4,#0
	JZ	.L12
.L19:
.LM21:
	MOV	r4,#1
	ST.w	[r5],r4
.LM22:
	LD	r5,#bkpwrbkp.1940
	LD.w	r4,[r5]
	CMP	r4,#0
	JNZ	.L18
.L14:
.LM23:
	LD	r5,#1073747328
// inline asm begin
	// 134 "../Peripherals/src/kf32f_basic_bkp.c" 1
	CLR [r5], #7
	// 0 "" 2
.LM24:
// inline asm end
	JMP	lr
.L17:
.LM25:
	MOV	r4,#1
	ST.w	[r5],r4
.LM26:
	LD	r5,#bkpregclrbkp.1939
	LD.w	r4,[r5]
	CMP	r4,#0
	JNZ	.L19
.L12:
.LM27:
	LD	r5,#1073747328
// inline asm begin
	// 122 "../Peripherals/src/kf32f_basic_bkp.c" 1
	CLR [r5], #22
	// 0 "" 2
.LM28:
// inline asm end
	LD	r5,#bkpwrbkp.1940
	LD.w	r4,[r5]
	CMP	r4,#0
	JZ	.L14
.L18:
.LM29:
	MOV	r4,#1
	ST.w	[r5],r4
.LM30:
	JMP	lr
.LVL6:
.L16:
.LM31:
	LD	r5,#pmwrenbkp.1938
	ST.w	[r5],r3
.LM32:
	LD	r5,#1073747328
	LD.w	r3,[r5]
.LVL7:
.LM33:
	MOV	r4,#1
	LSL	r4,#22
	ANL	r4,r3,r4
	JNZ	.L20
.L6:
.LM34:
	LD	r3,#bkpregclrbkp.1939
.LVL8:
	ST.w	[r3],r4
.LM35:
// inline asm begin
	// 82 "../Peripherals/src/kf32f_basic_bkp.c" 1
	SET [r5], #22
	// 0 "" 2
.LM36:
// inline asm end
	LD	r5,#1073747328
	LD.w	r3,[r5]
.LVL9:
.LM37:
	MOV	r4,#128
	ANL	r4,r3,r4
	JNZ	.L21
.L8:
.LM38:
	LD	r3,#bkpwrbkp.1940
.LVL10:
	ST.w	[r3],r4
.LM39:
// inline asm begin
	// 95 "../Peripherals/src/kf32f_basic_bkp.c" 1
	SET [r5], #7
	// 0 "" 2
.LM40:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE2:
	.size	BKP_Write_And_Read_Enable, .-BKP_Write_And_Read_Enable
	.section .text$BKP_Reset_Enable
	.type	.text$BKP_Reset_Enable$scode_local_3, @function
	.text$BKP_Reset_Enable$scode_local_3:
	.align	1
	.export	BKP_Reset_Enable
	.type	BKP_Reset_Enable, @function
BKP_Reset_Enable:
.LFB3:
.LM41:
	.cfi_startproc
.LVL11:
.LM42:
	LD	r5,#1073746944
.LM43:
	CMP	r0,#0
	JNZ	.L25
.LM44:
// inline asm begin
	// 166 "../Peripherals/src/kf32f_basic_bkp.c" 1
	CLR [r5], #31
	// 0 "" 2
.LM45:
// inline asm end
	JMP	lr
.L25:
.LM46:
// inline asm begin
	// 161 "../Peripherals/src/kf32f_basic_bkp.c" 1
	SET [r5], #31
	// 0 "" 2
.LM47:
// inline asm end
	JMP	lr
	.cfi_endproc
.LFE3:
	.size	BKP_Reset_Enable, .-BKP_Reset_Enable
	.section .text$BKP_Pin_Effective_Level_Config
	.type	.text$BKP_Pin_Effective_Level_Config$scode_local_4, @function
	.text$BKP_Pin_Effective_Level_Config$scode_local_4:
	.align	1
	.export	BKP_Pin_Effective_Level_Config
	.type	BKP_Pin_Effective_Level_Config, @function
BKP_Pin_Effective_Level_Config:
.LFB4:
.LM48:
	.cfi_startproc
.LVL12:
.LM49:
	MOV	r5,#1
	LSL	r5,#20
	LSL	r0,r5,r0
.LVL13:
.LM50:
	LD	r4,#1073746944
	LD.w	r3,[r4]
.LM51:
	CMP	r1,#0
	JNZ	.L29
.LM52:
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4],r5
.LM53:
	JMP	lr
.L29:
.LM54:
	ORL	r5,r0,r3
	ST.w	[r4],r5
.LM55:
	JMP	lr
	.cfi_endproc
.LFE4:
	.size	BKP_Pin_Effective_Level_Config, .-BKP_Pin_Effective_Level_Config
	.section .text$BKP_Pin_Enable
	.type	.text$BKP_Pin_Enable$scode_local_5, @function
	.text$BKP_Pin_Enable$scode_local_5:
	.align	1
	.export	BKP_Pin_Enable
	.type	BKP_Pin_Enable, @function
BKP_Pin_Enable:
.LFB5:
.LM56:
	.cfi_startproc
.LVL14:
.LM57:
	MOV	r5,#1
	LSL	r5,#16
	LSL	r0,r5,r0
.LVL15:
.LM58:
	LD	r4,#1073746944
	LD.w	r3,[r4]
.LM59:
	CMP	r1,#0
	JNZ	.L33
.LM60:
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4],r5
.LM61:
	JMP	lr
.L33:
.LM62:
	ORL	r5,r0,r3
	ST.w	[r4],r5
.LM63:
	JMP	lr
	.cfi_endproc
.LFE5:
	.size	BKP_Pin_Enable, .-BKP_Pin_Enable
	.section .text$BKP_TAMP_SYNC_Mode_Select
	.type	.text$BKP_TAMP_SYNC_Mode_Select$scode_local_6, @function
	.text$BKP_TAMP_SYNC_Mode_Select$scode_local_6:
	.align	1
	.export	BKP_TAMP_SYNC_Mode_Select
	.type	BKP_TAMP_SYNC_Mode_Select, @function
BKP_TAMP_SYNC_Mode_Select:
.LFB6:
.LM64:
	.cfi_startproc
.LVL16:
.LM65:
	LD	r5,#1073746944
	LD.w	r4,[r5]
.LVL17:
	LSL	r0,#4
.LVL18:
.LBB8:
.LBB9:
.LM66:
	CLR	r4,#4
.LVL19:
	ORL	r4,r0,r4
.LBE9:
.LBE8:
.LM67:
	ST.w	[r5],r4
.LM68:
	JMP	lr
	.cfi_endproc
.LFE6:
	.size	BKP_TAMP_SYNC_Mode_Select, .-BKP_TAMP_SYNC_Mode_Select
	.section .text$BKP_TAMP_SCK_Select
	.type	.text$BKP_TAMP_SCK_Select$scode_local_7, @function
	.text$BKP_TAMP_SCK_Select$scode_local_7:
	.align	1
	.export	BKP_TAMP_SCK_Select
	.type	BKP_TAMP_SCK_Select, @function
BKP_TAMP_SCK_Select:
.LFB7:
.LM69:
	.cfi_startproc
.LVL20:
.LM70:
	LD	r5,#1073746944
	LD.w	r4,[r5]
.LVL21:
	LSL	r0,#3
.LVL22:
.LBB10:
.LBB11:
.LM71:
	CLR	r4,#3
.LVL23:
	ORL	r4,r0,r4
.LBE11:
.LBE10:
.LM72:
	ST.w	[r5],r4
.LM73:
	JMP	lr
	.cfi_endproc
.LFE7:
	.size	BKP_TAMP_SCK_Select, .-BKP_TAMP_SCK_Select
	.section .text$BKP_RTC_Clock_Config
	.type	.text$BKP_RTC_Clock_Config$scode_local_8, @function
	.text$BKP_RTC_Clock_Config$scode_local_8:
	.align	1
	.export	BKP_RTC_Clock_Config
	.type	BKP_RTC_Clock_Config, @function
BKP_RTC_Clock_Config:
.LFB8:
.LM74:
	.cfi_startproc
.LVL24:
.LM75:
	LD	r5,#1073746944
	LD.w	r4,[r5]
.LVL25:
.LBB12:
.LBB13:
.LM76:
	CLR	r4,#8
	CLR	r4,#9
.LVL26:
	ORL	r0,r0,r4
.LVL27:
.LBE13:
.LBE12:
.LM77:
	ST.w	[r5],r0
.LM78:
	JMP	lr
	.cfi_endproc
.LFE8:
	.size	BKP_RTC_Clock_Config, .-BKP_RTC_Clock_Config
	.section .text$BKP_External_Clock_Bypass_Enable
	.type	.text$BKP_External_Clock_Bypass_Enable$scode_local_9, @function
	.text$BKP_External_Clock_Bypass_Enable$scode_local_9:
	.align	1
	.export	BKP_External_Clock_Bypass_Enable
	.type	BKP_External_Clock_Bypass_Enable, @function
BKP_External_Clock_Bypass_Enable:
.LFB9:
.LM79:
	.cfi_startproc
.LVL28:
.LM80:
	MOV	r5,#2
	LSL	r0,r5,r0
.LVL29:
.LM81:
	LD	r4,#1073746944
	LD.w	r3,[r4]
.LM82:
	CMP	r1,#0
	JNZ	.L40
.LM83:
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4],r5
.LM84:
	JMP	lr
.L40:
.LM85:
	ORL	r5,r0,r3
	ST.w	[r4],r5
.LM86:
	JMP	lr
	.cfi_endproc
.LFE9:
	.size	BKP_External_Clock_Bypass_Enable, .-BKP_External_Clock_Bypass_Enable
	.section .text$BKP_Data_Config
	.type	.text$BKP_Data_Config$scode_local_10, @function
	.text$BKP_Data_Config$scode_local_10:
	.align	1
	.export	BKP_Data_Config
	.type	BKP_Data_Config, @function
BKP_Data_Config:
.LFB10:
.LM87:
	.cfi_startproc
.LVL30:
.LM88:
	ADD	r0,#16
.LVL31:
	LSL	r0,#2
.LVL32:
	LD	r5,#1073746944
	ST.w	[r5+r0],r1
.LM89:
	JMP	lr
	.cfi_endproc
.LFE10:
	.size	BKP_Data_Config, .-BKP_Data_Config
	.section .text$BKP_Get_Data
	.type	.text$BKP_Get_Data$scode_local_11, @function
	.text$BKP_Get_Data$scode_local_11:
	.align	1
	.export	BKP_Get_Data
	.type	BKP_Get_Data, @function
BKP_Get_Data:
.LFB11:
.LM90:
	.cfi_startproc
.LVL33:
.LM91:
	ADD	r0,#16
.LVL34:
	LSL	r0,#2
.LVL35:
	LD	r5,#1073746944
	LD.w	r0,[r5+r0]
.LVL36:
.LM92:
	JMP	lr
	.cfi_endproc
.LFE11:
	.size	BKP_Get_Data, .-BKP_Get_Data
	.section .text$BKP_Pin_TAMP_INT_Enable
	.type	.text$BKP_Pin_TAMP_INT_Enable$scode_local_12, @function
	.text$BKP_Pin_TAMP_INT_Enable$scode_local_12:
	.align	1
	.export	BKP_Pin_TAMP_INT_Enable
	.type	BKP_Pin_TAMP_INT_Enable, @function
BKP_Pin_TAMP_INT_Enable:
.LFB12:
.LM93:
	.cfi_startproc
.LVL37:
.LM94:
	MOV	r5,#255
	ADD	r5,r5,#1
	LSL	r0,r5,r0
.LVL38:
.LM95:
	LD	r4,#1073746944
	LD.w	r3,[r4+#1]
.LM96:
	CMP	r1,#0
	JNZ	.L46
.LM97:
	NOT	r5,r0
	ANL	r5,r5,r3
	ST.w	[r4+#1],r5
.LM98:
	JMP	lr
.L46:
.LM99:
	ORL	r5,r0,r3
	ST.w	[r4+#1],r5
.LM100:
	JMP	lr
	.cfi_endproc
.LFE12:
	.size	BKP_Pin_TAMP_INT_Enable, .-BKP_Pin_TAMP_INT_Enable
	.section .text$BKP_Get_Pin_TAMP_INT_Flag
	.type	.text$BKP_Get_Pin_TAMP_INT_Flag$scode_local_13, @function
	.text$BKP_Get_Pin_TAMP_INT_Flag$scode_local_13:
	.align	1
	.export	BKP_Get_Pin_TAMP_INT_Flag
	.type	BKP_Get_Pin_TAMP_INT_Flag, @function
BKP_Get_Pin_TAMP_INT_Flag:
.LFB13:
.LM101:
	.cfi_startproc
.LVL39:
.LM102:
	LD	r5,#1073746944
	LD.w	r5,[r5+#1]
.LM103:
	MOV	r4,#1
	LSL	r4,#16
	LSL	r0,r4,r0
.LVL40:
.LM104:
	ANL	r0,r0,r5
	MOV	r5,#0
	SUB	r5,r5,r0
	ORL	r0,r5,r0
.LM105:
	LSR	r0,#31
	JMP	lr
	.cfi_endproc
.LFE13:
	.size	BKP_Get_Pin_TAMP_INT_Flag, .-BKP_Get_Pin_TAMP_INT_Flag
	.section .text$BKP_Clear_Pin_TAMP_INT_Flag
	.type	.text$BKP_Clear_Pin_TAMP_INT_Flag$scode_local_14, @function
	.text$BKP_Clear_Pin_TAMP_INT_Flag$scode_local_14:
	.align	1
	.export	BKP_Clear_Pin_TAMP_INT_Flag
	.type	BKP_Clear_Pin_TAMP_INT_Flag, @function
BKP_Clear_Pin_TAMP_INT_Flag:
.LFB14:
.LM106:
	.cfi_startproc
.LVL41:
.LM107:
	MOV	r1,#1
	LSL	r1,r1,r0
.LVL42:
.LM108:
	MOV	r2,#1
	LSL	r2,#16
	LSL	r2,r2,r0
.LVL43:
.LM109:
	LD	r3,#1073746944
	LD.w	r5,[r3+#1]
	ORL	r5,r1,r5
	ST.w	[r3+#1],r5
	ADD	r0,#16
.LVL44:
.L49:
.LM110:
	LD	r4,#1073746944
	LD.w	r5,[r3+#1]
	ANL	r5,r2,r5
	LSR	r5,r5,r0
	CMP	r5,#0
	JNZ	.L49
.LM111:
	LD.w	r5,[r4+#1]
	NOT	r1,r1
.LVL45:
	ANL	r1,r1,r5
.LVL46:
	ST.w	[r4+#1],r1
.LM112:
	JMP	lr
	.cfi_endproc
.LFE14:
	.size	BKP_Clear_Pin_TAMP_INT_Flag, .-BKP_Clear_Pin_TAMP_INT_Flag
	.section .data$static$pmwrenbkp.1938
	.type	.data$static$pmwrenbkp.1938$scode_local_15, @function
	.data$static$pmwrenbkp.1938$scode_local_15:
	.align	2
	.type	pmwrenbkp.1938, @object
	.size	pmwrenbkp.1938, 4
pmwrenbkp.1938:
	.long	1
	.section .data$static$bkpregclrbkp.1939
	.type	.data$static$bkpregclrbkp.1939$scode_local_16, @function
	.data$static$bkpregclrbkp.1939$scode_local_16:
	.align	2
	.type	bkpregclrbkp.1939, @object
	.size	bkpregclrbkp.1939, 4
bkpregclrbkp.1939:
	.long	1
	.section .data$static$bkpwrbkp.1940
	.type	.data$static$bkpwrbkp.1940$scode_local_17, @function
	.data$static$bkpwrbkp.1940$scode_local_17:
	.align	2
	.type	bkpwrbkp.1940, @object
	.size	bkpwrbkp.1940, 4
bkpwrbkp.1940:
	.long	1
	.text	
.Letext0:
	.section .debug_info
	.type	.debug_info$scode_local_18, @function
	.debug_info$scode_local_18:
.Ldebug_info0:
	.long	0x60d
	.short	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF61
	.byte	0x1
	.long	.LASF62
	.long	.LASF63
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
	.long	0xb8
	.uleb128 0x9
	.long	0x53
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0xa
	.long	.LASF21
	.byte	0x18
	.byte	0x2
	.short	0x467
	.long	0x120
	.uleb128 0xb
	.long	.LASF15
	.byte	0x2
	.short	0x468
	.long	0xb8
	.byte	0
	.uleb128 0xb
	.long	.LASF16
	.byte	0x2
	.short	0x469
	.long	0xb8
	.byte	0x4
	.uleb128 0xc
	.string	"INT"
	.byte	0x2
	.short	0x46a
	.long	0xb8
	.byte	0x8
	.uleb128 0xb
	.long	.LASF17
	.byte	0x2
	.short	0x46b
	.long	0xb8
	.byte	0xc
	.uleb128 0xb
	.long	.LASF18
	.byte	0x2
	.short	0x46c
	.long	0xb8
	.byte	0x10
	.uleb128 0xb
	.long	.LASF19
	.byte	0x2
	.short	0x46d
	.long	0xb8
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.long	.LASF20
	.byte	0x2
	.short	0x46e
	.long	0xc4
	.uleb128 0xa
	.long	.LASF22
	.byte	0x24
	.byte	0x2
	.short	0x2dab
	.long	0x1af
	.uleb128 0xb
	.long	.LASF15
	.byte	0x2
	.short	0x2dac
	.long	0xb8
	.byte	0
	.uleb128 0xb
	.long	.LASF16
	.byte	0x2
	.short	0x2dad
	.long	0xb8
	.byte	0x4
	.uleb128 0xb
	.long	.LASF23
	.byte	0x2
	.short	0x2dae
	.long	0xb3
	.byte	0x8
	.uleb128 0xb
	.long	.LASF24
	.byte	0x2
	.short	0x2daf
	.long	0xb3
	.byte	0xc
	.uleb128 0xb
	.long	.LASF25
	.byte	0x2
	.short	0x2db0
	.long	0xb8
	.byte	0x10
	.uleb128 0xb
	.long	.LASF17
	.byte	0x2
	.short	0x2db1
	.long	0xb8
	.byte	0x14
	.uleb128 0xb
	.long	.LASF26
	.byte	0x2
	.short	0x2db2
	.long	0xb8
	.byte	0x18
	.uleb128 0xb
	.long	.LASF27
	.byte	0x2
	.short	0x2db3
	.long	0xb8
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF28
	.byte	0x2
	.short	0x2db4
	.long	0xb8
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.long	.LASF29
	.byte	0x2
	.short	0x2db5
	.long	0x12c
	.uleb128 0xa
	.long	.LASF30
	.byte	0xc0
	.byte	0x2
	.short	0x2f36
	.long	0x1fd
	.uleb128 0xc
	.string	"CTL"
	.byte	0x2
	.short	0x2f37
	.long	0xb8
	.byte	0
	.uleb128 0xc
	.string	"INT"
	.byte	0x2
	.short	0x2f38
	.long	0xb8
	.byte	0x4
	.uleb128 0xb
	.long	.LASF31
	.byte	0x2
	.short	0x2f39
	.long	0x1fd
	.byte	0x8
	.uleb128 0xb
	.long	.LASF32
	.byte	0x2
	.short	0x2f3a
	.long	0x21d
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.long	0x53
	.long	0x20d
	.uleb128 0xf
	.long	0xbd
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.long	0x53
	.long	0x21d
	.uleb128 0xf
	.long	0xbd
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.long	0x20d
	.uleb128 0xd
	.long	.LASF33
	.byte	0x2
	.short	0x2f3b
	.long	0x1bb
	.uleb128 0x10
	.long	.LASF64
	.byte	0x2
	.short	0x3416
	.byte	0x1
	.long	0x53
	.byte	0x3
	.long	0x265
	.uleb128 0x11
	.long	.LASF34
	.byte	0x2
	.short	0x3416
	.long	0x53
	.uleb128 0x11
	.long	.LASF35
	.byte	0x2
	.short	0x3416
	.long	0x53
	.uleb128 0x11
	.long	.LASF36
	.byte	0x2
	.short	0x3416
	.long	0x53
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2e1
	.uleb128 0x14
	.long	.LASF43
	.byte	0x1
	.byte	0x2e
	.long	0x88
	.byte	0x1
	.byte	0x50
	.uleb128 0x15
	.long	.LASF37
	.byte	0x1
	.byte	0x30
	.long	0x53
	.long	.LLST0
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.byte	0x31
	.long	0x53
	.byte	0x5
	.byte	0x3
	.long	pmwrenbkp.1938
	.uleb128 0x16
	.long	.LASF39
	.byte	0x1
	.byte	0x32
	.long	0x53
	.byte	0x5
	.byte	0x3
	.long	bkpregclrbkp.1939
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.byte	0x33
	.long	0x53
	.byte	0x5
	.byte	0x3
	.long	bkpwrbkp.1940
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x307
	.uleb128 0x14
	.long	.LASF43
	.byte	0x1
	.byte	0x98
	.long	0x88
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x34b
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.byte	0xb6
	.long	0x53
	.long	.LLST1
	.uleb128 0x14
	.long	.LASF46
	.byte	0x1
	.byte	0xb6
	.long	0x53
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.long	.LASF37
	.byte	0x1
	.byte	0xb8
	.long	0x53
	.long	.LLST2
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x38f
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.byte	0xd6
	.long	0x53
	.long	.LLST3
	.uleb128 0x14
	.long	.LASF43
	.byte	0x1
	.byte	0xd6
	.long	0x88
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.long	.LASF37
	.byte	0x1
	.byte	0xd8
	.long	0x53
	.long	.LLST4
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3df
	.uleb128 0x17
	.long	.LASF49
	.byte	0x1
	.byte	0xf4
	.long	0x53
	.long	.LLST5
	.uleb128 0x18
	.long	0x22e
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0xf9
	.uleb128 0x19
	.long	0x258
	.long	.LLST6
	.uleb128 0x1a
	.long	0x24c
	.sleb128 -17
	.uleb128 0x19
	.long	0x240
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.short	0x104
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x432
	.uleb128 0x1c
	.string	"CLK"
	.byte	0x1
	.short	0x104
	.long	0x53
	.long	.LLST8
	.uleb128 0x1d
	.long	0x22e
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.short	0x109
	.uleb128 0x19
	.long	0x258
	.long	.LLST9
	.uleb128 0x1a
	.long	0x24c
	.sleb128 -9
	.uleb128 0x19
	.long	0x240
	.long	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.short	0x116
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x486
	.uleb128 0x1e
	.long	.LASF52
	.byte	0x1
	.short	0x116
	.long	0x53
	.long	.LLST11
	.uleb128 0x1d
	.long	0x22e
	.long	.LBB12
	.long	.LBE12
	.byte	0x1
	.short	0x11c
	.uleb128 0x19
	.long	0x258
	.long	.LLST12
	.uleb128 0x1a
	.long	0x24c
	.sleb128 -769
	.uleb128 0x19
	.long	0x240
	.long	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.short	0x128
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4ce
	.uleb128 0x1e
	.long	.LASF52
	.byte	0x1
	.short	0x128
	.long	0x53
	.long	.LLST14
	.uleb128 0x1f
	.long	.LASF43
	.byte	0x1
	.short	0x128
	.long	0x88
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.long	.LASF37
	.byte	0x1
	.short	0x12a
	.long	0x53
	.long	.LLST15
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.short	0x145
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x506
	.uleb128 0x1e
	.long	.LASF55
	.byte	0x1
	.short	0x145
	.long	0x53
	.long	.LLST16
	.uleb128 0x1f
	.long	.LASF56
	.byte	0x1
	.short	0x145
	.long	0x53
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.short	0x154
	.byte	0x1
	.long	0x53
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x544
	.uleb128 0x1e
	.long	.LASF55
	.byte	0x1
	.short	0x154
	.long	0x53
	.long	.LLST17
	.uleb128 0x20
	.long	.LASF37
	.byte	0x1
	.short	0x156
	.long	0x53
	.long	.LLST18
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.short	0x172
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x58c
	.uleb128 0x1e
	.long	.LASF45
	.byte	0x1
	.short	0x172
	.long	0x53
	.long	.LLST19
	.uleb128 0x1f
	.long	.LASF43
	.byte	0x1
	.short	0x172
	.long	0x88
	.byte	0x1
	.byte	0x51
	.uleb128 0x20
	.long	.LASF37
	.byte	0x1
	.short	0x174
	.long	0x53
	.long	.LLST20
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.short	0x191
	.byte	0x1
	.long	0xa8
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5ca
	.uleb128 0x1e
	.long	.LASF45
	.byte	0x1
	.short	0x191
	.long	0x53
	.long	.LLST21
	.uleb128 0x20
	.long	.LASF37
	.byte	0x1
	.short	0x193
	.long	0x53
	.long	.LLST22
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.short	0x1af
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1e
	.long	.LASF45
	.byte	0x1
	.short	0x1af
	.long	0x53
	.long	.LLST23
	.uleb128 0x20
	.long	.LASF37
	.byte	0x1
	.short	0x1b1
	.long	0x53
	.long	.LLST24
	.uleb128 0x20
	.long	.LASF60
	.byte	0x1
	.short	0x1b2
	.long	0x53
	.long	.LLST25
	.byte	0
	.byte	0
	.section .debug_abbrev
	.type	.debug_abbrev$scode_local_19, @function
	.debug_abbrev$scode_local_19:
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.byte	0
	.section .debug_loc
	.type	.debug_loc$scode_local_20, @function
	.debug_loc$scode_local_20:
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2
	.short	0x1
	.byte	0x54
	.long	.LVL3
	.long	.LVL5
	.short	0x1
	.byte	0x53
	.long	.LVL5
	.long	.LVL6
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.short	0x1
	.byte	0x53
	.long	.LVL9
	.long	.LVL10
	.short	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL12
	.long	.LVL13
	.short	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LFE4
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL12
	.long	.LVL13
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL13
	.long	.LFE4
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL14
	.long	.LVL15
	.short	0x1
	.byte	0x50
	.long	.LVL15
	.long	.LFE5
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL14
	.long	.LVL15
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL15
	.long	.LFE5
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL16
	.long	.LVL18
	.short	0x1
	.byte	0x50
	.long	.LVL18
	.long	.LFE6
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL17
	.long	.LVL18
	.short	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.long	.LVL18
	.long	.LFE6
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL17
	.long	.LVL19
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST8:
	.long	.LVL20
	.long	.LVL22
	.short	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LFE7
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL21
	.long	.LVL22
	.short	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	.LVL22
	.long	.LFE7
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL21
	.long	.LVL23
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST11:
	.long	.LVL24
	.long	.LVL27
	.short	0x1
	.byte	0x50
	.long	.LVL27
	.long	.LFE8
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL25
	.long	.LVL27
	.short	0x1
	.byte	0x50
	.long	.LVL27
	.long	.LFE8
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL25
	.long	.LVL26
	.short	0x1
	.byte	0x54
	.long	0
	.long	0
.LLST14:
	.long	.LVL28
	.long	.LVL29
	.short	0x1
	.byte	0x50
	.long	.LVL29
	.long	.LFE9
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL28
	.long	.LVL29
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL29
	.long	.LFE9
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL30
	.long	.LVL31
	.short	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LVL32
	.short	0x3
	.byte	0x70
	.sleb128 -16
	.byte	0x9f
	.long	.LVL32
	.long	.LFE10
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL33
	.long	.LVL34
	.short	0x1
	.byte	0x50
	.long	.LVL34
	.long	.LVL35
	.short	0x3
	.byte	0x70
	.sleb128 -16
	.byte	0x9f
	.long	.LVL35
	.long	.LFE11
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL33
	.long	.LVL36
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL36
	.long	.LFE11
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST19:
	.long	.LVL37
	.long	.LVL38
	.short	0x1
	.byte	0x50
	.long	.LVL38
	.long	.LFE12
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL37
	.long	.LVL38
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL38
	.long	.LFE12
	.short	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST21:
	.long	.LVL39
	.long	.LVL40
	.short	0x1
	.byte	0x50
	.long	.LVL40
	.long	.LFE13
	.short	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL39
	.long	.LVL40
	.short	0x7
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.long	.LVL40
	.long	.LFE13
	.short	0x8
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL41
	.long	.LVL44
	.short	0x1
	.byte	0x50
	.long	.LVL44
	.long	.LFE14
	.short	0x3
	.byte	0x70
	.sleb128 -16
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL41
	.long	.LVL42
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL42
	.long	.LVL45
	.short	0x1
	.byte	0x51
	.long	.LVL45
	.long	.LVL46
	.short	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL46
	.long	.LFE14
	.short	0x5
	.byte	0x31
	.byte	0x70
	.sleb128 -16
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL41
	.long	.LVL43
	.short	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL43
	.long	.LFE14
	.short	0x1
	.byte	0x52
	.long	0
	.long	0
	.section .debug_aranges
	.type	.debug_aranges$scode_local_21, @function
	.debug_aranges$scode_local_21:
	.long	0x84
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
	.long	0
	.long	0
	.section .debug_ranges
	.type	.debug_ranges$scode_local_22, @function
	.debug_ranges$scode_local_22:
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
	.long	0
	.long	0
	.section .debug_line
	.type	.debug_line$scode_local_23, @function
	.debug_line$scode_local_23:
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
	.string	"kf32f_basic_bkp.c"
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
	.byte	0x32
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x19
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
	.long	.LFE1
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x45
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x47
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x3
	.sleb128 -35
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x1f
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
	.sleb128 -33
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x3
	.sleb128 -74
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x41
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
	.long	.LM41
	.byte	0xaf
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
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
	.long	.LM48
	.byte	0xcd
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
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
	.long	.LM56
	.byte	0xed
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x1e
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
	.long	.LM64
	.byte	0x3
	.sleb128 244
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13087
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13087
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
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
	.long	.LM69
	.byte	0x3
	.sleb128 260
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13071
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13071
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
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
	.long	.LM74
	.byte	0x3
	.sleb128 278
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 13052
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -13052
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM78
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
	.long	.LM79
	.byte	0x3
	.sleb128 296
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM80
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM81
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM84
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM85
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM86
	.byte	0x1e
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
	.long	.LM87
	.byte	0x3
	.sleb128 325
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM88
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM89
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
	.long	.LM90
	.byte	0x3
	.sleb128 340
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM91
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM92
	.byte	0x1a
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
	.long	.LM93
	.byte	0x3
	.sleb128 370
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM95
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM96
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM97
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM100
	.byte	0x1e
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
	.long	.LM101
	.byte	0x3
	.sleb128 401
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM102
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM103
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM104
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM105
	.byte	0x21
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
	.long	.LM106
	.byte	0x3
	.sleb128 431
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM107
	.byte	0x1e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM108
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM109
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM110
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM111
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LM112
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE14
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section .debug_str
	.type	.debug_str$scode_local_24, @function
	.debug_str$scode_local_24:
.LASF23:
	.string	"STA0"
.LASF24:
	.string	"STA1"
.LASF60:
	.string	"tmpreg1"
.LASF30:
	.string	"BKP_MemMap"
.LASF8:
	.string	"FALSE"
.LASF58:
	.string	"BKP_Get_Data"
.LASF22:
	.string	"PM_MemMap"
.LASF25:
	.string	"STAC"
.LASF40:
	.string	"bkpwrbkp"
.LASF37:
	.string	"tmpreg"
.LASF63:
	.string	"E:\\\\KF_Workspace\\\\Project_WorkSpace\\\\TEST_Prj\\\\Release"
.LASF14:
	.string	"sizetype"
.LASF49:
	.string	"Mode"
.LASF4:
	.string	"short int"
.LASF66:
	.string	"BKP_Clear_Pin_TAMP_INT_Flag"
.LASF43:
	.string	"NewState"
.LASF56:
	.string	"WriteData"
.LASF42:
	.string	"BKP_Reset_Enable"
.LASF46:
	.string	"Effective"
.LASF5:
	.string	"long long int"
.LASF18:
	.string	"HFOSCCAL0"
.LASF19:
	.string	"HFOSCCAL1"
.LASF64:
	.string	"SFR_Config"
.LASF36:
	.string	"WriteVal"
.LASF33:
	.string	"BKP_SFRmap"
.LASF47:
	.string	"BKP_Pin_Enable"
.LASF32:
	.string	"DATA"
.LASF29:
	.string	"PM_SFRmap"
.LASF38:
	.string	"pmwrenbkp"
.LASF41:
	.string	"BKP_Write_And_Read_Enable"
.LASF3:
	.string	"unsigned char"
.LASF48:
	.string	"BKP_TAMP_SYNC_Mode_Select"
.LASF53:
	.string	"BKP_External_Clock_Bypass_Enable"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF34:
	.string	"SfrMem"
.LASF0:
	.string	"unsigned int"
.LASF61:
	.string	"GNU C 4.7.0"
.LASF65:
	.string	"BKP_Reset"
.LASF21:
	.string	"OSC_MemMap"
.LASF50:
	.string	"BKP_TAMP_SCK_Select"
.LASF1:
	.string	"short unsigned int"
.LASF51:
	.string	"BKP_RTC_Clock_Config"
.LASF52:
	.string	"Source"
.LASF7:
	.string	"char"
.LASF35:
	.string	"SfrMask"
.LASF57:
	.string	"BKP_Pin_TAMP_INT_Enable"
.LASF55:
	.string	"OrderNumber"
.LASF11:
	.string	"FunctionalState"
.LASF15:
	.string	"CTL0"
.LASF16:
	.string	"CTL1"
.LASF17:
	.string	"CTL2"
.LASF54:
	.string	"BKP_Data_Config"
.LASF59:
	.string	"BKP_Get_Pin_TAMP_INT_Flag"
.LASF12:
	.string	"RESET"
.LASF44:
	.string	"BKP_Pin_Effective_Level_Config"
.LASF39:
	.string	"bkpregclrbkp"
.LASF45:
	.string	"PinSel"
.LASF62:
	.string	"../Peripherals/src/kf32f_basic_bkp.c"
.LASF31:
	.string	"RESERVED"
.LASF9:
	.string	"TRUE"
.LASF13:
	.string	"FlagStatus"
.LASF20:
	.string	"OSC_SFRmap"
.LASF26:
	.string	"CAL0"
.LASF27:
	.string	"CAL1"
.LASF28:
	.string	"CAL2"
	.ident	"GCC: (GNU) 4.7.0-Dec 25 2025-16:17:10"
