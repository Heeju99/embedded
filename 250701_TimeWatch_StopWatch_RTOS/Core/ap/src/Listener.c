/*
 * Listener.c
 *
 *  Created on: Jun 24, 2025
 *      Author: kccistc
 */

#include "Listener.h"
#include "usart.h"

static void Listener_CheckButton();
static void Listener_CheckUart();

//static uint8_t rcvData= 0;
//static Que_TypeDef uartRxQue;

static button_t btnWatch = {0};

void Listener_Init()
{
	Button_Init(&hBtnMode, GPIOB, GPIO_PIN_5);
	Button_Init(&hBtnRunStop, GPIOB, GPIO_PIN_3);
	Button_Init(&hBtnClear, GPIOA, GPIO_PIN_10);
//	Que_Init(&uartRxQue, sizeof(uint8_t));
//	HAL_UART_Receive_IT(&huart2, &rcvData, 1); //uart recv interrupt enable
}

void Listener_Excute()
{
	Listener_CheckButton(); // Button이 단순히 눌렸는지만 판단하는 함수
//	Listener_CheckUart();
}

void Listener_CheckButton(){ // 그때 버튼이 입력됨에 따라 어떻게 동작하는 지 보여주는 함수
	static uint32_t prevChkBtnTime = 0;
	uint32_t curTick =  HAL_GetTick();
	// 1ms 간격으로 1씩 증가 (return uint32)
	if(curTick - prevChkBtnTime < 100) {
		return;
	}
	prevChkBtnTime = curTick;
	//100ms 간격으로 아래 코드가 실행됨


	if ((Button_GetState(&hBtnMode)== ACT_RELEASED) ){
		btnWatch.id = BTN_MODE;
		enQue(&btnQue, &btnWatch);
	}
	else if ((Button_GetState(&hBtnRunStop)== ACT_PUSHED) ) {
		btnWatch.id = BTN_RUN_STOP;
		enQue(&btnQue, &btnWatch);
	}
	else if( (Button_GetState(&hBtnClear)== ACT_PUSHED)){
		btnWatch.id = BTN_CLEAR;
		enQue(&btnQue, &btnWatch);
	}
}

//void Listener_CheckUart()
//{
//	if(isQueEmpty (&uartRxQue)) {
//		return;
//	}
//	uint8_t data = 0;
//		deQue(&uartRxQue, &data);
//
//	inputData_TypeDef inputData;
//
//
//	if (data == 'm'){
//		inputData.id = MODE;
//		inputData.data = MODE_ACT;
//		Controller_SetInputData(inputData);
//	}
//	else if (data == 'r') {
//		inputData.id = RUN_STOP;
//		inputData.data = STOPWATCH_ACT;
//		Controller_SetInputData(inputData);
//	}
//	else if(data == 's'){
//		inputData.id = RUN_STOP;
//		inputData.data = STOPWATCH_ACT;
//		Controller_SetInputData(inputData);
//	}
//	else if(data == 'c'){
//		inputData.id = BTN_CLEAR;
//		inputData.data = STOPWATCH_ACT;
//		Controller_SetInputData(inputData);
//	}
//}


//void Listener_UartCallBack()
//{
//	enQue(&uartRxQue, rcvData);
//	HAL_UART_Receive_IT(&huart2, &rcvData, 1); //interrupt enable again
//}
