################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/driver/Button/Button.c 

OBJS += \
./Src/driver/Button/Button.o 

C_DEPS += \
./Src/driver/Button/Button.d 


# Each subdirectory must supply rules for building sources it contributes
Src/driver/Button/%.o Src/driver/Button/%.su Src/driver/Button/%.cyclo: ../Src/driver/Button/%.c Src/driver/Button/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F411RETx -c -I../Inc -I"C:/cubespace/250619_LED_Button1/Src/driver/GPIO" -I"C:/cubespace/250619_LED_Button1/Src/driver/LedBar" -I"C:/cubespace/250619_LED_Button1/Src/driver/SystemClock" -I"C:/cubespace/250619_LED_Button1/Src/ap" -I"C:/cubespace/250619_LED_Button1/Src/driver/Button" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src-2f-driver-2f-Button

clean-Src-2f-driver-2f-Button:
	-$(RM) ./Src/driver/Button/Button.cyclo ./Src/driver/Button/Button.d ./Src/driver/Button/Button.o ./Src/driver/Button/Button.su

.PHONY: clean-Src-2f-driver-2f-Button

