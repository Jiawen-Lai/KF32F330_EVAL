	.file	"kf32f_basic_sysctl.c"
	.section .text$SYSCTL_Get_V_Flag
	.align	1
	.export	SYSCTL_Get_V_Flag
	.type	SYSCTL_Get_V_Flag, @function
SYSCTL_Get_V_Flag:
	LD	r5,#1075839152
	LD.w	r0,[r5]
	LSR	r0,#28
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	SYSCTL_Get_V_Flag, .-SYSCTL_Get_V_Flag
	.section .text$SYSCTL_Get_C_Flag
	.align	1
	.export	SYSCTL_Get_C_Flag
	.type	SYSCTL_Get_C_Flag, @function
SYSCTL_Get_C_Flag:
	LD	r5,#1075839152
	LD.w	r0,[r5]
	LSR	r0,#29
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	SYSCTL_Get_C_Flag, .-SYSCTL_Get_C_Flag
	.section .text$SYSCTL_Get_Z_Flag
	.align	1
	.export	SYSCTL_Get_Z_Flag
	.type	SYSCTL_Get_Z_Flag, @function
SYSCTL_Get_Z_Flag:
	LD	r5,#1075839152
	LD.w	r0,[r5]
	LSR	r0,#30
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	SYSCTL_Get_Z_Flag, .-SYSCTL_Get_Z_Flag
	.section .text$SYSCTL_Get_N_Flag
	.align	1
	.export	SYSCTL_Get_N_Flag
	.type	SYSCTL_Get_N_Flag, @function
SYSCTL_Get_N_Flag:
	LD	r5,#1075839152
	LD.w	r0,[r5]
	LSR	r0,#31
	JMP	lr
	.size	SYSCTL_Get_N_Flag, .-SYSCTL_Get_N_Flag
	.section .text$SYSCTL_Set_V_Flag
	.align	1
	.export	SYSCTL_Set_V_Flag
	.type	SYSCTL_Set_V_Flag, @function
SYSCTL_Set_V_Flag:
	LD	r5,#1075839152
	CMP	r0,#0
	JNZ	.L9
// inline asm begin
	// 130 "../src/kf32f_basic_sysctl.c" 1
	CLR [r5], #28
// inline asm end
	JMP	lr
.L9:
// inline asm begin
	// 125 "../src/kf32f_basic_sysctl.c" 1
	SET [r5], #28
// inline asm end
	JMP	lr
	.size	SYSCTL_Set_V_Flag, .-SYSCTL_Set_V_Flag
	.section .text$SYSCTL_Set_C_Flag
	.align	1
	.export	SYSCTL_Set_C_Flag
	.type	SYSCTL_Set_C_Flag, @function
SYSCTL_Set_C_Flag:
	LD	r5,#1075839152
	CMP	r0,#0
	JNZ	.L13
// inline asm begin
	// 155 "../src/kf32f_basic_sysctl.c" 1
	CLR [r5], #29
// inline asm end
	JMP	lr
.L13:
// inline asm begin
	// 150 "../src/kf32f_basic_sysctl.c" 1
	SET [r5], #29
// inline asm end
	JMP	lr
	.size	SYSCTL_Set_C_Flag, .-SYSCTL_Set_C_Flag
	.section .text$SYSCTL_Set_Z_Flag
	.align	1
	.export	SYSCTL_Set_Z_Flag
	.type	SYSCTL_Set_Z_Flag, @function
SYSCTL_Set_Z_Flag:
	LD	r5,#1075839152
	CMP	r0,#0
	JNZ	.L17
// inline asm begin
	// 180 "../src/kf32f_basic_sysctl.c" 1
	CLR [r5], #30
// inline asm end
	JMP	lr
.L17:
// inline asm begin
	// 175 "../src/kf32f_basic_sysctl.c" 1
	SET [r5], #30
// inline asm end
	JMP	lr
	.size	SYSCTL_Set_Z_Flag, .-SYSCTL_Set_Z_Flag
	.section .text$SYSCTL_Set_N_Flag
	.align	1
	.export	SYSCTL_Set_N_Flag
	.type	SYSCTL_Set_N_Flag, @function
