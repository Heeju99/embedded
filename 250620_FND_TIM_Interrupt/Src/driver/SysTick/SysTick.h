
#ifndef DRIVER_SYSTICK_SYSTICK_H_
#define DRIVER_SYSTICK_SYSTICK_H_

#include "stm32f4xx.h"

//void SysTick_Init(TIM_TypeDef *TIMx);
//uint32_t getTick();
//void SysTick_Start();
//void SysTick_Stop();

void incTick();
uint32_t getTick();

#endif /* DRIVER_SYSTICK_SYSTICK_H_ */
