#ifndef DRIVER_LEDBAR_LEDBAR_H_
#define DRIVER_LEDBAR_LEDBAR_H_
#include <stdint.h>
#include "GPIO.h"
#include "stm32f411xe.h"

void LEDBar_Write(uint8_t data);
void LedBar_Init();

#endif /* DRIVER_LEDBAR_LEDBAR_H_ */
