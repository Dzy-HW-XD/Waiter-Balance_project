#!/usr/bin/env python

import rospy
from gazebo_msgs.msg import ModelStates
import rospy
import tf2_ros
import tf
import message_filters
from geometry_msgs.msg import Pose
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import Twist
from std_msgs.msg import Float32
from sensor_msgs.msg import Imu
from geometry_msgs.msg import TransformStamped
from geometry_msgs.msg import WrenchStamped
from nav_msgs.msg import Odometry
from data_collector.msg import Ball_Car
def callback(Ball_Bowl_RelativePose_, theta,ball_imu,ball_force,ball_odom,car_odom,cmd):
        pub = rospy.Publisher("/data_collector_pub",Ball_Car,queue_size=1)

        ball_car_info = Ball_Car()
        ball_car_info.RelativePosition = Ball_Bowl_RelativePose_
        ball_car_info.theta = theta
        ball_car_info.ball_imu=ball_imu
        ball_car_info.ball_force=ball_force
        ball_car_info.ball_odom=ball_odom
        ball_car_info.car_odom=car_odom
        ball_car_info.cmd=cmd
        rospy.loginfo(rospy.get_time())
        pub.publish(ball_car_info)


def listener():
        rospy.init_node('data_collector', anonymous=True)

        Ball_Bowl_RelativePose_ = message_filters.Subscriber("/Ball_Bowl_RelativePose_", Pose) #99.5hz
        theta = message_filters.Subscriber("/theta", Float32) #100
        ball_imu  = message_filters.Subscriber("/ball/imu",Imu) #100hz
        ball_force = message_filters.Subscriber("/ball/force",WrenchStamped) #1000hz
        ball_odom = message_filters.Subscriber("/ball/odom",Odometry)
        cmd= message_filters.Subscriber("/cmd_vel",Twist) #97hz
        car_odom = message_filters.Subscriber("/odom",Odometry) #100hz
        ts = message_filters.ApproximateTimeSynchronizer([Ball_Bowl_RelativePose_, theta,ball_imu,ball_force,ball_odom,car_odom,cmd],1, 0.1, allow_headerless=True)
        ts.registerCallback(callback)
        # spin() simply keeps python from exiting until this node is stopped
        rospy.spin()

if __name__ == '__main__':
        listener()
