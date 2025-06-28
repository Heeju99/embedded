#include "UltraRun.h"

ultra_t ultra;

uint8_t Ultra_done = 0;

void Ultra_RunCallBack()
{
	static uint32_t counter = 0;
	counter++;
	Ultra_done = 0;
	if (counter > 1000) //1msec
	{
		counter = 0;
		Ultra_Trigger_Input();
		Ultra_done = 1;
        uint32_t echoTime = Ultra_Echo();
        uint16_t distance = Ultra_Calculate(echoTime);

        if(distance >= 400) { //for distance_out
        	distance = 400;
        }
        ultra.ultra_data = distance;
	}
	Presenter_UL_OutData(ultra);
}
