################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/driver/Systemclock/Systemclock.c 

OBJS += \
./Src/driver/Systemclock/Systemclock.o 

C_DEPS += \
./Src/driver/Systemclock/Systemclock.d 


# Each subdirectory must supply rules for building sources it contributes
Src/driver/Systemclock/%.o Src/driver/Systemclock/%.su Src/driver/Systemclock/%.cyclo: ../Src/driver/Systemclock/%.c Src/driver/Systemclock/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F411RETx -c -I../Inc -I"C:/cubespace/250619_Button_Led/Src/driver/GPIO" -I"C:/cubespace/250619_Button_Led/Src/driver/LedBar" -I"C:/cubespace/250619_Button_Led/Src/driver/Systemclock" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src-2f-driver-2f-Systemclock

clean-Src-2f-driver-2f-Systemclock:
	-$(RM) ./Src/driver/Systemclock/Systemclock.cyclo ./Src/driver/Systemclock/Systemclock.d ./Src/driver/Systemclock/Systemclock.o ./Src/driver/Systemclock/Systemclock.su

.PHONY: clean-Src-2f-driver-2f-Systemclock

