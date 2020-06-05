/*
4-Bit 16x2 LCD Example
More information at www.aeq-web.com
*/
#define F_CPU 8000000UL
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <string.h>
#include <stdlib.h>

#include "lcd.h"
#include "ultrasound.h"


#define LED_ON PORTD |= (1<<PIND3)
#define  LED_OFF PORTD &= ~(1<<PIND3)

int runtime;			 //Timer for LCD

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


int main(){
	DDRB = 0x04;
	PORTB &= ~(1<<ultra_trig_pin);
	//hc_sr04_meas();
	LCD_Init(); //Activate LCD
	LCD_Print("ok");	//Begin writing at Line 1, Position 1
	sei();	
	UltraHandler Handler; 
	Ultrasounds Sensors[1];
	sensorInitializer(Sensors, 0, ultra_echo_pin, ultra_trig_pin,PORTB);
	while(1){
			LCD_Clear();
			char showruntime [16];
			setDistance(Sensors,0);
			itoa (Sensors[0].distance_,showruntime,10);
			LCD_Action(0xC0);		//Go to Line 2, Position 1
			LCD_Print("RUNTIME (s): ");
			LCD_Print(showruntime);
			_delay_ms(50);
	}
}

ISR(TIMER1_COMPB_vect){
	LED_OFF;
}



ISR(TIMER1_COMPA_vect){
	LED_ON;
}
