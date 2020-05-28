//
//  main.c
//  LightSensor
//
//  Created by Luca on 28/05/2020.
//  Copyright © 2020 Luca. All rights reserved.
//

#include <stdio.h>
#include "light_sensor.h"


int main(int argc, const char * argv[]) {
    LightSensor luca;
    initialize(&luca);
    printf("%d\n", luca.status);
    printf("%d\n", luca.position);
    setHigh(&luca);
    setPosition(&luca, WEST);
    printf("%d\n", luca.status);
    printf("%d\n", luca.position);
    
    
    return 0;
}
