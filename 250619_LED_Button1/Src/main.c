#include <stdint.h>
#include "ap_main.h"

int main(void)
{
	ap_Init();
    while(1)
    {
    	ap_main();
    }
    return 0;
}

