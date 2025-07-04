#ifndef AP_AP_MAIN_H_
#define AP_AP_MAIN_H_

#include "Listener.h"
#include "Presenter.h"
#include "Controller.h"
#include "stm32f4xx_hal.h"
#include "tim.h" //timer Handler
#include "i2c.h"
#include "Lcd.h"
#include "timeWatch.h"
#include "stopWatch.h"


void ap_Init();
int ap_main();

#endif /* AP_AP_MAIN_H_ */