SYSCTL_Set_N_Flag:
	LD	r5,#1075839152
	CMP	r0,#0
	JNZ	.L21
// inline asm begin
	// 204 "../src/kf32f_basic_sysctl.c" 1
	CLR [r5], #31
// inline asm end
	JMP	lr
.L21:
// inline asm begin
	// 199 "../src/kf32f_basic_sysctl.c" 1
	SET [r5], #31
// inline asm end
	JMP	lr
	.size	SYSCTL_Set_N_Flag, .-SYSCTL_Set_N_Flag
	.section .text$SYSCTL_Sleep_On_Exit_Enable
	.align	1
	.export	SYSCTL_Sleep_On_Exit_Enable
	.type	SYSCTL_Sleep_On_Exit_Enable, @function
SYSCTL_Sleep_On_Exit_Enable:
	LD	r5,#1075839156
	CMP	r0,#0
	JNZ	.L25
// inline asm begin
	// 228 "../src/kf32f_basic_sysctl.c" 1
	CLR [r5], #1
// inline asm end
	JMP	lr
.L25:
// inline asm begin
	// 223 "../src/kf32f_basic_sysctl.c" 1
	SET [r5], #1
// inline asm end
	JMP	lr
	.size	SYSCTL_Sleep_On_Exit_Enable, .-SYSCTL_Sleep_On_Exit_Enable
	.section .text$SYSCTL_Deep_Sleep_Enable
	.align	1
	.export	SYSCTL_Deep_Sleep_Enable
	.type	SYSCTL_Deep_Sleep_Enable, @function
SYSCTL_Deep_Sleep_Enable:
	LD	r5,#1075839156
	CMP	r0,#0
	JNZ	.L29
// inline asm begin
	// 252 "../src/kf32f_basic_sysctl.c" 1
	CLR [r5], #2
// inline asm end
	JMP	lr
.L29:
// inline asm begin
	// 247 "../src/kf32f_basic_sysctl.c" 1
	SET [r5], #2
// inline asm end
	JMP	lr
	.size	SYSCTL_Deep_Sleep_Enable, .-SYSCTL_Deep_Sleep_Enable
	.section .text$SYSCTL_Interrupt_Awake_Enable
	.align	1
	.export	SYSCTL_Interrupt_Awake_Enable
	.type	SYSCTL_Interrupt_Awake_Enable, @function
SYSCTL_Interrupt_Awake_Enable:
	LD	r5,#1075839156
	CMP	r0,#0
	JNZ	.L33
// inline asm begin
	// 276 "../src/kf32f_basic_sysctl.c" 1
	CLR [r5], #4
// inline asm end
	JMP	lr
.L33:
// inline asm begin
	// 271 "../src/kf32f_basic_sysctl.c" 1
	SET [r5], #4
// inline asm end
	JMP	lr
	.size	SYSCTL_Interrupt_Awake_Enable, .-SYSCTL_Interrupt_Awake_Enable
	.section .text$SYSCTL_Stack_Align_State
	.align	1
	.export	SYSCTL_Stack_Align_State
	.type	SYSCTL_Stack_Align_State, @function
