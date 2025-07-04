#include "Controller.h"

void Controller_CheckEventMode();

void Controller_Init()
{
	TimeWatch_Init();
	StopWatch_Init();
	Distance_Init();
	TempHumid_Init();
}


void Controller_Excute()
{
	eModeState_t state = Model_Get_ModeState();

	switch (state)
	{
	case S_TIMEWATCH_MODE:
		TimeWatch_Excute();
		break;
	case S_STOPWATCH_MODE:
		StopWatch_Excute();
		break;
	case S_DISTANCE_MODE:
		Distance_Excute();
		break;
	case S_TEMP_HUMID_MODE:
		TempHumid_Excute();
		break;
	}
	Controller_CheckEventMode();
}

void Controller_CheckEventMode()
{
	osEvent evt = osMessageGet(modeEventMsgBox, 0); //non-blocking
	uint16_t evtState;

	if(evt.status == osEventMessage){
		evtState = evt.value.v;
		if (evtState != EVENT_MODE) {
			return;
		}

		eModeState_t state = Model_Get_ModeState();

		if(state == S_TIMEWATCH_MODE){
			Model_Set_ModeState(S_STOPWATCH_MODE);
			stopWatch_t *pStopWatchData = osMailAlloc(stopWatchDataMailBox,0);
			memcpy(pStopWatchData , &stopWatchData, sizeof(stopWatch_t));
			osMailPut(stopWatchDataMailBox, pStopWatchData);
		}
		else if(state == S_STOPWATCH_MODE){
			Model_Set_ModeState(S_DISTANCE_MODE);
			timeWatch_t *ptimeWatchData = osMailAlloc(timeWatchDataMailBox,0);
			memcpy(ptimeWatchData , &timeWatchData, sizeof(timeWatch_t));
			osMailPut(timeWatchDataMailBox, ptimeWatchData);
		}
		else if(state == S_DISTANCE_MODE){
			Model_Set_ModeState(S_TEMP_HUMID_MODE);
			distance_t *pDistanceData = osMailAlloc(distanceDataMailBox,0);
			memcpy(pDistanceData , &distanceData, sizeof(distance_t));
			osMailPut(distanceDataMailBox, pDistanceData);
		}
		else if(state == S_TEMP_HUMID_MODE){
			Model_Set_ModeState(S_TIMEWATCH_MODE);
			TempHumid_t *pTempHumidData = osMailAlloc(TempHumidDataMailBox,0);
			memcpy(pTempHumidData , &TempHumidData, sizeof(TempHumid_t));
			osMailPut(TempHumidDataMailBox, pTempHumidData);
		}
	}

}
