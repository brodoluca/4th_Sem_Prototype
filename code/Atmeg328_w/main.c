#define F_CPU 8000000UL
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdlib.h>

#include "lcd.h"
#include "ultrasound.h"
#include "LightBeamSensor.h"


void timer_frequency(uint8_t freq);
void PWM_init(uint8_t freq);




Ultrasounds Sensors[1];
LightSensor light;

char imp[16];
int main(){
	sei(); //attach interrupt	
	LCD_Init(); //Activate LCD
	LCD_Print("ok");	//Begin writing at Line 1, Position 1
	
	//USART_Init(MYUBRR);
	sensorInitializer(Sensors, 0, ultra_echo_pin, ultra_trig_pin,&PORTB,PinB, &DDRB);
	LightSensorInitializer(&light, &PORTD, PD0);
	
	while(1){
			char showruntime [16];		
			LCD_Clear();
			LCD_Print(light.buffer_);
			_delay_ms(12);
			setDistance(Sensors,0);
			itoa (Sensors[0].distance_,showruntime,10);
			LCD_Action(0xC0);		//Go to Line 2, Position 1
			LCD_Print("Distance: ");
			LCD_Print(showruntime);
			_delay_ms(50);
	}
}


void timer_frequency(uint8_t freq){
	
	TCCR1B |= (1<<CS12) | (1<<WGM12);
	TIMSK1 |= (1<<OCIE1A);
	OCR1A = 104;//(F_CPU/(freq*2*256)-1);
	
}

void PWM_init(uint8_t freq){
	TCCR1B |= (1<<CS10) | (1<<WGM12);
	TIMSK1 |= (1<<OCIE1A) | (1<<OCIE1B);
	OCR1A = (F_CPU/(freq*2*1000*1)-1);
	OCR1B = (F_CPU/(freq*2*1000*1)-1)-(F_CPU/(freq*10*10*10*2*1)-1)*1/100;
}





ISR(TIMER1_COMPB_vect){
	
}


ISR(TIMER1_COMPA_vect){
	
}


ISR(USART_RX_vect)
{
	//defien temp value for storing received byte
	//Store data to temp
	if (light.counter_ == 15)
		light.counter_=0;
	light.buffer_[light.counter_++] = UDR0;
	setPosition(&light);
}