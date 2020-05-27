//
//  ultra_handler_class.hpp
//  ultrasoundIdea1
//
//  Created by Luca on 26/05/2020.
//  Copyright © 2020 Luca. All rights reserved.
//

#ifndef ultra_handler_class_hpp
#define ultra_handler_class_hpp
/*_____Defining position of every sensor________*/
#define FrontLeftP0 0
#define FrontLeftP1 1
#define FrontLeftP2 2

#define FrontRightP0 3
#define FrontRightP1 4
#define FrontRightP2 5

#define BackLeftP1 6
#define BackLeftP2 7
#define BackLeftP3 8


#define BackRightP1 9
#define BackRightP2 10
#define BackRightP3 11
/*________________________________________________*/

typedef struct Ultrasounds {
    int  activated : 16;
    float distance;
} Ultrasound;

typedef union flagReg{
    struct USS{
        unsigned char USSH : 8;
        unsigned char USSL : 8;
    }USS;
    unsigned int Status : 16;
    
}flagReg;


class HandlerC{
public:
    HandlerC(){
        flag_.Status=0b0000000000000000;
        for (int i=0; i<16; i++) {
            Sensor_[i].activated=0;
            Sensor_[i].distance=0;
        }
    }
    /*Set function*/
    void setSensorLow(const int Position);
    void setSensorHigh(const int Position);
    void setDistance(const int Position, const float Distance);
    /*Get function*/
    int getSensor(const int Position);
    float getDistance(const int Position);
    unsigned int getStatus();
    int getActivated();
    
private:
    
    flagReg flag_;
    Ultrasound Sensor_[16];
    
};

#endif /* ultra_handler_class_hpp */
