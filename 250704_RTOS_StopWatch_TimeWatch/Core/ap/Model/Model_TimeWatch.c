#include "Model_TimeWatch.h"

static eTimeWatchState_t timeWatchState = S_TIMEWATCH_NORMAL;


osMessageQId timeWatchEventMsgBox; //버튼 입력 정보 (modify)
osMessageQDef(timeWatchEventQueue, 4, uint16_t);

osMailQId timeWatchDataMailBox;  //시간 정보
osMailQDef(timeWatchDataQueue, 4, timeWatch_t);


void Model_timeWatch_Init()
{
	 timeWatchEventMsgBox = osMessageCreate(osMessageQ(timeWatchEventQueue), NULL);
	 timeWatchDataMailBox = osMailCreate(osMailQ(timeWatchDataQueue), NULL);
}


void Model_Set_TimeWatchState(eTimeWatchState_t state)
{
	timeWatchState = state;
}

eTimeWatchState_t Model_Get_TimeWatchState() //get 함수를 통해 state
{
	 return timeWatchState;
}
