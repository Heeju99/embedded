/*
 * queue.h
 *
 *  Created on: Jun 25, 2025
 *      Author: kccistc
 */

#ifndef AP_INC_MY_QUEUE_H_
#define AP_INC_MY_QUEUE_H_
#define QUE_SIZE 4
#include "stm32f4xx_hal.h"
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

typedef struct {
	int front;
	int rear;
	int typeSize;
	void *queData[QUE_SIZE];
}Que_TypeDef;


//void Que_Init(Que_TypeDef *q);
//int isQueFull(Que_TypeDef *q);
//int isQueEmpty(Que_TypeDef *q);
//void enQue(Que_TypeDef *q, int data);
//int deQue(Que_TypeDef *q);
//int peekQue(Que_TypeDef *q);



void Que_Init(Que_TypeDef *q, int type_size);
void Que_DeInit(Que_TypeDef *q);
int isQueFull(Que_TypeDef *q);
int isQueEmpty(Que_TypeDef *q);
bool enQue(Que_TypeDef *q, void *pData);
bool deQue(Que_TypeDef *q, void *pData);
bool peekQue(Que_TypeDef *q, void *pData); //que data 확인하기

#endif /* AP_INC_MY_QUEUE_H_ */
