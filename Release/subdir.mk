################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../KF32_EVAL.c \
../kf_it.c \
../main.c \
../system_init.c 

OBJS += \
./KF32_EVAL.o \
./kf_it.o \
./main.o \
./system_init.o 

C_DEPS += \
./KF32_EVAL.d \
./kf_it.d \
./main.d \
./system_init.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c subdir.mk
	@echo 'Building file: $<'
#	@echo 'Invoking: C Compiler'
	-@mkdir -p "_static_code_analysis"
	@kf32-gcc  -MMD -MP -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj\Driver" -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj\BSP" -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj\Middle" -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj\Peripherals\inc" -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj" -I"D:/ResearchSoftware/KungFu32/ChipONCC32/include" -I"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys" -save-temps=obj -fno-builtin-printf -fno-builtin-fprintf -fno-builtin-fputs -c -funsigned-char -fsigned-bitfields -Wa,--kf32-arch=kf32r,-I"D:/ResearchSoftware/KungFu32/ChipONCC32/include" -ffunction-sections -fdata-sections -D"KF32F330KQT" -D"__RELEASE__" -Wreturn-type -Wno-packed-bitfield-compat -std=gnu99 -gdwarf-3 -O2 "$<" -o "$@"
	@echo 'Finished building: $<'
#	@echo ' '


clean: clean--2e-

clean--2e-:
	-$(RM) ./KF32_EVAL.o ./kf_it.o ./main.o ./system_init.o ./KF32_EVAL.d ./kf_it.d ./main.d ./system_init.d

.PHONY: clean--2e-

