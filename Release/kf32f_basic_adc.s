	.file	"kf32f_basic_adc.c"
	.section .text$ADC_Reset
	.align	1
	.export	ADC_Reset
	.type	ADC_Reset, @function
ADC_Reset:
	PUSH	{r6, lr}
	LD	r5,#1073743232
	CMP	r0,r5
	JZ	.L6
	LD	r5,#1073743360
	CMP	r0,r5
	JZ	.L7
	LD	r5,#1073743488
	CMP	r0,r5
	JZ	.L8
.L1:
	POP	{r6, pc}
.L8:
	MOV	r0,#1
	LSL	r0,#13
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#13
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#13
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	POP	{r6, pc}
.L6:
	MOV	r0,#1
	LSL	r0,#11
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#11
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#11
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
.L7:
	MOV	r0,#1
	LSL	r0,#12
	MOV	r1,#1
	LD	r6,#RST_CTL1_Peripheral_Reset_Enable
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#12
	MOV	r1,#0
	LJMP	r6
	MOV	r0,#1
	LSL	r0,#12
	MOV	r1,#1
	LD	r5,#PCLK_CTL1_Peripheral_Clock_Enable
	LJMP	r5
	JMP	.L1
	.size	ADC_Reset, .-ADC_Reset
	.section .text$ADC_Configuration
	.align	1
	.export	ADC_Configuration
	.type	ADC_Configuration, @function
