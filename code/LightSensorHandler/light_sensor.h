/*
 
 
 
 
 
 */

#ifndef light_sensor_h
#define light_sensor_h

/*__________________Housholding typedef Declaration______________ */
typedef enum Position{
    NORTH = 0,
    EAST = 1,
    SOUTH = 2,
    WEST =3
}Position;

/*_______________________ACTUAL STRUCT TO USE___________________*/
typedef struct lightSensor{
    int status ; //to simulate boolean, status will be either 1 or zero
    Position position;
}LightSensor;

/*____________________Service Functions_________________________*/

void initialize(LightSensor* LightSensor);//initializes the sensor's status and distance to 0 and 0.9
void setHigh(LightSensor* LightSensor);
void setLow(LightSensor* LightSensor);
void setPosition(LightSensor* LightSensor, Position Position);


/*____________________Get functions_______________________________*/

int getStatus(LightSensor* LightSensor);
Position getPosition(LightSensor* LightSensor);



#endif /* light_sensor_h */
