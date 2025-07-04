#include "Presenter_Distance.h"

void Presenter_Distance_Init()
{

}

void Presenter_Distance_Excute()
{
	static distance_t distanceData;
	distance_t *pdistanceData;

	osEvent evt = osMailGet(DistanceDataMailBox, 0);
	if(evt.status == osEventMail){
		pdistanceData = evt.value.p;
		memcpy(&distanceData, pdistanceData, sizeof(distance_t));
		osMailFree(DistanceDataMailBox, pdistanceData); //Free mem

		Presenter_Distance_LCD(distanceData);
	}

}

void Presenter_Distance_LCD(distance_t distanceData)
{
	char str[30];
	sprintf(str, "Distance = %d", distanceData.dst);
	LCD_writeStringXY(1, 0, str);
}
