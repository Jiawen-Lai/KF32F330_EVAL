################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Peripherals/src/kf32f_basic_adc.c \
../Peripherals/src/kf32f_basic_atim.c \
../Peripherals/src/kf32f_basic_bkp.c \
../Peripherals/src/kf32f_basic_btim.c \
../Peripherals/src/kf32f_basic_cfgl.c \
../Peripherals/src/kf32f_basic_cmp.c \
../Peripherals/src/kf32f_basic_crc.c \
../Peripherals/src/kf32f_basic_dac.c \
../Peripherals/src/kf32f_basic_dma.c \
../Peripherals/src/kf32f_basic_flash.c \
../Peripherals/src/kf32f_basic_gpio.c \
../Peripherals/src/kf32f_basic_gptim.c \
../Peripherals/src/kf32f_basic_i2c.c \
../Peripherals/src/kf32f_basic_int.c \
../Peripherals/src/kf32f_basic_iwdt.c \
../Peripherals/src/kf32f_basic_op.c \
../Peripherals/src/kf32f_basic_osc.c \
../Peripherals/src/kf32f_basic_pclk.c \
../Peripherals/src/kf32f_basic_pm.c \
../Peripherals/src/kf32f_basic_rst.c \
../Peripherals/src/kf32f_basic_rtc.c \
../Peripherals/src/kf32f_basic_sysctl.c \
../Peripherals/src/kf32f_basic_systick.c \
../Peripherals/src/kf32f_basic_usart.c \
../Peripherals/src/kf32f_basic_wwdt.c 

OBJS += \
./Peripherals/src/kf32f_basic_adc.o \
./Peripherals/src/kf32f_basic_atim.o \
./Peripherals/src/kf32f_basic_bkp.o \
./Peripherals/src/kf32f_basic_btim.o \
./Peripherals/src/kf32f_basic_cfgl.o \
./Peripherals/src/kf32f_basic_cmp.o \
./Peripherals/src/kf32f_basic_crc.o \
./Peripherals/src/kf32f_basic_dac.o \
./Peripherals/src/kf32f_basic_dma.o \
./Peripherals/src/kf32f_basic_flash.o \
./Peripherals/src/kf32f_basic_gpio.o \
./Peripherals/src/kf32f_basic_gptim.o \
./Peripherals/src/kf32f_basic_i2c.o \
./Peripherals/src/kf32f_basic_int.o \
./Peripherals/src/kf32f_basic_iwdt.o \
./Peripherals/src/kf32f_basic_op.o \
./Peripherals/src/kf32f_basic_osc.o \
./Peripherals/src/kf32f_basic_pclk.o \
./Peripherals/src/kf32f_basic_pm.o \
./Peripherals/src/kf32f_basic_rst.o \
./Peripherals/src/kf32f_basic_rtc.o \
./Peripherals/src/kf32f_basic_sysctl.o \
./Peripherals/src/kf32f_basic_systick.o \
./Peripherals/src/kf32f_basic_usart.o \
./Peripherals/src/kf32f_basic_wwdt.o 

C_DEPS += \
./Peripherals/src/kf32f_basic_adc.d \
./Peripherals/src/kf32f_basic_atim.d \
./Peripherals/src/kf32f_basic_bkp.d \
./Peripherals/src/kf32f_basic_btim.d \
./Peripherals/src/kf32f_basic_cfgl.d \
./Peripherals/src/kf32f_basic_cmp.d \
./Peripherals/src/kf32f_basic_crc.d \
./Peripherals/src/kf32f_basic_dac.d \
./Peripherals/src/kf32f_basic_dma.d \
./Peripherals/src/kf32f_basic_flash.d \
./Peripherals/src/kf32f_basic_gpio.d \
./Peripherals/src/kf32f_basic_gptim.d \
./Peripherals/src/kf32f_basic_i2c.d \
./Peripherals/src/kf32f_basic_int.d \
./Peripherals/src/kf32f_basic_iwdt.d \
./Peripherals/src/kf32f_basic_op.d \
./Peripherals/src/kf32f_basic_osc.d \
./Peripherals/src/kf32f_basic_pclk.d \
./Peripherals/src/kf32f_basic_pm.d \
./Peripherals/src/kf32f_basic_rst.d \
./Peripherals/src/kf32f_basic_rtc.d \
./Peripherals/src/kf32f_basic_sysctl.d \
./Peripherals/src/kf32f_basic_systick.d \
./Peripherals/src/kf32f_basic_usart.d \
./Peripherals/src/kf32f_basic_wwdt.d 


