#ifndef AP_PRESENTER_PRESENTER_STOPWATCH_H_
#define AP_PRESENTER_PRESENTER_STOPWATCH_H_

#include "cmsis_os.h"
#include "FND.h"
#include "Model_StopWatch.h"
#include "lcd.h"
#include <stdio.h>
#include "i2c.h"
#include <string.h>

void Presenter_StopWatch_Init();
void Presenter_StopWatch_Excute();
void Presenter_StopWatch_FND(stopWatch_t stopWatchData);
void Presenter_StopWatch_LCD(stopWatch_t stopWatchData);

#endif /* AP_PRESENTER_PRESENTER_STOPWATCH_H_ */
