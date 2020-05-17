/*Communication Raspi-Arduino via SPI
* 'c' -> acknowledgment char sent by Raspi
*'a'  -> acknowlegment char expected by Raspi
* 'F' -> final charachter for ending communication expected by raspi
*
*/
#include <iostream>
#include <wiringPiSPI.h>
#include <unistd.h>
#include <ros/ros.h>
#include <sys/ioctl.h>
#include <linux/spi/spidev.h>
#include <fcntl.h>
#include <iostream>
#include <cstring>

#define SPI_CHANNEL 0
#define SPI_CLOCK_SPEED 1000000

#define LEFT 'L'
#define RIGHT 'R'
#define BACK 'B'

using namespace std;


/* Function that send the bytes through the SPI bus
    Used inside Send Command as a utility function
    Return element sent by the arduino, if any
*/
int spiTxRx(unsigned char txDat);

/* Function used to send the command and the speed, return the final char (F) for communication as int*/
int sendCommand(char command, int speed);



int results;
int fd; /*File descriptor variable*/

int main(int argc, char **argv){

    /* initialiaziation of node and node hanlder, for future purposes*/
    ros::init(argc,argv,"SPIconn");
    ros::NodeHandle nh;
    //ROS_WARN("GORDA");
    /* communication file as read and write*/
    fd = open("/dev/spidev0.0", O_RDWR);
        
    unsigned int speed = 1000000;
    ioctl (fd, SPI_IOC_WR_MAX_SPEED_HZ, &speed);
    //in case the communication is invalid or impossible
    if(fd == -1)
        return -1;
    
    /*Temporary infite while loop for tests purposes*/
   while(1){
        unsigned char luca = sendCommand(LEFT, 255);
        ROS_WARN("WORKS");
        
        sleep(1);
    }    
//https://github.com/matpalm/ros-hc-sr04-node/blob/master/src/hc_sr04_node.cpp
    
    return 0;
}



int spiTxRx(unsigned char txDat){
 
  unsigned char rxDat;

  struct spi_ioc_transfer spi;

  memset (&spi, 0, sizeof (spi));

  spi.tx_buf        = (unsigned long)&txDat;
  spi.rx_buf        = (unsigned long)&rxDat;
  spi.len           = 1;

  ioctl (fd, SPI_IOC_MESSAGE(1), &spi);

  return rxDat;
}



int sendCommand(char command, int speed){
       /*Utility variables*/
    unsigned char resultByte;
    bool ack;
    unsigned char  resultChar;


    /* Using unions to save space and switch easily between 8-bit variables to 16-bit variables*/
    union p1Buffer_T{
            int p1Int;
            unsigned char  p1Char [2];
    }p1Buffer; 
    union resultBuffer_T{
            int resultInt;
            unsigned char  resultChar [2];
    }resultBuffer;

    
    p1Buffer.p1Int = speed;
    /*Loop for acknowlefgment. It finishes when the arduino sends the 'a' character. In order to not skip one SPI cicle, we also  send the command     */
    do{
        ack = false;
        resultByte = spiTxRx('c');
        usleep (10);
        resultByte = spiTxRx(command);
        if (resultByte == 'a'){
            ack = true;
        }
        usleep (10);
    //ROS_WARN("S");
   }while (ack == false);

/*
Send the parameters one byte at a time.
*/

  spiTxRx(p1Buffer.p1Char[0]);
  usleep (10);


  resultByte = spiTxRx(p1Buffer.p1Char[1]);
  usleep (10);


/*
Push one through so the Arduino can return the last char to end the communication
*/

  resultByte = spiTxRx(0);
  resultBuffer.resultInt = resultByte;
  return resultBuffer.resultInt;

}
