#include "TimeWatch.h"

timeWatch_t timeWatchData;

void TimeWatch_Normal();
void TimeWatch_ModifyHour();
void TimeWatch_ModifyMin();
void TimeWatch_ModifySec();

void TimeWatch_Init()
{
	timeWatchData.hour = 12;
	timeWatchData.min  = 0;
	timeWatchData.sec  = 0;
	timeWatchData.msec = 0;

	timeWatch_t *ptimeWatchData = osMailAlloc(timeWatchDataMailBox,0);
	memcpy(ptimeWatchData , &timeWatchData, sizeof(timeWatch_t));
	osMailPut(timeWatchDataMailBox, ptimeWatchData);
}

void TimeWatch_Excute()
{

	eTimeWatchState_t state = Model_Get_TimeWatchState();

	switch(state)
	{
	case S_TIMEWATCH_NORMAL :
		TimeWatch_Normal();
		break;

	case S_TIMEWATCH_MODIFY_HOUR :
		TimeWatch_ModifyHour();
		break;

	case S_TIMEWATCH_MODIFY_MIN :
		TimeWatch_ModifyMin();
		break;

	case S_TIMEWATCH_MODIFY_SEC :
		TimeWatch_ModifySec();
		break;
	}
}


void TimeWatch_Normal()
{
	static uint16_t prevMsec = 0;
	if (prevMsec != timeWatchData.msec) {
		return;
	}
	prevMsec = timeWatchData.msec;

	timeWatch_t *ptimeWatchData = osMailAlloc(timeWatchDataMailBox,0);
	memcpy(ptimeWatchData , &timeWatchData, sizeof(timeWatch_t));
	osMailPut(timeWatchDataMailBox, ptimeWatchData);


	osEvent evt = osMessageGet(timeWatchEventMsgBox, 0); //non-blocking
	uint16_t evtState;

	if(evt.status == osEventMessage){
		evtState = evt.value.v;

		if(evtState == EVENT_TIME_MODIFY){
			Model_Set_TimeWatchState(S_TIMEWATCH_MODIFY_HOUR);
		}
	}
}


void TimeWatch_ModifyHour()
{
	osEvent evt = osMessageGet(timeWatchEventMsgBox, 0); //non-blocking
	uint16_t evtState;

	if(evt.status == osEventMessage){
		evtState = evt.value.v;

		if(evtState == EVENT_TIME_MODIFY){
			Model_Set_TimeWatchState(S_TIMEWATCH_MODIFY_MIN);
		}
		else if(evtState == EVENT_TIME_SET){
			timeWatchData.hour++;
			if(timeWatchData.hour == 24){
				timeWatchData.hour = 0;
			}

			//update mailbox
			timeWatch_t *ptimeWatchData = osMailAlloc(timeWatchDataMailBox,0);
			memcpy(ptimeWatchData , &timeWatchData, sizeof(timeWatch_t));
			osMailPut(timeWatchDataMailBox, ptimeWatchData);
		}
	}
}


void TimeWatch_ModifyMin()
{
	osEvent evt = osMessageGet(timeWatchEventMsgBox, 0); //non-blocking
	uint16_t evtState;

	if(evt.status == osEventMessage){
		evtState = evt.value.v;

		if(evtState == EVENT_TIME_MODIFY){
			Model_Set_TimeWatchState(S_TIMEWATCH_MODIFY_SEC);
		}
		else if(evtState == EVENT_TIME_SET){
			timeWatchData.min++;
			if(timeWatchData.min == 60){
				timeWatchData.min = 0;
			}

			//update mailbox
			timeWatch_t *ptimeWatchData = osMailAlloc(timeWatchDataMailBox,0);
			memcpy(ptimeWatchData , &timeWatchData, sizeof(timeWatch_t));
			osMailPut(timeWatchDataMailBox, ptimeWatchData);
		}
	}
}

void TimeWatch_ModifySec()
{
	osEvent evt = osMessageGet(timeWatchEventMsgBox, 0); //non-blocking
	uint16_t evtState;

	if(evt.status == osEventMessage){
		evtState = evt.value.v;

		if(evtState == EVENT_TIME_MODIFY){
			Model_Set_TimeWatchState(S_TIMEWATCH_NORMAL);
		}
		else if(evtState == EVENT_TIME_SET){
			timeWatchData.sec = 0;
			timeWatchData.msec = 0;
			//update mailbox
			timeWatch_t *ptimeWatchData = osMailAlloc(timeWatchDataMailBox,0);
			memcpy(ptimeWatchData , &timeWatchData, sizeof(timeWatch_t));
			osMailPut(timeWatchDataMailBox, ptimeWatchData);
		}
	}
}




void TimeWatch_IncTimeCallBack() //1ms마다 Callback
{
	if(timeWatchData.msec <= 1000-1){
		timeWatchData.msec++;
		return;
	}
	else{
		timeWatchData.msec = 0;
	}

	if(timeWatchData.sec <= 60-1){
		timeWatchData.sec++;
		return;
	}
	else{
		timeWatchData.sec = 0;
	}

	if(timeWatchData.min <= 60-1){
		timeWatchData.min++;
		return;
	}
	else{
		timeWatchData.min = 0;
	}

	if(timeWatchData.hour <= 24-1){
		timeWatchData.hour++;
		return;
	}
	else
	{
		timeWatchData.hour = 0;
	}
}
