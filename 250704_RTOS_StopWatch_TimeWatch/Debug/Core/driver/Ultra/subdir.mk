################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/driver/Ultra/Ultra.c 

OBJS += \
./Core/driver/Ultra/Ultra.o 

C_DEPS += \
./Core/driver/Ultra/Ultra.d 


# Each subdirectory must supply rules for building sources it contributes
Core/driver/Ultra/%.o Core/driver/Ultra/%.su Core/driver/Ultra/%.cyclo: ../Core/driver/Ultra/%.c Core/driver/Ultra/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/cubespace/250704_RTOS_StopWatch_TimeWatch/Core/driver/Button" -I"C:/cubespace/250704_RTOS_StopWatch_TimeWatch/Core/driver/LedBar" -I"C:/cubespace/250704_RTOS_StopWatch_TimeWatch/Core/driver/LCD" -I"C:/cubespace/250704_RTOS_StopWatch_TimeWatch/Core/driver/FND" -I"C:/cubespace/250704_RTOS_StopWatch_TimeWatch/Core/ap/Controller" -I"C:/cubespace/250704_RTOS_StopWatch_TimeWatch/Core/ap/Listener" -I"C:/cubespace/250704_RTOS_StopWatch_TimeWatch/Core/ap/Model" -I"C:/cubespace/250704_RTOS_StopWatch_TimeWatch/Core/ap/Presenter" -I"C:/cubespace/250704_RTOS_StopWatch_TimeWatch/Core/driver/Ultra" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-driver-2f-Ultra

clean-Core-2f-driver-2f-Ultra:
	-$(RM) ./Core/driver/Ultra/Ultra.cyclo ./Core/driver/Ultra/Ultra.d ./Core/driver/Ultra/Ultra.o ./Core/driver/Ultra/Ultra.su

.PHONY: clean-Core-2f-driver-2f-Ultra

