#ifndef AP_PRESENTER_PRESENTER_DISTANCE_H_
#define AP_PRESENTER_PRESENTER_DISTANCE_H_

#include "cmsis_os.h"
#include "Model_Distance.h"
#include "FND.h"
#include "lcd.h"
#include <stdio.h>
#include <string.h>

void Presenter_Distance_Init();
void Presenter_Distance_Excute();
void Presenter_Distance_LCD(distance_t distanceData);

#endif /* AP_PRESENTER_PRESENTER_DISTANCE_H_ */
