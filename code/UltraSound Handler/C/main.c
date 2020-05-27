//
//  main.c
//  Ultrasound2
//
//  Created by Luca on 27/05/2020.
//  Copyright © 2020 Luca. All rights reserved.
//
#include "ultrasound_handler.h"
#include <stdio.h>
void areActive(UltraHandler Handler);
int main(int argc, const char * argv[]) {
    Ultrasounds Sensor[16];
    UltraHandler Handler;
    Handler.Status = Initializer;
    setSensorHigh(&Handler, Sensor, FrontLeftP0);
    setSensorHigh(&Handler, Sensor, FrontLeftP2);
    setSensorHigh(&Handler, Sensor, FrontRightP1);
    setSensorHigh(&Handler, Sensor, BackLeftP0);
    setSensorHigh(&Handler, Sensor, BackLeftP2);
    setSensorHigh(&Handler, Sensor, BackRightP0);
    printf("---------------\n");
    areActive(Handler);
    printf("---------------\n");
    setSensorHigh(&Handler, Sensor, BackRightP2);
    setSensorHigh(&Handler, Sensor, FrontRightP2);
    setSensorHigh(&Handler, Sensor, BackRightP1);
    areActive(Handler);
    printf("---------------\n");
    setSensorLow(&Handler, Sensor, FrontLeftP0);
    setSensorLow(&Handler, Sensor, BackLeftP0);
    setSensorLow(&Handler, Sensor, BackRightP1);
    areActive(Handler);
    
    return 0;
}



void areActive(UltraHandler Handler){
    int f=0b1000000000000000;
    for (int i=16; i>0; i--) {
        if (Handler.Status &f)
            printf("1");
        else
            printf("0");
        f=f>>1;
    }
    printf("\n");
}
