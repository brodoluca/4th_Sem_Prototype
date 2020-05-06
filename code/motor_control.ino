  #include <SPI.h>
  /* Motor Pins*/
  #define MotorBackInput1 4
  #define MotorBackInput2 5
  #define MotorBackEnabler 6
  //-------//
  #define MotorFrontInput1 8
  #define MotorFrontInput2 9
  #define MotorFrontEnabler 10
  //-------------------------//

  int joyPin1 = 0;                 // slider variable connecetd to analog pin 0
  int joyPin2 = 1; 

  int value1;
  int value2=0;
  int SpeedTurn =230;    // Can be edited, max speed 255




//DDRD = B11111110;



// Primary Initiation
void setup() {
  pinMode(MISO, OUTPUT);
  pinMode(MotorBackInput1, OUTPUT);
  pinMode(MotorBackInput2, OUTPUT);
  pinMode(MotorBackEnabler, OUTPUT);
  pinMode(MotorFrontInput1, OUTPUT);
 pinMode(MotorFrontInput2, OUTPUT);
  pinMode(MotorFrontEnabler, OUTPUT);
  pinMode(joyPin1, INPUT);
  pinMode(joyPin2, INPUT);
  Serial.begin(9600);
  // turn on SPI in slave mode
  SPCR |= _BV(SPE);

  // turn on interrupts
  SPI.attachInterrupt();
}

ISR (SPI_STC_vect)
{
  char c = SPDR;
  value1=(int)c;
  SPDR = c;
}  // end of interrupt service routine (ISR) for SPI
bool g=true;
void loop() {
  
  
  digitalWrite (MotorBackInput1,HIGH);
 
  digitalWrite(MotorBackInput2,LOW);
  analogWrite (MotorBackEnabler, 255);
   if(g){
      digitalWrite (MotorFrontInput1,HIGH);
      digitalWrite(MotorFrontInput2,LOW);
      analogWrite (MotorFrontEnabler, value1);
   }else{
      digitalWrite (MotorFrontInput1,LOW);
    digitalWrite(MotorFrontInput2,HIGH);
    analogWrite (MotorFrontEnabler, 
    value1);
   }
g=!g;
delay(1000);
}


int SpeedDefiner(int val){
  return  map(val, 0, 1023, 0, 256);
}
