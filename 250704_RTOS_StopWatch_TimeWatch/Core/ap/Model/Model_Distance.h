#ifndef AP_MODEL_MODEL_DISTANCE_H_
#define AP_MODEL_MODEL_DISTANCE_H_

#include <stdint.h>
#include "cmsis_os.h"

 typedef enum{
	 EVENT_DISTANCE_RUN,
 }eDistanceEvent_t;


 typedef struct{
 	uint16_t dst;
 }distance_t;

 extern osMailQId DistanceDataMailBox;  //시간 정보

 void Model_Distance_Init();

#endif /* AP_MODEL_MODEL_DISTANCE_H_ */
