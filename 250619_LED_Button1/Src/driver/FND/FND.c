#include "FND.h"
#include "GPIO.h"

typedef struct{
	GPIO_TypeDef *GPIOx;
	uint32_t pinNum;
}SEG_TypeDef;

SEG_TypeDef seg[8] = {
		{GPIOA, 11},
		{GPIOB, 12},
		{GPIOB, 2},
		{GPIOB, 1},
		{GPIOB, 15},
		{GPIOB, 14},
		{GPIOB, 13},
		{GPIOC, 4}
};

SEG_TypeDef seg_sel[4] = {
		{GPIOC, 8},
		{GPIOC, 6},
		{GPIOC, 5},
		{GPIOA, 12}
};

void FND_Init(){
	GPIO_Init(GPIOA, 11, OUTPUT);
	GPIO_Init(GPIOB, 12, OUTPUT);
	GPIO_Init(GPIOB, 2, OUTPUT);
	GPIO_Init(GPIOB, 1, OUTPUT);
	GPIO_Init(GPIOB, 15, OUTPUT);
	GPIO_Init(GPIOB, 14, OUTPUT);
	GPIO_Init(GPIOB, 13, OUTPUT);
	GPIO_Init(GPIOC, 4, OUTPUT);
	GPIO_Init(GPIOC, 8, OUTPUT);
	GPIO_Init(GPIOC, 6, OUTPUT);
	GPIO_Init(GPIOC, 5, OUTPUT);
	GPIO_Init(GPIOA, 12, OUTPUT);

}

