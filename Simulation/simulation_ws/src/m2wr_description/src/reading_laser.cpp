#include "ros/ros.h"
#include "sensor_msgs/LaserScan.h"
#include <geometry_msgs/Twist.h>
#define RAD2DEG(x) ((x)*180./M_PI)
int vel=0;
void scanCallback(const sensor_msgs::LaserScan::ConstPtr& scan)
{
        //int count = scan->scan_time / scan->time_increment;
        for (size_t i = 0; i < 1079; i++) {
          if (scan->ranges[i]< 100 &&scan->ranges[i]> 1 ) {
            vel=0;
            ROS_INFO("COUNT, INDEX: [%f,%d]", scan->ranges[i],i);
          }else{
            vel=1;
          }

        }

}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "reading_laser");
    ros::NodeHandle n;

    ros::Subscriber sub = n.subscribe<sensor_msgs::LaserScan>("/m2wr/laser/scan", 2000, scanCallback);
    ros::Publisher  pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 1000);
    ros::Rate loop_rate(1);
    geometry_msgs::Twist msg;
    while (ros::ok()){
        geometry_msgs::Twist msg;
        if (vel==1) {
          msg.linear.x = 0.6;
        }else{
          msg.linear.x = 0;
        }

        ros::spinOnce();
        loop_rate.sleep();
        pub.publish(msg);
  }
    ros::spin();

    return 0;
}
