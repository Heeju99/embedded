#include "Listener_Distance.h"

Button_Handler_t hbtnDistance;

static void Listener_Distance_CheckButton();



void Listener_DistanceInit()
{
	Button_Init(&hbtnDistance, GPIOA, GPIO_PIN_10);
}

void Listener_DistanceExcute()
{
	Listener_Distance_CheckButton();
}

void Listener_Distance_CheckButton()
{
	if(Button_GetState(&hbtnDistance) == ACT_PUSHED){
		osMessagePut(DistanceDataMailBox, EVENT_DISTANCE_RUN, 0);  //QUEUE에 투입
	}
}
