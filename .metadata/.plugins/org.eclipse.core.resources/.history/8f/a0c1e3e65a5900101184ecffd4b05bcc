/*
 * Presenter_TempHumid.c
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */
#include "Presenter_TempHumid.h"

void Presenter_TempHumid_Init()
{

}

void Presenter_TempHumid_Excute()
{
	static TempHumid_t TempHumidData;
	TempHumid_t *pTempHumidData;

	osEvent evt = osMailGet(TempHumidDataMailBox, 0);
	if(evt.status == osEventMail){
		pTempHumidData = evt.value.p;
		memcpy(&TempHumidData, pTempHumidData, sizeof(TempHumid_t));
		osMailFree(TempHumidDataMailBox, pTempHumidData);
		Presenter_TempHumid_FND(TempHumidData);
		Presenter_TempHumid_LCD(TempHumidData);
	}
}

void Presenter_TempHumid_FND(TempHumid_t TempHumidData)
{
	FND_WriteData(TempHumidData.temp_int*100 + TempHumidData.temp_frac);
	FND_WriteDp(FND_DP_100, FND_DP_ON);
}

void Presenter_TempHumid_LCD(TempHumid_t TempHumidData)
{
	char str[40];
	sprintf(str, "T:%02d.%02d H:%02d.%02d           ", TempHumidData.temp_int, TempHumidData.temp_frac, TempHumidData.humid_int, TempHumidData.humid_frac);
	LCD_writeStringXY(1, 0, str);
}
