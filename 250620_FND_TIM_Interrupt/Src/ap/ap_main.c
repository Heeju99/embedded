#include "ap_main.h"

Button_Handler_t hBtnMode;
Button_Handler_t hBtnRun;
Button_Handler_t hBtnClear;

enum {WATCH, ST_STOP, ST_RUN, ST_CLEAR};


void TIM2_IRQHandler()
{
	incTick();
	FND_DisplayData();
	TIM_ClearUIFlag(TIM2); //flag clear
}

int ap_main()
{

	uint32_t dot_data;
	uint32_t dot_data1;
   uint8_t data = 1;
   uint16_t counter = 0;
   uint16_t start_counter = 1200;
   int state = WATCH;
   uint32_t prevCounterTime = 0;
   uint32_t prevBlinkTime = 0;
   uint32_t flag = 0;
   uint32_t msec = 0;
   uint32_t sec = 0;
   uint32_t min = 0;
   uint32_t hourminsec = 0;

   while(1)
   {
	   //if(getTick() - prevCounterTime >= 1000){ //0.1초
	   //prevCounterTime = getTick();
	   //FND_WriteData(counter++);
	   //}
	   switch(state){

	   case WATCH :
		   if(getTick() - prevBlinkTime >= 500){ //1초
			   prevBlinkTime = getTick();
			   flag ^= 1;
			   if(flag == 1){
				   dot_data = 0x80;
			   } else{
				   dot_data = 0;
			   }
		   }
		   FND_Dot(0, 0, dot_data, 0);
		   FND_WriteData(start_counter);

		   if(getTick() - prevCounterTime >= 60000){ //1분
			   prevCounterTime = getTick();
			   start_counter++;
			   //FND_WriteData(start_counter++);
		   }

			if(Button_GetState(&hBtnMode) == ACT_PUSHED){
				state = ST_STOP;
				FND_WriteData(0);
				counter = 0;
			}
		   break;

	   case ST_STOP:
		   if(getTick() - prevBlinkTime >= 50){ //0.5초
			   prevBlinkTime = getTick();
			   flag ^= 1;
			   if(flag == 1){
				   dot_data1 = 0x80;
			   } else{
				   dot_data1 = 0;
			   }
		   }
		   FND_Dot(0, dot_data1, 0, dot_data1);

		    counter = counter;
			if(Button_GetState(&hBtnMode) == ACT_PUSHED){
				state = WATCH;
			}
			else if(Button_GetState(&hBtnRun) == ACT_PUSHED){
				state = ST_RUN;
			}
			else if(Button_GetState(&hBtnClear) == ACT_PUSHED){
				state = ST_CLEAR;
			}
		   break;

	   case ST_RUN:

		   if(getTick() - prevBlinkTime >= 50){ //0.5초
			   prevBlinkTime = getTick();
			   flag ^= 1;
			   if(flag == 1){
				   dot_data1 = 0x80;
			   } else{
				   dot_data1 = 0;
			   }
		   }
		   FND_Dot(0, dot_data1, 0, dot_data1);

		    if (getTick() - prevCounterTime >= 100) { // 0.1초
		        prevCounterTime = getTick();
		        msec ++;
		        if(msec == 10){
		        	msec = 0;
		        	sec += 1;
					if(sec == 60){
						sec = 0;
						min += 1;
						if(min == 10){
							min = 0;
						}
					}

		        }
		    }

		    hourminsec = (min * 1000) + (sec * 10) + msec;
		    FND_WriteData(hourminsec);

			if(Button_GetState(&hBtnMode) == ACT_PUSHED){
				state = WATCH;
			}
			else if(Button_GetState(&hBtnRun) == ACT_PUSHED){
				state = ST_STOP;
			}
		   break;

	   case ST_CLEAR:

		   if(getTick() - prevBlinkTime >= 50){ //0.05초
			   prevBlinkTime = getTick();
			   flag ^= 1;
			   if(flag == 1){
				   dot_data1 = 0x80;
			   } else{
				   dot_data1 = 0;
			   }
		   }
		   FND_Dot(0, dot_data1, 0, dot_data1);

		   counter = 0;
		    FND_WriteData(counter);
			if(Button_GetState(&hBtnMode) == ACT_PUSHED){
				state = WATCH;
			}
			else if(Button_GetState(&hBtnRun) == ACT_PUSHED){
				state = ST_STOP;
			}

		   break;
	   }

   }
   return 0;
}

void ap_Init()
{
   SystemClock_Init();
   LedBar_Init();
   Button_Init(&hBtnMode, GPIOB, 5);
   Button_Init(&hBtnRun, GPIOB, 3);
   Button_Init(&hBtnClear, GPIOA, 10);
   FND_Init();
   TIM_Init(TIM2, 16-1,1000-1); //100MHz를 분주하기 위해 psc =16, arr = 1000으로 설정  -> 1ms
   TIM_CntStart(TIM2);
   TIM_UInterEnable(TIM2);  //Interrupt 용, 내부적으로 Count값 증가
   NVIC_EnableIRQ(TIM2_IRQn); //TIM2를 등록하여 사용

   //TIMER 5번은 Interrupt없이 Tick 세기 위해 사용
  // TIM_Init(TIM5, 16000-1,0xffffffff);
   //SysTick_Init(TIM5);
   //SysTick_Start();
}
