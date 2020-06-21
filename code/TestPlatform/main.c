#define F_CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdlib.h>

#include "lcd.h"
#include "ultrasound.h"
#include "LightBeamSensor.h"
#include "motorHandler.h"

#define IRpin_PIN      PIND
#define IRpin          2
#define MAXPULSE 400
#define RESOLUTION 20

unsigned char temp;

Ultrasounds Sensors[1];
LightSensor light;


char imp[16];
uint16_t pulses[100]; 
uint8_t currentpulse = 0;
uint16_t highpulse =0;


void look_p(LightSensor* Light);

void forw();
void stope();
void left();
void str();
void back();
void obstacle();
Motor *bm;
Motor *fm;
backMotor *backM;
frontMotor *frontM;

int main(){
	DDRC = 0x3E;
	
	EIMSK = 0b00000001;
	EICRA = 0b00000001;

	PCMSK1 |= (1<<PCINT8);
	PCICR |= (1<<PCIE1);  
		
	 DDRB |= (1 << DDB3);
   // PB3 as output
   OCR2A = 128;
   // set PWM for 50% duty cycle
   TCCR2A |= (1 << COM2A1);
   // set non-inverting mode
   TCCR2A |= (1 << WGM21) | (1 << WGM20);
   // set fast PWM Mode
   TCCR2B |= (1 << CS21);
   // set prescaler to 8 and starts PWM
	
	
	initialize(fm, 4, 5, NO);
	initialize(bm, 2, 3, 1);
	back_init(backM, bm);
	front_init(frontM, fm);
	
	sei(); //attach interrupt	
	LCD_Init(); //Activate LCD
	LCD_Print("ok");	//Begin writing at Line 1, Position 1

	//USART_Init(MYUBRR);
	sensorInitializer(Sensors, 0, ultra_echo_pin, ultra_trig_pin,&PORTB,PinB, &DDRB);
	
	
	
	LightSensorInitializer(&light, &PORTD, PD2);
	
	
	while(1){
			LCD_Clear();
			char showruntime [16];		
			char print [16];
			//look_p(&light);
			//itoa (light.buffer_[light.counter_],print,2);
			//LCD_Print(print);
			//LightSensorReset(&light);
			setDistance(Sensors,0);
			itoa (Sensors[0].distance_,showruntime,10);
			LCD_Action(0xC0);		//Go to Line 2, Position 1
			LCD_Print("Distance: ");
			LCD_Print(showruntime);
			if (Sensors[0].distance_<30){
				//backM->forward(backM, 200);
				frontM->leftM(frontM);
				forw();
			}else{
				frontM->rightM(frontM);
				stope();
				
			}
			_delay_ms(1000);
	}
}

void obstacle(){
	forw();
	right();
	while(Sensors[0].activated_){
		setDistance(Sensors, 0);
	}
	back();
	left();
	_delay_ms(1000);
	right();
	forw();
	_delay_ms(1000);
	str();
	
}


void forw(){
	PORTC |= (1<<PC3) | (1<<PC1);
    PORTC &= ~(1<<PC2);  
	OCR2A = 160;                 
}

void back(){
	PORTC |= (1<<PC2) | (1<<PC1);
    PORTC &= ~(1<<PC3);                      
}


void stope(){
	PORTC &=  ~(1<<PC1);
	OCR2A = 0;
}

void left(){
	PORTC |= (1<<PC5); 
	PORTC &= ~(1<<PC4); 
}
void right(){
	PORTC |= (1<<PC4); 
	PORTC &= ~(1<<PC5); 
}

void str(){
	PORTC &=~((1<<PC5) | (1<<PC4)); 
}


void look_p(LightSensor* light){
unsigned int high_c=0;
light->counter_++;
	 light->pulse_counter_ =0;
	 while (IRpin_PIN & (1 << IRpin)) {
		 light->pulse_counter_++;
		_delay_us(RESOLUTION);
		 if (( light->pulse_counter_ >= MAXPULSE) && (light->counter_ != 0)) {		
			 break;
		 }
	 }
	  
	
	 if ((light->pulse_counter_+ high_c)!=144)
		light->buffer_[light->counter_] = light->pulse_counter_+ high_c;
	//printC('f');
	 high_c=0;

}



ISR(INT0_vect){

	char s[32]; //utility array of char for printing on screen
	//unsigned int high_c=0;
	light.counter_++;
	 light.pulse_counter_ =0;
	 while (IRpin_PIN & (1 << IRpin)) { //while the sensor is active
		 light.pulse_counter_++; //count up the amount of time in u_s according to resolution
		_delay_us(RESOLUTION);
		 if (( light.pulse_counter_ >= MAXPULSE) && (light.counter_ != 0)) {	//in case they are more than max value	
			break;
		 }
	 }
	 
	 //	if ((light.pulse_counter_)!=144)
		//light.buffer_[light.counter_] = light.pulse_counter_;
	itoa(light.buffer_[light.counter_], s, 10);

	LCD_Action (0x80);
	LCD_Print(s);
}


ISR (PCINT8_vect)
{
	stope();
}


