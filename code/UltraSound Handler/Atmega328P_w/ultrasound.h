/*
 * IncFile1.h
 *
 * Created: 05/06/2020 16:13:54
 *  Author: utente
 */ 


#ifndef INCFILE1_H_
#define INCFILE1_H_

#include "assert.h"


#define Initializer 0b0000000000000000
/*_____Defining position of every sensor________*/
#define FrontLeftP0 0
#define FrontLeftP1 1
#define FrontLeftP2 2

#define FrontRightP0 3
#define FrontRightP1 4
#define FrontRightP2 5
//spare 2 bits, 6 and 7
#define BackLeftP0 8
#define BackLeftP1 9
#define BackLeftP2 10


#define BackRightP0 11
#define BackRightP1 12
#define BackRightP2 13

/*________________________________________________*/


#define ultra_echo_pin 1
#define ultra_trig_pin 2
volatile unsigned int hc_sr04_cnt = 0;

volatile unsigned short echo_duration;

enum bool{
	true = 1,
	false = 0
};

/*___________________Type Declaration_____________*/
typedef enum PinCh{
	PinB = 1,
	PinC = 2,
	PinD = 3,
}PinCh;

typedef struct Ultrasounds {
    int  activated_ : 1;
    unsigned int distance_;
	unsigned short echo_pin_;
	unsigned short trig_pin_;
	uint8_t *port_;
	PinCh pinout_;

} Ultrasounds;


typedef union UltraHandler{
    struct USS{
        unsigned char USSF : 8;
        unsigned char USSB : 8;
    }USS;
    unsigned int Status : 16;    
}UltraHandler;


/*____________Initializer______________*/
Ultrasounds sensorInitializer(Ultrasounds* Sensor, const int Position, const int EchoPin, const int TrigPin,uint8_t *Port, PinCh pin){
	//assert(Sensor[Position].port_ != PORTA|| Sensor[Position].port_ !=PORTB|| Sensor[Position].port_ !=PORTC|| Sensor[Position].port_ !=PORTD );
	Sensor[Position].trig_pin_	=	TrigPin;
	Sensor[Position].echo_pin_	=	EchoPin;
	Sensor[Position].distance_  =   false;
	Sensor[Position].activated_ =	false;
	Sensor[Position].port_ = Port;
	Sensor[Position].pinout_ = pin;
	return Sensor[Position];
}

/*____________Service Functions______________*/

/* Setting Functions*/
void setSensorLow(union UltraHandler *Handler, Ultrasounds* Sensor, const int Position){
    assert(Position!= 6 || Position!= 7 || Position!= 14 || Position!= 15 || Position<15);
    Handler->Status&=~(Sensor[Position].activated_<<Position);
    Sensor[Position].activated_ = false;
}

void setSensorHigh(union UltraHandler* Handler, Ultrasounds* Sensor, const int Position){
    assert(Position!= 6 || Position!= 7 || Position!= 14 || Position!= 15 || Position<15);
    Sensor[Position].activated_	= true;
    Handler->Status |= 1<<Position;
    
}


void setDistance( Ultrasounds* Sensor, const int Position){
    assert(Position!= 6 || Position!= 7 || Position!= 14 || Position!= 15 || Position<15);
    hc_sr04_cnt = 0;
    // transmit at least 10 us trigger pulse to the HC-SR04 Trig Pin.
    *Sensor[Position].port_ |=  (1<<Sensor[Position].trig_pin_);
    _delay_us( 10 );
    *Sensor[Position].port_  &= ~(1<<Sensor[Position].trig_pin_);
	switch(Sensor[Position].pinout_){
		case PinB:
						while((PINB  & (1 << Sensor[Position].echo_pin_)) != (1 << Sensor[Position].echo_pin_));
						while((PINB & (1 << Sensor[Position].echo_pin_)) == (1 << Sensor[Position].echo_pin_)){
								hc_sr04_cnt++;
								_delay_us(1);
						}
						break;
		case PinC:
						while((PINC  & (1 << Sensor[Position].echo_pin_)) != (1 << Sensor[Position].echo_pin_));
						while((PINC & (1 << Sensor[Position].echo_pin_)) == (1 << Sensor[Position].echo_pin_)){
							hc_sr04_cnt++;
							_delay_us(1);
						}
						break;
		case PinD:
						while((PINC  & (1 << Sensor[Position].echo_pin_)) != (1 << Sensor[Position].echo_pin_));
						while((PINC & (1 << Sensor[Position].echo_pin_)) == (1 << Sensor[Position].echo_pin_)){
							hc_sr04_cnt++;
							_delay_us(1);
						}
						break;
	}
	
	
	
	
	
    
    Sensor[Position].distance_= hc_sr04_cnt/3;   
}




/*Get function*/


int getSensor(Ultrasounds* Sensor, const int Position){
    return Sensor[Position].activated_;
}


float getDistance(Ultrasounds* Sensor, const int Position){
    return Sensor[Position].distance_;
}

int isFrontActivated(UltraHandler  Handler){
    if (Handler.USS.USSF)
        return 1;
    return 0;
}

int isBackActivated(UltraHandler Handler){
    if (Handler.USS.USSB)
        return 1;
    return 0;
}

int isFrontLeftActivated(UltraHandler Handler){
    if (Handler.USS.USSF & 0b00000111)
        return 1;
    return 0;
    
}

int isFrontRightActivated(UltraHandler Handler){
    if (Handler.USS.USSF & 0b00111000)
        return 1;
    return 0;
}

int isBackLeftActivated(UltraHandler Handler){
    if (Handler.USS.USSB & 0b00000111)
        return 1;
    return 0;
}

int isBackRightActivated(UltraHandler Handler){
    if (Handler.USS.USSB & 0b00111000)
        return 1;
    return 0;
}



#endif /* INCFILE1_H_ */