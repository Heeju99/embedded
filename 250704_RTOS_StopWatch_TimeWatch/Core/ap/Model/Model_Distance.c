#include "Model_Distance.h"

osMailQId DistanceDataMailBox;  //시간 정보
osMailQDef(DistanceDataQueue, 4, distance_t);

void Model_Distance_Init()
{
	DistanceDataMailBox = osMailCreate(osMailQ(DistanceDataQueue), NULL);
}
