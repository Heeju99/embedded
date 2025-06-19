#ifndef DRIVER_BUTTON_BUTTON_H_
#define DRIVER_BUTTON_BUTTON_H_

#include <stdint.h>
#include "GPIO.h"
#include "SystemClock.h"

typedef enum {NO_ACT, ACT_PUSHED, ACT_RELEASED} button_state_t;
int Button_Init();
button_state_t Button_GetState();

#endif /* DRIVER_BUTTON_BUTTON_H_ */
