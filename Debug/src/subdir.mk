################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/kf32f_basic_adc.c \
../src/kf32f_basic_aes.c \
../src/kf32f_basic_atim.c \
../src/kf32f_basic_bkp.c \
../src/kf32f_basic_btim.c \
../src/kf32f_basic_can.c \
../src/kf32f_basic_cfgl.c \
../src/kf32f_basic_cmp.c \
../src/kf32f_basic_crc.c \
../src/kf32f_basic_dac.c \
../src/kf32f_basic_dma.c \
../src/kf32f_basic_exic.c \
../src/kf32f_basic_flash.c \
../src/kf32f_basic_gpio.c \
../src/kf32f_basic_gptim.c \
../src/kf32f_basic_i2c.c \
../src/kf32f_basic_int.c \
../src/kf32f_basic_iwdt.c \
../src/kf32f_basic_led.c \
../src/kf32f_basic_op.c \
../src/kf32f_basic_osc.c \
../src/kf32f_basic_pclk.c \
../src/kf32f_basic_pm.c \
../src/kf32f_basic_qei.c \
../src/kf32f_basic_rst.c \
../src/kf32f_basic_rtc.c \
../src/kf32f_basic_spi.c \
../src/kf32f_basic_sysctl.c \
../src/kf32f_basic_systick.c \
../src/kf32f_basic_usart.c \
../src/kf32f_basic_usb.c \
../src/kf32f_basic_wwdt.c 

OBJS += \
./src/kf32f_basic_adc.o \
./src/kf32f_basic_aes.o \
./src/kf32f_basic_atim.o \
./src/kf32f_basic_bkp.o \
./src/kf32f_basic_btim.o \
./src/kf32f_basic_can.o \
./src/kf32f_basic_cfgl.o \
./src/kf32f_basic_cmp.o \
./src/kf32f_basic_crc.o \
./src/kf32f_basic_dac.o \
./src/kf32f_basic_dma.o \
./src/kf32f_basic_exic.o \
./src/kf32f_basic_flash.o \
./src/kf32f_basic_gpio.o \
./src/kf32f_basic_gptim.o \
./src/kf32f_basic_i2c.o \
./src/kf32f_basic_int.o \
./src/kf32f_basic_iwdt.o \
./src/kf32f_basic_led.o \
./src/kf32f_basic_op.o \
./src/kf32f_basic_osc.o \
./src/kf32f_basic_pclk.o \
./src/kf32f_basic_pm.o \
./src/kf32f_basic_qei.o \
./src/kf32f_basic_rst.o \
./src/kf32f_basic_rtc.o \
./src/kf32f_basic_spi.o \
./src/kf32f_basic_sysctl.o \
./src/kf32f_basic_systick.o \
./src/kf32f_basic_usart.o \
./src/kf32f_basic_usb.o \
./src/kf32f_basic_wwdt.o 

C_DEPS += \
./src/kf32f_basic_adc.d \
./src/kf32f_basic_aes.d \
./src/kf32f_basic_atim.d \
./src/kf32f_basic_bkp.d \
./src/kf32f_basic_btim.d \
./src/kf32f_basic_can.d \
./src/kf32f_basic_cfgl.d \
./src/kf32f_basic_cmp.d \
./src/kf32f_basic_crc.d \
./src/kf32f_basic_dac.d \
./src/kf32f_basic_dma.d \
./src/kf32f_basic_exic.d \
./src/kf32f_basic_flash.d \
./src/kf32f_basic_gpio.d \
./src/kf32f_basic_gptim.d \
./src/kf32f_basic_i2c.d \
./src/kf32f_basic_int.d \
./src/kf32f_basic_iwdt.d \
./src/kf32f_basic_led.d \
./src/kf32f_basic_op.d \
./src/kf32f_basic_osc.d \
./src/kf32f_basic_pclk.d \
./src/kf32f_basic_pm.d \
./src/kf32f_basic_qei.d \
./src/kf32f_basic_rst.d \
./src/kf32f_basic_rtc.d \
./src/kf32f_basic_spi.d \
./src/kf32f_basic_sysctl.d \
./src/kf32f_basic_systick.d \
./src/kf32f_basic_usart.d \
./src/kf32f_basic_usb.d \
./src/kf32f_basic_wwdt.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Chipon Compiler'
	kf32-gcc  -MMD -I"D:\workspace32\KF32Fxxx_StdPeriph_Lib_V2.3" -I"D:\workspace32\KF32Fxxx_StdPeriph_Lib_V2.3\inc" -I"C:/Program Files (x86)/ChipON IDE/KungFu32/ChiponCC32/include" -I"C:/Program Files (x86)/ChipON IDE/KungFu32/ChiponCC32/include/Sys" -save-temps -fno-builtin-printf -fno-builtin-fprintf -fno-builtin-fputs -c -funsigned-char -fsigned-bitfields -Wa,--kf32-arch=kf32r,-I"C:/Program Files (x86)/ChipON IDE/KungFu32/ChiponCC32/include" -ffunction-sections -fdata-sections -D"KF32F350MQV" -Wno-packed-bitfield-compat -std=gnu99 -gstabs+ -O0 $< -o "$@"
	@echo 'Finished building: $<'

