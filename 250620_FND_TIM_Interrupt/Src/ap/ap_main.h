#ifndef AP_AP_MAIN_H_
#define AP_AP_MAIN_H_
#include "GPIO.h"
#include "LedBar.h"
#include "SystemClock.h"
#include "Button.h"
#include "FND_prof.h"
#include "TIM.h"
#include "SysTick.h"

void ap_Init();
int ap_main();

#endif /* AP_AP_MAIN_H_ */
