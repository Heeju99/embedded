#ifndef AP_CONTROLLER_DISTANCE_H_
#define AP_CONTROLLER_DISTANCE_H_

#include <stdint.h>
#include "cmsis_os.h"
#include "Model_Distance.h"
#include "Ultra.h"

extern distance_t distanceData;

void Distance_Init();
void Distance_Excute();

#endif /* AP_CONTROLLER_DISTANCE_H_ */
