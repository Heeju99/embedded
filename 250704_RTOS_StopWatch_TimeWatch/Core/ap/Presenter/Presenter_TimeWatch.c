#include "Presenter_TimeWatch.h"

void Presenter_TimeWatch_Init()
{

}

void Presenter_TimeWatch_Excute()
{
	static timeWatch_t timeWatchData;
	timeWatch_t *ptimeWatchData;

	osEvent evt = osMailGet(timeWatchDataMailBox, 0);
	if(evt.status == osEventMail){
		ptimeWatchData = evt.value.p;
		memcpy(&timeWatchData, ptimeWatchData, sizeof(timeWatch_t));
		osMailFree(timeWatchDataMailBox, ptimeWatchData); //Free mem

		Presenter_TimeWatch_FND(timeWatchData);
		Presenter_TimeWatch_LCD(timeWatchData);
	}
}

void Presenter_TimeWatch_FND(timeWatch_t timeWatchData)
{
	FND_WriteData(timeWatchData.hour*100 + timeWatchData.min);
	if(timeWatchData.msec < 500){
		FND_WriteDp(FND_DP_100, FND_DP_ON);
	}
	else{
		FND_WriteDp(FND_DP_100,FND_DP_OFF);
	}
}

void Presenter_TimeWatch_LCD(timeWatch_t timeWatchData)
{

	char str[30];
		static eTimeWatchState_t prevTimeWatchState = 10;
		eTimeWatchState_t timeWatchState = Model_Get_TimeWatchState();
		if(timeWatchState != prevTimeWatchState) {
			prevTimeWatchState = timeWatchState;
			if(timeWatchState == S_TIMEWATCH_MODIFY_HOUR) {
				sprintf(str, "HOUR ");
			}
			else if(timeWatchState == S_TIMEWATCH_MODIFY_MIN) {
				sprintf(str, "MIN  ");
			}
			else if(timeWatchState == S_TIMEWATCH_MODIFY_SEC) {
				sprintf(str, "SEC");
			}
			LCD_writeStringXY(0, 11, str);
		}




	if (timeWatchData.msec < 500) {
		sprintf(str, "%02d:%02d:%02d           ", timeWatchData.hour, timeWatchData.min, timeWatchData.sec);
	}
	else {
		sprintf(str, "%02d %02d %02d           ", timeWatchData.hour, timeWatchData.min, timeWatchData.sec);
	}

	LCD_writeStringXY(1, 0, str);
}
