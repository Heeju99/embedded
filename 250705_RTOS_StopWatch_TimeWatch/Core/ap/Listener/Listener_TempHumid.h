/*
 * Listener_TempHumid.h
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */

#ifndef AP_LISTENER_LISTENER_TEMPHUMID_H_
#define AP_LISTENER_LISTENER_TEMPHUMID_H_
#include "cmsis_os.h"
#include <stdint.h>
#include "Button.h"
#include "Model_TempHumid.h"

void Listener_TempHumidInit();
void Listener_TempHumidExcute();

#endif /* AP_LISTENER_LISTENER_TEMPHUMID_H_ */