SYSCTL_Stack_Align_State:
	LD	r5,#1075839152
	LD.w	r0,[r5+#1]
	LSR	r0,#9
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	SYSCTL_Stack_Align_State, .-SYSCTL_Stack_Align_State
	.section .text$SYSCTL_Super_User_Config
	.align	1
	.export	SYSCTL_Super_User_Config
	.type	SYSCTL_Super_User_Config, @function
SYSCTL_Super_User_Config:
	LD	r5,#1075839156
	CMP	r0,#0
	JNZ	.L38
// inline asm begin
	// 321 "../src/kf32f_basic_sysctl.c" 1
	CLR [r5], #15
// inline asm end
	JMP	lr
.L38:
// inline asm begin
	// 316 "../src/kf32f_basic_sysctl.c" 1
	SET [r5], #15
// inline asm end
	JMP	lr
	.size	SYSCTL_Super_User_Config, .-SYSCTL_Super_User_Config
	.section .text$SYSCTL_Stack_Pointer_State
	.align	1
	.export	SYSCTL_Stack_Pointer_State
	.type	SYSCTL_Stack_Pointer_State, @function
SYSCTL_Stack_Pointer_State:
	LD	r5,#1075839152
	LD.w	r0,[r5+#1]
	LSR	r0,#16
	MOV	r5,#1
	ANL	r0,r0,r5
	JMP	lr
	.size	SYSCTL_Stack_Pointer_State, .-SYSCTL_Stack_Pointer_State
	.section .text$SYSCTL_Stack_Pointer_Config
	.align	1
	.export	SYSCTL_Stack_Pointer_Config
	.type	SYSCTL_Stack_Pointer_Config, @function
SYSCTL_Stack_Pointer_Config:
	LD	r5,#1075839152
	LD.w	r4,[r5+#1]
	CLR	r4,#16
	ORL	r0,r0,r4
	ST.w	[r5+#1],r0
	JMP	lr
	.size	SYSCTL_Stack_Pointer_Config, .-SYSCTL_Stack_Pointer_Config
	.section .text$SYSCTL_Exception_Reset_Enable
	.align	1
	.export	SYSCTL_Exception_Reset_Enable
	.type	SYSCTL_Exception_Reset_Enable, @function
SYSCTL_Exception_Reset_Enable:
	LD	r5,#1075839152
	LD.w	r3,[r5+#2]
	LD	r4,#65533
	ANL	r4,r3,r4
	LD	r3,#100270080
	ORL	r4,r4,r3
	ADD	r0,r0,r0
	ORL	r4,r4,r0
	ST.w	[r5+#2],r4
	JMP	lr
	.size	SYSCTL_Exception_Reset_Enable, .-SYSCTL_Exception_Reset_Enable
	.section .text$SYSCTL_System_Reset_Enable
	.align	1
	.export	SYSCTL_System_Reset_Enable
	.type	SYSCTL_System_Reset_Enable, @function
SYSCTL_System_Reset_Enable:
	LD	r5,#1075839152
	LD.w	r3,[r5+#2]
	LD	r4,#65531
	ANL	r4,r3,r4
	LD	r3,#100270080
	ORL	r4,r4,r3
	LSL	r0,#2
	ORL	r4,r4,r0
	ST.w	[r5+#2],r4
	JMP	lr
	.size	SYSCTL_System_Reset_Enable, .-SYSCTL_System_Reset_Enable
	.section .text$SYSCTL_Vector_Offset_Config
	.align	1
	.export	SYSCTL_Vector_Offset_Config
	.type	SYSCTL_Vector_Offset_Config, @function
SYSCTL_Vector_Offset_Config:
	LD	r5,#1075839152
	LD.w	r4,[r5+#3]
	ST.w	[r5+#3],r0
	JMP	lr
	.size	SYSCTL_Vector_Offset_Config, .-SYSCTL_Vector_Offset_Config
	.section .text$SYSCTL_Ram_Space_Config
	.align	1
	.export	SYSCTL_Ram_Space_Config
	.type	SYSCTL_Ram_Space_Config, @function
SYSCTL_Ram_Space_Config:
	LD	r5,#1075839152
	LD.w	r3,[r5+#5]
	LD	r4,#-67108864
	ANL	r4,r3,r4
	ORL	r0,r0,r4
	ST.w	[r5+#5],r0
	JMP	lr
	.size	SYSCTL_Ram_Space_Config, .-SYSCTL_Ram_Space_Config
	.section .text$SYSCTL_Flash_Start_Remap_Config
	.align	1
	.export	SYSCTL_Flash_Start_Remap_Config
	.type	SYSCTL_Flash_Start_Remap_Config, @function
SYSCTL_Flash_Start_Remap_Config:
	LD	r5,#1075839152
	LD.w	r4,[r5+#6]
	CLR	r4,#0
	CLR	r4,#1
	ORL	r0,r0,r4
	ST.w	[r5+#6],r0
	JMP	lr
	.size	SYSCTL_Flash_Start_Remap_Config, .-SYSCTL_Flash_Start_Remap_Config
