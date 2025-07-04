#include "stopWatch.h"

typedef enum {STOP, RUN, CLEAR} stopwatch_state_t;

typedef struct{
	uint16_t msec;
	uint8_t sec;
	uint8_t min;
	uint8_t hour;
}stopWatch_t;

stopWatch_t stopWatch = {0};

stopwatch_state_t stopWatchState = STOP;


void StopWatch_IncTimeCallBack()
{
	if(stopWatchState == RUN){ //RU
		StopWatch_IncTime();
	}
}

void StopWatch_IncTime()
{
	if(stopWatch.msec < 1000 - 1){
		stopWatch.msec++;
		return;
	}
	stopWatch.msec = 0;

	if(stopWatch.sec < 60 - 1){
		stopWatch.sec++;
		return;
	}
	stopWatch.sec = 0;

	if(stopWatch.min < 60 - 1){
		stopWatch.min++;
		return;
	}
	stopWatch.min = 0;

	if(stopWatch.hour < 24 - 1){
		stopWatch.hour++;
		return;
	}
	stopWatch.hour = 0;
}



void StopWatch_Execute()
{
	switch(stopWatchState) {
		case  STOP :
			StopWatch_Stop();
			break;
		case  RUN :
			StopWatch_Run();
			break;
		case CLEAR :
			StopWatch_Clear();
			break;
		}
}

void StopWatch_Stop()
{
	if(Button_GetState(&hBtnRunStop) == ACT_PUSHED ){
		stopWatchState = RUN;
	}
	else if (Button_GetState(&hBtnClear) == ACT_PUSHED ){
		stopWatchState = CLEAR;
	}
	FND_WriteData(((stopWatch.min % 10)* 1000) + (stopWatch.sec*10) + (stopWatch.msec/100));

	StopWatch_Blink();
}

void StopWatch_Run()
{
	if (Button_GetState(&hBtnRunStop) == ACT_PUSHED ){
		stopWatchState = STOP;
	}
	FND_WriteData(((stopWatch.min % 10)* 1000) + (stopWatch.sec*10) + (stopWatch.msec/100));

	StopWatch_Blink();
}

void StopWatch_Clear()
{
	stopWatchState = STOP;
	stopWatch.msec = 0;
	stopWatch.sec = 0;
	stopWatch.min = 0;
	stopWatch.hour = 0;
	FND_WriteData(((stopWatch.min % 10)* 1000) + (stopWatch.sec*10) + (stopWatch.msec/100));
	StopWatch_Blink();
}

void StopWatch_Blink()
{
	if ((stopWatch.msec % 1000) < 500) {
		FND_Dot(0, 0x80, 0x80, 0);
	} else {
		FND_Dot(0, 0, 0, 0);
	}
}
