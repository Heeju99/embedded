/*
 * Model_Distance.c
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */

#include "Model_Distance.h"

static eDistanceState_t distanceState = S_DISTANCE_STOP; //초기값


osMessageQId distanceEventMsgBox; //버튼 입력 정보
osMessageQDef(distanceEventQueue, 4, uint16_t);

osMailQId distanceDataMailBox;  //시간 정보
osMailQDef(distanceDataQueue, 4, distance_t);


 void Model_Distance_Init()
 {
	 distanceEventMsgBox = osMessageCreate(osMessageQ(distanceEventQueue), NULL);
	 distanceDataMailBox = osMailCreate(osMailQ(distanceDataQueue), NULL);
 }


 void Model_Set_DistanceState(eDistanceState_t state)
 {
	 distanceState = state;
 }

 eDistanceState_t Model_Get_DistanceState()
 {
	 return distanceState;
 }
