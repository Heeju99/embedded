/*
 * Distance.h
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */

#ifndef AP_CONTROLLER_DISTANCE_H_
#define AP_CONTROLLER_DISTANCE_H_
#include <stdint.h>
#include "cmsis_os.h"
#include "stm32f4xx_hal.h"
#include "gpio.h"
#include "tim.h"
#include "Model_Distance.h"

extern distance_t distanceData;

void Distance_Init();
void Distance_Excute();
void Distance_Stop();
void Distance_Run();
void Distance_Trig();
void Distance_echo_distance(distance_t *distanceData);


#endif /* AP_CONTROLLER_DISTANCE_H_ */
