#ifndef DRIVER_BUTTON_BUTTON_H_
#define DRIVER_BUTTON_BUTTON_H_

#include <stdint.h>
#include "GPIO.h"
#include "SystemClock.h"

typedef enum {NO_ACT, ACT_PUSHED, ACT_RELEASED} button_state_t;

typedef struct{
	GPIO_TypeDef *GPIOx;
	uint32_t pinNum;
	uint32_t prevState;
}Button_Handler_t;

void Button_Init(Button_Handler_t *hbtn, GPIO_TypeDef *GPIOx, uint32_t pinNum);
button_state_t Button_GetState(Button_Handler_t *hbtn);

#endif /* DRIVER_BUTTON_BUTTON_H_ */

