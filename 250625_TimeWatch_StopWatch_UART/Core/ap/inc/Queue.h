#ifndef AP_INC_QUEUE_H_
#define AP_INC_QUEUE_H_

#define QUEUE_SIZE  4 //배열의 길이

typedef struct{
	int front ;
	int rear ;
	int QueueData[QUEUE_SIZE];
}Queue_typeDef;

void Queue_Init(Queue_typeDef *q);
int isQueueFull(Queue_typeDef *q);
int isQueueEmpty(Queue_typeDef *q);
void EnQueue(Queue_typeDef *q, int data);
int DeQueue(Queue_typeDef *q);
int peekQueue(Queue_typeDef *q);

#endif /* AP_INC_QUEUE_H_ */
