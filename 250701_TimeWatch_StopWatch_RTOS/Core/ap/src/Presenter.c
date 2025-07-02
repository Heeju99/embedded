#include "Presenter.h"
#include <string.h>
#include <stdio.h>
#include "usart.h"
#include "lcd.h"
#include "i2c.h"
#include "Watch_Model.h"
#include "tim.h"

static void Presenter_DispTimeWatch(Watch_t watchData);
static void Presenter_DispStopWatch(Watch_t watchData);
static void Presenter_DispMonitorTimeWatch(Watch_t watchData);
static void Presenter_DispMonitorStopWatch(Watch_t watchData);
static void Presenter_DispFND_TimeWatch(Watch_t watchData);
static void Presenter_DispFND_StopWatch(Watch_t watchData);
//static void Presenter_DispLCD_TimeWatch(Watch_t watchData);
//static void Presenter_DispLCD_StopWatch(Watch_t watchData);
static void Presenter_DispLCD(Watch_t stopWatch, Watch_t timeWatch );

static char str_TW[50];
static 	char str_SW[50];


static Watch_t dispData = {TIME_WATCH, 12, 0, 0, 0};

void Presenter_Init()
{
	LCD_Init(&hi2c1);
	HAL_TIM_Base_Start_IT(&htim2);
}

void Presenter_OutData(Watch_t watchData)
{
	memcpy(&dispData, &watchData, sizeof(Watch_t));  //data copy
}

void Presenter_Excute()
{
	Presenter_DispLCD( stopWatch, timeWatch);
	//	char str_TW[50];
	//	char str_SW[50];
	//
	//	sprintf(str_TW,"TW:%02d:%02d:%02d:%03d", timeWatch.hour, timeWatch.min, timeWatch.sec, timeWatch.msec); //str 공간에 "~~"값 저장
	//	LCD_writeStringXY(1,0, str_TW);
	//	sprintf(str_SW,"SW:%02d:%02d:%02d:%03d", stopWatch.hour, stopWatch.min, stopWatch.sec, stopWatch.msec); //str 공간에 "~~"값 저장
	//	LCD_writeStringXY(0,0, str_SW);

	if(dispData.id == TIME_WATCH)
	{
		Presenter_DispTimeWatch(dispData);
	}
	else //STOP_WATCH
	{
		Presenter_DispStopWatch(dispData);
	}
}

void Presenter_DispTimeWatch(Watch_t watchData)
{
	Presenter_DispFND_TimeWatch(watchData);
	Presenter_DispMonitorTimeWatch(watchData);
}

void Presenter_DispStopWatch(Watch_t watchData)
{
	Presenter_DispFND_StopWatch(watchData);
	Presenter_DispMonitorStopWatch(watchData);
}


void Presenter_DispMonitorTimeWatch(Watch_t watchData) //timewatch 출력
{
	char str[50];
	sprintf(str,"Time Watch : %02d:%02d:%02d:%03d\n", watchData.hour, watchData.min, watchData.sec, watchData.msec); //str 공간에 "~~"값 저장
	HAL_UART_Transmit(&huart2, (uint8_t *)str, strlen(str),1000);
}

void Presenter_DispMonitorStopWatch(Watch_t watchData)  //stopwatch 출력
{
	char str[50];
	sprintf(str,"Stop Watch : %02d:%02d:%02d:%03d\n", watchData.hour, watchData.min, watchData.sec, watchData.msec); //str 공간에 "~~"값 저장
	HAL_UART_Transmit(&huart2, (uint8_t *)str, strlen(str),1000);
}


void Presenter_DispFND_TimeWatch(Watch_t watchData)
{
	FND_WriteData(watchData.hour*100 + watchData.min);

	FND_WriteDp(FND_DP_1 | FND_DP_100 | FND_DP_1000, FND_DP_OFF);
	if(watchData.msec < 500 -1) {
		FND_WriteDp(FND_DP_10, FND_DP_ON);
	} else
		FND_WriteDp(FND_DP_10, FND_DP_OFF);
}

void Presenter_DispFND_StopWatch(Watch_t watchData)
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

void Presenter_DispLCD(Watch_t stopWatch, Watch_t timeWatch )
{

	sprintf(str_TW,"TW : %02d:%02d:%02d:%03d", timeWatch.hour, timeWatch.min, timeWatch.sec, timeWatch.msec); //str 공간에 "~~"값 저장
	LCD_writeStringXY(1,0, str_TW);
	sprintf(str_SW,"SW : %02d:%02d:%02d:%03d", stopWatch.hour, stopWatch.min, stopWatch.sec, stopWatch.msec); //str 공간에 "~~"값 저장
	LCD_writeStringXY(0,0, str_SW);
}

//void Presenter_DispLCD_StopWatch(Watch_t watchData)
//{
//	 char str[50];
//	   sprintf(str,"SW : %02d:%02d:%02d:%03d", watchData.hour, watchData.min, watchData.sec, watchData.msec); //str 공간에 "~~"값 저장
//	 LCD_writeStringXY(0,0, str);
//}

//void Presenter_DispLCD_StopWatch
//{
//
//}


