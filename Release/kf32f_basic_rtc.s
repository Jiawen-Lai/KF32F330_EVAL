	.file	"kf32f_basic_rtc.c"
	.section .text$RTC_Reset
	.align	1
	.export	RTC_Reset
	.type	RTC_Reset, @function
RTC_Reset:
	MOV	r5,#1
	LSL	r5,#30
// inline asm begin
	// 63 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #0
// inline asm end
	LD	r5,#1073747328
// inline asm begin
	// 64 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #22
	// 65 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #7
// inline asm end
	LD	r5,#1073745664
// inline asm begin
	// 68 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #6
	// 70 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #6
// inline asm end
	JMP	lr
	.size	RTC_Reset, .-RTC_Reset
	.section .text$RTC_Configuration
	.align	1
	.export	RTC_Configuration
	.type	RTC_Configuration, @function
RTC_Configuration:
	PUSH	{r6, r7, r8, r9, r10, r11, r12, lr}
	LD	r5,#1073745664
	CMP	r0,#0
	JZ	.L3
	LD.w	r3,[r5]
	MOV	r5,#16
	ANL	r3,r3,r5
	JZ	.L4
.L9:
	LD.b	r3,[r1+#11]
	LSL	r3,#22
.L5:
	LD	r5,#1073745664
// inline asm begin
	// 136 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #3
// inline asm end
	CMP	r0,#0
	JZ	.L7
.L11:
	LD.b	r0,[r1+#8]
	ZXT.b	r8,r0
	MOV	r4,#10
	MOV	r2,r8
	DIVU	r7,r2,r4
	LD.b	r5,[r1+#9]
	ZXT.b	lr,r5
	MOV	r6,lr
	DIVU	r0,r6,r4
	LD.b	r2,[r1+#10]
	ZXT.b	r10,r2
	MOV	r5,r10
	DIVU	r5,r5,r4
	MOV	r9,r5
	LD	r2,#1073745664
	LD.w	r6,[r2+#2]
	MOV	r12,r6
	LD.b	r6,[r1+#12]
	LSL	r6,#24
	LD	r5,#-125796224
	MOV	r11,r5
	MOV	r5,r12
	ANL	r5,r11
	ORL	r6,r6,r5
	MOV	r11,r6
	MOV	r5,#9
	NOT	r5,r5
	MOV	r6,r9
	MULS	r6,r6,r5
	ADD	r10,r6
	LSL	r9,#4
	ORL	r10,r9
	ZXT.b	r10,r10
	MOV	r6,r11
	ORL	r6,r10
	MOV	r9,r6
	MULS	r6,r7,r5
	ADD	r8,r6
	LSL	r7,#4
	ORL	r8,r7
	ZXT.b	r8,r8
	LSL	r8,#16
	MOV	r7,r9
	ORL	r7,r8
	MULS	r6,r0,r5
	MOV	r8,r6
	MOV	r6,lr
	ADD	r6,r8
	LSL	r0,#4
	ORL	r6,r6,r0
	ZXT.b	r6,r6
	LSL	r6,#8
	ORL	r0,r7,r6
	ORL	r3,r0,r3
	ST.w	[r2+#2],r3
	LD.b	r7,[r1+#14]
	DIVU	r3,r7,r4
	LD.b	r0,[r1+#13]
	ZXT.b	r9,r0
	MOV	r6,r9
	DIVU	r2,r6,r4
	LD.b	r6,[r1+#15]
	DIVU	r4,r6,r4
	MULS	r0,r3,r5
	ADD	r7,r7,r0
	LSL	r3,#4
	ORL	r3,r7,r3
	ZXT.b	r3,r3
	LSL	r3,#8
	MULS	r7,r4,r5
	ADD	r6,r6,r7
	LSL	r4,#4
	ORL	r4,r6,r4
	ZXT.b	r4,r4
	LSL	r4,#16
	ORL	r3,r3,r4
	MULS	r5,r2,r5
	MOV	r4,r9
	ADD	r0,r4,r5
	LSL	r2,#4
	ORL	r2,r0,r2
	ZXT.b	r2,r2
	ORL	r3,r3,r2
.L8:
	LD	r5,#1073745664
	LD.w	r2,[r5+#3]
	LD	r4,#-4161408
	ANL	r4,r2,r4
	ORL	r4,r3,r4
	ST.w	[r5+#3],r4
	LD.w	r4,[r5]
	CLR	r4,#4
	LD.w	r6,[r1+#1]
	ORL	r4,r4,r6
	ST.w	[r5],r4
	LD	r4,#1073746944
	LD.w	r3,[r4]
	CLR	r3,#8
	CLR	r3,#9
	LD.w	r2,[r1]
	ORL	r3,r3,r2
	ST.w	[r4],r3
// inline asm begin
	// 205 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #3
// inline asm end
	POP	{r6, r7, r8, r9, r10, r11, r12, pc}
.L3:
	LD.w	r4,[r5]
	MOV	r5,#16
	ANL	r5,r4,r5
	JNZ	.L9
	ST.b	[r1+#11],r0
	MOV	r3,r0
	LD	r5,#1073745664
// inline asm begin
	// 136 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #3
// inline asm end
	CMP	r0,#0
	JNZ	.L11
.L7:
	LD	r5,#1073745664
	LD.w	r2,[r5+#2]
	LD	r4,#-125796224
	ANL	r4,r2,r4
	LD.b	r2,[r1+#10]
	ORL	r4,r4,r2
	LD.b	r2,[r1+#12]
	LSL	r2,#24
	ORL	r4,r4,r2
	LD.b	r2,[r1+#8]
	LSL	r2,#16
	ORL	r4,r4,r2
	LD.b	r2,[r1+#9]
	LSL	r2,#8
	ORL	r4,r4,r2
	ORL	r3,r4,r3
	ST.w	[r5+#2],r3
	LD.b	r3,[r1+#14]
	LSL	r3,#8
	LD.b	r5,[r1+#15]
	LSL	r5,#16
	ORL	r3,r3,r5
	LD.b	r5,[r1+#13]
	ORL	r3,r3,r5
	JMP	.L8
.L4:
	ST.b	[r1+#11],r3
	JMP	.L5
	.size	RTC_Configuration, .-RTC_Configuration
	.section .text$RTC_Time_Struct_Init
	.align	1
	.export	RTC_Time_Struct_Init
	.type	RTC_Time_Struct_Init, @function
RTC_Time_Struct_Init:
	MOV	r5,#0
	ST.b	[r0],r5
	ST.b	[r0+#1],r5
	ST.b	[r0+#2],r5
	ST.b	[r0+#3],r5
	JMP	lr
	.size	RTC_Time_Struct_Init, .-RTC_Time_Struct_Init
	.section .text$RTC_Date_Struct_Init
	.align	1
	.export	RTC_Date_Struct_Init
	.type	RTC_Date_Struct_Init, @function
RTC_Date_Struct_Init:
	MOV	r5,#1
	ST.b	[r0],r5
	MOV	r4,#0
	ST.b	[r0+#3],r4
	ST.b	[r0+#2],r5
	ST.b	[r0+#1],r5
	JMP	lr
	.size	RTC_Date_Struct_Init, .-RTC_Date_Struct_Init
	.section .text$RTC_Struct_Init
	.align	1
	.export	RTC_Struct_Init
	.type	RTC_Struct_Init, @function
RTC_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.b	[r0+#8],r5
	ST.b	[r0+#9],r5
	ST.b	[r0+#10],r5
	ST.b	[r0+#11],r5
	MOV	r4,#1
	ST.b	[r0+#12],r4
	ST.b	[r0+#15],r5
	ST.b	[r0+#14],r4
	ST.b	[r0+#13],r4
	JMP	lr
	.size	RTC_Struct_Init, .-RTC_Struct_Init
	.section .text$RTC_Get_Time_Configuration
	.align	1
	.export	RTC_Get_Time_Configuration
	.type	RTC_Get_Time_Configuration, @function
RTC_Get_Time_Configuration:
	PUSH	{r6, r7, r8, r9}
	LD	r5,#1073745664
	LD.w	r5,[r5+#2]
	LD	r6,#4128768
	ANL	r6,r5,r6
	LSR	r6,#16
	ZXT.b	r7,r6
	ST.b	[r1],r7
	LD	r3,#32512
	ANL	r3,r5,r3
	LSR	r3,#8
	ZXT.b	r2,r3
	ST.b	[r1+#1],r2
	MOV	r4,#127
	ANL	r4,r5,r4
	MOV	r9,r4
	ST.b	[r1+#2],r4
	MOV	r4,#1
	LSL	r4,#22
	MOV	r8,r4
	MOV	r4,r5
	ANL	r4,r8
	MOV	r8,r4
	LSR	r8,#22
	MOV	r4,r8
	ST.b	[r1+#3],r4
	CMP	r0,#0
	JZ	.L15
	MOV	r4,#4
	LSR	r0,r7,r4
	MOV	r7,#10
	MULS	r0,r0,r7
	MOV	r8,r0
	MOV	r0,#15
	ANL	r6,r6,r0
	ADD	r6,r8
	ST.b	[r1],r6
	LSR	r2,r2,r4
	MULS	r2,r2,r7
	ANL	r3,r3,r0
	ADD	r3,r2,r3
	ST.b	[r1+#1],r3
	MOV	r4,r9
	LSR	r4,#4
	MULS	r7,r4,r7
	ANL	r0,r5,r0
	ADD	r5,r7,r0
	ST.b	[r1+#2],r5
.L15:
	POP	{r6, r7, r8, r9}
	JMP	lr
	.size	RTC_Get_Time_Configuration, .-RTC_Get_Time_Configuration
	.section .text$RTC_Get_Date_Configuration
	.align	1
	.export	RTC_Get_Date_Configuration
	.type	RTC_Get_Date_Configuration, @function
RTC_Get_Date_Configuration:
	PUSH	{r6, r7, r8}
	LD	r5,#1073745664
	LD.w	r3,[r5+#2]
	LD	r4,#117440512
	ANL	r4,r3,r4
	LSR	r4,#24
	ST.b	[r1],r4
	LD.w	r5,[r5+#3]
	LD	r6,#4128768
	ANL	r6,r5,r6
	LSR	r6,#16
	ZXT.b	r7,r6
	ST.b	[r1+#3],r7
	LD	r3,#32512
	ANL	r3,r5,r3
	LSR	r3,#8
	ZXT.b	r2,r3
	ST.b	[r1+#2],r2
	MOV	r4,#127
	ANL	r4,r5,r4
	ST.b	[r1+#1],r4
	CMP	r0,#0
	JZ	.L20
	LSR	r7,#4
	MOV	r8,r7
	MOV	r7,#10
	MOV	r0,r8
	MULS	r0,r0,r7
	MOV	r8,r0
	MOV	r0,#15
	ANL	r6,r6,r0
	ADD	r6,r8
	ST.b	[r1+#3],r6
	LSR	r2,#4
	MULS	r2,r2,r7
	ANL	r3,r3,r0
	ADD	r3,r2,r3
	ST.b	[r1+#2],r3
	LSR	r4,#4
	MULS	r7,r4,r7
	ANL	r0,r5,r0
	ADD	r5,r7,r0
	ST.b	[r1+#1],r5
.L20:
	POP	{r6, r7, r8}
	JMP	lr
	.size	RTC_Get_Date_Configuration, .-RTC_Get_Date_Configuration
	.section .text$RTC_Alarm_Configuration
	.align	1
	.export	RTC_Alarm_Configuration
	.type	RTC_Alarm_Configuration, @function
RTC_Alarm_Configuration:
	PUSH	{r6, r7, r8, r9, r10, r11, r12}
	LD	r5,#1073745664
	CMP	r1,#0
	JZ	.L26
	LD.w	r6,[r5]
	MOV	r5,#16
	ANL	r6,r6,r5
	JZ	.L27
.L32:
	LD.b	r6,[r2+#4]
	LSL	r6,#22
.L28:
	LD	r5,#1073745664
// inline asm begin
	// 425 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #3
// inline asm end
	LD	r5,#1073745668
	CMP	r1,#0
	JNZ	.L33
.L30:
	LD.w	r3,[r2+#3]
	LSL	r3,#23
	LD.w	r4,[r2+#2]
	LSL	r4,#27
	ORL	r3,r3,r4
	LD.w	r4,[r2+#4]
	LSL	r4,#15
	ORL	r3,r3,r4
	LD.w	r4,[r2+#5]
	LSL	r4,#7
	ORL	r3,r3,r4
	LD.b	r4,[r2+#3]
	ORL	r3,r3,r4
	LD.b	r4,[r2]
	LSL	r4,#24
	ORL	r3,r3,r4
	LD.b	r4,[r2+#1]
	LSL	r4,#16
	ORL	r3,r3,r4
	LD.b	r2,[r2+#2]
	LSL	r2,#8
	ORL	r3,r3,r2
	ORL	r3,r3,r6
.L31:
	LD.w	r2,[r0+r5]
	LD	r4,#-268435456
	ANL	r4,r2,r4
	ORL	r4,r3,r4
	ST.w	[r0+r5],r4
	LD	r5,#1073745664
// inline asm begin
	// 475 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #3
// inline asm end
	POP	{r6, r7, r8, r9, r10, r11, r12}
	JMP	lr
.L26:
	LD.w	r4,[r5]
	MOV	r5,#16
	ANL	r5,r4,r5
	JNZ	.L32
	ST.b	[r2+#4],r1
	MOV	r6,r1
	LD	r5,#1073745664
// inline asm begin
	// 425 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #3
// inline asm end
	LD	r5,#1073745668
	CMP	r1,#0
	JZ	.L30
.L33:
	LD.b	r7,[r2+#1]
	ZXT.b	r8,r7
	MOV	r4,#10
	MOV	r1,r8
	DIVU	r3,r1,r4
	LD.b	r7,[r2+#2]
	ZXT.b	r12,r7
	MOV	r7,r12
	DIVU	r1,r7,r4
	LD.b	r7,[r2+#3]
	ZXT.b	r9,r7
	MOV	r7,r9
	DIVU	r4,r7,r4
	LD.w	r7,[r2+#3]
	LSL	r7,#23
	MOV	r11,r7
	LD.w	r7,[r2+#2]
	LSL	r7,#27
	MOV	r10,r7
	MOV	r7,r11
	ORL	r7,r10
	MOV	r10,r7
	LD.w	r7,[r2+#4]
	LSL	r7,#15
	ORL	r10,r7
	LD.w	r7,[r2+#5]
	LSL	r7,#7
	ORL	r10,r7
	LD.b	r2,[r2]
	LSL	r2,#24
	ORL	r10,r2
	MOV	r2,#9
	NOT	r2,r2
	MULS	r7,r4,r2
	ADD	r9,r7
	LSL	r4,#4
	ORL	r9,r4
	ZXT.b	r9,r9
	MOV	r4,r10
	ORL	r4,r9
	MULS	r7,r3,r2
	ADD	r8,r7
	LSL	r3,#4
	ORL	r8,r3
	ZXT.b	r8,r8
	LSL	r8,#16
	MOV	r7,r8
	ORL	r3,r4,r7
	MULS	r2,r1,r2
	MOV	r4,r12
	ADD	r7,r4,r2
	LSL	r1,#4
	ORL	r1,r7,r1
	ZXT.b	r1,r1
	LSL	r1,#8
	ORL	r3,r3,r1
	ORL	r3,r3,r6
	JMP	.L31
.L27:
	ST.b	[r2+#4],r6
	JMP	.L28
	.size	RTC_Alarm_Configuration, .-RTC_Alarm_Configuration
	.section .text$RTC_Alarm_Struct_Init
	.align	1
	.export	RTC_Alarm_Struct_Init
	.type	RTC_Alarm_Struct_Init, @function
RTC_Alarm_Struct_Init:
	MOV	r5,#0
	ST.b	[r0+#4],r5
	MOV	r4,#1
	ST.b	[r0],r4
	ST.w	[r0+#2],r5
	ST.b	[r0+#1],r5
	ST.w	[r0+#3],r5
	ST.b	[r0+#2],r5
	ST.w	[r0+#4],r5
	ST.b	[r0+#3],r5
	ST.w	[r0+#5],r5
	JMP	lr
	.size	RTC_Alarm_Struct_Init, .-RTC_Alarm_Struct_Init
	.section .text$RTC_Clock_Calibration_Config
	.align	1
	.export	RTC_Clock_Calibration_Config
	.type	RTC_Clock_Calibration_Config, @function
RTC_Clock_Calibration_Config:
	LD	r5,#1073745664
	LD.w	r4,[r5]
	LSL	r0,#24
	LD	r3,#16777215
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5],r4
	JMP	lr
	.size	RTC_Clock_Calibration_Config, .-RTC_Clock_Calibration_Config
	.section .text$RTC_Time_Tick_Output_Enable
	.align	1
	.export	RTC_Time_Tick_Output_Enable
	.type	RTC_Time_Tick_Output_Enable, @function
RTC_Time_Tick_Output_Enable:
	LD	r5,#1073745664
	CMP	r0,#0
	JNZ	.L39
// inline asm begin
	// 548 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #23
// inline asm end
	JMP	lr
.L39:
// inline asm begin
	// 543 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #23
// inline asm end
	JMP	lr
	.size	RTC_Time_Tick_Output_Enable, .-RTC_Time_Tick_Output_Enable
	.section .text$RTC_Time_Stamp_Edge_Config
	.align	1
	.export	RTC_Time_Stamp_Edge_Config
	.type	RTC_Time_Stamp_Edge_Config, @function
RTC_Time_Stamp_Edge_Config:
	LD	r5,#1073745664
	CMP	r0,#0
	JNZ	.L43
// inline asm begin
	// 574 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #22
// inline asm end
	JMP	lr
.L43:
// inline asm begin
	// 569 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #22
// inline asm end
	JMP	lr
	.size	RTC_Time_Stamp_Edge_Config, .-RTC_Time_Stamp_Edge_Config
	.section .text$RTC_Time_Stamp_Edge_Enable
	.align	1
	.export	RTC_Time_Stamp_Edge_Enable
	.type	RTC_Time_Stamp_Edge_Enable, @function
RTC_Time_Stamp_Edge_Enable:
	LD	r5,#1073745664
	CMP	r0,#0
	JNZ	.L47
// inline asm begin
	// 598 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #21
// inline asm end
	JMP	lr
.L47:
// inline asm begin
	// 593 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #21
// inline asm end
	JMP	lr
	.size	RTC_Time_Stamp_Edge_Enable, .-RTC_Time_Stamp_Edge_Enable
	.section .text$RTC_Add_One_Hour_Enable
	.align	1
	.export	RTC_Add_One_Hour_Enable
	.type	RTC_Add_One_Hour_Enable, @function
RTC_Add_One_Hour_Enable:
	LD	r5,#1073745664
	CMP	r0,#0
	JNZ	.L51
// inline asm begin
	// 622 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #20
// inline asm end
	JMP	lr
.L51:
// inline asm begin
	// 617 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #20
// inline asm end
	JMP	lr
	.size	RTC_Add_One_Hour_Enable, .-RTC_Add_One_Hour_Enable
	.section .text$RTC_Sub_One_Hour_Enable
	.align	1
	.export	RTC_Sub_One_Hour_Enable
	.type	RTC_Sub_One_Hour_Enable, @function
RTC_Sub_One_Hour_Enable:
	LD	r5,#1073745664
	CMP	r0,#0
	JNZ	.L55
// inline asm begin
	// 646 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #19
// inline asm end
	JMP	lr
.L55:
// inline asm begin
	// 641 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #19
// inline asm end
	JMP	lr
	.size	RTC_Sub_One_Hour_Enable, .-RTC_Sub_One_Hour_Enable
	.section .text$RTC_Time_Tick_Config
	.align	1
	.export	RTC_Time_Tick_Config
	.type	RTC_Time_Tick_Config, @function
RTC_Time_Tick_Config:
	LD	r5,#1073745664
	LD.w	r3,[r5]
	LD	r4,#-458753
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5],r0
	JMP	lr
	.size	RTC_Time_Tick_Config, .-RTC_Time_Tick_Config
	.section .text$RTC_Start_Config
	.align	1
	.export	RTC_Start_Config
	.type	RTC_Start_Config, @function
RTC_Start_Config:
	LD	r5,#1073745664
	LD.w	r3,[r5]
	LD	r4,#-65281
	ANL	r4,r3,r4
	LD	r3,#21760
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
	.size	RTC_Start_Config, .-RTC_Start_Config
	.section .text$RTC_Reset_Config
	.align	1
	.export	RTC_Reset_Config
	.type	RTC_Reset_Config, @function
RTC_Reset_Config:
	LD	r5,#1073745664
// inline asm begin
	// 698 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #6
	// 700 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #6
// inline asm end
	JMP	lr
	.size	RTC_Reset_Config, .-RTC_Reset_Config
	.section .text$RTC_Get_Leap_Year_Flag
	.align	1
	.export	RTC_Get_Leap_Year_Flag
	.type	RTC_Get_Leap_Year_Flag, @function
RTC_Get_Leap_Year_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5]
	LSR	r0,#5
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Leap_Year_Flag, .-RTC_Get_Leap_Year_Flag
	.section .text$RTC_Hour_Format_Config
	.align	1
	.export	RTC_Hour_Format_Config
	.type	RTC_Hour_Format_Config, @function
RTC_Hour_Format_Config:
	LD	r5,#1073745664
	CMP	r0,#0
	JNZ	.L63
// inline asm begin
	// 746 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #4
// inline asm end
	JMP	lr
.L63:
// inline asm begin
	// 741 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #4
// inline asm end
	JMP	lr
	.size	RTC_Hour_Format_Config, .-RTC_Hour_Format_Config
	.section .text$RTC_Config_Mode_Enable
	.align	1
	.export	RTC_Config_Mode_Enable
	.type	RTC_Config_Mode_Enable, @function
RTC_Config_Mode_Enable:
	LD	r5,#1073745664
	CMP	r0,#0
	JNZ	.L67
// inline asm begin
	// 770 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #3
// inline asm end
	JMP	lr
.L67:
// inline asm begin
	// 765 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #3
// inline asm end
	JMP	lr
	.size	RTC_Config_Mode_Enable, .-RTC_Config_Mode_Enable
	.section .text$RTC_Get_Operation_Off_Flag
	.align	1
	.export	RTC_Get_Operation_Off_Flag
	.type	RTC_Get_Operation_Off_Flag, @function
RTC_Get_Operation_Off_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Operation_Off_Flag, .-RTC_Get_Operation_Off_Flag
	.section .text$RTC_Get_Action_State_Flag
	.align	1
	.export	RTC_Get_Action_State_Flag
	.type	RTC_Get_Action_State_Flag, @function
RTC_Get_Action_State_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Action_State_Flag, .-RTC_Get_Action_State_Flag
	.section .text$RTC_Enable
	.align	1
	.export	RTC_Enable
	.type	RTC_Enable, @function
RTC_Enable:
	LD	r5,#1073745664
	CMP	r0,#0
	JNZ	.L73
// inline asm begin
	// 838 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #0
// inline asm end
	JMP	lr
.L73:
// inline asm begin
	// 833 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #0
// inline asm end
	JMP	lr
	.size	RTC_Enable, .-RTC_Enable
	.section .text$RTC_Alarm_A_Enable
	.align	1
	.export	RTC_Alarm_A_Enable
	.type	RTC_Alarm_A_Enable, @function
RTC_Alarm_A_Enable:
	LD	r5,#1073745668
	CMP	r0,#0
	JNZ	.L77
// inline asm begin
	// 869 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #31
// inline asm end
	JMP	lr
.L77:
// inline asm begin
	// 864 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #31
// inline asm end
	JMP	lr
	.size	RTC_Alarm_A_Enable, .-RTC_Alarm_A_Enable
	.section .text$RTC_Alarm_A_Weekday_Enable
	.align	1
	.export	RTC_Alarm_A_Weekday_Enable
	.type	RTC_Alarm_A_Weekday_Enable, @function
RTC_Alarm_A_Weekday_Enable:
	LD	r5,#1073745668
	CMP	r0,#0
	JNZ	.L81
// inline asm begin
	// 893 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #27
// inline asm end
	JMP	lr
.L81:
// inline asm begin
	// 888 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #27
// inline asm end
	JMP	lr
	.size	RTC_Alarm_A_Weekday_Enable, .-RTC_Alarm_A_Weekday_Enable
	.section .text$RTC_Alarm_A_Weekday_Config
	.align	1
	.export	RTC_Alarm_A_Weekday_Config
	.type	RTC_Alarm_A_Weekday_Config, @function
RTC_Alarm_A_Weekday_Config:
	LD	r5,#1073745664
	LD.w	r4,[r5+#1]
	LSL	r0,#24
	LD	r3,#-117440513
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#1],r4
	JMP	lr
	.size	RTC_Alarm_A_Weekday_Config, .-RTC_Alarm_A_Weekday_Config
	.section .text$RTC_Alarm_A_Hours_Enable
	.align	1
	.export	RTC_Alarm_A_Hours_Enable
	.type	RTC_Alarm_A_Hours_Enable, @function
RTC_Alarm_A_Hours_Enable:
	LD	r5,#1073745668
	CMP	r0,#0
	JNZ	.L86
// inline asm begin
	// 942 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #23
// inline asm end
	JMP	lr
.L86:
// inline asm begin
	// 937 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #23
// inline asm end
	JMP	lr
	.size	RTC_Alarm_A_Hours_Enable, .-RTC_Alarm_A_Hours_Enable
	.section .text$RTC_Alarm_A_AMPM_Config
	.align	1
	.export	RTC_Alarm_A_AMPM_Config
	.type	RTC_Alarm_A_AMPM_Config, @function
RTC_Alarm_A_AMPM_Config:
	LD	r5,#1073745668
	CMP	r0,#0
	JNZ	.L90
// inline asm begin
	// 968 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #22
// inline asm end
	JMP	lr
.L90:
// inline asm begin
	// 963 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #22
// inline asm end
	JMP	lr
	.size	RTC_Alarm_A_AMPM_Config, .-RTC_Alarm_A_AMPM_Config
	.section .text$RTC_Alarm_A_Hours_Config
	.align	1
	.export	RTC_Alarm_A_Hours_Config
	.type	RTC_Alarm_A_Hours_Config, @function
RTC_Alarm_A_Hours_Config:
	ZXT.b	r0,r0
	MOV	r5,#10
	DIVU	r5,r0,r5
	MOV	r4,#9
	NOT	r4,r4
	MULS	r4,r5,r4
	ADD	r4,r0,r4
	LSL	r5,#4
	ORL	r4,r4,r5
	ZXT.b	r4,r4
	LD	r5,#1073745664
	LD.w	r0,[r5+#1]
	LSL	r4,#16
	LD	r3,#-4128769
	ANL	r0,r0,r3
	ORL	r0,r4,r0
	ST.w	[r5+#1],r0
	JMP	lr
	.size	RTC_Alarm_A_Hours_Config, .-RTC_Alarm_A_Hours_Config
	.section .text$RTC_Alarm_A_Minutes_Enable
	.align	1
	.export	RTC_Alarm_A_Minutes_Enable
	.type	RTC_Alarm_A_Minutes_Enable, @function
RTC_Alarm_A_Minutes_Enable:
	LD	r5,#1073745668
	CMP	r0,#0
	JNZ	.L95
// inline asm begin
	// 1011 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #15
// inline asm end
	JMP	lr
.L95:
// inline asm begin
	// 1006 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #15
// inline asm end
	JMP	lr
	.size	RTC_Alarm_A_Minutes_Enable, .-RTC_Alarm_A_Minutes_Enable
	.section .text$RTC_Alarm_A_Minutes_Config
	.align	1
	.export	RTC_Alarm_A_Minutes_Config
	.type	RTC_Alarm_A_Minutes_Config, @function
RTC_Alarm_A_Minutes_Config:
	ZXT.b	r0,r0
	MOV	r5,#10
	DIVU	r5,r0,r5
	MOV	r4,#9
	NOT	r4,r4
	MULS	r4,r5,r4
	ADD	r4,r0,r4
	LSL	r5,#4
	ORL	r4,r4,r5
	ZXT.b	r4,r4
	LD	r5,#1073745664
	LD.w	r0,[r5+#1]
	LSL	r4,#8
	LD	r3,#-32513
	ANL	r0,r0,r3
	ORL	r0,r4,r0
	ST.w	[r5+#1],r0
	JMP	lr
	.size	RTC_Alarm_A_Minutes_Config, .-RTC_Alarm_A_Minutes_Config
	.section .text$RTC_Alarm_A_Seconds_Enable
	.align	1
	.export	RTC_Alarm_A_Seconds_Enable
	.type	RTC_Alarm_A_Seconds_Enable, @function
RTC_Alarm_A_Seconds_Enable:
	LD	r5,#1073745668
	CMP	r0,#0
	JNZ	.L100
// inline asm begin
	// 1054 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #7
// inline asm end
	JMP	lr
.L100:
// inline asm begin
	// 1049 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #7
// inline asm end
	JMP	lr
	.size	RTC_Alarm_A_Seconds_Enable, .-RTC_Alarm_A_Seconds_Enable
	.section .text$RTC_Alarm_A_Seconds_Config
	.align	1
	.export	RTC_Alarm_A_Seconds_Config
	.type	RTC_Alarm_A_Seconds_Config, @function
RTC_Alarm_A_Seconds_Config:
	ZXT.b	r0,r0
	MOV	r4,#10
	DIVU	r4,r0,r4
	LD	r5,#1073745664
	LD.w	r2,[r5+#1]
	MOV	r3,#9
	NOT	r3,r3
	MULS	r3,r4,r3
	ADD	r0,r0,r3
	LSL	r4,#4
	ORL	r4,r0,r4
	ZXT.b	r4,r4
	MOV	r3,#127
	NOT	r3,r3
	ANL	r3,r2,r3
	ORL	r4,r4,r3
	ST.w	[r5+#1],r4
	JMP	lr
	.size	RTC_Alarm_A_Seconds_Config, .-RTC_Alarm_A_Seconds_Config
	.section .text$RTC_Alarm_B_Enable
	.align	1
	.export	RTC_Alarm_B_Enable
	.type	RTC_Alarm_B_Enable, @function
RTC_Alarm_B_Enable:
	LD	r5,#1073745680
	CMP	r0,#0
	JNZ	.L105
// inline asm begin
	// 1097 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #31
// inline asm end
	JMP	lr
.L105:
// inline asm begin
	// 1092 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #31
// inline asm end
	JMP	lr
	.size	RTC_Alarm_B_Enable, .-RTC_Alarm_B_Enable
	.section .text$RTC_Alarm_B_Weekday_Enable
	.align	1
	.export	RTC_Alarm_B_Weekday_Enable
	.type	RTC_Alarm_B_Weekday_Enable, @function
RTC_Alarm_B_Weekday_Enable:
	LD	r5,#1073745680
	CMP	r0,#0
	JNZ	.L109
// inline asm begin
	// 1121 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #27
// inline asm end
	JMP	lr
.L109:
// inline asm begin
	// 1116 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #27
// inline asm end
	JMP	lr
	.size	RTC_Alarm_B_Weekday_Enable, .-RTC_Alarm_B_Weekday_Enable
	.section .text$RTC_Alarm_B_Weekday_Config
	.align	1
	.export	RTC_Alarm_B_Weekday_Config
	.type	RTC_Alarm_B_Weekday_Config, @function
RTC_Alarm_B_Weekday_Config:
	LD	r5,#1073745664
	LD.w	r4,[r5+#4]
	LSL	r0,#24
	LD	r3,#-117440513
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#4],r4
	JMP	lr
	.size	RTC_Alarm_B_Weekday_Config, .-RTC_Alarm_B_Weekday_Config
	.section .text$RTC_Alarm_B_Hours_Enable
	.align	1
	.export	RTC_Alarm_B_Hours_Enable
	.type	RTC_Alarm_B_Hours_Enable, @function
RTC_Alarm_B_Hours_Enable:
	LD	r5,#1073745680
	CMP	r0,#0
	JNZ	.L114
// inline asm begin
	// 1170 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #23
// inline asm end
	JMP	lr
.L114:
// inline asm begin
	// 1165 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #23
// inline asm end
	JMP	lr
	.size	RTC_Alarm_B_Hours_Enable, .-RTC_Alarm_B_Hours_Enable
	.section .text$RTC_Alarm_B_AMPM_Config
	.align	1
	.export	RTC_Alarm_B_AMPM_Config
	.type	RTC_Alarm_B_AMPM_Config, @function
RTC_Alarm_B_AMPM_Config:
	LD	r5,#1073745680
	CMP	r0,#0
	JNZ	.L118
// inline asm begin
	// 1196 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #22
// inline asm end
	JMP	lr
.L118:
// inline asm begin
	// 1191 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #22
// inline asm end
	JMP	lr
	.size	RTC_Alarm_B_AMPM_Config, .-RTC_Alarm_B_AMPM_Config
	.section .text$RTC_Alarm_B_Hours_Config
	.align	1
	.export	RTC_Alarm_B_Hours_Config
	.type	RTC_Alarm_B_Hours_Config, @function
RTC_Alarm_B_Hours_Config:
	ZXT.b	r0,r0
	MOV	r5,#10
	DIVU	r5,r0,r5
	MOV	r4,#9
	NOT	r4,r4
	MULS	r4,r5,r4
	ADD	r4,r0,r4
	LSL	r5,#4
	ORL	r4,r4,r5
	ZXT.b	r4,r4
	LD	r5,#1073745664
	LD.w	r0,[r5+#4]
	LSL	r4,#16
	LD	r3,#-4128769
	ANL	r0,r0,r3
	ORL	r0,r4,r0
	ST.w	[r5+#4],r0
	JMP	lr
	.size	RTC_Alarm_B_Hours_Config, .-RTC_Alarm_B_Hours_Config
	.section .text$RTC_Alarm_B_Minutes_Enable
	.align	1
	.export	RTC_Alarm_B_Minutes_Enable
	.type	RTC_Alarm_B_Minutes_Enable, @function
RTC_Alarm_B_Minutes_Enable:
	LD	r5,#1073745680
	CMP	r0,#0
	JNZ	.L123
// inline asm begin
	// 1239 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #15
// inline asm end
	JMP	lr
.L123:
// inline asm begin
	// 1234 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #15
// inline asm end
	JMP	lr
	.size	RTC_Alarm_B_Minutes_Enable, .-RTC_Alarm_B_Minutes_Enable
	.section .text$RTC_Alarm_B_Minutes_Config
	.align	1
	.export	RTC_Alarm_B_Minutes_Config
	.type	RTC_Alarm_B_Minutes_Config, @function
RTC_Alarm_B_Minutes_Config:
	ZXT.b	r0,r0
	MOV	r5,#10
	DIVU	r5,r0,r5
	MOV	r4,#9
	NOT	r4,r4
	MULS	r4,r5,r4
	ADD	r4,r0,r4
	LSL	r5,#4
	ORL	r4,r4,r5
	ZXT.b	r4,r4
	LD	r5,#1073745664
	LD.w	r0,[r5+#4]
	LSL	r4,#8
	LD	r3,#-32513
	ANL	r0,r0,r3
	ORL	r0,r4,r0
	ST.w	[r5+#4],r0
	JMP	lr
	.size	RTC_Alarm_B_Minutes_Config, .-RTC_Alarm_B_Minutes_Config
	.section .text$RTC_Alarm_B_Seconds_Enable
	.align	1
	.export	RTC_Alarm_B_Seconds_Enable
	.type	RTC_Alarm_B_Seconds_Enable, @function
RTC_Alarm_B_Seconds_Enable:
	LD	r5,#1073745680
	CMP	r0,#0
	JNZ	.L128
// inline asm begin
	// 1282 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #7
// inline asm end
	JMP	lr
.L128:
// inline asm begin
	// 1277 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #7
// inline asm end
	JMP	lr
	.size	RTC_Alarm_B_Seconds_Enable, .-RTC_Alarm_B_Seconds_Enable
	.section .text$RTC_Alarm_B_Seconds_Config
	.align	1
	.export	RTC_Alarm_B_Seconds_Config
	.type	RTC_Alarm_B_Seconds_Config, @function
RTC_Alarm_B_Seconds_Config:
	ZXT.b	r0,r0
	MOV	r4,#10
	DIVU	r4,r0,r4
	LD	r5,#1073745664
	LD.w	r2,[r5+#4]
	MOV	r3,#9
	NOT	r3,r3
	MULS	r3,r4,r3
	ADD	r0,r0,r3
	LSL	r4,#4
	ORL	r4,r0,r4
	ZXT.b	r4,r4
	MOV	r3,#127
	NOT	r3,r3
	ANL	r3,r2,r3
	ORL	r4,r4,r3
	ST.w	[r5+#4],r4
	JMP	lr
	.size	RTC_Alarm_B_Seconds_Config, .-RTC_Alarm_B_Seconds_Config
	.section .text$RTC_Weekday_Config
	.align	1
	.export	RTC_Weekday_Config
	.type	RTC_Weekday_Config, @function
RTC_Weekday_Config:
	LD	r5,#1073745664
	LD.w	r4,[r5+#2]
	LSL	r0,#24
	LD	r3,#-117440513
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#2],r4
	JMP	lr
	.size	RTC_Weekday_Config, .-RTC_Weekday_Config
	.section .text$RTC_AMPM_Config
	.align	1
	.export	RTC_AMPM_Config
	.type	RTC_AMPM_Config, @function
RTC_AMPM_Config:
	LD	r5,#1073745672
	CMP	r0,#0
	JNZ	.L134
// inline asm begin
	// 1359 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #22
// inline asm end
	JMP	lr
.L134:
// inline asm begin
	// 1354 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #22
// inline asm end
	JMP	lr
	.size	RTC_AMPM_Config, .-RTC_AMPM_Config
	.section .text$RTC_Hours_Config
	.align	1
	.export	RTC_Hours_Config
	.type	RTC_Hours_Config, @function
RTC_Hours_Config:
	ZXT.b	r0,r0
	MOV	r5,#10
	DIVU	r5,r0,r5
	MOV	r4,#9
	NOT	r4,r4
	MULS	r4,r5,r4
	ADD	r4,r0,r4
	LSL	r5,#4
	ORL	r4,r4,r5
	ZXT.b	r4,r4
	LD	r5,#1073745664
	LD.w	r0,[r5+#2]
	LSL	r4,#16
	LD	r3,#-4128769
	ANL	r0,r0,r3
	ORL	r0,r4,r0
	ST.w	[r5+#2],r0
	JMP	lr
	.size	RTC_Hours_Config, .-RTC_Hours_Config
	.section .text$RTC_Minutes_Config
	.align	1
	.export	RTC_Minutes_Config
	.type	RTC_Minutes_Config, @function
RTC_Minutes_Config:
	ZXT.b	r0,r0
	MOV	r5,#10
	DIVU	r5,r0,r5
	MOV	r4,#9
	NOT	r4,r4
	MULS	r4,r5,r4
	ADD	r4,r0,r4
	LSL	r5,#4
	ORL	r4,r4,r5
	ZXT.b	r4,r4
	LD	r5,#1073745664
	LD.w	r0,[r5+#2]
	LSL	r4,#8
	LD	r3,#-32513
	ANL	r0,r0,r3
	ORL	r0,r4,r0
	ST.w	[r5+#2],r0
	JMP	lr
	.size	RTC_Minutes_Config, .-RTC_Minutes_Config
	.section .text$RTC_Seconds_Config
	.align	1
	.export	RTC_Seconds_Config
	.type	RTC_Seconds_Config, @function
RTC_Seconds_Config:
	ZXT.b	r0,r0
	MOV	r4,#10
	DIVU	r4,r0,r4
	LD	r5,#1073745664
	LD.w	r2,[r5+#2]
	MOV	r3,#9
	NOT	r3,r3
	MULS	r3,r4,r3
	ADD	r0,r0,r3
	LSL	r4,#4
	ORL	r4,r0,r4
	ZXT.b	r4,r4
	MOV	r3,#127
	NOT	r3,r3
	ANL	r3,r2,r3
	ORL	r4,r4,r3
	ST.w	[r5+#2],r4
	JMP	lr
	.size	RTC_Seconds_Config, .-RTC_Seconds_Config
	.section .text$RTC_Year_Config
	.align	1
	.export	RTC_Year_Config
	.type	RTC_Year_Config, @function
RTC_Year_Config:
	ZXT.b	r0,r0
	MOV	r5,#10
	DIVU	r5,r0,r5
	MOV	r4,#9
	NOT	r4,r4
	MULS	r4,r5,r4
	ADD	r4,r0,r4
	LSL	r5,#4
	ORL	r4,r4,r5
	ZXT.b	r4,r4
	LD	r5,#1073745664
	LD.w	r0,[r5+#3]
	LSL	r4,#16
	LD	r3,#-4128769
	ANL	r0,r0,r3
	ORL	r0,r4,r0
	ST.w	[r5+#3],r0
	JMP	lr
	.size	RTC_Year_Config, .-RTC_Year_Config
	.section .text$RTC_Month_Config
	.align	1
	.export	RTC_Month_Config
	.type	RTC_Month_Config, @function
RTC_Month_Config:
	LD	r5,#1073745664
	LD.w	r4,[r5+#3]
	LSL	r0,#8
	LD	r3,#-32513
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#3],r4
	JMP	lr
	.size	RTC_Month_Config, .-RTC_Month_Config
	.section .text$RTC_Day_Config
	.align	1
	.export	RTC_Day_Config
	.type	RTC_Day_Config, @function
RTC_Day_Config:
	ZXT.b	r0,r0
	MOV	r4,#10
	DIVU	r4,r0,r4
	LD	r5,#1073745664
	LD.w	r2,[r5+#3]
	MOV	r3,#9
	NOT	r3,r3
	MULS	r3,r4,r3
	ADD	r0,r0,r3
	LSL	r4,#4
	ORL	r4,r0,r4
	ZXT.b	r4,r4
	MOV	r3,#127
	NOT	r3,r3
	ANL	r3,r2,r3
	ORL	r4,r4,r3
	ST.w	[r5+#3],r4
	JMP	lr
	.size	RTC_Day_Config, .-RTC_Day_Config
	.section .text$RTC_Weekday_Backup_Config
	.align	1
	.export	RTC_Weekday_Backup_Config
	.type	RTC_Weekday_Backup_Config, @function
RTC_Weekday_Backup_Config:
	LD	r5,#1073745664
	LD.w	r4,[r5+#9]
	LSL	r0,#24
	LD	r3,#-117440513
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#9],r4
	JMP	lr
	.size	RTC_Weekday_Backup_Config, .-RTC_Weekday_Backup_Config
	.section .text$RTC_AMPM_Backup_Config
	.align	1
	.export	RTC_AMPM_Backup_Config
	.type	RTC_AMPM_Backup_Config, @function
RTC_AMPM_Backup_Config:
	LD	r5,#1073745700
	CMP	r0,#0
	JNZ	.L145
// inline asm begin
	// 1535 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #22
// inline asm end
	JMP	lr
.L145:
// inline asm begin
	// 1530 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #22
// inline asm end
	JMP	lr
	.size	RTC_AMPM_Backup_Config, .-RTC_AMPM_Backup_Config
	.section .text$RTC_Hours_Backup_Config
	.align	1
	.export	RTC_Hours_Backup_Config
	.type	RTC_Hours_Backup_Config, @function
RTC_Hours_Backup_Config:
	ZXT.b	r0,r0
	MOV	r5,#10
	DIVU	r5,r0,r5
	MOV	r4,#9
	NOT	r4,r4
	MULS	r4,r5,r4
	ADD	r4,r0,r4
	LSL	r5,#4
	ORL	r4,r4,r5
	ZXT.b	r4,r4
	LD	r5,#1073745664
	LD.w	r0,[r5+#9]
	LSL	r4,#16
	LD	r3,#-4128769
	ANL	r0,r0,r3
	ORL	r0,r4,r0
	ST.w	[r5+#9],r0
	JMP	lr
	.size	RTC_Hours_Backup_Config, .-RTC_Hours_Backup_Config
	.section .text$RTC_Minutes_Backup_Config
	.align	1
	.export	RTC_Minutes_Backup_Config
	.type	RTC_Minutes_Backup_Config, @function
RTC_Minutes_Backup_Config:
	ZXT.b	r0,r0
	MOV	r5,#10
	DIVU	r5,r0,r5
	MOV	r4,#9
	NOT	r4,r4
	MULS	r4,r5,r4
	ADD	r4,r0,r4
	LSL	r5,#4
	ORL	r4,r4,r5
	ZXT.b	r4,r4
	LD	r5,#1073745664
	LD.w	r0,[r5+#9]
	LSL	r4,#8
	LD	r3,#-32513
	ANL	r0,r0,r3
	ORL	r0,r4,r0
	ST.w	[r5+#9],r0
	JMP	lr
	.size	RTC_Minutes_Backup_Config, .-RTC_Minutes_Backup_Config
	.section .text$RTC_Seconds_Backup_Config
	.align	1
	.export	RTC_Seconds_Backup_Config
	.type	RTC_Seconds_Backup_Config, @function
RTC_Seconds_Backup_Config:
	ZXT.b	r0,r0
	MOV	r4,#10
	DIVU	r4,r0,r4
	LD	r5,#1073745664
	LD.w	r2,[r5+#9]
	MOV	r3,#9
	NOT	r3,r3
	MULS	r3,r4,r3
	ADD	r0,r0,r3
	LSL	r4,#4
	ORL	r4,r0,r4
	ZXT.b	r4,r4
	MOV	r3,#127
	NOT	r3,r3
	ANL	r3,r2,r3
	ORL	r4,r4,r3
	ST.w	[r5+#9],r4
	JMP	lr
	.size	RTC_Seconds_Backup_Config, .-RTC_Seconds_Backup_Config
	.section .text$RTC_Year_Backup_Config
	.align	1
	.export	RTC_Year_Backup_Config
	.type	RTC_Year_Backup_Config, @function
RTC_Year_Backup_Config:
	ZXT.b	r0,r0
	MOV	r5,#10
	DIVU	r5,r0,r5
	MOV	r4,#9
	NOT	r4,r4
	MULS	r4,r5,r4
	ADD	r4,r0,r4
	LSL	r5,#4
	ORL	r4,r4,r5
	ZXT.b	r4,r4
	LD	r5,#1073745664
	LD.w	r0,[r5+#10]
	LSL	r4,#16
	LD	r3,#-4128769
	ANL	r0,r0,r3
	ORL	r0,r4,r0
	ST.w	[r5+#10],r0
	JMP	lr
	.size	RTC_Year_Backup_Config, .-RTC_Year_Backup_Config
	.section .text$RTC_Month_Backup_Config
	.align	1
	.export	RTC_Month_Backup_Config
	.type	RTC_Month_Backup_Config, @function
RTC_Month_Backup_Config:
	LD	r5,#1073745664
	LD.w	r4,[r5+#10]
	LSL	r0,#8
	LD	r3,#-32513
	ANL	r4,r4,r3
	ORL	r4,r0,r4
	ST.w	[r5+#10],r4
	JMP	lr
	.size	RTC_Month_Backup_Config, .-RTC_Month_Backup_Config
	.section .text$RTC_Day_Backup_Config
	.align	1
	.export	RTC_Day_Backup_Config
	.type	RTC_Day_Backup_Config, @function
RTC_Day_Backup_Config:
	ZXT.b	r0,r0
	MOV	r4,#10
	DIVU	r4,r0,r4
	LD	r5,#1073745664
	LD.w	r2,[r5+#10]
	MOV	r3,#9
	NOT	r3,r3
	MULS	r3,r4,r3
	ADD	r0,r0,r3
	LSL	r4,#4
	ORL	r4,r0,r4
	ZXT.b	r4,r4
	MOV	r3,#127
	NOT	r3,r3
	ANL	r3,r2,r3
	ORL	r4,r4,r3
	ST.w	[r5+#10],r4
	JMP	lr
	.size	RTC_Day_Backup_Config, .-RTC_Day_Backup_Config
	.section .text$RTC_Timer1_Config
	.align	1
	.export	RTC_Timer1_Config
	.type	RTC_Timer1_Config, @function
RTC_Timer1_Config:
	LD	r5,#1073745664
	LD.w	r4,[r5+#5]
	LSL	r0,#16
	ZXT.h	r4,r4
	ORL	r4,r0,r4
	ST.w	[r5+#5],r4
	JMP	lr
	.size	RTC_Timer1_Config, .-RTC_Timer1_Config
	.section .text$RTC_Timer0_Config
	.align	1
	.export	RTC_Timer0_Config
	.type	RTC_Timer0_Config, @function
RTC_Timer0_Config:
	ZXT.h	r0,r0
	LD	r5,#1073745664
	LD.w	r3,[r5+#5]
	LD	r4,#-65536
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#5],r0
	JMP	lr
	.size	RTC_Timer0_Config, .-RTC_Timer0_Config
	.section .text$RTC_Timer1_Enable
	.align	1
	.export	RTC_Timer1_Enable
	.type	RTC_Timer1_Enable, @function
RTC_Timer1_Enable:
	LD	r5,#1073745688
	CMP	r0,#0
	JNZ	.L157
// inline asm begin
	// 1721 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #9
// inline asm end
	JMP	lr
.L157:
// inline asm begin
	// 1716 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #9
// inline asm end
	JMP	lr
	.size	RTC_Timer1_Enable, .-RTC_Timer1_Enable
	.section .text$RTC_Timer0_Enable
	.align	1
	.export	RTC_Timer0_Enable
	.type	RTC_Timer0_Enable, @function
RTC_Timer0_Enable:
	LD	r5,#1073745688
	CMP	r0,#0
	JNZ	.L161
// inline asm begin
	// 1745 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #8
// inline asm end
	JMP	lr
.L161:
// inline asm begin
	// 1740 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #8
// inline asm end
	JMP	lr
	.size	RTC_Timer0_Enable, .-RTC_Timer0_Enable
	.section .text$RTC_Timer1_Source_Config
	.align	1
	.export	RTC_Timer1_Source_Config
	.type	RTC_Timer1_Source_Config, @function
RTC_Timer1_Source_Config:
	ZXT.h	r0,r0
	LD	r5,#1073745664
	LD.w	r2,[r5+#6]
	MOV	r3,#4
	LSL	r4,r0,r3
	MOV	r3,#240
	NOT	r3,r3
	ANL	r0,r2,r3
	ORL	r0,r4,r0
	ST.w	[r5+#6],r0
	JMP	lr
	.size	RTC_Timer1_Source_Config, .-RTC_Timer1_Source_Config
	.section .text$RTC_Timer0_Source_Config
	.align	1
	.export	RTC_Timer0_Source_Config
	.type	RTC_Timer0_Source_Config, @function
RTC_Timer0_Source_Config:
	ZXT.h	r0,r0
	LD	r5,#1073745664
	LD.w	r3,[r5+#6]
	MOV	r4,#15
	NOT	r4,r4
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#6],r0
	JMP	lr
	.size	RTC_Timer0_Source_Config, .-RTC_Timer0_Source_Config
	.section .text$RTC_Time_Stamp_INT_Enable
	.align	1
	.export	RTC_Time_Stamp_INT_Enable
	.type	RTC_Time_Stamp_INT_Enable, @function
RTC_Time_Stamp_INT_Enable:
	LD	r5,#1073745692
	CMP	r0,#0
	JNZ	.L167
// inline asm begin
	// 1830 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #11
// inline asm end
	JMP	lr
.L167:
// inline asm begin
	// 1825 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #11
// inline asm end
	JMP	lr
	.size	RTC_Time_Stamp_INT_Enable, .-RTC_Time_Stamp_INT_Enable
	.section .text$RTC_Time_Stamp_Overflow_INT_Enable
	.align	1
	.export	RTC_Time_Stamp_Overflow_INT_Enable
	.type	RTC_Time_Stamp_Overflow_INT_Enable, @function
RTC_Time_Stamp_Overflow_INT_Enable:
	LD	r5,#1073745692
	CMP	r0,#0
	JNZ	.L171
// inline asm begin
	// 1854 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #10
// inline asm end
	JMP	lr
.L171:
// inline asm begin
	// 1849 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #10
// inline asm end
	JMP	lr
	.size	RTC_Time_Stamp_Overflow_INT_Enable, .-RTC_Time_Stamp_Overflow_INT_Enable
	.section .text$RTC_Timer1_INT_Enable
	.align	1
	.export	RTC_Timer1_INT_Enable
	.type	RTC_Timer1_INT_Enable, @function
RTC_Timer1_INT_Enable:
	LD	r5,#1073745692
	CMP	r0,#0
	JNZ	.L175
// inline asm begin
	// 1878 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #9
// inline asm end
	JMP	lr
.L175:
// inline asm begin
	// 1873 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #9
// inline asm end
	JMP	lr
	.size	RTC_Timer1_INT_Enable, .-RTC_Timer1_INT_Enable
	.section .text$RTC_Timer0_INT_Enable
	.align	1
	.export	RTC_Timer0_INT_Enable
	.type	RTC_Timer0_INT_Enable, @function
RTC_Timer0_INT_Enable:
	LD	r5,#1073745692
	CMP	r0,#0
	JNZ	.L179
// inline asm begin
	// 1902 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #8
// inline asm end
	JMP	lr
.L179:
// inline asm begin
	// 1897 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #8
// inline asm end
	JMP	lr
	.size	RTC_Timer0_INT_Enable, .-RTC_Timer0_INT_Enable
	.section .text$RTC_Time_Tick_INT_Enable
	.align	1
	.export	RTC_Time_Tick_INT_Enable
	.type	RTC_Time_Tick_INT_Enable, @function
RTC_Time_Tick_INT_Enable:
	LD	r5,#1073745692
	CMP	r0,#0
	JNZ	.L183
// inline asm begin
	// 1926 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #6
// inline asm end
	JMP	lr
.L183:
// inline asm begin
	// 1921 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #6
// inline asm end
	JMP	lr
	.size	RTC_Time_Tick_INT_Enable, .-RTC_Time_Tick_INT_Enable
	.section .text$RTC_Alarm_B_INT_Enable
	.align	1
	.export	RTC_Alarm_B_INT_Enable
	.type	RTC_Alarm_B_INT_Enable, @function
RTC_Alarm_B_INT_Enable:
	LD	r5,#1073745692
	CMP	r0,#0
	JNZ	.L187
// inline asm begin
	// 1950 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #5
// inline asm end
	JMP	lr
.L187:
// inline asm begin
	// 1945 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #5
// inline asm end
	JMP	lr
	.size	RTC_Alarm_B_INT_Enable, .-RTC_Alarm_B_INT_Enable
	.section .text$RTC_Alarm_A_INT_Enable
	.align	1
	.export	RTC_Alarm_A_INT_Enable
	.type	RTC_Alarm_A_INT_Enable, @function
RTC_Alarm_A_INT_Enable:
	LD	r5,#1073745692
	CMP	r0,#0
	JNZ	.L191
// inline asm begin
	// 1974 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #4
// inline asm end
	JMP	lr
.L191:
// inline asm begin
	// 1969 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #4
// inline asm end
	JMP	lr
	.size	RTC_Alarm_A_INT_Enable, .-RTC_Alarm_A_INT_Enable
	.section .text$RTC_Days_INT_Enable
	.align	1
	.export	RTC_Days_INT_Enable
	.type	RTC_Days_INT_Enable, @function
RTC_Days_INT_Enable:
	LD	r5,#1073745692
	CMP	r0,#0
	JNZ	.L195
// inline asm begin
	// 1998 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #3
// inline asm end
	JMP	lr
.L195:
// inline asm begin
	// 1993 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #3
// inline asm end
	JMP	lr
	.size	RTC_Days_INT_Enable, .-RTC_Days_INT_Enable
	.section .text$RTC_Hours_INT_Enable
	.align	1
	.export	RTC_Hours_INT_Enable
	.type	RTC_Hours_INT_Enable, @function
RTC_Hours_INT_Enable:
	LD	r5,#1073745692
	CMP	r0,#0
	JNZ	.L199
// inline asm begin
	// 2022 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #2
// inline asm end
	JMP	lr
.L199:
// inline asm begin
	// 2017 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #2
// inline asm end
	JMP	lr
	.size	RTC_Hours_INT_Enable, .-RTC_Hours_INT_Enable
	.section .text$RTC_Minutes_INT_Enable
	.align	1
	.export	RTC_Minutes_INT_Enable
	.type	RTC_Minutes_INT_Enable, @function
RTC_Minutes_INT_Enable:
	LD	r5,#1073745692
	CMP	r0,#0
	JNZ	.L203
// inline asm begin
	// 2046 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #1
// inline asm end
	JMP	lr
.L203:
// inline asm begin
	// 2041 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #1
// inline asm end
	JMP	lr
	.size	RTC_Minutes_INT_Enable, .-RTC_Minutes_INT_Enable
	.section .text$RTC_Seconds_INT_Enable
	.align	1
	.export	RTC_Seconds_INT_Enable
	.type	RTC_Seconds_INT_Enable, @function
RTC_Seconds_INT_Enable:
	LD	r5,#1073745692
	CMP	r0,#0
	JNZ	.L207
// inline asm begin
	// 2070 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #0
// inline asm end
	JMP	lr
.L207:
// inline asm begin
	// 2065 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #0
// inline asm end
	JMP	lr
	.size	RTC_Seconds_INT_Enable, .-RTC_Seconds_INT_Enable
	.section .text$RTC_Get_Time_Stamp_INT_Flag
	.align	1
	.export	RTC_Get_Time_Stamp_INT_Flag
	.type	RTC_Get_Time_Stamp_INT_Flag, @function
RTC_Get_Time_Stamp_INT_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5+#8]
	LSR	r0,#11
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Time_Stamp_INT_Flag, .-RTC_Get_Time_Stamp_INT_Flag
	.section .text$RTC_Get_Time_Stamp_Overflow_INT_Flag
	.align	1
	.export	RTC_Get_Time_Stamp_Overflow_INT_Flag
	.type	RTC_Get_Time_Stamp_Overflow_INT_Flag, @function
RTC_Get_Time_Stamp_Overflow_INT_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5+#8]
	LSR	r0,#10
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Time_Stamp_Overflow_INT_Flag, .-RTC_Get_Time_Stamp_Overflow_INT_Flag
	.section .text$RTC_Get_Timer1_INT_Flag
	.align	1
	.export	RTC_Get_Timer1_INT_Flag
	.type	RTC_Get_Timer1_INT_Flag, @function
RTC_Get_Timer1_INT_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5+#8]
	LSR	r0,#9
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Timer1_INT_Flag, .-RTC_Get_Timer1_INT_Flag
	.section .text$RTC_Get_Timer0_INT_Flag
	.align	1
	.export	RTC_Get_Timer0_INT_Flag
	.type	RTC_Get_Timer0_INT_Flag, @function
RTC_Get_Timer0_INT_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5+#8]
	LSR	r0,#8
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Timer0_INT_Flag, .-RTC_Get_Timer0_INT_Flag
	.section .text$RTC_Get_Time_Tick_INT_Flag
	.align	1
	.export	RTC_Get_Time_Tick_INT_Flag
	.type	RTC_Get_Time_Tick_INT_Flag, @function
RTC_Get_Time_Tick_INT_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5+#8]
	LSR	r0,#6
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Time_Tick_INT_Flag, .-RTC_Get_Time_Tick_INT_Flag
	.section .text$RTC_Get_Alarm_B_INT_Flag
	.align	1
	.export	RTC_Get_Alarm_B_INT_Flag
	.type	RTC_Get_Alarm_B_INT_Flag, @function
RTC_Get_Alarm_B_INT_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5+#8]
	LSR	r0,#5
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Alarm_B_INT_Flag, .-RTC_Get_Alarm_B_INT_Flag
	.section .text$RTC_Get_Alarm_A_INT_Flag
	.align	1
	.export	RTC_Get_Alarm_A_INT_Flag
	.type	RTC_Get_Alarm_A_INT_Flag, @function
RTC_Get_Alarm_A_INT_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5+#8]
	LSR	r0,#4
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Alarm_A_INT_Flag, .-RTC_Get_Alarm_A_INT_Flag
	.section .text$RTC_Get_Days_INT_Flag
	.align	1
	.export	RTC_Get_Days_INT_Flag
	.type	RTC_Get_Days_INT_Flag, @function
RTC_Get_Days_INT_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5+#8]
	LSR	r0,#3
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Days_INT_Flag, .-RTC_Get_Days_INT_Flag
	.section .text$RTC_Get_Hours_INT_Flag
	.align	1
	.export	RTC_Get_Hours_INT_Flag
	.type	RTC_Get_Hours_INT_Flag, @function
RTC_Get_Hours_INT_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5+#8]
	LSR	r0,#2
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Hours_INT_Flag, .-RTC_Get_Hours_INT_Flag
	.section .text$RTC_Get_Minutes_INT_Flag
	.align	1
	.export	RTC_Get_Minutes_INT_Flag
	.type	RTC_Get_Minutes_INT_Flag, @function
RTC_Get_Minutes_INT_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5+#8]
	LSR	r0,#1
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Minutes_INT_Flag, .-RTC_Get_Minutes_INT_Flag
	.section .text$RTC_Get_Seconds_INT_Flag
	.align	1
	.export	RTC_Get_Seconds_INT_Flag
	.type	RTC_Get_Seconds_INT_Flag, @function
RTC_Get_Seconds_INT_Flag:
	LD	r5,#1073745664
	LD.w	r0,[r5+#8]
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	RTC_Get_Seconds_INT_Flag, .-RTC_Get_Seconds_INT_Flag
	.section .text$RTC_Clear_Time_Stamp_INT_Flag
	.align	1
	.export	RTC_Clear_Time_Stamp_INT_Flag
	.type	RTC_Clear_Time_Stamp_INT_Flag, @function
RTC_Clear_Time_Stamp_INT_Flag:
	LD	r5,#1073745696
// inline asm begin
	// 2314 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #27
// inline asm end
	LD	r3,#1073745664
	MOV	r4,#1
	LSL	r4,#11
.L220:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L220
	LD	r5,#1073745696
// inline asm begin
	// 2316 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #27
// inline asm end
	JMP	lr
	.size	RTC_Clear_Time_Stamp_INT_Flag, .-RTC_Clear_Time_Stamp_INT_Flag
	.section .text$RTC_Clear_Time_Stamp_Overflow_INT_Flag
	.align	1
	.export	RTC_Clear_Time_Stamp_Overflow_INT_Flag
	.type	RTC_Clear_Time_Stamp_Overflow_INT_Flag, @function
RTC_Clear_Time_Stamp_Overflow_INT_Flag:
	LD	r5,#1073745696
// inline asm begin
	// 2328 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #26
// inline asm end
	LD	r3,#1073745664
	MOV	r4,#1
	LSL	r4,#10
.L223:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L223
	LD	r5,#1073745696
// inline asm begin
	// 2330 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #26
// inline asm end
	JMP	lr
	.size	RTC_Clear_Time_Stamp_Overflow_INT_Flag, .-RTC_Clear_Time_Stamp_Overflow_INT_Flag
	.section .text$RTC_Clear_Timer1_INT_Flag
	.align	1
	.export	RTC_Clear_Timer1_INT_Flag
	.type	RTC_Clear_Timer1_INT_Flag, @function
RTC_Clear_Timer1_INT_Flag:
	LD	r5,#1073745696
// inline asm begin
	// 2342 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #25
// inline asm end
	LD	r3,#1073745664
	MOV	r4,#1
	LSL	r4,#9
.L226:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L226
	LD	r5,#1073745696
// inline asm begin
	// 2344 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #25
// inline asm end
	JMP	lr
	.size	RTC_Clear_Timer1_INT_Flag, .-RTC_Clear_Timer1_INT_Flag
	.section .text$RTC_Clear_Timer0_INT_Flag
	.align	1
	.export	RTC_Clear_Timer0_INT_Flag
	.type	RTC_Clear_Timer0_INT_Flag, @function
RTC_Clear_Timer0_INT_Flag:
	LD	r5,#1073745696
// inline asm begin
	// 2356 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #24
// inline asm end
	LD	r3,#1073745664
	MOV	r4,#255
	ADD	r4,r4,#1
.L229:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L229
	LD	r5,#1073745696
// inline asm begin
	// 2358 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #24
// inline asm end
	JMP	lr
	.size	RTC_Clear_Timer0_INT_Flag, .-RTC_Clear_Timer0_INT_Flag
	.section .text$RTC_Clear_Time_Tick_INT_Flag
	.align	1
	.export	RTC_Clear_Time_Tick_INT_Flag
	.type	RTC_Clear_Time_Tick_INT_Flag, @function
RTC_Clear_Time_Tick_INT_Flag:
	LD	r5,#1073745696
// inline asm begin
	// 2370 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #22
// inline asm end
	LD	r3,#1073745664
	MOV	r4,#64
.L232:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L232
	LD	r5,#1073745696
// inline asm begin
	// 2372 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #22
// inline asm end
	JMP	lr
	.size	RTC_Clear_Time_Tick_INT_Flag, .-RTC_Clear_Time_Tick_INT_Flag
	.section .text$RTC_Clear_Alarm_B_INT_Flag
	.align	1
	.export	RTC_Clear_Alarm_B_INT_Flag
	.type	RTC_Clear_Alarm_B_INT_Flag, @function
RTC_Clear_Alarm_B_INT_Flag:
	LD	r5,#1073745696
// inline asm begin
	// 2384 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #21
// inline asm end
	LD	r3,#1073745664
	MOV	r4,#32
.L235:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L235
	LD	r5,#1073745696
// inline asm begin
	// 2386 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #21
// inline asm end
	JMP	lr
	.size	RTC_Clear_Alarm_B_INT_Flag, .-RTC_Clear_Alarm_B_INT_Flag
	.section .text$RTC_Clear_Alarm_A_INT_Flag
	.align	1
	.export	RTC_Clear_Alarm_A_INT_Flag
	.type	RTC_Clear_Alarm_A_INT_Flag, @function
RTC_Clear_Alarm_A_INT_Flag:
	LD	r5,#1073745696
// inline asm begin
	// 2398 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #20
// inline asm end
	LD	r3,#1073745664
	MOV	r4,#16
.L238:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L238
	LD	r5,#1073745696
// inline asm begin
	// 2400 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #20
// inline asm end
	JMP	lr
	.size	RTC_Clear_Alarm_A_INT_Flag, .-RTC_Clear_Alarm_A_INT_Flag
	.section .text$RTC_Clear_Days_INT_Flag
	.align	1
	.export	RTC_Clear_Days_INT_Flag
	.type	RTC_Clear_Days_INT_Flag, @function
RTC_Clear_Days_INT_Flag:
	LD	r5,#1073745696
// inline asm begin
	// 2412 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #19
// inline asm end
	LD	r3,#1073745664
	MOV	r4,#8
.L241:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L241
	LD	r5,#1073745696
// inline asm begin
	// 2414 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #19
// inline asm end
	JMP	lr
	.size	RTC_Clear_Days_INT_Flag, .-RTC_Clear_Days_INT_Flag
	.section .text$RTC_Clear_Hours_INT_Flag
	.align	1
	.export	RTC_Clear_Hours_INT_Flag
	.type	RTC_Clear_Hours_INT_Flag, @function
RTC_Clear_Hours_INT_Flag:
	LD	r5,#1073745696
// inline asm begin
	// 2426 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #18
// inline asm end
	LD	r3,#1073745664
	MOV	r4,#4
.L244:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L244
	LD	r5,#1073745696
// inline asm begin
	// 2428 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #18
// inline asm end
	JMP	lr
	.size	RTC_Clear_Hours_INT_Flag, .-RTC_Clear_Hours_INT_Flag
	.section .text$RTC_Clear_Minutes_INT_Flag
	.align	1
	.export	RTC_Clear_Minutes_INT_Flag
	.type	RTC_Clear_Minutes_INT_Flag, @function
RTC_Clear_Minutes_INT_Flag:
	LD	r5,#1073745696
// inline asm begin
	// 2440 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #17
// inline asm end
	LD	r3,#1073745664
	MOV	r4,#2
.L247:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L247
	LD	r5,#1073745696
// inline asm begin
	// 2442 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #17
// inline asm end
	JMP	lr
	.size	RTC_Clear_Minutes_INT_Flag, .-RTC_Clear_Minutes_INT_Flag
	.section .text$RTC_Clear_Seconds_INT_Flag
	.align	1
	.export	RTC_Clear_Seconds_INT_Flag
	.type	RTC_Clear_Seconds_INT_Flag, @function
RTC_Clear_Seconds_INT_Flag:
	LD	r5,#1073745696
// inline asm begin
	// 2454 "../src/kf32f_basic_rtc.c" 1
	SET [r5], #16
// inline asm end
	LD	r3,#1073745664
	MOV	r4,#1
.L250:
	LD.w	r5,[r3+#8]
	ANL	r5,r5,r4
	JNZ	.L250
	LD	r5,#1073745696
// inline asm begin
	// 2456 "../src/kf32f_basic_rtc.c" 1
	CLR [r5], #16
// inline asm end
	JMP	lr
	.size	RTC_Clear_Seconds_INT_Flag, .-RTC_Clear_Seconds_INT_Flag
