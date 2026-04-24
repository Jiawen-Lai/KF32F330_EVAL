################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../config/chip_mode_protect_config.c \
../config/startup.c \
../config/vector.c 

OBJS += \
./config/chip_mode_protect_config.o \
./config/startup.o \
./config/vector.o 

C_DEPS += \
./config/chip_mode_protect_config.d \
./config/startup.d \
./config/vector.d 


# Each subdirectory must supply rules for building sources it contributes
config/%.o: ../config/%.c config/subdir.mk
	@echo 'Building file: $<'
#	@echo 'Invoking: C Compiler'
	-@mkdir -p "_static_code_analysis"
	@kf32-gcc  -MMD -MP -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj\Driver" -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj\BSP" -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj\Middle" -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj\Peripherals\inc" -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj" -I"D:/ResearchSoftware/KungFu32/ChipONCC32/include" -I"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys" -save-temps=obj -fno-builtin-printf -fno-builtin-fprintf -fno-builtin-fputs -c -funsigned-char -fsigned-bitfields -Wa,--kf32-arch=kf32r,-I"D:/ResearchSoftware/KungFu32/ChipONCC32/include" -ffunction-sections -fdata-sections -D"KF32F330KQT" -D"__RELEASE__" -Wreturn-type -Wno-packed-bitfield-compat -std=gnu99 -gdwarf-3 -O2 "$<" -o "$@"
	@echo 'Finished building: $<'
#	@echo ' '


clean: clean-config

clean-config:
	-$(RM) ./config/chip_mode_protect_config.o ./config/startup.o ./config/vector.o ./config/chip_mode_protect_config.d ./config/startup.d ./config/vector.d

.PHONY: clean-config

