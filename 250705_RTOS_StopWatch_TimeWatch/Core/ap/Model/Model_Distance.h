/*
 * Model_Distance.h
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */

#ifndef AP_MODEL_MODEL_DISTANCE_H_
#define AP_MODEL_MODEL_DISTANCE_H_
#include <stdint.h>
#include "cmsis_os.h"

extern osMessageQId distanceEventMsgBox;
extern osMailQId distanceDataMailBox;

typedef struct{
	uint32_t distance;
}distance_t;

typedef enum {  //Listener, Controller, Presenter에 전달하기 위해
	 S_DISTANCE_STOP, S_DISTANCE_TRIG
}eDistanceState_t;

typedef enum{
	EVENT_DISTANCE
}eDistanceEvent_t;

void Model_Distance_Init();
void Model_Set_DistanceState(eDistanceState_t state);
eDistanceState_t Model_Get_DistanceState();

#endif /* AP_MODEL_MODEL_DISTANCE_H_ */
