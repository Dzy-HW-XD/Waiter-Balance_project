#!/usr/bin/env python
import rospy
from gazebo_msgs.msg import ModelStates
import rospy
import tf2_ros
import tf
from geometry_msgs.msg import Pose
from geometry_msgs.msg import Twist
import message_filters
from geometry_msgs.msg import TransformStamped
import sklearn
def ball_relativePose(data):
        print("#####################Relative Position between ball and bowl")
        print(data)
def ball_pose(data):
        print("##################### Position of Ball")
        print(data.pose[1])

def multi_callback(re_pose,ball_pose):
        print("#####################Relative Position between ball and bowl")
        print(re_pose)
        print("##################### Position of Ball")
        print(ball_pose.pose[1])
if __name__ == '__main__':
        rospy.init_node('ball_info_node', anonymous=True)
        re_pose = rospy.Subscriber("/Ball_Bowl_RelativePose_", Pose)
        ball_pose = rospy.Subscriber("/gazebo/model_states", ModelStates)
        sync = message_filters.ApproximateTimeSynchronizer([re_pose,ball_pose], 10,1)
        sync.registerCallback(multi_callback)

        rospy.spin()