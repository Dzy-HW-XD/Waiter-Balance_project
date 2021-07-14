#!/usr/bin/env python

import rospy
from gazebo_msgs.msg import ModelStates
import rospy
from geometry_msgs.msg import Twist


def callback(data):
        pub = rospy.Publisher('/Ball_Velocity',Twist,queue_size=10)
       
        ball_index = data.name.index("ball")
        vel =  Twist()
        vel = data.twist[ball_index]
        pub.publish(vel)



def listener():
        # In ROS, nodes are uniquely named. If two nodes with the same
        # name are launched, the previous one is kicked off. The
        # anonymous=True flag means that rospy will choose a unique
        # name for our 'listener' node so that multiple listeners can
        # run simultaneously.
        rospy.init_node('ball_vel_node', anonymous=True)
        rospy.Subscriber("/gazebo/model_states", ModelStates, callback,queue_size=100)
        
        # spin() simply keeps python from exiting until this node is stopped
        rospy.spin()

if __name__ == '__main__':
        listener()
