/*
 * Presenter_Distance.c
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */
#include "Presenter_Distance.h"

void Presenter_Distance_Init()
{

}

void Presenter_Distance_Excute()
{
	static distance_t distanceData;
	distance_t *pDistanceData;

	osEvent evt = osMailGet(distanceDataMailBox, 0);
	if(evt.status == osEventMail){
		pDistanceData = evt.value.p;
		memcpy(&distanceData, pDistanceData, sizeof(distance_t));
		osMailFree(distanceDataMailBox, pDistanceData); //Free mem
		Presenter_Distance_FND(distanceData);
		Presenter_Distance_LCD(distanceData);
	}
}

void Presenter_Distance_FND(distance_t distanceData)
{
	FND_WriteData(distanceData.distance);
	FND_WriteDp(FND_DP_100, FND_DP_ON);
}

void Presenter_Distance_LCD(distance_t distanceData)
{
	char str[30];
	sprintf(str, "Distance: %ld           ", distanceData.distance);
	LCD_writeStringXY(1, 0, str);
}
