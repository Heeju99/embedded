#include "Controller.h"

typedef enum {TIME_WATCH, STOP_WATCH} watchMode_state_t;

static watchMode_state_t modeState = TIME_WATCH;
inputData_TypeDef controlData = {0};

void Controller_SetInputData(inputData_TypeDef inputData)
{
	if(inputData.id == MODE){
		controlData.id = MODE;
		controlData.data = MODE_ACT;
	}

	if(inputData.id == STOPWATCH_RUNSTOP){
		controlData.id = STOPWATCH_RUNSTOP;
		controlData.data = STOPWATCH_ACT;
	}

	if(inputData.id == STOPWATCH_CLEAR){
		controlData.id = STOPWATCH_CLEAR;
		controlData.data = STOPWATCH_ACT;
	}
}

void Controller_Execute()
{
	Controller_Mode();
}

void Controller_Mode()
{
	   switch(modeState)
	   {
	   case TIME_WATCH :
		   if(controlData.id== MODE){
			   controlData.id = NO_CONTROL;
			   modeState = STOP_WATCH;
		   }
		   TimeWatch_Excute();
		   break;
	   case STOP_WATCH :
		   if(controlData.id == MODE){
			   controlData.id = MODE_NO_ACT;
			   modeState = TIME_WATCH;
		   }
		   StopWatch_Execute();
		   break;
	   }
}
