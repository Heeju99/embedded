#include "FND_prof.h"

enum {DIGIT_1, DIGIT_10, DIGIT_100, DIGIT_1000};

typedef struct {
   GPIO_TypeDef *GPIOx;
   uint32_t pinNum;
}FND_TypeDef;

FND_TypeDef fndDigitCom[4] =
{
      {GPIOA, GPIO_PIN_12},// digit_1    D4
      {GPIOC, GPIO_PIN_5}, // digit_10   D3
      {GPIOC, GPIO_PIN_6}, // digit_100  D2
      {GPIOC, GPIO_PIN_8}  // digit_1000 D1
};

FND_TypeDef fndPin[8] =
{
      {GPIOA, GPIO_PIN_11}, // A
      {GPIOB, GPIO_PIN_12}, // B
      {GPIOB, GPIO_PIN_2},  // C
      {GPIOB, GPIO_PIN_1},  // D
      {GPIOB, GPIO_PIN_15}, // E
      {GPIOB, GPIO_PIN_14}, // F
      {GPIOB, GPIO_PIN_13}, // G
      {GPIOC, GPIO_PIN_4}   // DP
};

//static void FND_DispOff(int fndPos);
static void FND_DispOn(int fndPos);
static void FND_DispDigit(uint16_t digit, uint16_t dot);
static void FND_DispOffALL();

static uint16_t fndDispNum = 0; // FND display main data(외부 파일에서 접근XXX)

uint16_t dot1 = 0xff;
uint16_t dot2 = 0xff;
uint16_t dot3 = 0xff;
uint16_t dot4 = 0xff;

// write fndDisNum
void FND_WriteData(uint16_t data)
{
   fndDispNum = data;
}
// read fndDisNum
uint16_t FND_ReadData()
{
   return fndDispNum;
}
// display fndDisNum
void FND_DisplayData()
{
   static int digitPos = 0; // digit 자리 표현 변수
   // interrupt 발생하면 한 자리씩 출력한다.
   digitPos = (digitPos + 1) % 4; // 0~3까지 출력 반복

   switch(digitPos)
   {
   // 계속 켜져있으면 FND 켜져있을 때 데이터가 바뀌면서 잔상이 생긴다
   // -> FND를 끄고 데이터를 바꾸고 다시 킨다.
   case DIGIT_1:
      FND_DispOffALL();
      FND_DispDigit(fndDispNum%10,dot1);
      FND_DispOn(digitPos);
      break;
   case DIGIT_10:
      FND_DispOffALL();
      FND_DispDigit(fndDispNum/10%10,dot2);
      FND_DispOn(digitPos);
      break;
   case DIGIT_100:
      FND_DispOffALL();
      FND_DispDigit(fndDispNum/100%10,dot3);
      FND_DispOn(digitPos);
      break;
   case DIGIT_1000:
      FND_DispOffALL();
      FND_DispDigit(fndDispNum/1000%10,dot4);
      FND_DispOn(digitPos);
      break;
   }
}


void FND_DispOn(int fndPos)
{
   // GPIO_WritePin(GPIOx, PiNum, RESET); - Cathode type(Anode type은 반대)
      HAL_GPIO_WritePin(fndDigitCom[fndPos].GPIOx, fndDigitCom[fndPos].pinNum, SET);
}

void FND_DispOffALL()
{
   for(int i=0; i<4; i++){
      HAL_GPIO_WritePin(fndDigitCom[i].GPIOx, fndDigitCom[i].pinNum, RESET);
   }
}

void FND_Dot(uint8_t dp1, uint8_t dp2, uint8_t dp3, uint8_t dp4)
{
     dot1 = dp1;
     dot2 = dp2;
     dot3 = dp3;
     dot4 = dp4;
}

void FND_DispDigit(uint16_t digit, uint16_t dot)
{
   const uint8_t segFont[10] = {
         0x3F, // 0
         0x06, // 1
         0x5B, // 2
         0x4F, // 3
         0x66, // 4
         0x6D, // 5
         0x7D, // 6
         0x07, // 7
         0x7F, // 8
         0x6F  // 9
   };

   const uint8_t segFontDP[10] = {
		   0xC0,
		   0xF9,
		   0xA4,
		   0xB0,
		   0x99,
		   0x92,
		   0x82,
		   0xF8,
		   0x80,
		   0x90,
   };


   for(int i=0; i<8; i++){
	  if(i == 7){
		  if(!((segFontDP[digit] & ~dot) & (1<<i))){
			  HAL_GPIO_WritePin(fndPin[i].GPIOx, fndPin[i].pinNum, RESET);    // data = 0 -> offCathode type(Anode type은 반대)
		  }
		  else{
			  HAL_GPIO_WritePin(fndPin[i].GPIOx, fndPin[i].pinNum, SET);      // data = 1 -> onCathode type(Anode type은 반대)
		  }
	  }
	  else
	  {
		  if(!(segFont[digit] & (1<<i))){
			  HAL_GPIO_WritePin(fndPin[i].GPIOx, fndPin[i].pinNum, SET);    // data = 0 -> offCathode type(Anode type은 반대)
		  }
		  else{
			 HAL_GPIO_WritePin(fndPin[i].GPIOx, fndPin[i].pinNum, RESET);      // data = 1 -> onCathode type(Anode type은 반대)
		  }
	   }

   }
}

