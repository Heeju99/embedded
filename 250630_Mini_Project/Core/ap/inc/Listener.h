/*
 * Listener.h
 *
 *  Created on: Jun 24, 2025
 *      Author: rhoblack
 */

#ifndef AP_LISTENER_H_
#define AP_LISTENER_H_
#include "stm32f4xx_hal.h"
#include "Controller.h"
#include "Button.h"
#include "queue.h"
#include "Presenter.h"
#include "Sound.h"

#define PASS_LEN 4

extern char uartBuffer[PASS_LEN + 1];
extern int  bufPos;

void Listener_Init();
void Listener_Excute();
void Listener_UartCallBack();


#endif /* AP_LISTENER_H_ */
