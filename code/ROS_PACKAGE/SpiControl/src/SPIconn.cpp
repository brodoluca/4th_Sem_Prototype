#include <iostream>
#include <wiringPiSPI.h>
#include <unistd.h>
#include <ros/ros.h>


#define SPI_CHANNEL 0
#define SPI_CLOCK_SPEED 1000000

int main(int argc, char **argv){
    
    ros::init(argc,argv,"SPIconn");/* Initialize Ros Node so it can be checked*/
    ros::NodeHandle nh; /*Creating a Node Handler object, for the future*/
    /*Setting up the SPI connection
     *SPI_CHANNEL =0
     *SPI_CLOCK_SPEED=1000000
     */
    
    int fd = wiringPiSPISetupMode(SPI_CHANNEL, SPI_CLOCK_SPEED, 0);
    if (fd == -1) {
        /*In case the previous function returns -1(Error), we close the program*/
        //std::cout << "Failed to init SPI communication.\n";
        
        /*
        TEMPORARY SOLUTION
         */
        return -1;
    }
        // std::cout << "SPI communication successfully setup.\n";
   
    unsigned char back_buf[2] = { 255, 0 };/* buffer containing the value to send to the arduino */
    
    while(ros::ok()){
        /*This function is Read and Write, we should come up with a different one. It sends the speed values from 1 to 255 as a char*/
        wiringPiSPIDataRW(SPI_CHANNEL, back_buf, 1);
        
        
        //std::cout << "Data returned: " << (int)buf[1] << "\n";00
        //ros::Duration(0.5).sleep();
        //wiringPiSPIDataRW(SPI_CHANNEL, front_buf, 2);
         
    }
    
//https://github.com/matpalm/ros-hc-sr04-node/blob/master/src/hc_sr04_node.cpp
    
    return 0;
}