void FND_Write(uint32_t data, uint8_t DOT, uint8_t sel)
{
	switch(sel){
	case 0:
		GPIO_WritePin(seg_sel[0].GPIOx, seg_sel[0].pinNum, PIN_SET);
		GPIO_WritePin(seg_sel[1].GPIOx, seg_sel[1].pinNum, PIN_SET);
		GPIO_WritePin(seg_sel[2].GPIOx, seg_sel[2].pinNum, PIN_SET);
		GPIO_WritePin(seg_sel[3].GPIOx, seg_sel[3].pinNum, PIN_SET);
		break;
	case 1:
		GPIO_WritePin(seg_sel[0].GPIOx, seg_sel[0].pinNum, PIN_RESET);
		GPIO_WritePin(seg_sel[1].GPIOx, seg_sel[1].pinNum, PIN_SET);
		GPIO_WritePin(seg_sel[2].GPIOx, seg_sel[2].pinNum, PIN_SET);
		GPIO_WritePin(seg_sel[3].GPIOx, seg_sel[3].pinNum, PIN_SET);
		break;
	case 2:
		GPIO_WritePin(seg_sel[0].GPIOx, seg_sel[0].pinNum, PIN_SET);
		GPIO_WritePin(seg_sel[1].GPIOx, seg_sel[1].pinNum, PIN_RESET);
		GPIO_WritePin(seg_sel[2].GPIOx, seg_sel[2].pinNum, PIN_SET);
		GPIO_WritePin(seg_sel[3].GPIOx, seg_sel[3].pinNum, PIN_SET);
		break;
	case 3:
		GPIO_WritePin(seg_sel[0].GPIOx, seg_sel[0].pinNum, PIN_SET);
		GPIO_WritePin(seg_sel[1].GPIOx, seg_sel[1].pinNum, PIN_SET);
		GPIO_WritePin(seg_sel[2].GPIOx, seg_sel[2].pinNum, PIN_RESET);
		GPIO_WritePin(seg_sel[3].GPIOx, seg_sel[3].pinNum, PIN_SET);
		break;
	case 4:
		GPIO_WritePin(seg_sel[0].GPIOx, seg_sel[0].pinNum, PIN_SET);
		GPIO_WritePin(seg_sel[1].GPIOx, seg_sel[1].pinNum, PIN_SET);
		GPIO_WritePin(seg_sel[2].GPIOx, seg_sel[2].pinNum, PIN_SET);
		GPIO_WritePin(seg_sel[3].GPIOx, seg_sel[3].pinNum, PIN_RESET);
		break;
	case 5:
		GPIO_WritePin(seg_sel[0].GPIOx, seg_sel[0].pinNum, PIN_RESET);
		GPIO_WritePin(seg_sel[1].GPIOx, seg_sel[1].pinNum, PIN_RESET);
		GPIO_WritePin(seg_sel[2].GPIOx, seg_sel[2].pinNum, PIN_RESET);
		GPIO_WritePin(seg_sel[3].GPIOx, seg_sel[3].pinNum, PIN_RESET);
		break;
	}
	switch(data){
	case 0:
		GPIO_WritePin(seg[0].GPIOx, seg[0].pinNum, PIN_SET);
		GPIO_WritePin(seg[1].GPIOx, seg[1].pinNum, PIN_SET);
		GPIO_WritePin(seg[2].GPIOx, seg[2].pinNum, PIN_SET);
		GPIO_WritePin(seg[3].GPIOx, seg[3].pinNum, PIN_SET);
		GPIO_WritePin(seg[4].GPIOx, seg[4].pinNum, PIN_SET);
		GPIO_WritePin(seg[5].GPIOx, seg[5].pinNum, PIN_SET);
		GPIO_WritePin(seg[6].GPIOx, seg[6].pinNum, PIN_RESET);
		GPIO_WritePin(seg[7].GPIOx, seg[7].pinNum, DOT);
		break;
	case 1:
		GPIO_WritePin(seg[0].GPIOx, seg[0].pinNum, PIN_RESET);
		GPIO_WritePin(seg[1].GPIOx, seg[1].pinNum, PIN_SET);
		GPIO_WritePin(seg[2].GPIOx, seg[2].pinNum, PIN_SET);
		GPIO_WritePin(seg[3].GPIOx, seg[3].pinNum, PIN_RESET);
		GPIO_WritePin(seg[4].GPIOx, seg[4].pinNum, PIN_RESET);
		GPIO_WritePin(seg[5].GPIOx, seg[5].pinNum, PIN_RESET);
		GPIO_WritePin(seg[6].GPIOx, seg[6].pinNum, PIN_RESET);
		GPIO_WritePin(seg[7].GPIOx, seg[7].pinNum, DOT);
		break;
	case 2:
		GPIO_WritePin(seg[0].GPIOx, seg[0].pinNum, PIN_SET);
		GPIO_WritePin(seg[1].GPIOx, seg[1].pinNum, PIN_SET);
		GPIO_WritePin(seg[2].GPIOx, seg[2].pinNum, PIN_RESET);
		GPIO_WritePin(seg[3].GPIOx, seg[3].pinNum, PIN_SET);
		GPIO_WritePin(seg[4].GPIOx, seg[4].pinNum, PIN_SET);
		GPIO_WritePin(seg[5].GPIOx, seg[5].pinNum, PIN_RESET);
		GPIO_WritePin(seg[6].GPIOx, seg[6].pinNum, PIN_SET);
		GPIO_WritePin(seg[7].GPIOx, seg[7].pinNum, DOT);
		break;
	case 3:
		GPIO_WritePin(seg[0].GPIOx, seg[0].pinNum, PIN_SET);
		GPIO_WritePin(seg[1].GPIOx, seg[1].pinNum, PIN_SET);
		GPIO_WritePin(seg[2].GPIOx, seg[2].pinNum, PIN_SET);
		GPIO_WritePin(seg[3].GPIOx, seg[3].pinNum, PIN_SET);
		GPIO_WritePin(seg[4].GPIOx, seg[4].pinNum, PIN_RESET);
		GPIO_WritePin(seg[5].GPIOx, seg[5].pinNum, PIN_RESET);
		GPIO_WritePin(seg[6].GPIOx, seg[6].pinNum, PIN_SET);
		GPIO_WritePin(seg[7].GPIOx, seg[7].pinNum, DOT);
		break;
	case 4:
		GPIO_WritePin(seg[0].GPIOx, seg[0].pinNum, PIN_RESET);
		GPIO_WritePin(seg[1].GPIOx, seg[1].pinNum, PIN_SET);
		GPIO_WritePin(seg[2].GPIOx, seg[2].pinNum, PIN_SET);
		GPIO_WritePin(seg[3].GPIOx, seg[3].pinNum, PIN_RESET);
		GPIO_WritePin(seg[4].GPIOx, seg[4].pinNum, PIN_RESET);
		GPIO_WritePin(seg[5].GPIOx, seg[5].pinNum, PIN_SET);
		GPIO_WritePin(seg[6].GPIOx, seg[6].pinNum, PIN_SET);
		GPIO_WritePin(seg[7].GPIOx, seg[7].pinNum, DOT);
		break;
	case 5:
		GPIO_WritePin(seg[0].GPIOx, seg[0].pinNum, PIN_SET);
		GPIO_WritePin(seg[1].GPIOx, seg[1].pinNum, PIN_RESET);
		GPIO_WritePin(seg[2].GPIOx, seg[2].pinNum, PIN_SET);
		GPIO_WritePin(seg[3].GPIOx, seg[3].pinNum, PIN_SET);
		GPIO_WritePin(seg[4].GPIOx, seg[4].pinNum, PIN_RESET);
		GPIO_WritePin(seg[5].GPIOx, seg[5].pinNum, PIN_SET);
		GPIO_WritePin(seg[6].GPIOx, seg[6].pinNum, PIN_SET);
		GPIO_WritePin(seg[7].GPIOx, seg[7].pinNum, DOT);
		break;
	case 6:
		GPIO_WritePin(seg[0].GPIOx, seg[0].pinNum, PIN_SET);
		GPIO_WritePin(seg[1].GPIOx, seg[1].pinNum, PIN_RESET);
		GPIO_WritePin(seg[2].GPIOx, seg[2].pinNum, PIN_SET);
		GPIO_WritePin(seg[3].GPIOx, seg[3].pinNum, PIN_SET);
		GPIO_WritePin(seg[4].GPIOx, seg[4].pinNum, PIN_SET);
		GPIO_WritePin(seg[5].GPIOx, seg[5].pinNum, PIN_SET);
		GPIO_WritePin(seg[6].GPIOx, seg[6].pinNum, PIN_SET);
		GPIO_WritePin(seg[7].GPIOx, seg[7].pinNum, DOT);
		break;
	case 7:
		GPIO_WritePin(seg[0].GPIOx, seg[0].pinNum, PIN_SET);
		GPIO_WritePin(seg[1].GPIOx, seg[1].pinNum, PIN_SET);
		GPIO_WritePin(seg[2].GPIOx, seg[2].pinNum, PIN_SET);
		GPIO_WritePin(seg[3].GPIOx, seg[3].pinNum, PIN_RESET);
		GPIO_WritePin(seg[4].GPIOx, seg[4].pinNum, PIN_RESET);
		GPIO_WritePin(seg[5].GPIOx, seg[5].pinNum, PIN_RESET);
		GPIO_WritePin(seg[6].GPIOx, seg[6].pinNum, PIN_RESET);
		GPIO_WritePin(seg[7].GPIOx, seg[7].pinNum, DOT);
		break;
	case 8:
		GPIO_WritePin(seg[0].GPIOx, seg[0].pinNum, PIN_SET);
		GPIO_WritePin(seg[1].GPIOx, seg[1].pinNum, PIN_SET);
		GPIO_WritePin(seg[2].GPIOx, seg[2].pinNum, PIN_SET);
		GPIO_WritePin(seg[3].GPIOx, seg[3].pinNum, PIN_SET);
		GPIO_WritePin(seg[4].GPIOx, seg[4].pinNum, PIN_SET);
		GPIO_WritePin(seg[5].GPIOx, seg[5].pinNum, PIN_SET);
		GPIO_WritePin(seg[6].GPIOx, seg[6].pinNum, PIN_SET);
		GPIO_WritePin(seg[7].GPIOx, seg[7].pinNum, DOT);
		break;
	case 9:
		GPIO_WritePin(seg[0].GPIOx, seg[0].pinNum, PIN_SET);
		GPIO_WritePin(seg[1].GPIOx, seg[1].pinNum, PIN_SET);
		GPIO_WritePin(seg[2].GPIOx, seg[2].pinNum, PIN_SET);
		GPIO_WritePin(seg[3].GPIOx, seg[3].pinNum, PIN_SET);
		GPIO_WritePin(seg[4].GPIOx, seg[4].pinNum, PIN_RESET);
		GPIO_WritePin(seg[5].GPIOx, seg[5].pinNum, PIN_SET);
		GPIO_WritePin(seg[6].GPIOx, seg[6].pinNum, PIN_SET);
		GPIO_WritePin(seg[7].GPIOx, seg[7].pinNum, DOT);
		break;
	}
}
