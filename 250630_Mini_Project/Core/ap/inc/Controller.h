/*
 * Controller.h
 *
 *  Created on: Jun 24, 2025
 *      Author: rhoblack
 */

#ifndef AP_CONTROLLER_H_
#define AP_CONTROLLER_H_

#include "stopWatch.h"
#include "timeWatch.h"
#include "Model_Watch.h"
#include "Presenter.h"
#include "Listener.h"

enum {NO_CONTROL, MODE, STOPWATCH_RUN_STOP, STOPWATCH_CLEAR};
enum {MODE_NO_ACT, MODE_ACT, LOGIN_INPUT_ACT, LOGIN_SUCCESS_ACT, LOGIN_FAIL_ACT};
enum {NO_SEC_CON, SECURITY_RUN};
enum {P_LOG, P_SEC};
enum {WAIT_INPUT,ING_INPUT, OPEN, FAIL,W_CLEAR};




typedef struct {
   int id;
   int data;
}inputData_TypeDef;

typedef struct {
   uint32_t dst;
}ultraSonic_TypeDef;

typedef struct{
   uint8_t state;
}stateControl_t;

typedef struct{
   uint8_t login_state;
}stateControl_login_t;

extern stateControl_t stateData;
extern stateControl_login_t login_stateData;


typedef struct {
   int id_safe;
   int data_pw_input;
   int data_pw_correct;
}login_input_TypeDef;


extern login_input_TypeDef login_controldata;
extern int byte;


void Controller_SetInputData(inputData_TypeDef inputData);
void Controller_Excute();

#endif /* AP_CONTROLLER_H_ */
