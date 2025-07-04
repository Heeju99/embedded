#include "Presenter_StopWatch.h"

void Presenter_StopWatch_Init()
{
	LCD_Init(&hi2c1);
}

void Presenter_StopWatch_Excute()
{
	stopWatch_t stopWatchData;
	stopWatch_t *pStopWatchData;

	osEvent evt = osMailGet(stopWatchDataMailBox, osWaitForever);
	if(evt.status == osEventMail){
		pStopWatchData = evt.value.p;
		memcpy(&stopWatchData, pStopWatchData, sizeof(stopWatch_t));
		osMailFree(stopWatchDataMailBox, pStopWatchData); //Free mem
	}
		Presenter_StopWatch_FND(stopWatchData);
		Presenter_StopWatch_LCD(stopWatchData);
}


void Presenter_StopWatch_FND(stopWatch_t stopWatchData)
{
	FND_WriteData(stopWatchData.min%10*1000 + stopWatchData.sec%100 *10 + stopWatchData.msec/100);

	if(stopWatchData.msec%100 <50){
		FND_WriteDp(FND_DP_10, FND_DP_ON);
	}
	else{
		FND_WriteDp(FND_DP_10,FND_DP_OFF);
	}

	if(stopWatchData.msec <500){
		FND_WriteDp(FND_DP_1000, FND_DP_ON);
	}
	else{
		FND_WriteDp(FND_DP_1000,FND_DP_OFF);
	}
}

void Presenter_StopWatch_LCD(stopWatch_t stopWatchData)
{
	char str[30];
	char str1[30];
	char str2[30];
	char str3[30];

	 static estopWatchState_t prevlcdState;
	 estopWatchState_t lcdState = Model_Get_StopWatchState(); //get 함수를 통해 state
	 if(lcdState != prevlcdState){
		 prevlcdState = lcdState;
		 if(lcdState == S_STOPWATCH_STOP){
			 sprintf(str, "STOP");
		 } else if (lcdState == S_STOPWATCH_RUN){
			 sprintf(str, "RUN");
		 } else if (lcdState == S_STOPWATCH_CLEAR){
			 sprintf(str, "CLEAR");
		 }
		 LCD_writeStringXY(0, 0, "                ");  // 공백으로 덮어쓰기
		 LCD_writeStringXY(0, 0, str);
	 }
	 if(stopWatchData.msec <500){
		sprintf(str, "stp:%02d:%02d:%02d", stopWatchData.min, stopWatchData.sec, stopWatchData.msec/10);
		LCD_writeStringXY(1, 0, str);
	 }
}

