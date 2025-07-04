#include "FND_prof.h"

enum {DIGIT_1, DIGIT_10, DIGIT_100, DIGIT_1000};

typedef struct {
   GPIO_TypeDef *GPIOx;
   uint32_t pinNum;
}FND_TypeDef;

FND_TypeDef fndDigitCom[4] =
{
      {GPIOA, 12},// digit_1    D4
      {GPIOC, 5}, // digit_10   D3
      {GPIOC, 6}, // digit_100  D2
      {GPIOC, 8}  // digit_1000 D1
};

FND_TypeDef fndPin[8] =
{
      {GPIOA, 11}, // A
      {GPIOB, 12}, // B
      {GPIOB, 2},  // C
      {GPIOB, 1},  // D
      {GPIOB, 15}, // E
      {GPIOB, 14}, // F
      {GPIOB, 13}, // G
      {GPIOC, 4}   // DP
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

void FND_Init()
{
   for(int i=0; i<4; i++){
      GPIO_Init(fndDigitCom[i].GPIOx, fndDigitCom[i].pinNum, OUTPUT);
   }
   for(int i=0; i<8; i++){
      GPIO_Init(fndPin[i].GPIOx, fndPin[i].pinNum, OUTPUT);
   }
}

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
      //FND_Dot(uint8_t DOT);
      FND_DispOn(digitPos);
      break;
   case DIGIT_10:
      FND_DispOffALL();
      FND_DispDigit(fndDispNum/10%10,dot2);
      //FND_Dot(uint8_t DOT);
      FND_DispOn(digitPos);
      break;
   case DIGIT_100:
      FND_DispOffALL();
      FND_DispDigit(fndDispNum/100%10,dot3);
      //FND_Dot(uint8_t DOT);
      FND_DispOn(digitPos);
      break;
   case DIGIT_1000:
      FND_DispOffALL();
      FND_DispDigit(fndDispNum/1000%10,dot4);
      //FND_Dot(uint8_t DOT);
      FND_DispOn(digitPos);
      break;
   }
}

//additional
void FND_Dot(uint8_t dp1, uint8_t dp2, uint8_t dp3, uint8_t dp4)
{
     dot1 = dp1;
     dot2 = dp2;
     dot3 = dp3;
     dot4 = dp4;
}



///

void FND_DispOn(int fndPos)
{
   // GPIO_WritePin(GPIOx, PiNum, RESET); - Cathode type(Anode type은 반대)
      GPIO_WritePin(fndDigitCom[fndPos].GPIOx, fndDigitCom[fndPos].pinNum, PIN_SET);
}

void FND_DispOffALL()
{
   for(int i=0; i<4; i++){
      GPIO_WritePin(fndDigitCom[i].GPIOx, fndDigitCom[i].pinNum, PIN_RESET);
   }
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
			 GPIO_WritePin(fndPin[i].GPIOx, fndPin[i].pinNum, PIN_RESET);    // data = 0 -> offCathode type(Anode type은 반대)
		  }
		  else{
			 GPIO_WritePin(fndPin[i].GPIOx, fndPin[i].pinNum, PIN_SET);      // data = 1 -> onCathode type(Anode type은 반대)
		  }
	  }
	  else
	  {
		  if(!(segFont[digit] & (1<<i))){
			 GPIO_WritePin(fndPin[i].GPIOx, fndPin[i].pinNum, PIN_SET);    // data = 0 -> offCathode type(Anode type은 반대)
		  }
		  else{
			 GPIO_WritePin(fndPin[i].GPIOx, fndPin[i].pinNum, PIN_RESET);      // data = 1 -> onCathode type(Anode type은 반대)
		  }
	   }

   }
}

