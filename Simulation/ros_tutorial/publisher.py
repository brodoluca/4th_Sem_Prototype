#!/usr/bin/env python

import rospy
from std_msgs.msg import String

rospy.init_node("tutorial")

publisher = rospy.Publisher('/say_hello', String, queue_size = 1)  #create the publisher with tipe and topic

rate = rospy.Rate(4)

while not rospy.is_shutdown():
	publisher.publish('CIAO')
    	rate.sleep()	
