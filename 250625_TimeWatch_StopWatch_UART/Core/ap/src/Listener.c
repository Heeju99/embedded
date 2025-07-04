#include "Listener.h"
#include "usart.h"

static void Listener_CheckButton(); //외부에서 못부름
static void Listener_CheckUART();

static uint8_t rcvData = 0;
static Queue_typeDef uartRXQueue;


void Listener_Init()
{
	  Button_Init(&hBtnMode, GPIOB,  GPIO_PIN_5);
	  Button_Init(&hBtnRunStop, GPIOB, GPIO_PIN_3);
	  Button_Init(&hBtnClear, GPIOA, GPIO_PIN_10);
	  HAL_UART_Receive_IT(&huart2, &rcvData, 1);  //UART RCV Interrupt Enable (1byte 받을 때 마다)
	  Queue_Init(&uartRXQueue);
}

void Listener_Execute()
{
	Listener_CheckUART();
	Listener_CheckButton();
}

void Listener_CheckButton()
{
	static uint32_t prevChkBtnTime = 0;
	uint32_t curTick = HAL_GetTick(); //1ms간격으로 1씩 증가하는 함수
	if(curTick - prevChkBtnTime < 100){ //100ms 간격으로 아래 버튼 함수 실행
		return;
	}
	prevChkBtnTime = curTick;
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

void Listener_CheckUART()
{

	if(isQueueEmpty(&uartRXQueue)) { //if Queue Empty
		return;
	}
	int uartRxQueue = DeQueue(&uartRXQueue); //Queue안에 요소가 있으면 Read

	inputData_TypeDef inputData;

	if(uartRxQueue == 'm'){
			inputData.id = MODE;
			inputData.data = MODE_ACT;
			Controller_SetInputData(inputData);
	}
	else if (uartRxQueue == 'r'){
			inputData.id = STOPWATCH_RUNSTOP;
			inputData.data = STOPWATCH_ACT;
			Controller_SetInputData(inputData);
	}
	else if (uartRxQueue == 's'){
			inputData.id = STOPWATCH_RUNSTOP;
			inputData.data = STOPWATCH_ACT;
			Controller_SetInputData(inputData);
	}
	else if (uartRxQueue == 'c'){
			inputData.id = STOPWATCH_CLEAR;
			inputData.data = STOPWATCH_ACT;
			Controller_SetInputData(inputData);
		}

}

void Listener_UARTCallBack()
{
	EnQueue(&uartRXQueue, rcvData);
	HAL_UART_Receive_IT(&huart2, &rcvData, 1); //Interrupt Enable,

}

