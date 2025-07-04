/*
 * Model_Mode.h
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */

#ifndef AP_MODEL_MODEL_MODE_H_
#define AP_MODEL_MODEL_MODE_H_
#include <stdint.h>
#include "cmsis_os.h"

typedef enum {S_TIMEWATCH_MODE, S_STOPWATCH_MODE} eModeState_t;
typedef enum {EVENT_MODE} eModeEvent_t;

extern osMessageQId modeEventMsgBox;

void Model_Mode_Init();
void Model_Set_ModeState(eModeState_t state);
eModeState_t Model_Get_ModeState();

#endif /* AP_MODEL_MODEL_MODE_H_ */
