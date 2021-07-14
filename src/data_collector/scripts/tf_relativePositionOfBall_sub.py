#!/usr/bin/env python

import rospy
import tf
import math
from geometry_msgs.msg import Pose
from std_msgs.msg import Float32
from sklearn.neural_network import MLPRegressor

def object_position_pose(t,o):
    pub = rospy.Publisher('/Ball_Bowl_RelativePose_',Pose,queue_size=1)
    pub_theta = rospy.Publisher('/theta',Float32,queue_size=1)
    p = Pose()

    rate = rospy.Rate(100)
    p.position.x = t[0]
    p.position.y = t[1]
    p.position.z = t[2]


    theta_z = 0.15
    theta_x = abs( p.position.x)
    theta_y = abs(p.position.y)

    theta_xy = math.sqrt(theta_x**2 + theta_y**2 )
    theta = math.atan2(theta_z,theta_xy)
    theta_degree = math.degrees(theta)
    p.orientation.x = o[0]
    p.orientation.y = o[1]
    p.orientation.z = o[2]
    p.orientation.w = o[3]
    pub.publish(p)
    pub_theta.publish(theta_degree)
    rate.sleep()

if __name__ == '__main__':
   rospy.init_node('tf_listener',anonymous=True)
   listener = tf.TransformListener() 
   rate = rospy.Rate(100)
   while not rospy.is_shutdown():
       try:
           (trans,rot) = listener.lookupTransform('/bowl_link', '/base_ball_link', rospy.Time(0))
           #print("trans:")
           #print(trans)
           #print("rot:")
           #print(rot)
           object_position_pose(trans,rot)
       except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
           continue
            
        

       rate.sleep()