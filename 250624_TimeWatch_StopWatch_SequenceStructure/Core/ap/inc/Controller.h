#ifndef AP_CONTROLLER_H_
#define AP_CONTROLLER_H_

typedef struct{
	int id;
	int data;
}inputData_TypeDef;

enum {NO_CONTROL, MODE, STOPWATCH_RUNSTOP, STOPWATCH_CLEAR};
enum {MODE_NO_ACT, MODE_ACT, STOPWATCH_NO_ACT, STOPWATCH_ACT};

void Controller_SetInputData(inputData_TypeDef inputData);

#endif /* AP_CONTROLLER_H_ */
