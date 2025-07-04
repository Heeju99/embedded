#include "Listener_TimeWatch.h"

Button_Handler_t hbtnTimeModify;
Button_Handler_t hbtnTimeSet;

void Listener_TimeWatch_CheckButton();

void Listener_TimeWatch_Init()
{
	Button_Init(&hbtnTimeModify, GPIOB, GPIO_PIN_3);
	Button_Init(&hbtnTimeSet, GPIOA, GPIO_PIN_10);
}

void Listener_TimeWatch_Excute()
{
	Listener_TimeWatch_CheckButton();
}

void Listener_TimeWatch_CheckButton()
{
	if(Button_GetState(&hbtnTimeModify) == ACT_RELEASED){
		osMessagePut(timeWatchEventMsgBox, EVENT_TIME_MODIFY, 0);  //QUEUE에 투입
	}
	else if(Button_GetState(&hbtnTimeSet) == ACT_RELEASED){
		osMessagePut(timeWatchEventMsgBox, EVENT_TIME_SET, 0);  //QUEUE에 투입
	}
}
