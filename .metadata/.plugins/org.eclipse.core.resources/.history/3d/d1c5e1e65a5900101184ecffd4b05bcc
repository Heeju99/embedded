/*
 * TempHumid.h
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */

#ifndef AP_CONTROLLER_TEMPHUMID_H_
#define AP_CONTROLLER_TEMPHUMID_H_
#include <stdint.h>
#include "cmsis_os.h"
#include "stm32f4xx_hal.h"
#include "tim.h"
#include "Model_TempHumid.h"

extern TempHumid_t TempHumidData;

void TempHumid_Init();
void TempHumid_Stop();
void TempHumid_Run();
void TempHumid_Excute();
void TempHumid_SetPinOutput();
void TempHumid_SetPinInput();
void TempHumid_IncTimeCallBack();
void TempHumid_ResetCounter();
uint32_t TempHumid_GetCounter();
void TempHumid_SendStartSignal();
void TempHumid_SendWaitSignal();
void TempHumid_RecvResponse();
void TempHumid_SyncLow();
void TempHumid_SyncHigh();
void TempHumid_RecvBitData();
void TempHumid_checksum();

#endif /* AP_CONTROLLER_TEMPHUMID_H_ */
