#ifndef DRIVER_FND_PROF_FND_PROF_H_
#define DRIVER_FND_PROF_FND_PROF_H_

#include <stdint.h>
#include "stm32f4xx.h"
#include "GPIO.h"

void FND_Init();
void FND_WriteData(uint16_t data);
uint16_t FND_ReadData();
void FND_DisplayData();
void FND_Dot(uint8_t dp1, uint8_t dp2, uint8_t dp3, uint8_t dp4);


#endif /* DRIVER_FND_PROF_FND_PROF_H_ */