# Each subdirectory must supply rules for building sources it contributes
Peripherals/src/%.o: ../Peripherals/src/%.c Peripherals/src/subdir.mk
	@echo 'Building file: $<'
#	@echo 'Invoking: C Compiler'
	-@mkdir -p "_static_code_analysis"
	@kf32-gcc  -MMD -MP -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj\Driver" -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj\BSP" -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj\Middle" -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj\Peripherals\inc" -I"E:\KF_Workspace\Project_WorkSpace\TEST_Prj" -I"D:/ResearchSoftware/KungFu32/ChipONCC32/include" -I"D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys" -save-temps=obj -fno-builtin-printf -fno-builtin-fprintf -fno-builtin-fputs -c -funsigned-char -fsigned-bitfields -Wa,--kf32-arch=kf32r,-I"D:/ResearchSoftware/KungFu32/ChipONCC32/include" -ffunction-sections -fdata-sections -D"KF32F330KQT" -D"__RELEASE__" -Wreturn-type -Wno-packed-bitfield-compat -std=gnu99 -gdwarf-3 -O2 "$<" -o "$@"
	@echo 'Finished building: $<'
#	@echo ' '


clean: clean-Peripherals-2f-src

clean-Peripherals-2f-src:
	-$(RM) ./Peripherals/src/kf32f_basic_adc.o ./Peripherals/src/kf32f_basic_atim.o ./Peripherals/src/kf32f_basic_bkp.o ./Peripherals/src/kf32f_basic_btim.o ./Peripherals/src/kf32f_basic_cfgl.o ./Peripherals/src/kf32f_basic_cmp.o ./Peripherals/src/kf32f_basic_crc.o ./Peripherals/src/kf32f_basic_dac.o ./Peripherals/src/kf32f_basic_dma.o ./Peripherals/src/kf32f_basic_flash.o ./Peripherals/src/kf32f_basic_gpio.o ./Peripherals/src/kf32f_basic_gptim.o ./Peripherals/src/kf32f_basic_i2c.o ./Peripherals/src/kf32f_basic_int.o ./Peripherals/src/kf32f_basic_iwdt.o ./Peripherals/src/kf32f_basic_op.o ./Peripherals/src/kf32f_basic_osc.o ./Peripherals/src/kf32f_basic_pclk.o ./Peripherals/src/kf32f_basic_pm.o ./Peripherals/src/kf32f_basic_rst.o ./Peripherals/src/kf32f_basic_rtc.o ./Peripherals/src/kf32f_basic_sysctl.o ./Peripherals/src/kf32f_basic_systick.o ./Peripherals/src/kf32f_basic_usart.o ./Peripherals/src/kf32f_basic_wwdt.o ./Peripherals/src/kf32f_basic_adc.d ./Peripherals/src/kf32f_basic_atim.d ./Peripherals/src/kf32f_basic_bkp.d ./Peripherals/src/kf32f_basic_btim.d ./Peripherals/src/kf32f_basic_cfgl.d ./Peripherals/src/kf32f_basic_cmp.d ./Peripherals/src/kf32f_basic_crc.d ./Peripherals/src/kf32f_basic_dac.d ./Peripherals/src/kf32f_basic_dma.d ./Peripherals/src/kf32f_basic_flash.d ./Peripherals/src/kf32f_basic_gpio.d ./Peripherals/src/kf32f_basic_gptim.d ./Peripherals/src/kf32f_basic_i2c.d ./Peripherals/src/kf32f_basic_int.d ./Peripherals/src/kf32f_basic_iwdt.d ./Peripherals/src/kf32f_basic_op.d ./Peripherals/src/kf32f_basic_osc.d ./Peripherals/src/kf32f_basic_pclk.d ./Peripherals/src/kf32f_basic_pm.d ./Peripherals/src/kf32f_basic_rst.d ./Peripherals/src/kf32f_basic_rtc.d ./Peripherals/src/kf32f_basic_sysctl.d ./Peripherals/src/kf32f_basic_systick.d ./Peripherals/src/kf32f_basic_usart.d ./Peripherals/src/kf32f_basic_wwdt.d

.PHONY: clean-Peripherals-2f-src

