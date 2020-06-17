/*
 * LightBeamSensor.h
 *
 * Created: 06/06/2020 12:34:23
 *  Author: Luca Brodo
 */


#ifndef LIGHTBEAMSENSOR_H_
#define LIGHTBEAMSENSOR_H_


#define FOSC 16000000
#define BAUD 9600
#define MYUBRR FOSC/16/BAUD -1


/*__________________Housholding typedef Declaration______________ */
typedef enum Position{
	NORTH = 140,
	EAST = 150,
	SOUTH = 160,
	WEST =170,
	EMPTY
}Position;



/*_______________________ACTUAL STRUCT TO USE___________________*/
typedef struct LightSensor{
	int status_ : 1; //to simulate boolean, status will be either 1 or zero
	Position position_;
	uint8_t port_;
	unsigned short pin_;
	unsigned char buffer_[14];
	unsigned int counter_ : 4;
	unsigned int buffer_dimension_ :4;
	unsigned int pulse_counter_;
} LightSensor;



/*_______________API_____________________________*/


void LightSensorInitializer(LightSensor* LightSensor, uint8_t *Port, unsigned short Pin){
	LightSensor->status_=0;
	LightSensor->position_=EMPTY;
	LightSensor->pin_ = Pin;
	LightSensor->port_ = Port;
	LightSensor->counter_ = 0;
	LightSensor->buffer_dimension_=15;
	LightSensor->pulse_counter_=0;
	//USART_Init(MYUBRR);
}
void LightSensorReset(LightSensor* LightSensor){
	LightSensor->status_=0;
	LightSensor->position_=EMPTY;
	LightSensor->counter_ = 0;
	LightSensor->pulse_counter_=0;
	for (int i=0;i<LightSensor->buffer_dimension_;i++){
		LightSensor->buffer_[i]=0;
	}
}


/*_______________Service Functions_____________________________*/


/************************************************************************/
/*                     USART                                            */
/************************************************************************/
void USART_Init(unsigned int ubrr){
	/*Set baud rate*/
	UBRR0H = (unsigned char)(ubrr>>8);
	UBRR0L = (unsigned char)(ubrr);
	/*Enable receiver and transmitter*/
	UCSR0B = (1<<RXEN0) |(1<<RXCIE0);
	/*Set frame format = 8bit, 1 stop bit*/
	UCSR0C = (1<<UCSZ01)|(1<<UCSZ00);
}
unsigned char USART_receive(void){
	while(!(UCSR0A & (1<<RXC0))); //wait for data to be received
	return UDR0; // get data from the usart data register
}
void USART_transmit(unsigned char data){
	while(!(UCSR0A & (1<<UDRE0))); //wait for empty buffer
	 UDR0 = data; // set data from the usart data register
}


/************************************************************************/
/*                                                                      */
/************************************************************************/



void setHigh(LightSensor* LightSensor){
	LightSensor->status_=1;
}


void setLow(LightSensor* LightSensor){
	LightSensor->status_=0;
}


void setPosition(LightSensor* LightSensor){
	LightSensor->position_=LightSensor->buffer_[LightSensor->counter_];
}



/*____________________Get functions_______________________________*/

int getStatus(LightSensor* LightSensor){
	return LightSensor->status_;
}


Position getPosition(LightSensor* LightSensor){
	return LightSensor->position_;
}




#endif /* INCFILE1_H_ */
