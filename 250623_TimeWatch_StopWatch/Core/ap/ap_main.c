#include "ap_main.h"

Button_Handler_t hBtnMode;
Button_Handler_t hBtnRun;
Button_Handler_t hBtnClear;


void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) //Interrupt 발생시켜 FND 출력
{
	if(htim->Instance ==TIM2) {
		FND_DisplayData();
	}
}

int ap_main()
{
	FND_WriteData(1234);
	HAL_TIM_Base_Start_IT(&htim2); //start Interrupt
   while(1)
   {

   }
   return 0;
}

void ap_Init()
{

   Button_Init(&hBtnMode, GPIOB,  GPIO_PIN_5);
   Button_Init(&hBtnRun, GPIOB, GPIO_PIN_3);
   Button_Init(&hBtnClear, GPIOA, GPIO_PIN_10);

}