ADC_Configuration:
	LD.w	r3,[r0]
	LD.w	r2,[r1+#1]
	LD.w	r4,[r1]
	ORL	r5,r2,r4
	LD.w	r2,[r1+#3]
	ORL	r5,r5,r2
	LD.w	r4,[r1+#4]
	ORL	r5,r5,r4
	LD.w	r4,[r1+#2]
	LSL	r4,#17
	ORL	r5,r5,r4
	LD	r4,#-395023
	ANL	r4,r3,r4
	ORL	r5,r5,r4
	ST.w	[r0],r5
	LD.w	r3,[r0+#1]
	LD.w	r2,[r1+#8]
	LD.w	r4,[r1+#6]
	ORL	r5,r2,r4
	LD.w	r2,[r1+#9]
	ORL	r5,r5,r2
	LD.w	r4,[r1+#5]
	LSL	r4,#11
	ORL	r5,r5,r4
	LD.w	r4,[r1+#7]
	LSL	r4,#27
	ORL	r5,r5,r4
	LD	r4,#-268308465
	ANL	r4,r3,r4
	ORL	r5,r5,r4
	ST.w	[r0+#1],r5
	LD.w	r3,[r0+#17]
	LD.w	r5,[r1+#10]
	SUB	r4,r5,#1
	LSL	r4,#28
	LD	r5,#268435455
	ANL	r5,r3,r5
	ORL	r5,r4,r5
	ST.w	[r0+#17],r5
	LD.w	r4,[r0+#5]
	LD.w	r5,[r1+#11]
	SUB	r5,r5,#1
	LSL	r5,#28
	CLR	r4,#28
	CLR	r4,#29
	ORL	r5,r5,r4
	ST.w	[r0+#5],r5
	JMP	lr
	.size	ADC_Configuration, .-ADC_Configuration
	.section .text$ADC_Struct_Init
	.align	1
	.export	ADC_Struct_Init
	.type	ADC_Struct_Init, @function
ADC_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	ST.w	[r0+#6],r5
	ST.w	[r0+#7],r5
	ST.w	[r0+#8],r5
	MOV	r5,#1
	LSL	r5,#17
	ST.w	[r0+#9],r5
	MOV	r5,#1
	ST.w	[r0+#10],r5
	ST.w	[r0+#11],r5
	JMP	lr
	.size	ADC_Struct_Init, .-ADC_Struct_Init
	.section .text$ADC_Delay_Configuration
	.align	1
	.export	ADC_Delay_Configuration
	.type	ADC_Delay_Configuration, @function
ADC_Delay_Configuration:
	LD	r5,#1073743316
	LD.w	r3,[r5]
	LD	r4,#-4128832
	ANL	r4,r3,r4
	LD.w	r2,[r0]
	SUB	r3,r2,#1
	ORL	r4,r4,r3
	LD.w	r3,[r0+#1]
	SUB	r3,r3,#1
	LSL	r3,#16
	ORL	r4,r4,r3
	ST.w	[r5],r4
	JMP	lr
	.size	ADC_Delay_Configuration, .-ADC_Delay_Configuration
	.section .text$ADC_Delay_Struct_Init
	.align	1
	.export	ADC_Delay_Struct_Init
	.type	ADC_Delay_Struct_Init, @function
ADC_Delay_Struct_Init:
	MOV	r5,#6
	ST.w	[r0],r5
	MOV	r5,#13
	ST.w	[r0+#1],r5
	JMP	lr
	.size	ADC_Delay_Struct_Init, .-ADC_Delay_Struct_Init
	.section .text$ADC_Cmd
	.align	1
	.export	ADC_Cmd
	.type	ADC_Cmd, @function
ADC_Cmd:
	CMP	r1,#0
	JNZ	.L16
// inline asm begin
	// 264 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #0
// inline asm end
	JMP	lr
.L16:
// inline asm begin
	// 259 "../src/kf32f_basic_adc.c" 1
	SET [r0], #0
// inline asm end
	JMP	lr
	.size	ADC_Cmd, .-ADC_Cmd
	.section .text$ADC_Analog_Watchdog_Configuration
	.align	1
	.export	ADC_Analog_Watchdog_Configuration
	.type	ADC_Analog_Watchdog_Configuration, @function
ADC_Analog_Watchdog_Configuration:
	LD.w	r3,[r0]
	LD.w	r4,[r1+#1]
	LSL	r4,#30
	LD.w	r5,[r1+#2]
	LSL	r5,#29
	ORL	r4,r4,r5
	LD.w	r2,[r1]
	ORL	r4,r4,r2
	LD	r5,#536870911
	ANL	r5,r3,r5
	ORL	r5,r4,r5
	ST.w	[r0],r5
	LD.w	r4,[r0+#17]
	LD	r5,#-66060289
	ANL	r5,r4,r5
	LD.w	r3,[r1+#3]
	ORL	r5,r5,r3
	ST.w	[r0+#17],r5
	LD.w	r4,[r0+#6]
	LD	r5,#-4096
	ANL	r4,r4,r5
	LD.w	r2,[r1+#4]
	ORL	r4,r4,r2
	ST.w	[r0+#6],r4
	LD.w	r4,[r0+#7]
	ANL	r5,r4,r5
	LD.w	r4,[r1+#5]
	ORL	r5,r5,r4
	ST.w	[r0+#7],r5
	JMP	lr
	.size	ADC_Analog_Watchdog_Configuration, .-ADC_Analog_Watchdog_Configuration
	.section .text$ADC_Analog_Watchdog_Struct_Init
	.align	1
	.export	ADC_Analog_Watchdog_Struct_Init
	.type	ADC_Analog_Watchdog_Struct_Init, @function
ADC_Analog_Watchdog_Struct_Init:
	MOV	r5,#0
	ST.w	[r0],r5
	ST.w	[r0+#1],r5
	ST.w	[r0+#2],r5
	ST.w	[r0+#3],r5
	ST.w	[r0+#4],r5
	ST.w	[r0+#5],r5
	JMP	lr
	.size	ADC_Analog_Watchdog_Struct_Init, .-ADC_Analog_Watchdog_Struct_Init
	.section .text$ADC_Watchdog_Single_Channel_Enable
	.align	1
	.export	ADC_Watchdog_Single_Channel_Enable
	.type	ADC_Watchdog_Single_Channel_Enable, @function
ADC_Watchdog_Single_Channel_Enable:
	CMP	r1,#0
	JNZ	.L22
// inline asm begin
	// 385 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #31
// inline asm end
	JMP	lr
.L22:
// inline asm begin
	// 380 "../src/kf32f_basic_adc.c" 1
	SET [r0], #31
// inline asm end
	JMP	lr
	.size	ADC_Watchdog_Single_Channel_Enable, .-ADC_Watchdog_Single_Channel_Enable
	.section .text$ADC_Scan_Mode_Enable
	.align	1
	.export	ADC_Scan_Mode_Enable
	.type	ADC_Scan_Mode_Enable, @function
ADC_Scan_Mode_Enable:
	CMP	r1,#0
	JNZ	.L26
// inline asm begin
	// 411 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #17
// inline asm end
	JMP	lr
.L26:
// inline asm begin
	// 406 "../src/kf32f_basic_adc.c" 1
	SET [r0], #17
// inline asm end
	JMP	lr
	.size	ADC_Scan_Mode_Enable, .-ADC_Scan_Mode_Enable
	.section .text$ADC_Bosssel_Comparator_Calibration
	.align	1
	.export	ADC_Bosssel_Comparator_Calibration
	.type	ADC_Bosssel_Comparator_Calibration, @function
ADC_Bosssel_Comparator_Calibration:
	CMP	r1,#0
	JNZ	.L30
// inline asm begin
	// 437 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #16
// inline asm end
	JMP	lr
.L30:
// inline asm begin
	// 432 "../src/kf32f_basic_adc.c" 1
	SET [r0], #16
// inline asm end
	JMP	lr
	.size	ADC_Bosssel_Comparator_Calibration, .-ADC_Bosssel_Comparator_Calibration
	.section .text$ADC_Bosssel_Calibration
	.align	1
	.export	ADC_Bosssel_Calibration
	.type	ADC_Bosssel_Calibration, @function
ADC_Bosssel_Calibration:
	CMP	r1,#0
	JNZ	.L34
// inline asm begin
	// 463 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #15
// inline asm end
	JMP	lr
.L34:
// inline asm begin
	// 458 "../src/kf32f_basic_adc.c" 1
	SET [r0], #15
// inline asm end
	JMP	lr
	.size	ADC_Bosssel_Calibration, .-ADC_Bosssel_Calibration
	.section .text$ADC_Trim_Current_Intensity_Bias
	.align	1
	.export	ADC_Trim_Current_Intensity_Bias
	.type	ADC_Trim_Current_Intensity_Bias, @function
ADC_Trim_Current_Intensity_Bias:
	CMP	r1,#0
	JNZ	.L38
// inline asm begin
	// 489 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #14
// inline asm end
	JMP	lr
.L38:
// inline asm begin
	// 484 "../src/kf32f_basic_adc.c" 1
	SET [r0], #14
// inline asm end
	JMP	lr
	.size	ADC_Trim_Current_Intensity_Bias, .-ADC_Trim_Current_Intensity_Bias
	.section .text$ADC_Analog_Clock_Config
	.align	1
	.export	ADC_Analog_Clock_Config
	.type	ADC_Analog_Clock_Config, @function
ADC_Analog_Clock_Config:
	LD.w	r4,[r0]
	LD	r5,#-1793
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0],r1
	JMP	lr
	.size	ADC_Analog_Clock_Config, .-ADC_Analog_Clock_Config
	.section .text$ADC_Data_Align_Config
	.align	1
	.export	ADC_Data_Align_Config
	.type	ADC_Data_Align_Config, @function
ADC_Data_Align_Config:
	LD.w	r5,[r0]
	CLR	r5,#3
	ORL	r1,r1,r5
	ST.w	[r0],r1
	JMP	lr
	.size	ADC_Data_Align_Config, .-ADC_Data_Align_Config
	.section .text$ADC_Clock_Source_Config
	.align	1
	.export	ADC_Clock_Source_Config
	.type	ADC_Clock_Source_Config, @function
ADC_Clock_Source_Config:
	LD.w	r5,[r0]
	CLR	r5,#1
	CLR	r5,#2
	ORL	r1,r1,r5
	ST.w	[r0],r1
	JMP	lr
	.size	ADC_Clock_Source_Config, .-ADC_Clock_Source_Config
	.section .text$ADC_DMA_Cmd
	.align	1
	.export	ADC_DMA_Cmd
	.type	ADC_DMA_Cmd, @function
ADC_DMA_Cmd:
	CMP	r1,#0
	JNZ	.L45
// inline asm begin
	// 583 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #13
// inline asm end
	JMP	lr
.L45:
// inline asm begin
	// 578 "../src/kf32f_basic_adc.c" 1
	SET [r0], #13
// inline asm end
	JMP	lr
	.size	ADC_DMA_Cmd, .-ADC_DMA_Cmd
	.section .text$ADC_Double_Mode_Config
	.align	1
	.export	ADC_Double_Mode_Config
	.type	ADC_Double_Mode_Config, @function
ADC_Double_Mode_Config:
	LD	r5,#1073743232
	LD.w	r3,[r5+#1]
	LD	r4,#268435455
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#1],r0
	JMP	lr
	.size	ADC_Double_Mode_Config, .-ADC_Double_Mode_Config
	.section .text$ADC_Reference_Voltage_Config
	.align	1
	.export	ADC_Reference_Voltage_Config
	.type	ADC_Reference_Voltage_Config, @function
ADC_Reference_Voltage_Config:
	LD.w	r4,[r0+#1]
	LD	r5,#-917505
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	ADC_Reference_Voltage_Config, .-ADC_Reference_Voltage_Config
	.section .text$ADC_Analog_Watchdog_Channel_Config
	.align	1
	.export	ADC_Analog_Watchdog_Channel_Config
	.type	ADC_Analog_Watchdog_Channel_Config, @function
ADC_Analog_Watchdog_Channel_Config:
	LD.w	r4,[r0+#17]
	LD	r5,#-66060289
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#17],r1
	JMP	lr
	.size	ADC_Analog_Watchdog_Channel_Config, .-ADC_Analog_Watchdog_Channel_Config
	.section .text$ADC_Regular_Channel_Watchdog_Enable
	.align	1
	.export	ADC_Regular_Channel_Watchdog_Enable
	.type	ADC_Regular_Channel_Watchdog_Enable, @function
ADC_Regular_Channel_Watchdog_Enable:
	CMP	r1,#0
	JNZ	.L52
// inline asm begin
	// 685 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #29
// inline asm end
	JMP	lr
.L52:
// inline asm begin
	// 680 "../src/kf32f_basic_adc.c" 1
	SET [r0], #29
// inline asm end
	JMP	lr
	.size	ADC_Regular_Channel_Watchdog_Enable, .-ADC_Regular_Channel_Watchdog_Enable
	.section .text$ADC_External_Trig_Conv_Enable
	.align	1
	.export	ADC_External_Trig_Conv_Enable
	.type	ADC_External_Trig_Conv_Enable, @function
ADC_External_Trig_Conv_Enable:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L56
// inline asm begin
	// 711 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #11
// inline asm end
	JMP	lr
.L56:
// inline asm begin
	// 706 "../src/kf32f_basic_adc.c" 1
	SET [r0], #11
// inline asm end
	JMP	lr
	.size	ADC_External_Trig_Conv_Enable, .-ADC_External_Trig_Conv_Enable
	.section .text$ADC_External_Trig_Conv_Config
	.align	1
	.export	ADC_External_Trig_Conv_Config
	.type	ADC_External_Trig_Conv_Config, @function
ADC_External_Trig_Conv_Config:
	LD.w	r4,[r0+#1]
	LD	r5,#-2033
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	ADC_External_Trig_Conv_Config, .-ADC_External_Trig_Conv_Config
	.section .text$ADC_Regular_Channel_Config
	.align	1
	.export	ADC_Regular_Channel_Config
	.type	ADC_Regular_Channel_Config, @function
ADC_Regular_Channel_Config:
	MOV	r5,#6
	CMP	r2,#5
	JLS	.L63
	CMP	r2,#10
	JLS	.L64
	CMP	r2,#15
	JLS	.L65
	MULS	r2,r2,r5
	SUB	r2,#96
	LD.w	r4,[r0+#17]
	MOV	r5,#63
	LSL	r5,r5,r2
	NOT	r5,r5
	ANL	r5,r5,r4
	LSL	r1,r1,r2
	ORL	r2,r5,r1
	ST.w	[r0+#17],r2
	JMP	lr
.L64:
	MULS	r2,r2,r5
	SUB	r2,#36
	LD.w	r4,[r0+#3]
	MOV	r5,#63
	LSL	r5,r5,r2
	NOT	r5,r5
	ANL	r5,r5,r4
	LSL	r1,r1,r2
	ORL	r2,r5,r1
	ST.w	[r0+#3],r2
	JMP	lr
.L63:
	MULS	r2,r2,r5
	SUB	r2,r2,r5
	LD.w	r4,[r0+#2]
	MOV	r5,#63
	LSL	r5,r5,r2
	NOT	r5,r5
	ANL	r5,r5,r4
	LSL	r1,r1,r2
	ORL	r2,r5,r1
	ST.w	[r0+#2],r2
	JMP	lr
.L65:
	MULS	r2,r2,r5
	SUB	r2,#66
	LD.w	r4,[r0+#4]
	MOV	r5,#63
	LSL	r5,r5,r2
	NOT	r5,r5
	ANL	r5,r5,r4
	LSL	r1,r1,r2
	ORL	r2,r5,r1
	ST.w	[r0+#4],r2
	JMP	lr
	.size	ADC_Regular_Channel_Config, .-ADC_Regular_Channel_Config
	.section .text$ADC_Regular_Sequencer_Length_Config
	.align	1
	.export	ADC_Regular_Sequencer_Length_Config
	.type	ADC_Regular_Sequencer_Length_Config, @function
ADC_Regular_Sequencer_Length_Config:
	LD.w	r3,[r0+#17]
	SUB	r5,r1,#1
	LSL	r5,#28
	LD	r4,#268435455
	ANL	r1,r3,r4
	ORL	r1,r5,r1
	ST.w	[r0+#17],r1
	JMP	lr
	.size	ADC_Regular_Sequencer_Length_Config, .-ADC_Regular_Sequencer_Length_Config
	.section .text$ADC_Software_Start_Conv
	.align	1
	.export	ADC_Software_Start_Conv
	.type	ADC_Software_Start_Conv, @function
ADC_Software_Start_Conv:
	ADD	r0,r0,#4
// inline asm begin
	// 901 "../src/kf32f_basic_adc.c" 1
	SET [r0], #2
// inline asm end
	JMP	lr
	.size	ADC_Software_Start_Conv, .-ADC_Software_Start_Conv
	.section .text$ADC_Continuous_Mode_Cmd
	.align	1
	.export	ADC_Continuous_Mode_Cmd
	.type	ADC_Continuous_Mode_Cmd, @function
ADC_Continuous_Mode_Cmd:
	CMP	r1,#0
	JNZ	.L71
// inline asm begin
	// 925 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #18
// inline asm end
	JMP	lr
.L71:
// inline asm begin
	// 920 "../src/kf32f_basic_adc.c" 1
	SET [r0], #18
// inline asm end
	JMP	lr
	.size	ADC_Continuous_Mode_Cmd, .-ADC_Continuous_Mode_Cmd
	.section .text$ADC_Disc_Mode_Channel_Count_Config
	.align	1
	.export	ADC_Disc_Mode_Channel_Count_Config
	.type	ADC_Disc_Mode_Channel_Count_Config, @function
ADC_Disc_Mode_Channel_Count_Config:
	ZXT.b	r1,r1
	LD.w	r4,[r0]
	SUB	r1,r1,#1
	LSL	r1,#26
	LD	r5,#-469762049
	ANL	r5,r4,r5
	ORL	r5,r1,r5
	ST.w	[r0],r5
	JMP	lr
	.size	ADC_Disc_Mode_Channel_Count_Config, .-ADC_Disc_Mode_Channel_Count_Config
	.section .text$ADC_Disc_Mode_Cmd
	.align	1
	.export	ADC_Disc_Mode_Cmd
	.type	ADC_Disc_Mode_Cmd, @function
ADC_Disc_Mode_Cmd:
	CMP	r1,#0
	JNZ	.L76
// inline asm begin
	// 972 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #20
// inline asm end
	JMP	lr
.L76:
// inline asm begin
	// 967 "../src/kf32f_basic_adc.c" 1
	SET [r0], #20
// inline asm end
	JMP	lr
	.size	ADC_Disc_Mode_Cmd, .-ADC_Disc_Mode_Cmd
	.section .text$ADC_Get_Conversion_Value
	.align	1
	.export	ADC_Get_Conversion_Value
	.type	ADC_Get_Conversion_Value, @function
ADC_Get_Conversion_Value:
	LD.w	r0,[r0+#8]
	ZXT.h	r0,r0
	JMP	lr
	.size	ADC_Get_Conversion_Value, .-ADC_Get_Conversion_Value
	.section .text$ADC_High_Priority_Watchdog_Enable
	.align	1
	.export	ADC_High_Priority_Watchdog_Enable
	.type	ADC_High_Priority_Watchdog_Enable, @function
ADC_High_Priority_Watchdog_Enable:
	CMP	r1,#0
	JNZ	.L81
// inline asm begin
	// 1024 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #30
// inline asm end
	JMP	lr
.L81:
// inline asm begin
	// 1019 "../src/kf32f_basic_adc.c" 1
	SET [r0], #30
// inline asm end
	JMP	lr
	.size	ADC_High_Priority_Watchdog_Enable, .-ADC_High_Priority_Watchdog_Enable
	.section .text$ADC_HPExternal_Trig_Conv_Enable
	.align	1
	.export	ADC_HPExternal_Trig_Conv_Enable
	.type	ADC_HPExternal_Trig_Conv_Enable, @function
ADC_HPExternal_Trig_Conv_Enable:
	ADD	r0,r0,#4
	CMP	r1,#0
	JNZ	.L85
// inline asm begin
	// 1050 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #27
// inline asm end
	JMP	lr
.L85:
// inline asm begin
	// 1045 "../src/kf32f_basic_adc.c" 1
	SET [r0], #27
// inline asm end
	JMP	lr
	.size	ADC_HPExternal_Trig_Conv_Enable, .-ADC_HPExternal_Trig_Conv_Enable
	.section .text$ADC_High_Priority_Channel_Config
	.align	1
	.export	ADC_High_Priority_Channel_Config
	.type	ADC_High_Priority_Channel_Config, @function
ADC_High_Priority_Channel_Config:
	MOV	r5,#6
	MULS	r2,r2,r5
	SUB	r2,r2,r5
	LD.w	r4,[r0+#5]
	MOV	r5,#63
	LSL	r5,r5,r2
	NOT	r5,r5
	ANL	r5,r5,r4
	LSL	r1,r1,r2
	ORL	r5,r5,r1
	ST.w	[r0+#5],r5
	JMP	lr
	.size	ADC_High_Priority_Channel_Config, .-ADC_High_Priority_Channel_Config
	.section .text$ADC_High_Priority_Sequencer_Length_Config
	.align	1
	.export	ADC_High_Priority_Sequencer_Length_Config
	.type	ADC_High_Priority_Sequencer_Length_Config, @function
ADC_High_Priority_Sequencer_Length_Config:
	LD.w	r5,[r0+#5]
	SUB	r1,r1,#1
	LSL	r1,#28
	CLR	r5,#28
	CLR	r5,#29
	ORL	r1,r1,r5
	ST.w	[r0+#5],r1
	JMP	lr
	.size	ADC_High_Priority_Sequencer_Length_Config, .-ADC_High_Priority_Sequencer_Length_Config
	.section .text$ADC_Set_HPChannel_Conv_Value_Offset
	.align	1
	.export	ADC_Set_HPChannel_Conv_Value_Offset
	.type	ADC_Set_HPChannel_Conv_Value_Offset, @function
ADC_Set_HPChannel_Conv_Value_Offset:
	ST.w	[r1+r0],r2
	JMP	lr
	.size	ADC_Set_HPChannel_Conv_Value_Offset, .-ADC_Set_HPChannel_Conv_Value_Offset
	.section .text$ADC_HPExternal_Trig_Conv_Config
	.align	1
	.export	ADC_HPExternal_Trig_Conv_Config
	.type	ADC_HPExternal_Trig_Conv_Config, @function
ADC_HPExternal_Trig_Conv_Config:
	LD.w	r4,[r0+#1]
	LD	r5,#-133169153
	ANL	r5,r4,r5
	ORL	r1,r1,r5
	ST.w	[r0+#1],r1
	JMP	lr
	.size	ADC_HPExternal_Trig_Conv_Config, .-ADC_HPExternal_Trig_Conv_Config
	.section .text$ADC_Software_HPStart_Conv
	.align	1
	.export	ADC_Software_HPStart_Conv
	.type	ADC_Software_HPStart_Conv, @function
ADC_Software_HPStart_Conv:
	ADD	r0,r0,#4
// inline asm begin
	// 1239 "../src/kf32f_basic_adc.c" 1
	SET [r0], #3
// inline asm end
	JMP	lr
	.size	ADC_Software_HPStart_Conv, .-ADC_Software_HPStart_Conv
	.section .text$ADC_HPAuto_Conv_Cmd
	.align	1
	.export	ADC_HPAuto_Conv_Cmd
	.type	ADC_HPAuto_Conv_Cmd, @function
ADC_HPAuto_Conv_Cmd:
	CMP	r1,#0
	JNZ	.L94
// inline asm begin
	// 1263 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #19
// inline asm end
	JMP	lr
.L94:
// inline asm begin
	// 1258 "../src/kf32f_basic_adc.c" 1
	SET [r0], #19
// inline asm end
	JMP	lr
	.size	ADC_HPAuto_Conv_Cmd, .-ADC_HPAuto_Conv_Cmd
	.section .text$ADC_HPDisc_Mode_Cmd
	.align	1
	.export	ADC_HPDisc_Mode_Cmd
	.type	ADC_HPDisc_Mode_Cmd, @function
ADC_HPDisc_Mode_Cmd:
	CMP	r1,#0
	JNZ	.L98
// inline asm begin
	// 1288 "../src/kf32f_basic_adc.c" 1
	CLR [r0], #21
// inline asm end
	JMP	lr
.L98:
// inline asm begin
	// 1283 "../src/kf32f_basic_adc.c" 1
	SET [r0], #21
// inline asm end
	JMP	lr
	.size	ADC_HPDisc_Mode_Cmd, .-ADC_HPDisc_Mode_Cmd
	.section .text$ADC_Get_HPConversion_Data
	.align	1
	.export	ADC_Get_HPConversion_Data
	.type	ADC_Get_HPConversion_Data, @function
ADC_Get_HPConversion_Data:
	ZXT.b	r1,r1
	LD.w	r0,[r1+r0]
	ZXT.h	r0,r0
	JMP	lr
	.size	ADC_Get_HPConversion_Data, .-ADC_Get_HPConversion_Data
	.section .text$ADC_Set_INT_Enable
	.align	1
	.export	ADC_Set_INT_Enable
	.type	ADC_Set_INT_Enable, @function
ADC_Set_INT_Enable:
	MOV	r5,#15
	ANL	r1,r1,r5
	MOV	r4,#1
	LSL	r5,r4,r1
	LD.w	r4,[r0+#20]
	CMP	r2,#0
	JNZ	.L103
	NOT	r5,r5
	ANL	r5,r5,r4
	ST.w	[r0+#20],r5
	JMP	lr
.L103:
	ORL	r5,r5,r4
	ST.w	[r0+#20],r5
	JMP	lr
	.size	ADC_Set_INT_Enable, .-ADC_Set_INT_Enable
	.section .text$ADC_Get_INT_Flag
	.align	1
	.export	ADC_Get_INT_Flag
	.type	ADC_Get_INT_Flag, @function
ADC_Get_INT_Flag:
	LSR	r1,#8
	MOV	r5,#15
	ANL	r5,r1,r5
	LD.w	r4,[r0+#20]
	MOV	r3,#1
	LSL	r5,r3,r5
	ANL	r5,r5,r4
	MOV	r4,#0
	SUB	r4,r4,r5
	ORL	r0,r4,r5
	LSR	r0,#31
	JMP	lr
	.size	ADC_Get_INT_Flag, .-ADC_Get_INT_Flag
	.section .text$ADC_Clear_INT_Flag
	.align	1
	.export	ADC_Clear_INT_Flag
	.type	ADC_Clear_INT_Flag, @function
ADC_Clear_INT_Flag:
	MOV	r4,#16
	LSR	r5,r1,r4
	MOV	r4,#1
	LSL	r5,r4,r5
	LD.w	r3,[r0+#20]
	ORL	r3,r5,r3
	ST.w	[r0+#20],r3
	LD.w	r3,[r0+#20]
	LSR	r1,#8
	MOV	r2,#15
	ANL	r1,r1,r2
	LSL	r4,r4,r1
	ANL	r4,r4,r3
	LSR	r1,r4,r1
	CMP	r1,#0
	JNZ	.L106
	LD.w	r4,[r0+#20]
	NOT	r5,r5
	ANL	r5,r5,r4
	ST.w	[r0+#20],r5
	JMP	lr
.L106:
.L108:
	JMP	.L108
	.size	ADC_Clear_INT_Flag, .-ADC_Clear_INT_Flag
	.section .text$ADC_Get_INT_Status
	.align	1
	.export	ADC_Get_INT_Status
	.type	ADC_Get_INT_Status, @function
ADC_Get_INT_Status:
	LD.w	r5,[r0+#20]
	MOV	r3,#8
	LSR	r4,r1,r3
	MOV	r0,#1
	LSL	r4,r0,r4
	LSL	r1,r0,r1
	ORL	r1,r4,r1
	ANL	r5,r1,r5
	CMP	r1,r5
	JZ	.L110
	MOV	r0,#0
.L110:
	JMP	lr
	.size	ADC_Get_INT_Status, .-ADC_Get_INT_Status
