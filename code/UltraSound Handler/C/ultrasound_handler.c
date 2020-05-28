//
//  ultrasound_handler.c
//  ultrasoundIdea1
//
//  Created by Luca on 26/05/2020.
//  Copyright © 2020 Luca. All rights reserved.
//
#include "ultrasound_handler.h"



/*_______________Service Functions_______________________*/



/* Setting Functions*/
void setSensorLow(union UltraHandler *Handler, Ultrasounds* Sensor, const int Position){
    assert(Position!= 6 || Position!= 7 || Position!= 14 || Position!= 15 || Position<15);
    Handler->Status&=~(Sensor[Position].activated<<Position);
    Sensor[Position].activated=0;
}

void setSensorHigh(union UltraHandler* Handler, Ultrasounds* Sensor, const int Position){
    assert(Position== 6 || Position== 7 || Position== 14 || Position== 15 || Position>15);
    Sensor[Position].activated=1;
    Handler->Status |= 1<<Position;
    
}


void setDistance( Ultrasounds* Sensor, const int Position, const float Distance){
    assert(Position== 6 || Position== 7 || Position== 14 || Position== 15 || Position>15);
    Sensor[Position].distance=Distance;
        
}




/*Get function*/


int getSensor(Ultrasounds* Sensor, const int Position){
    return Sensor[Position].activated;
}


float getDistance(Ultrasounds* Sensor, const int Position){
    return Sensor[Position].distance;
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
