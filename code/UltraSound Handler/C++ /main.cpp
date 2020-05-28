//
//  main.cpp
//  ultrasoundIdea1
//
//  Created by Luca on 26/05/2020.
//  Copyright © 2020 Luca. All rights reserved.
//

#include <iostream>
#include <stdio.h>

#include "ultra_handler_class.hpp"
/*_________Handling Variables_________*/



int main(int argc, const char * argv[]) {
    //UltraHandler Handler;
    HandlerC UltraH;
    UltraH.setSensorHigh(FrontLeftP0);
    UltraH.setDistance(FrontLeftP0, 34.67);
    
    //setSensor(Handler, Sensor, BackRightP2);
    //getDistance(Sensor, BackRightP2);
    //Handler.Status |= Sensor[BackRightP2].activated<<BackRightP2;
    //0000 0100 0000 0000
    printf("0x%x\n",UltraH.getStatus());
    UltraH.setSensorLow(FrontLeftP0);
    printf("0x%x\n",UltraH.getStatus());
    printf("%f",UltraH.getDistance(FrontLeftP0));
   

    
    return 0;
}
