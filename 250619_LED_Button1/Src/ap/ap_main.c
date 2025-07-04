#include "ap_main.h"

Button_Handler_t hBtnSTOP;
Button_Handler_t hBtnRUN;
Button_Handler_t hBtnCLEAR;

enum {STOP, RUN, CLEAR};

int ap_main()
{

	uint32_t count = 0;
	uint32_t digit_1000 = 0;
	uint32_t digit_100 = 0;
	uint32_t digit_10 = 0;
	uint32_t digit_1 = 0;
	uint8_t DP = 0;
	int seg_state = STOP;

	while(1)
	{
		switch(seg_state)
		{
		case STOP:
			count = count;
			if(Button_GetState(&hBtnRUN) == ACT_PUSHED){
				seg_state = RUN;
			}
			else if(Button_GetState(&hBtnCLEAR) == ACT_PUSHED){
				seg_state = CLEAR;
			}

			digit_1000 = (count / 1000)%10;
			digit_100 = (count / 100)%10;
			digit_10 = (count / 10)%10;
			digit_1 = (count % 10);

			delay(10);
			FND_Write(digit_1000, DP, 1);
			delay(10);
			FND_Write(digit_100, DP, 2);
			delay(10);
			FND_Write(digit_10, DP, 3);
			delay(10);
			FND_Write(digit_1, DP, 4);
			break;

		case RUN:
			if(count == 9999) {
				count = 0;
			}
			else {
				if(Button_GetState(&hBtnSTOP) == ACT_PUSHED){
					seg_state = STOP;
				}
				else if(Button_GetState(&hBtnCLEAR) == ACT_PUSHED){
					seg_state = CLEAR;
				}
				count = count + 1;

				digit_1000 = (count/1000)%10;
				digit_100 = (count/100)%10;
				digit_10 = (count/10)%10;
				digit_1 = (count%10);
				delay(2);
				FND_Write(digit_1000, DP, 1);
				delay(2);
				FND_Write(digit_100, DP, 2);
				delay(2);
				FND_Write(digit_10, DP, 3);
				delay(2);
				FND_Write(digit_1, DP, 4);
			}
			break;

		case CLEAR:
			count = 0;
			if(Button_GetState(&hBtnSTOP) == ACT_PUSHED){
				seg_state = STOP;
			}
			else if(Button_GetState(&hBtnRUN) == ACT_PUSHED){
				seg_state = RUN;
			}
			FND_Write(0, DP, 5);
			break;
		}
//		delay(1000);
		//DP ^= 1;
	}

	return 0;
}

void ap_Init()
{
	SystemClock_Init();
	FND_Init();
	Button_Init(&hBtnSTOP, GPIOB, 5);
	Button_Init(&hBtnRUN, GPIOB, 3);
	Button_Init(&hBtnCLEAR, GPIOA, 10);
}
