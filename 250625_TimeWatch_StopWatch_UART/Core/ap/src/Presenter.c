#include "Presenter.h"
#include <string.h>
#include <stdio.h>
#include "usart.h"

static void Presenter_DispTimeWatch(watch_t watchData);
static void Presenter_DispStopWatch(watch_t watchData);
static void Presenter_DispMonitorTimeWatch(watch_t watchData);
static void Presenter_DispMonitorStopWatch(watch_t watchData);
static void Presenter_DispFND_TimeWatch(watch_t watchData);
static void Presenter_DispFND_StopWatch(watch_t watchData);

static watch_t dispData = {TIME_WATCH, 12, 0, 0, 0};


void Presenter_Init()
{
	LCD_Init(&hi2c1);
}

void Presenter_outData(watch_t watchData)
{
	memcpy(&dispData, &watchData, sizeof(watch_t));  //data copy
}

void Presenter_Excute()
{
	if(dispData.id == TIME_WATCH)
	{
		Presenter_DispTimeWatch(dispData);
	}
	else //STOP_WATCH
	{
		Presenter_DispStopWatch(dispData);
	}
}

void Presenter_DispTimeWatch(watch_t watchData)
{
	Presenter_DispFND_TimeWatch(watchData);
	Presenter_DispMonitorTimeWatch(watchData);
}

void Presenter_DispStopWatch(watch_t watchData)
{
	Presenter_DispFND_StopWatch(watchData);
	Presenter_DispMonitorStopWatch(watchData);
}


void Presenter_DispMonitorTimeWatch(watch_t watchData) //timewatch 출력
{
	char str[50];
	sprintf(str,"Time Watch : %02d:%02d:%02d:%03d\n", watchData.hour, watchData.min, watchData.sec, watchData.msec); //str 공간에 "~~"값 저장
	HAL_UART_Transmit(&huart2, (uint8_t *)str, strlen(str),1000);
}

void Presenter_DispMonitorStopWatch(watch_t watchData)  //stopwatch 출력
{
	char str[50];
	sprintf(str,"Stop Watch : %02d:%02d:%02d:%03d\n", watchData.hour, watchData.min, watchData.sec, watchData.msec); //str 공간에 "~~"값 저장
	HAL_UART_Transmit(&huart2, (uint8_t *)str, strlen(str),1000);
}


void Presenter_DispFND_TimeWatch(watch_t watchData)
{
	FND_WriteData(watchData.hour*100 + watchData.min);

	FND_WriteDp(FND_DP_1 | FND_DP_100 | FND_DP_1000, FND_DP_OFF);
	if(watchData.msec < 500 -1) {
		FND_WriteDp(FND_DP_10, FND_DP_ON);
	} else
		FND_WriteDp(FND_DP_10, FND_DP_OFF);
}

void Presenter_DispFND_StopWatch(watch_t watchData)
{
	FND_WriteData(((watchData.min % 10)* 1000) + (watchData.sec*10) + (watchData.msec/100));

	FND_WriteDp(FND_DP_1000 | FND_DP_1, FND_DP_OFF);
	if(watchData.msec % 100 < 50 -1) {
		FND_WriteDp(FND_DP_10, FND_DP_ON);
	} else
		FND_WriteDp(FND_DP_10, FND_DP_OFF);

	if(watchData.msec < 500 -1) {
		FND_WriteDp(FND_DP_100, FND_DP_ON);
	} else
		FND_WriteDp(FND_DP_100, FND_DP_OFF);
}


void Presenter_LCD_TimeWatch(watch_t watchData)
{
	char str[50];
	sprintf(str, "Watch:%02d:%02d:%02d", watchData.hour, watchData.min, watchData.sec);
	LCD_writeStringXY(0, 0, str);
}

void Presenter_LCD_StopWatch(watch_t watchData)
{
	char str[50];
	sprintf(str, "SW:%02d:%02d:%02d:%02d", watchData.hour, watchData.min, watchData.sec, (watchData.msec/10));
	LCD_writeStringXY(1, 0, str);
}
