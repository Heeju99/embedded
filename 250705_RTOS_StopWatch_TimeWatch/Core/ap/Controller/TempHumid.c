/*
 * TempHumid.c
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */
#include "TempHumid.h"
#include <string.h>

TempHumid_t TempHumidData = {0};

static uint8_t dht11_data[5] = {0};
static uint8_t dht11_start_requested;

extern TIM_HandleTypeDef htim4;

void TempHumid_Init()
{
	TempHumidData.humid_int = 0;
	TempHumidData.humid_frac = 0;
	TempHumidData.temp_int = 0;
	TempHumidData.temp_frac = 0;
	TempHumidData.checksum = 0;

	TempHumid_t *pTempHumidData = osMailAlloc(TempHumidDataMailBox,0);
	memcpy(pTempHumidData , &TempHumidData, sizeof(TempHumid_t));
	osMailPut(TempHumidDataMailBox, pTempHumidData);
}

void TempHumid_Excute()
{
	if (!dht11_start_requested) return;
	dht11_start_requested = 0;
	TempHumid_SetPinOutput();
	TempHumid_SendStartSignal();
	TempHumid_SendWaitSignal();

	TempHumid_SetPinInput();
	TempHumid_RecvResponse();
	TempHumid_RecvBitData();
	TempHumid_checksum();

	static TempHumid_t prevTempHumidData;

	if (memcmp(&TempHumidData, &prevTempHumidData, sizeof(TempHumid_t))){ //stopWatchData와 prevStopWatchData가 다르면 수행
		memcpy(&prevTempHumidData, &TempHumidData, sizeof(TempHumid_t));
		TempHumid_t *pTempHumidData = osMailAlloc(TempHumidDataMailBox,0);
		memcpy(pTempHumidData , &TempHumidData, sizeof(TempHumid_t));
		osMailPut(TempHumidDataMailBox, pTempHumidData);
	}
}

// 출력 모드 설정
void TempHumid_SetPinOutput()
{
   GPIO_InitTypeDef GPIO_InitStruct = {0};
   GPIO_InitStruct.Pin = GPIO_PIN_9;
   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
   GPIO_InitStruct.Pull = GPIO_NOPULL;
   HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
}

// 입력 모드 설정
void TempHumid_SetPinInput()
{
   GPIO_InitTypeDef GPIO_InitStruct = {0};
   GPIO_InitStruct.Pin = GPIO_PIN_9;
   GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
   GPIO_InitStruct.Pull = GPIO_NOPULL;
   HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
}

void TempHumid_IncTimeCallBack()
{
	dht11_start_requested = 1;
}

void TempHumid_ResetCounter()
{
	__HAL_TIM_SET_COUNTER(&htim4, 0);
}

uint32_t TempHumid_GetCounter()
{
   return __HAL_TIM_GET_COUNTER(&htim4);
}

void TempHumid_SendStartSignal()
{
   HAL_GPIO_WritePin(GPIOA, GPIO_PIN_9, GPIO_PIN_RESET);
   TempHumid_ResetCounter();
   while(TempHumid_GetCounter() < 18000); // 18ms
}

void TempHumid_SendWaitSignal()
{
   HAL_GPIO_WritePin(GPIOA, GPIO_PIN_9, GPIO_PIN_SET);
   TempHumid_ResetCounter();
   while(TempHumid_GetCounter() < 30);
}

void TempHumid_RecvResponse()
{
	TempHumid_SyncLow();
	TempHumid_SyncHigh();
}

void TempHumid_SyncLow()
{
	TempHumid_ResetCounter();
   while(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_9) == GPIO_PIN_RESET) {
      if(TempHumid_GetCounter() > 100) return;
   }
}

void TempHumid_SyncHigh()
{
	TempHumid_ResetCounter();
   while(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_9) == GPIO_PIN_SET) {
      if(TempHumid_GetCounter() > 100) return;
   }
}

void TempHumid_RecvBitData()
{
   for(int byte = 0; byte < 5; byte++)
   {
      dht11_data[byte] = 0;
      for(int bit = 0; bit < 8; bit++)
      {
         // DATA_START 50us
    	  TempHumid_ResetCounter();
         while(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_9) == GPIO_PIN_RESET) {
            if(TempHumid_GetCounter() > 100) return;
         }

         // DATA
         TempHumid_ResetCounter();
         while(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_9) == GPIO_PIN_SET) {
            if(TempHumid_GetCounter() > 100) return;
         }
         uint32_t pulse_width = TempHumid_GetCounter();
         if(pulse_width > 50) {
            dht11_data[byte] |= (1<<(7-bit));
         }
         else{
            dht11_data[byte] &= ~(1<<(7-bit));
         }
      }
   }
}

void TempHumid_checksum()
{
   uint8_t sum = dht11_data[0] + dht11_data[1] + dht11_data[2] + dht11_data[3];
   if (sum == dht11_data[4]) {
	   TempHumidData.humid_int = dht11_data[0];
	   TempHumidData.humid_frac = dht11_data[1];
	   TempHumidData.temp_int = dht11_data[2];
	   TempHumidData.temp_frac = dht11_data[3];
	   TempHumidData.checksum = dht11_data[4];
   }
}
