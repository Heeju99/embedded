#include "Distance.h"
#include <string.h>

extern TIM_HandleTypeDef htim5;

static void delay_time_by_tim(TIM_HandleTypeDef *htim, uint32_t us);
distance_t distanceData;

void Distance_Init()
{
	distanceData.distance = 0;
	distance_t *pDistanceData = osMailAlloc(distanceDataMailBox,0);
	memcpy(pDistanceData , &distanceData, sizeof(distance_t));
	osMailPut(distanceDataMailBox, pDistanceData);
}

void Distance_Excute()
{
	eDistanceState_t state = Model_Get_DistanceState();

	switch(state)
	{
	case S_DISTANCE_STOP:
		Distance_Stop();
		break;
	case S_DISTANCE_TRIG:
		Distance_Run();
		break;
	}
}

void Distance_Stop()
{
	osEvent evt = osMessageGet(distanceEventMsgBox, 0);
	uint16_t evtState;

	if(evt.status == osEventMessage){
		evtState = evt.value.v;

		if(evtState == EVENT_DISTANCE){
			Model_Set_DistanceState(S_DISTANCE_TRIG);
		}
	}
}

void Distance_Run()
{
	osEvent evt = osMessageGet(distanceEventMsgBox, 0);
	uint16_t evtState;

	Distance_Trig();
	Distance_echo_distance(&distanceData);

	Model_Set_DistanceState(S_DISTANCE_STOP);

	static distance_t prevDistanceData;
	if (memcmp(&distanceData, &prevDistanceData, sizeof(distance_t))){
		memcpy(&prevDistanceData, &distanceData, sizeof(distance_t));
		distance_t *pDistanceData = osMailAlloc(distanceDataMailBox,0);
		memcpy(pDistanceData , &distanceData, sizeof(distance_t));
		osMailPut(distanceDataMailBox, pDistanceData);
	}
}

void Distance_Trig()
{
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, SET);
	delay_time_by_tim(&htim5, 10);
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, RESET);
}

void delay_time_by_tim(TIM_HandleTypeDef *htim, uint32_t us)
{
	__HAL_TIM_SET_COUNTER(htim, 0);
	HAL_TIM_Base_Start(htim);
	while(__HAL_TIM_GET_COUNTER(htim) < us);
	HAL_TIM_Base_Stop(htim);

}

void Distance_echo_distance(distance_t *distanceData)
{
    uint32_t timeout = 10000;

    while (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_6) == GPIO_PIN_RESET)
    {
        if (timeout-- == 0) {
            distanceData->distance = 0;
            return;
        }
    }
    __HAL_TIM_SET_COUNTER(&htim5, 0);
    HAL_TIM_Base_Start(&htim5);
    timeout = 30000;

    while (HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_6) == GPIO_PIN_SET)
    {
        if (timeout-- == 0) {
            distanceData->distance = 0;
            HAL_TIM_Base_Stop(&htim5);
            return;
        }
    }
    uint32_t distance_us =__HAL_TIM_GET_COUNTER(&htim5);
    HAL_TIM_Base_Stop(&htim5);

    distanceData->distance = distance_us / 58;
}
