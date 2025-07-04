#include "Queue.h"

void Queue_Init(Queue_typeDef *q)
{
	q->front = 0;
	q->rear = 0;
}


int isQueueFull(Queue_typeDef *q)
{
	return q->front == ((q->rear + 1) % QUEUE_SIZE);
}

int isQueueEmpty(Queue_typeDef *q)
{
	return q->front == q->rear;
}

void EnQueue(Queue_typeDef *q, int data)
{
	if(isQueueFull(q)){
		return;
	}
	q->QueueData[q->rear] = data;
	q->rear = (q->rear+1) % QUEUE_SIZE;
}

int DeQueue(Queue_typeDef *q)
{
	if(isQueueEmpty(q)){
		return;
	}
	int data = q->QueueData[q->front];
	q->front = (q->front+1) % QUEUE_SIZE;
	return data;
}


int peekQueue(Queue_typeDef *q) //제일 앞에 있는 요소를 확인
{
	if(isQueueEmpty(q)){
		return;
	}

	return q->QueueData[q->front];
}
