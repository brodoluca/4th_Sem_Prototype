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

  #define END_COMMUNICATION 'F'



  
  union{
          int speedInt;
          unsigned char  speedChar [2];
  } speedBuffer;



  enum MotorDef{
    LEFT = 'L',
    RIGHT = 'R',
    BACK = 'B'
  };
  
  unsigned char commandChar;
  unsigned char controlChar;
  
  





byte marker =0;
unsigned char dat;

// Primary Initiation
void setup() {
  pinMode(MISO, OUTPUT);
  pinMode(MotorBackInput1, OUTPUT);
  pinMode(MotorBackInput2, OUTPUT);
  pinMode(MotorBackEnabler, OUTPUT);
  pinMode(MotorFrontInput1, OUTPUT);
  pinMode(MotorFrontInput2, OUTPUT);
  pinMode(MotorFrontEnabler, OUTPUT);
  Serial.begin(9600);

  
  DDRH = B11111111;
  DDRG = B11111111;
  

  
  // turn on SPI in slave mode
  SPCR |= _BV(SPE);

}


void loop() {

  if((SPSR & (1 << SPIF)) != 0)
  {
    motorController();
  }
 
}




void motorController(){
  switch(marker){
    
      case 0:
             dat = SPDR;
              if (dat == 'c'){
                  SPDR = 'a';
                  Serial.println("ok");
                  marker++;
               } 
               break;  
                    
      case 1:
              
              commandChar= SPDR;
              marker++;
              break;  
       case 2:
              speedBuffer.speedChar[0] = SPDR;
              marker++;
              break;
        case 3:
                speedBuffer.speedChar[1] = SPDR;
                //Serial.print(resultBuffer.resultInt);
                switch(commandChar){
                      case BACK:

                            //PORTG = B00100000;//PIN 4 ARDUINO MEGA
                           digitalWrite (MotorBackInput1,HIGH);
                            digitalWrite(MotorBackInput2,LOW); 
                            analogWrite (MotorBackEnabler, (int)speedBuffer.speedInt); 
                            break;    
                        case LEFT:
                              //PORTG = B00100000;
                              //PORTH = B00100000;
                             digitalWrite (MotorFrontInput1,HIGH);
                             digitalWrite(MotorFrontInput2,LOW);
                             analogWrite (MotorFrontEnabler, (int)speedBuffer.speedInt);
                             break;
                        case RIGHT:
                              //PORTG = B00100000;
                             //PORTH = B01000000;
                             digitalWrite (MotorFrontInput1,LOW);
                             digitalWrite(MotorFrontInput2,HIGH);
                             analogWrite (MotorFrontEnabler, (int)speedBuffer.speedInt);
                             break;
                 }
                marker++;
                break;
         case 4:
              controlChar = SPDR;
              SPDR = END_COMMUNICATION;
              marker=0;
              break;         
        }
}
