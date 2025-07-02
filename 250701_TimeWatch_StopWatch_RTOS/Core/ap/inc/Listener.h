/*
 * Listener.h
 *
 *  Created on: Jun 24, 2025
 *      Author: kccistc
 */

#ifndef AP_LISTENER_H_
#define AP_LISTENER_H_
#include <my_queue.h>
#include "stm32f4xx_hal.h"
#include "Button.h"
#include "Controller.h"
#include "i2c.h"
#include <stdint.h>
#include "Watch_Model.h"


void Listener_Excute();
void Listener_Init();
void Listener_UartCallBack();

#endif /* AP_LISTENER_H_ */
