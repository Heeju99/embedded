#include "Presenter.h"

void Presenter_Init()
{
	//FND_INIT
	Presenter_TimeWatch_Init();
	Presenter_StopWatch_Init();
	Presenter_Distance_Init();
	Presenter_TempHumid_Init();
}

void Presenter_Excute()
{
	static eModeState_t prevState;
	eModeState_t state = Model_Get_ModeState();
	if (prevState != state) {
		char str[30];
		prevState = state;

		if (state == S_TIMEWATCH_MODE) {
			sprintf(str, "TimeWatch        ");
			FND_WriteDp(FND_DP_1|FND_DP_10|FND_DP_100|FND_DP_1000, FND_DP_OFF);
		}
		else if (state == S_STOPWATCH_MODE) {
			sprintf(str, "StopWatch");
			FND_WriteDp(FND_DP_1|FND_DP_10|FND_DP_100|FND_DP_1000, FND_DP_OFF);
		}
		else if(state == S_DISTANCE_MODE){
			sprintf(str, "Distance");
			FND_WriteDp(FND_DP_1|FND_DP_10|FND_DP_100|FND_DP_1000, FND_DP_OFF);
		}
		LCD_writeStringXY(0, 0, str);
	}

	switch(state)
	{
	case S_TIMEWATCH_MODE:
		Presenter_TimeWatch_Excute();
		break;
	case S_STOPWATCH_MODE:
		Presenter_StopWatch_Excute();
		break;
	case S_DISTANCE_MODE:
		Presenter_Distance_Excute();
		break;

	case S_TEMP_HUMID_MODE:
		Presenter_TempHumid_Excute();
		break;

	}
}
