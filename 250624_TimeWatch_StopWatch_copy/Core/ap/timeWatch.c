#include "timeWatch.h"

typedef struct{
	uint16_t msec;
	uint8_t sec;
	uint8_t min;
	uint8_t hour;
}timeWatch_t;

uint8_t flag = 0;

timeWatch_t timeWatch = {0,0,0,12}; //all 0

void TimeWatch_IncTimeCallBack()
{
	if(timeWatch.msec < 1000 - 1){
		timeWatch.msec++;
		return;
	}
	timeWatch.msec = 0;

	if(timeWatch.sec < 60 - 1){
		timeWatch.sec++;
		return;
	}
	timeWatch.sec = 0;

	if(timeWatch.min < 60 - 1){
		timeWatch.min++;
		return;
	}
	timeWatch.min = 0;

	if(timeWatch.hour < 24 - 1){
		timeWatch.hour++;
		return;
	}
	timeWatch.hour = 0;
}

void TimeWatch_Excute()
{
	FND_WriteData(timeWatch.hour*100 + timeWatch.min);
	FND_WriteDp(FND_DP_1 | FND_DP_100 | FND_DP_1000, FND_DP_OFF);
	if(timeWatch.msec < 500 -1) {
		FND_WriteDp(FND_DP_10, FND_DP_ON);
	} else
		FND_WriteDp(FND_DP_10, FND_DP_OFF);
}
