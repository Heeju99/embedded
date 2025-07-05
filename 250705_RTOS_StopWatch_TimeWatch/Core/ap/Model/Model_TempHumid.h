/*
 * Model_TempHumid.h
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */

#ifndef AP_MODEL_MODEL_TEMPHUMID_H_
#define AP_MODEL_MODEL_TEMPHUMID_H_
#include <stdint.h>
#include "cmsis_os.h"

extern osMessageQId TempHumidEventMsgBox;
extern osMailQId TempHumidDataMailBox;

typedef struct{
	uint8_t humid_int;
	uint8_t humid_frac;
	uint8_t temp_int;
	uint8_t temp_frac;
	uint8_t checksum;
}TempHumid_t;

typedef enum {
	 S_TEMPHUMID_STOP, S_TEMPHUMID_TRIG
}eTempHumidState_t;

typedef enum {EVENT_TEMPHUMID} eTempHumidEvent_t;

void Model_TempHumid_Init();
void Model_Set_TempHumidState(eTempHumidState_t state);
eTempHumidState_t Model_Get_TempHumidState();

#endif /* AP_MODEL_MODEL_TEMPHUMID_H_ */
