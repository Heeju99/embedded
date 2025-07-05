/*
 * Listener_TempHumid.c
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */
#include "Listener_TempHumid.h"
Button_Handler_t hbtnTrigger;

static void Listener_TempHumid_CheckButton();

void Listener_TempHumidInit()
{
	Button_Init(&hbtnTrigger, GPIOB, GPIO_PIN_3);
}

void Listener_TempHumidExcute()
{
	Listener_TempHumid_CheckButton();
}

void Listener_TempHumid_CheckButton()
{
	if(Button_GetState(&hbtnTrigger) == ACT_RELEASED){
		osMessagePut(TempHumidEventMsgBox, EVENT_TEMPHUMID, 0);
	}
}
