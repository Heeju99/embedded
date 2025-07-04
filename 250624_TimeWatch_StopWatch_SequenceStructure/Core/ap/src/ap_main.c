#include "ap_main.h"

//typedef enum {TIME_WATCH, STOP_WATCH} watch_state_t;

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) //Interrupt 발생시켜 FND 출력
{
	if(htim->Instance ==TIM2) {
		FND_DisplayDataCallBack();
		TimeWatch_IncTimeCallBack();
		StopWatch_IncTimeCallBack();
	}
}


int ap_main()
{
	HAL_TIM_Base_Start_IT(&htim2); //start Interrupt
   while(1)
   {
	   Listener_Execute();
	   Controller_Execute();
	   Presenter_Excute();
   }
   return 0;
}

void ap_Init()
{
	Listener_Init();
}

