#include "TIM.h"

void TIM_Init(TIM_TypeDef *TIMx, uint32_t psc, uint32_t arr)
{
	TIM_WritePSC(TIMx, psc);
	TIM_WriteARR(TIMx, arr);
	TIM_WriteCNT(TIMx, 0);
	//TIMx->EGR |= TIM_EGR_UG;
}

void TIM_CntStart(TIM_TypeDef *TIMx) //enable
{
	TIMx->CR1 |= (1 << 0);
}

void TIM_CntStop(TIM_TypeDef *TIMx) //disable
{
	TIMx->CR1 &= ~(1 << 0);
}

void TIM_UInterEnable(TIM_TypeDef *TIMx) //interrupt enable
{
	TIMx->DIER |= (1<<0);
}

void TIM_UInterDisable(TIM_TypeDef *TIMx) //interrupt disable
{
	TIMx->DIER &= ~(1<<0);
}

uint32_t TIM_ReadCNT(TIM_TypeDef *TIMx)
{
	return TIMx->CNT;
}

void TIM_WriteCNT(TIM_TypeDef *TIMx, uint32_t cnt)
{
	TIMx->CNT = cnt;
}

uint32_t TIM_ReadPSC(TIM_TypeDef *TIMx)
{
	return TIMx->PSC;
}

void TIM_WritePSC(TIM_TypeDef *TIMx, uint32_t psc)
{
	TIMx->PSC = psc;
}

uint32_t TIM_ReadARR(TIM_TypeDef *TIMx)
{
	return TIMx->ARR;
}

void TIM_WriteARR(TIM_TypeDef *TIMx, uint32_t arr)
{
	TIMx->ARR = arr;
}

void TIM_ClearUIFlag(TIM_TypeDef *TIMx)
{
	TIM2->SR &= ~(1<<0);
}


