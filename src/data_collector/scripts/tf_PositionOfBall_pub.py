#!/usr/bin/env python

import rospy
from gazebo_msgs.msg import ModelStates
import rospy
import tf2_ros
import tf
from geometry_msgs.msg import Pose
from geometry_msgs.msg import Twist
from geometry_msgs.msg import TransformStamped

def callback(data):
        #ball_position_info = 
        #ball_vel_info = 
       # print("########################--------- Model Information--------#######################")
       # rospy.loginfo("Model Name: "+ball)
        #print("--------Position Information-------")
        #print((data.pose[1]))
        #print("--------Vel Information-------")
       # print(data.twist[1])
        broadcaster = tf2_ros.StaticTransformBroadcaster()
        tfs = TransformStamped()
        tfs.header.frame_id = "odom"
        tfs.header.stamp = rospy.Time.now()
        tfs.header.seq = 101
        tfs.child_frame_id = "base_ball_link"
        ball_index = data.name.index("ball")
        #tfs.transform.translation.x =0
        #tfs.transform.translation.y =0
        #tfs.transform.translation.z= 0
        tfs.transform.translation = data.pose[ball_index].position
        tfs.transform.rotation =  data.pose[ball_index].orientation
        broadcaster.sendTransform(tfs)

        
       
def listener():
        # In ROS, nodes are uniquely named. If two nodes with the same
        # name are launched, the previous one is kicked off. The
        # anonymous=True flag means that rospy will choose a unique
        # name for our 'listener' node so that multiple listeners can
        # run simultaneously.
        rospy.init_node('ball_pose_pub', anonymous=True)
        rospy.Subscriber("/gazebo/model_states", ModelStates, callback)
        
        # spin() simply keeps python from exiting until this node is stopped
        rospy.spin()

if __name__ == '__main__':
        listener()
