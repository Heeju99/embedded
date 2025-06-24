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
}

void StopWatch_Run()
{
	if (Button_GetState(&hBtnRunStop) == ACT_PUSHED ){
		stopWatchState = STOP;
	}
	FND_WriteData(((stopWatch.min % 10)* 1000) + (stopWatch.sec*10) + (stopWatch.msec/100));

	FND_WriteDp(FND_DP_1000 | FND_DP_1, FND_DP_OFF);
	if(stopWatch.msec % 100 < 50 -1) {
		FND_WriteDp(FND_DP_10, FND_DP_ON);
	} else
		FND_WriteDp(FND_DP_10, FND_DP_OFF);

	if(stopWatch.msec < 500 -1) {
		FND_WriteDp(FND_DP_100, FND_DP_ON);
	} else
		FND_WriteDp(FND_DP_100, FND_DP_OFF);
}

void StopWatch_Clear()
{
	stopWatchState = STOP;
	stopWatch.msec = 0;
	stopWatch.sec = 0;
	stopWatch.min = 0;
	stopWatch.hour = 0;
	FND_WriteData(((stopWatch.min % 10)* 1000) + (stopWatch.sec*10) + (stopWatch.msec/100));

}

