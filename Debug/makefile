################################################################################
# 自动生成的文件。不要编辑！
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include config/subdir.mk
-include subdir.mk
-include objects.mk

-include $(C_DEPS)

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# 所有目标
all: KF32Fxxx_StdPeriph_Lib_V2.3.hex

# 工具调用
KF32Fxxx_StdPeriph_Lib_V2.3.hex: $(OBJS) $(USER_RELS)
	@echo 'Building target: $@'
	@echo 'Invoking: C Linker Debug'
	kf32-ld $(OBJS) $(USER_RELS) $(LIBS) -L"C:/Program Files (x86)/ChipON IDE/KungFu32/ChiponCC32/lib/ccr1_issue" -lmath -lio -lstring -lstdlib -lctype -lcrtv1 -T"C:/Program Files (x86)/ChipON IDE/KungFu32/ChiponCC32/scripting/ccr1_issue/KF32F350MQV.ld" --gc-sections -o  "KF32Fxxx_StdPeriph_Lib_V2.3.elf" -Map "KF32Fxxx_StdPeriph_Lib_V2.3.map"
	@echo 'Finished building target: $@'
	@echo ' '

# 其他目标
clean:
	-$(RM) $(OBJS)$(EXECUTABLES)$(C_DEPS) KF32Fxxx_StdPeriph_Lib_V2.3.hex
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
