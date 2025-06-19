#include "ap_main.h"

int ap_main()
{
	uint8_t data = 1;

	while(1)
	{
    	LEDBar_Write(data);
    	delay(100);
    	data = (data << 1) | (data >> 7);
	}
	return 0;
}

void ap_Init()
{
	SystemClock_Init();
	LedBar_Init();
}

