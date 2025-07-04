#include <stdint.h>
#include "GPIO.h"
#include "LedBar.h"
#include "SystemClock.h"

int main(void)
{
    	SystemClock_Init();
    	LedBar_Init();

    	uint8_t data = 1;

    while(1)
    {
    	LedBar_Write(data);
    	delay(5);
    	data = (data << 1) | (data >> 7);
    }
    return 0;
}
