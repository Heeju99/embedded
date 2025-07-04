#include "Security.h"

extern inputData_TypeDef controlData;

typedef enum {RUN, WARNING}securityState_t;

static securityState_t securityState = RUN;
static ultra_t ultra = {0, 0};

void Security_RunCallBack()
{
	if (securityState == RUN) {
		Ultra_RunCallBack();
	}
}

void Security_Excute()
{
	switch (securityState)
	{
	case RUN:
		Security_Run();
		break;

	case WARNING:
		Security_Warning();
		break;
	}
	Presenter_UL_OutData(ultra);
}

void Security_Run()
{
	ultra.flag = 0;
	if (ultra.ultra_data < 10) {
		securityState = WARNING;
	}
}

void Security_Warning()
{
    uint8_t firstEntry = 1;
    uint32_t warningStartTick = 0;

    if (firstEntry) {
        ultra.flag = 1;
        warningStartTick = HAL_GetTick();
        firstEntry = 0;
    }

    if (HAL_GetTick() - warningStartTick >= 3000) {
        securityState = RUN;
        firstEntry = 1;  // 초기화
    }
}

