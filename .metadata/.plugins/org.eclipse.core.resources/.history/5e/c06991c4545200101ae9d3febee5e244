################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32f411retx.s 

OBJS += \
./Core/Startup/startup_stm32f411retx.o 

S_DEPS += \
./Core/Startup/startup_stm32f411retx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/%.o: ../Core/Startup/%.s Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I"C:/cubespace/250626_TimeWatch_StopWatch_Buzzer/Core/ap" -I"C:/cubespace/250626_TimeWatch_StopWatch_Buzzer/Core/driver/Button" -I"C:/cubespace/250626_TimeWatch_StopWatch_Buzzer/Core/driver/LedBar" -I"C:/cubespace/250626_TimeWatch_StopWatch_Buzzer/Core/ap/inc" -I"C:/cubespace/250626_TimeWatch_StopWatch_Buzzer/Core/ap/src" -I"C:/cubespace/250626_TimeWatch_StopWatch_Buzzer/Core/driver/LCD" -I"C:/cubespace/250626_TimeWatch_StopWatch_Buzzer/Core/driver/FND" -I"C:/cubespace/250626_TimeWatch_StopWatch_Buzzer/Core/driver/Buzzer" -I"C:/cubespace/250626_TimeWatch_StopWatch_Buzzer/Core/driver/Motor" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Startup

clean-Core-2f-Startup:
	-$(RM) ./Core/Startup/startup_stm32f411retx.d ./Core/Startup/startup_stm32f411retx.o

.PHONY: clean-Core-2f-Startup

