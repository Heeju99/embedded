################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/driver/FND_prof/FND_prof.c 

OBJS += \
./Src/driver/FND_prof/FND_prof.o 

C_DEPS += \
./Src/driver/FND_prof/FND_prof.d 


# Each subdirectory must supply rules for building sources it contributes
Src/driver/FND_prof/%.o Src/driver/FND_prof/%.su Src/driver/FND_prof/%.cyclo: ../Src/driver/FND_prof/%.c Src/driver/FND_prof/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32F411xE -DSTM32 -DSTM32F4 -DSTM32F411RETx -c -I../Inc -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/ap" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/Button" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/FND_prof" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/GPIO" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/LedBar" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/SystemClock" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/TIM" -I"C:/cubespace/250620_FND_TIM_Interrupt/Src/driver/SysTick" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src-2f-driver-2f-FND_prof

clean-Src-2f-driver-2f-FND_prof:
	-$(RM) ./Src/driver/FND_prof/FND_prof.cyclo ./Src/driver/FND_prof/FND_prof.d ./Src/driver/FND_prof/FND_prof.o ./Src/driver/FND_prof/FND_prof.su

.PHONY: clean-Src-2f-driver-2f-FND_prof

