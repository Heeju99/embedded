/*
 * Model_TimeWatch.c
 *
 *  Created on: Jul 4, 2025
 *      Author: kccistc
 */

#include "Model_TimeWatch.h"

osMailQId timeWatchDataMailBox;  //시간 정보
osMailQDef(timeWatchDataQueue, 4, timeWatch_t);

void Model_timeWatch_Init()
{
	 timeWatchDataMailBox = osMailCreate(osMailQ(timeWatchDataQueue), NULL);
}
