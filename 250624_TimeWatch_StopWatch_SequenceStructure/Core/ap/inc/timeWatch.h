#ifndef AP_TIMEWATCH_H_
#define AP_TIMEWATCH_H_

#include "Model_Watch.h"
#include "stm32f4xx_hal.h"
#include "Controller.h"

void TimeWatch_IncTimeCallBack();
void TimeWatch_Excute();

#endif /* AP_TIMEWATCH_H_ */
