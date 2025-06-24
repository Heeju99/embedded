#include "Listener.h"
#include "usart.h"

static void Listener_CheckButton(void); //외부에서 못부름
static void Listener_CheckUART(void);

void Listener_Init()
{
	  Button_Init(&hBtnMode, GPIOB,  GPIO_PIN_5);
	  Button_Init(&hBtnRunStop, GPIOB, GPIO_PIN_3);
	  Button_Init(&hBtnClear, GPIOA, GPIO_PIN_10);
}

void Listener_Execute()
{
	Listener_CheckUART();
	Listener_CheckButton();
}

void Listener_CheckButton(void)
{
	inputData_TypeDef inputData;

	if(Button_GetState(&hBtnMode) == ACT_RELEASED){
		inputData.id = MODE;
		inputData.data = MODE_ACT;
		Controller_SetInputData(inputData);
	}
	else if (Button_GetState(&hBtnRunStop) == ACT_PUSHED){
		inputData.id = STOPWATCH_RUNSTOP;
		inputData.data = STOPWATCH_ACT;
		Controller_SetInputData(inputData);
	}
	else if (Button_GetState(&hBtnClear) == ACT_PUSHED){
		inputData.id = STOPWATCH_CLEAR;
		inputData.data = STOPWATCH_ACT;
		Controller_SetInputData(inputData);
	}
}

void Listener_CheckUART(void)
{
	uint8_t rx_data = 0;
	if (HAL_UART_Receive(&huart2, &rx_data, sizeof(rx_data), 1) == HAL_OK){
		 //HAL_UART_Receive_IT(&huart2, &rx_data, 1);
		inputData_TypeDef inputData;

		switch(rx_data)
		{
		case 'm' :
			inputData.id = MODE;
			inputData.data = MODE_ACT;
			Controller_SetInputData(inputData);
			break;
		case 's' :
			inputData.id = STOPWATCH_RUNSTOP;
			inputData.data = STOPWATCH_ACT;
			Controller_SetInputData(inputData);
			break;
		case 'c' :
			inputData.id = STOPWATCH_CLEAR;
			inputData.data = STOPWATCH_ACT;
			Controller_SetInputData(inputData);
			break;
		}
	}

}

