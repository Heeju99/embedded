#include "Listener.h"

void Listener_CheckButton();

Button_Handler_t hbtnMode;

void Listener_Init()
{
	Button_Init(&hbtnMode, GPIOB, GPIO_PIN_5);
	Listener_TimeWatch_Init();
	Listener_StopWatchInit();
	Listener_DistanceInit();
	Listener_TempHumidInit();
}

void Listener_Excute()
{
	eModeState_t state = Model_Get_ModeState();

	switch(state)
	{
	case S_TIMEWATCH_MODE:
		Listener_TimeWatch_Excute();
		break;
	case S_STOPWATCH_MODE:
		Listener_StopWatchExcute();
		break;
	case S_DISTANCE_MODE:
		Listener_DistanceExcute();
		break;
	case S_TEMP_HUMID_MODE:
		Listener_TempHumidExcute();
		break;
	}

	Listener_CheckButton();
}

void Listener_CheckButton()
{
	if(Button_GetState(&hbtnMode) == ACT_RELEASED){
		osMessagePut(modeEventMsgBox, EVENT_MODE, 0);
	}
}
