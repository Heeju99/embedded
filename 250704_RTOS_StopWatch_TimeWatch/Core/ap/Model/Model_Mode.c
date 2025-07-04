/*
 * Model_Mode.c
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */

#include "Model_Mode.h"

static eModeState_t modeState = S_TIMEWATCH_MODE;

osMessageQId modeEventMsgBox; //버튼 입력 정보
osMessageQDef(modeEventQueue, 4, uint16_t);

void Model_Mode_Init()
{
	modeEventMsgBox = osMessageCreate(osMessageQ(modeEventQueue), NULL);
}

void Model_Set_ModeState(eModeState_t state)
{
	modeState = state;
}

eModeState_t Model_Get_ModeState()
{
	 return modeState;
}

