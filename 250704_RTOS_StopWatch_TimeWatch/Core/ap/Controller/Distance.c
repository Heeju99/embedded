#include "Distance.h"

distance_t distanceData;

void Distance_Init()
{
	distance_t *pDistanceData = osMailAlloc(DistanceDataMailBox,0);
	memcpy(pDistanceData , &distanceData, sizeof(distance_t));
	osMailPut(DistanceDataMailBox, pDistanceData);
}

void Distance_Excute()
{
	Ultra_Trigger_Input();
    uint32_t echoTime = Ultra_Echo();
    uint16_t distance = Ultra_Calculate(echoTime);

    if(distance >= 400) { //for distance_out
    	distance = 400;
    }
    distanceData.dst = distance;
}

void Distance_RunCallBack()
{
		Ultra_Trigger_Input();
        uint32_t echoTime = Ultra_Echo();
        uint16_t distance = Ultra_Calculate(echoTime);

        if(distance >= 400) { //for distance_out
        	distance = 400;
        }
        distanceData.dst = distance;
}
