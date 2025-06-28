#include "MotorRun.h"

void MotorRun_Init()
{
	Motor_Init(&htim1, TIM_CHANNEL_1);
}

void MotorRUN_PowerOn()
{
	Motor_SetFreq(100); //do
	Motor_Start();
	HAL_Delay(10000);
	Motor_Stop();
}


