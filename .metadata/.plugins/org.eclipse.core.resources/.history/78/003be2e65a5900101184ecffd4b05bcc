/*
 * Listener_Distance.c
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */

#include "Listener_Distance.h"

Button_Handler_t hbtnTrig;

static void Listener_Distance_CheckButton();

void Listener_DistanceInit()
{
	Button_Init(&hbtnTrig, GPIOB, GPIO_PIN_3);
}

void Listener_DistanceExcute()
{
	Listener_Distance_CheckButton();
}

void Listener_Distance_CheckButton()
{
	if(Button_GetState(&hbtnTrig) == ACT_PUSHED){
		osMessagePut(distanceEventMsgBox, EVENT_DISTANCE, 0);  //QUEUE에 투입
	}
}
