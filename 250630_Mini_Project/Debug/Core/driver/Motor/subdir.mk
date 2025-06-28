################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/driver/Motor/Motor.c 

OBJS += \
./Core/driver/Motor/Motor.o 

C_DEPS += \
./Core/driver/Motor/Motor.d 


# Each subdirectory must supply rules for building sources it contributes
Core/driver/Motor/%.o Core/driver/Motor/%.su Core/driver/Motor/%.cyclo: ../Core/driver/Motor/%.c Core/driver/Motor/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/cubespace/250630_Mini_Project/Core/ap" -I"C:/cubespace/250630_Mini_Project/Core/driver/Button" -I"C:/cubespace/250630_Mini_Project/Core/driver/LedBar" -I"C:/cubespace/250630_Mini_Project/Core/ap/inc" -I"C:/cubespace/250630_Mini_Project/Core/ap/src" -I"C:/cubespace/250630_Mini_Project/Core/driver/LCD" -I"C:/cubespace/250630_Mini_Project/Core/driver/FND" -I"C:/cubespace/250630_Mini_Project/Core/driver/Buzzer" -I"C:/cubespace/250630_Mini_Project/Core/driver/Motor" -I"C:/cubespace/250630_Mini_Project/Core/driver/Ultra" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-driver-2f-Motor

clean-Core-2f-driver-2f-Motor:
	-$(RM) ./Core/driver/Motor/Motor.cyclo ./Core/driver/Motor/Motor.d ./Core/driver/Motor/Motor.o ./Core/driver/Motor/Motor.su

.PHONY: clean-Core-2f-driver-2f-Motor

