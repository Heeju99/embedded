#include "Controller.h"

typedef enum {S_TIME_WATCH, S_STOP_WATCH} watchMode_state_t;

static watchMode_state_t modeState = TIME_WATCH;
inputData_TypeDef controlData = {0};

static void Controller_Mode();

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
	   case S_TIME_WATCH :
		   if(controlData.id== MODE){
			   controlData.id = NO_CONTROL;
			   modeState = S_STOP_WATCH;
		   }
		   TimeWatch_Excute();
		   break;
	   case S_STOP_WATCH :
		   if(controlData.id == MODE){
			   controlData.id = MODE_NO_ACT;
			   modeState = S_TIME_WATCH;
		   }
		   StopWatch_Execute();
		   break;
	   }
}
