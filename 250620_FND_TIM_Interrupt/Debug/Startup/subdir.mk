################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Startup/startup_stm32f411retx.s 

OBJS += \
./Startup/startup_stm32f411retx.o 

S_DEPS += \
./Startup/startup_stm32f411retx.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.s Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/ap" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/Button" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/FND_prof" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/GPIO" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/LedBar" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/SystemClock" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/TIM" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/SysTick" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Startup

clean-Startup:
	-$(RM) ./Startup/startup_stm32f411retx.d ./Startup/startup_stm32f411retx.o

.PHONY: clean-Startup

