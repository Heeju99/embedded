#include "SysTick.h"

static uint32_t tick = 0;

//TIM_TypeDef *hTickTIM;

//void SysTick_Init(TIM_TypeDef *TIMx)
//{
//	hTickTIM = TIMx;
//}

void incTick()
{
	tick++;
}

uint32_t getTick()
{
	return tick;
}

/*
//uint32_t getTick()
//{
//	return hTickTIM->CNT;
//}

void SysTick_Start()
{
	hTickTIM->CR1 |= (1<<0);
}

void SysTick_Stop()
{
	hTickTIM->CR1 &= ~(1<<0);
}
*/
