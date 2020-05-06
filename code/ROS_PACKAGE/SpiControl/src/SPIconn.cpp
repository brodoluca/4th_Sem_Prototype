#include <iostream>
#include <wiringPiSPI.h>
#include <unistd.h>
#include <ros/ros.h>
#define SPI_CHANNEL 0
#define SPI_CLOCK_SPEED 1000000

int main(int argc, char **argv){
    ros::init(argc,argv,"SPIconn");
    ros::NodeHandle nh;
    ROS_INFO("GORDA");
    int fd = wiringPiSPISetupMode(SPI_CHANNEL, SPI_CLOCK_SPEED, 0);
    if (fd == -1) {
        //std::cout << "Failed to init SPI communication.\n";
        return -1;
    }
   // std::cout << "SPI communication successfully setup.\n";
   
    unsigned char back_buf[2] = { 255, 0 };
    unsigned char front_buf[2] = { 255, 0 };
   while(ros::ok()){
        
        wiringPiSPIDataRW(SPI_CHANNEL, back_buf, 1);
        //std::cout << "Data returned: " << (int)buf[1] << "\n";00
        //ros::Duration(0.5).sleep();
        //wiringPiSPIDataRW(SPI_CHANNEL, front_buf, 2);
         
    }
    
//https://github.com/matpalm/ros-hc-sr04-node/blob/master/src/hc_sr04_node.cpp
    
    return 0;
}


