#include "ap_main.h"

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	if(htim->Instance == TIM2) {
		TimeWatch_IncTimeCallBack();
		StopWatch_IncTimeCallBack();
		Ultra_RunCallBack();
	}
}


void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	if (huart->Instance == USART2) {
		Listener_UartCallBack();
	}
}


int ap_main()
{
	HAL_TIM_Base_Start_IT(&htim2);
	while(1)
	{
		Listener_Excute();
		Controller_Excute();
		Presenter_UL_Excute();
	}

	return 0;
}

void ap_init()
{
	Listener_Init();
	Presenter_Init();
}
