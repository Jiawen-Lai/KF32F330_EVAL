################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USART_user.c \
../flash.c \
../kf_it.c \
../main.c \
../system_init.c \
../ymodem.c 

OBJS += \
./USART_user.o \
./flash.o \
./kf_it.o \
./main.o \
./system_init.o \
./ymodem.o 

C_DEPS += \
./USART_user.d \
./flash.d \
./kf_it.d \
./main.d \
./system_init.d \
./ymodem.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Chipon Compiler'
	kf32-gcc  -MMD -I"D:\workspace32\KF32Fxxx_StdPeriph_Lib_V2.3" -I"D:\workspace32\KF32Fxxx_StdPeriph_Lib_V2.3\inc" -I"C:/Program Files (x86)/ChipON IDE/KungFu32/ChiponCC32/include" -I"C:/Program Files (x86)/ChipON IDE/KungFu32/ChiponCC32/include/Sys" -save-temps -fno-builtin-printf -fno-builtin-fprintf -fno-builtin-fputs -c -funsigned-char -fsigned-bitfields -Wa,--kf32-arch=kf32r,-I"C:/Program Files (x86)/ChipON IDE/KungFu32/ChiponCC32/include" -ffunction-sections -fdata-sections -D"KF32F350MQV" -Wno-packed-bitfield-compat -std=gnu99 -gstabs+ -O0 $< -o "$@"
	@echo 'Finished building: $<'

