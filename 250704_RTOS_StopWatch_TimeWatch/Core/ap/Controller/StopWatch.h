#ifndef AP_CONTROLLER_STOPWATCH_H_
#define AP_CONTROLLER_STOPWATCH_H_

#include <stdint.h>
#include "cmsis_os.h"
#include "Model_StopWatch.h"

extern stopWatch_t stopWatchData;

void StopWatch_Init();
void StopWatch_Excute();
void StopWatch_Stop();
void StopWatch_Run();
void StopWatch_Clear();
void StopWatch_IncTimeCallBack();

#endif /* AP_CONTROLLER_STOPWATCH_H_ */
