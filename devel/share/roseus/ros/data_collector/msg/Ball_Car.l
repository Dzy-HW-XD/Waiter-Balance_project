;; Auto-generated. Do not edit!


(when (boundp 'data_collector::Ball_Car)
  (if (not (find-package "DATA_COLLECTOR"))
    (make-package "DATA_COLLECTOR"))
  (shadow 'Ball_Car (find-package "DATA_COLLECTOR")))
(unless (find-package "DATA_COLLECTOR::BALL_CAR")
  (make-package "DATA_COLLECTOR::BALL_CAR"))

(in-package "ROS")
;;//! \htmlinclude Ball_Car.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass data_collector::Ball_Car
  :super ros::object
  :slots (_RelativePosition _theta _ball_imu _ball_force _ball_odom _car_odom _cmd ))

(defmethod data_collector::Ball_Car
  (:init
   (&key
    ((:RelativePosition __RelativePosition) (instance geometry_msgs::Pose :init))
    ((:theta __theta) (instance std_msgs::Float32 :init))
    ((:ball_imu __ball_imu) (instance sensor_msgs::Imu :init))
    ((:ball_force __ball_force) (instance geometry_msgs::WrenchStamped :init))
    ((:ball_odom __ball_odom) (instance nav_msgs::Odometry :init))
    ((:car_odom __car_odom) (instance nav_msgs::Odometry :init))
    ((:cmd __cmd) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _RelativePosition __RelativePosition)
   (setq _theta __theta)
   (setq _ball_imu __ball_imu)
   (setq _ball_force __ball_force)
   (setq _ball_odom __ball_odom)
   (setq _car_odom __car_odom)
   (setq _cmd __cmd)
   self)
  (:RelativePosition
   (&rest __RelativePosition)
   (if (keywordp (car __RelativePosition))
       (send* _RelativePosition __RelativePosition)
     (progn
       (if __RelativePosition (setq _RelativePosition (car __RelativePosition)))
       _RelativePosition)))
  (:theta
   (&rest __theta)
   (if (keywordp (car __theta))
       (send* _theta __theta)
     (progn
       (if __theta (setq _theta (car __theta)))
       _theta)))
  (:ball_imu
   (&rest __ball_imu)
   (if (keywordp (car __ball_imu))
       (send* _ball_imu __ball_imu)
     (progn
       (if __ball_imu (setq _ball_imu (car __ball_imu)))
       _ball_imu)))
  (:ball_force
   (&rest __ball_force)
   (if (keywordp (car __ball_force))
       (send* _ball_force __ball_force)
     (progn
       (if __ball_force (setq _ball_force (car __ball_force)))
       _ball_force)))
  (:ball_odom
   (&rest __ball_odom)
   (if (keywordp (car __ball_odom))
       (send* _ball_odom __ball_odom)
     (progn
       (if __ball_odom (setq _ball_odom (car __ball_odom)))
       _ball_odom)))
  (:car_odom
   (&rest __car_odom)
   (if (keywordp (car __car_odom))
       (send* _car_odom __car_odom)
     (progn
       (if __car_odom (setq _car_odom (car __car_odom)))
       _car_odom)))
  (:cmd
   (&rest __cmd)
   (if (keywordp (car __cmd))
       (send* _cmd __cmd)
     (progn
       (if __cmd (setq _cmd (car __cmd)))
       _cmd)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _RelativePosition
    (send _RelativePosition :serialization-length)
    ;; std_msgs/Float32 _theta
    (send _theta :serialization-length)
    ;; sensor_msgs/Imu _ball_imu
    (send _ball_imu :serialization-length)
    ;; geometry_msgs/WrenchStamped _ball_force
    (send _ball_force :serialization-length)
    ;; nav_msgs/Odometry _ball_odom
    (send _ball_odom :serialization-length)
    ;; nav_msgs/Odometry _car_odom
    (send _car_odom :serialization-length)
    ;; geometry_msgs/Twist _cmd
    (send _cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _RelativePosition
       (send _RelativePosition :serialize s)
     ;; std_msgs/Float32 _theta
       (send _theta :serialize s)
     ;; sensor_msgs/Imu _ball_imu
       (send _ball_imu :serialize s)
     ;; geometry_msgs/WrenchStamped _ball_force
       (send _ball_force :serialize s)
     ;; nav_msgs/Odometry _ball_odom
       (send _ball_odom :serialize s)
     ;; nav_msgs/Odometry _car_odom
       (send _car_odom :serialize s)
     ;; geometry_msgs/Twist _cmd
       (send _cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _RelativePosition
     (send _RelativePosition :deserialize buf ptr-) (incf ptr- (send _RelativePosition :serialization-length))
   ;; std_msgs/Float32 _theta
     (send _theta :deserialize buf ptr-) (incf ptr- (send _theta :serialization-length))
   ;; sensor_msgs/Imu _ball_imu
     (send _ball_imu :deserialize buf ptr-) (incf ptr- (send _ball_imu :serialization-length))
   ;; geometry_msgs/WrenchStamped _ball_force
     (send _ball_force :deserialize buf ptr-) (incf ptr- (send _ball_force :serialization-length))
   ;; nav_msgs/Odometry _ball_odom
     (send _ball_odom :deserialize buf ptr-) (incf ptr- (send _ball_odom :serialization-length))
   ;; nav_msgs/Odometry _car_odom
     (send _car_odom :deserialize buf ptr-) (incf ptr- (send _car_odom :serialization-length))
   ;; geometry_msgs/Twist _cmd
     (send _cmd :deserialize buf ptr-) (incf ptr- (send _cmd :serialization-length))
   ;;
   self)
  )

(setf (get data_collector::Ball_Car :md5sum-) "c9510d95b9c45f4cb225ff6805dd3b74")
(setf (get data_collector::Ball_Car :datatype-) "data_collector/Ball_Car")
(setf (get data_collector::Ball_Car :definition-)
      "geometry_msgs/Pose  RelativePosition
std_msgs/Float32 theta
sensor_msgs/Imu ball_imu
geometry_msgs/WrenchStamped ball_force
nav_msgs/Odometry ball_odom
nav_msgs/Odometry car_odom
geometry_msgs/Twist cmd
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: sensor_msgs/Imu
# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/WrenchStamped
# A wrench with reference coordinate frame and timestamp
Header header
Wrench wrench

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :data_collector/Ball_Car "c9510d95b9c45f4cb225ff6805dd3b74")


