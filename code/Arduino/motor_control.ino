/*
  Motor Pins:
  #define MotorBackInput1 9
  #define MotorBackInput2 10
  #define MotorBackEnabler 3
  //--------------------------//
  #define MotorFrontInput1 5
  #define MotorFrontInput2 6
  #define MotorFrontEnabler 4
*/


#include <SPI.h>

int speedDriving = 0;
int speedTurning = 0;

/*
int joyPin1 = 0;                 // slider variable connecetd to analog pin 0
int joyPin2 = 1; 
*/


// Primary Initiation
void setup() {

	// Digital 0-7 are set as outputs
	DDRD = B11111111;
	// Digital 8-13 are set as outputs, pins 6,7 are ignored |B000000(00)|
	DDRB = B11111111;
	// Analog 0,1 are set as inputs, rest as outputs
	DDRC = B11111100;

	Serial.begin(9600);

	// turn on SPI in slave mode
	SPCR |= _BV(SPE);

	// turn on interrupts
	SPI.attachInterrupt();

	bool g = true;

}


ISR (SPI_STC_vect) {

	char c = SPDR;
	speedDriving = (int)c;
	SPDR = c;

}  // end of interrupt service routine (ISR) for SPI


void loop() {
  
	// Power the back motors on
	PORTB = B00001000;
	// analogWrite works best with PWM, its execution speed wont be a handicap
	analogWrite (MotorBackEnabler, speedDriving);

	if(g){
		// Digital port 5 is set to HIGH
		PORTD = B00100000;
		analogWrite (MotorFrontEnabler, speedTurning);
	}

	else{
		// Digital port 5 is set to HIGH
		PORTD = B01000000;
		analogWrite (MotorFrontEnabler, speedTurning);
	}

	g=!g;
	delay(1000);

}


int SpeedDefiner(int val) {

  return  map(val, 0, 1023, 0, 256);

}
