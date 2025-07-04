#include "Motor.h"

static TIM_HandleTypeDef *hmotorTim;
static uint32_t motorTimChannel;

void Motor_Init(TIM_HandleTypeDef *htim, uint32_t channel)
{
	hmotorTim = htim;
	motorTimChannel = channel;

}

void Motor_SetFreq(uint32_t freq)
{
	if(freq - 1 < 100) freq = 100;    // 100 < freq <10kHz
	else if (freq > 10000) freq = 10000;

	__HAL_TIM_SET_AUTORELOAD(&htim1, 1000000 /freq -1);     // Set Counter
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_1, 1000000/freq/2-1);  //duty_ratio
}

void Motor_Start()
{
	HAL_TIM_PWM_Start(hmotorTim, motorTimChannel);
}

void Motor_Stop()
{
	HAL_TIM_PWM_Stop(hmotorTim, motorTimChannel);
}

