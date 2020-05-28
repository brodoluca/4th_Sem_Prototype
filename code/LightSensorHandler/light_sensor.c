//
//  light_sensor.c
//  LightSensor
//
//  Created by Luca on 28/05/2020.
//  Copyright © 2020 Luca. All rights reserved.
//

#include "light_sensor.h"
/*_______________Service Functions_____________________________*/

void initialize(LightSensor* LightSensor){
    LightSensor->status=0;
    LightSensor->position=0.0f;
}



void setHigh(LightSensor* LightSensor){
    LightSensor->status=1;
}


void setLow(LightSensor* LightSensor){
    LightSensor->status=0;
}


void setPosition(LightSensor* LightSensor,Position Position){
    LightSensor->position=Position;
}

/*____________________Get functions_______________________________*/

int getStatus(LightSensor* LightSensor){
    return LightSensor->status;
}


Position getPosition(LightSensor* LightSensor){
     return LightSensor->position;
}
