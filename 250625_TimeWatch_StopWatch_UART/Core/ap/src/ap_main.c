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

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart) //UART 수신 시, 자동으로 함수 호출 + RX Interrupt 처리
{
  if(huart -> Instance == USART2) {  //Instance는 UART의 포트 확인
	  Listener_UARTCallBack();
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
	   Presenter_LCD_TimeWatch(timeWatch);
	   Presenter_LCD_StopWatch(stopWatch);
   }
   return 0;
}

void ap_Init()
{
	Listener_Init();
	Presenter_Init();
}

