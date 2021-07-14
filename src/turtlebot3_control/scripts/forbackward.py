#!/usr/bin/env python

from geometry_msgs.msg import Pose
import rospy
import time
from std_msgs.msg import Float64
from geometry_msgs.msg import Twist
def control_callback():
    pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(1) 
    while not rospy.is_shutdown():
        cmd = Twist()
        vel = 0.0
        time.sleep(1)
        cmd.linear.x = 10.0
        pub.publish(cmd)
        time.sleep(3)
        cmd.linear.x = 0.0
        pub.publish(cmd)
        #for i in range(10):
            #cmd.linear.x = vel
            #vel += 0.2
           # pub.publish(cmd)
           # time.sleep(1)
        rate.sleep()
if __name__ == '__main__':
     try:
         control_callback()
     except rospy.ROSInterruptException:
            pass