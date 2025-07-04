/*
 * Model_TimeWatch.h
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */
#ifndef AP_MODEL_MODEL_TIMEWATCH_H_
#define AP_MODEL_MODEL_TIMEWATCH_H_
#include <stdint.h>
#include "cmsis_os.h"

typedef struct{
 	uint16_t msec;
 	uint8_t sec;
 	uint8_t min;
 	uint8_t hour;
 }timeWatch_t;

extern osMailQId timeWatchDataMailBox;

 void Model_timeWatch_Init();

#endif /* AP_MODEL_MODEL_TIMEWATCH_H_ */
