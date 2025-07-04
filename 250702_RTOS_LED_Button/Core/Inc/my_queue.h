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

extern Que_TypeDef qBtnLed;  //공유 메모리 선언

//void Que_Init(Que_TypeDef *q);
//int isQueFull(Que_TypeDef *q);
//int isQueEmpty(Que_TypeDef *q);
//void enQue(Que_TypeDef *q, int data);
//int deQue(Que_TypeDef *q);
//int peekQue(Que_TypeDef *q);



void MyQue_Init(Que_TypeDef *q, int type_size);
void MyQue_DeInit(Que_TypeDef *q);
int MyisQueFull(Que_TypeDef *q);
int MyisQueEmpty(Que_TypeDef *q);
bool MyenQue(Que_TypeDef *q, void *pData);
bool MydeQue(Que_TypeDef *q, void *pData);
bool MypeekQue(Que_TypeDef *q, void *pData); //que data 확인하기

#endif /* AP_INC_MY_QUEUE_H_ */
