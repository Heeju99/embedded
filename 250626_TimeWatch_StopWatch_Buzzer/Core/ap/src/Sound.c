#include "Sound.h"

void Sound_Init()
{
	Buzzer_Init(&htim3, TIM_CHANNEL_1);
}

void Sound_PowerOn()
{
	Buzzer_SetFreq(1047); //do
	Buzzer_Start();
	HAL_Delay(100);
	Buzzer_SetFreq(1319); //mi
	HAL_Delay(100);
	Buzzer_SetFreq(1568); //sol
	HAL_Delay(100);
	Buzzer_SetFreq(2039); //do
	HAL_Delay(100);
	Buzzer_Stop();
}

void Sound_PowerOff()
{
	Buzzer_SetFreq(2039); //do
	Buzzer_Start();
	HAL_Delay(200);
	Buzzer_SetFreq(1568); //mi
	HAL_Delay(200);
	Buzzer_SetFreq(1319); //sol
	HAL_Delay(200);
	Buzzer_SetFreq(1047); //do
	HAL_Delay(200);
	Buzzer_Stop();
}

void Sound_Squid()
{
	Buzzer_Start();
	HAL_Delay(500);
	Buzzer_SetFreq(880); //la
	HAL_Delay(500);
	Buzzer_SetFreq(880); //la
	HAL_Delay(500);
	Buzzer_SetFreq(880); //la
	HAL_Delay(500);
	Buzzer_SetFreq(784); //sol
	HAL_Delay(500);
	Buzzer_SetFreq(880); //la
	HAL_Delay(500);
	Buzzer_SetFreq(880); //la
	HAL_Delay(500);
	Buzzer_SetFreq(659); //mi
	HAL_Delay(500);
	Buzzer_SetFreq(659); //mi
	HAL_Delay(500);
	Buzzer_SetFreq(784); //sol
	HAL_Delay(500);
	Buzzer_Stop();
}


void Sound_ChangeMode()
{

}

void Sound_Alarm()
{

}


