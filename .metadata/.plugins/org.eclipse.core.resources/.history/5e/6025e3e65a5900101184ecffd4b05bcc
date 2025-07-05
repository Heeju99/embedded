/*
 * Model_TempHumid.c
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */
#include "Model_TempHumid.h"

//static eTempHumidState_t temphumidState = S_TEMPHUMID_STOP;
static eTempHumidState_t temphumidState = S_TEMPHUMID_TRIG;

osMessageQId TempHumidEventMsgBox; //버튼 입력 정보
osMessageQDef(TempHumidEventQueue, 4, uint16_t);

osMailQId TempHumidDataMailBox;  //시간 정보
osMailQDef(TempHumidDataQueue, 4, TempHumid_t);


 void Model_TempHumid_Init()
 {
	 TempHumidEventMsgBox = osMessageCreate(osMessageQ(TempHumidEventQueue), NULL);
	 TempHumidDataMailBox = osMailCreate(osMailQ(TempHumidDataQueue), NULL);
 }

 void Model_Set_TempHumidState(eTempHumidState_t state)
 {
	 temphumidState = state;
 }

 eTempHumidState_t Model_Get_TempHumidState()
 {
	 return temphumidState;
 }
