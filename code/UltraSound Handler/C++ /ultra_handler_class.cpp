//
//  ultra_handler_class.cpp
//  ultrasoundIdea1
//
//  Created by Luca on 26/05/2020.
//  Copyright © 2020 Luca. All rights reserved.
//

#include "ultra_handler_class.hpp"


/*_________SettingFunctions________________*/
void HandlerC::setSensorLow(const int Position){
    assert(Position!= 6 || Position!= 7 || Position!= 14 || Position!= 15 || Position<15);
            //Sensor_[Position].activated=1;
    flag_.Status &= ~(1<<Position);
    Sensor_[Position].activated=0;
}
void HandlerC::setSensorHigh(const int Position){
    assert(Position!= 6 || Position!= 7 || Position!= 14 || Position!= 15 || Position<15);
    Sensor_[Position].activated=1;
    flag_.Status|= 1<<Position;
    
}


void HandlerC::setDistance(const int Position, const float Distance){
    
    assert(Position!= 6 || Position!= 7 || Position!= 14 || Position!= 15 || Position<15);
    Sensor_[Position].distance=Distance;
}
/*_________Get Functions________________*/
int HandlerC::getSensor(const int Position){
    return Sensor_[Position].activated;
}

float HandlerC::getDistance(const int Position){
    return Sensor_[Position].distance;
}
unsigned int HandlerC::getStatus(){
    return flag_.Status;
}


int HandlerC::getActivated(){
    // 0000 0000 0100 0010
    
    //0000 0100
    //divide and conquer or
    //loop and we mask the last bit with a shift, it 1 we include the position in
    
    return 0;
}
