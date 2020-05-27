//
//  Header.h
//  ultrasoundIdea1
//
//  Created by Luca on 26/05/2020.
//  Copyright © 2020 Luca. All rights reserved.
//


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


/*___________________Type Declaration_____________*/
typedef struct Ultrasounds {
    int  activated : 16;
    float distance;
} Ultrasounds;


typedef union UltraHandler{
    struct USS{
        unsigned char USSF : 8;
        unsigned char USSB : 8;
    }USS;
    unsigned int Status : 16;
    
    
}UltraHandler;



/*____________Service Functions______________*/


/* Setting Functions*/
void setSensorLow(UltraHandler* Handler, Ultrasounds* Sensor, const int Position);
void setSensorHigh(UltraHandler* Handler, Ultrasounds* Sensor, const int Position);
void setDistance( Ultrasounds* Sensor, const int Position, const float Distance);


/*Get function*/
int getSensor(Ultrasounds* Sensor, const int Position);
float getDistance(Ultrasounds* Sensor, const int Position);

int isFrontActivated(UltraHandler  Handler);
int isBackActivated(UltraHandler Handler);


int isFrontLeftActivated(UltraHandler Handler);
int isFrontRightActivated(UltraHandler Handler);

int isBackLeftActivated(UltraHandler Handler);
int isBackRightActivated(UltraHandler Handler);
