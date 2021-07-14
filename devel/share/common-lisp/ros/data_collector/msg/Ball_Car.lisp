; Auto-generated. Do not edit!


(cl:in-package data_collector-msg)


;//! \htmlinclude Ball_Car.msg.html

(cl:defclass <Ball_Car> (roslisp-msg-protocol:ros-message)
  ((RelativePosition
    :reader RelativePosition
    :initarg :RelativePosition
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (theta
    :reader theta
    :initarg :theta
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (ball_imu
    :reader ball_imu
    :initarg :ball_imu
    :type sensor_msgs-msg:Imu
    :initform (cl:make-instance 'sensor_msgs-msg:Imu))
   (ball_force
    :reader ball_force
    :initarg :ball_force
    :type geometry_msgs-msg:WrenchStamped
    :initform (cl:make-instance 'geometry_msgs-msg:WrenchStamped))
   (ball_odom
    :reader ball_odom
    :initarg :ball_odom
    :type nav_msgs-msg:Odometry
    :initform (cl:make-instance 'nav_msgs-msg:Odometry))
   (car_odom
    :reader car_odom
    :initarg :car_odom
    :type nav_msgs-msg:Odometry
    :initform (cl:make-instance 'nav_msgs-msg:Odometry))
   (cmd
    :reader cmd
    :initarg :cmd
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass Ball_Car (<Ball_Car>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ball_Car>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ball_Car)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name data_collector-msg:<Ball_Car> is deprecated: use data_collector-msg:Ball_Car instead.")))

(cl:ensure-generic-function 'RelativePosition-val :lambda-list '(m))
(cl:defmethod RelativePosition-val ((m <Ball_Car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_collector-msg:RelativePosition-val is deprecated.  Use data_collector-msg:RelativePosition instead.")
  (RelativePosition m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <Ball_Car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_collector-msg:theta-val is deprecated.  Use data_collector-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'ball_imu-val :lambda-list '(m))
(cl:defmethod ball_imu-val ((m <Ball_Car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_collector-msg:ball_imu-val is deprecated.  Use data_collector-msg:ball_imu instead.")
  (ball_imu m))

(cl:ensure-generic-function 'ball_force-val :lambda-list '(m))
(cl:defmethod ball_force-val ((m <Ball_Car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_collector-msg:ball_force-val is deprecated.  Use data_collector-msg:ball_force instead.")
  (ball_force m))

(cl:ensure-generic-function 'ball_odom-val :lambda-list '(m))
(cl:defmethod ball_odom-val ((m <Ball_Car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_collector-msg:ball_odom-val is deprecated.  Use data_collector-msg:ball_odom instead.")
  (ball_odom m))

(cl:ensure-generic-function 'car_odom-val :lambda-list '(m))
(cl:defmethod car_odom-val ((m <Ball_Car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_collector-msg:car_odom-val is deprecated.  Use data_collector-msg:car_odom instead.")
  (car_odom m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <Ball_Car>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader data_collector-msg:cmd-val is deprecated.  Use data_collector-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ball_Car>) ostream)
  "Serializes a message object of type '<Ball_Car>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'RelativePosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'theta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ball_imu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ball_force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ball_odom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'car_odom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ball_Car>) istream)
  "Deserializes a message object of type '<Ball_Car>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'RelativePosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'theta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ball_imu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ball_force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ball_odom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'car_odom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ball_Car>)))
  "Returns string type for a message object of type '<Ball_Car>"
  "data_collector/Ball_Car")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ball_Car)))
  "Returns string type for a message object of type 'Ball_Car"
  "data_collector/Ball_Car")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ball_Car>)))
  "Returns md5sum for a message object of type '<Ball_Car>"
  "c9510d95b9c45f4cb225ff6805dd3b74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ball_Car)))
  "Returns md5sum for a message object of type 'Ball_Car"
  "c9510d95b9c45f4cb225ff6805dd3b74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ball_Car>)))
  "Returns full string definition for message of type '<Ball_Car>"
  (cl:format cl:nil "geometry_msgs/Pose  RelativePosition~%std_msgs/Float32 theta~%sensor_msgs/Imu ball_imu~%geometry_msgs/WrenchStamped ball_force~%nav_msgs/Odometry ball_odom~%nav_msgs/Odometry car_odom~%geometry_msgs/Twist cmd~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/WrenchStamped~%# A wrench with reference coordinate frame and timestamp~%Header header~%Wrench wrench~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ball_Car)))
  "Returns full string definition for message of type 'Ball_Car"
  (cl:format cl:nil "geometry_msgs/Pose  RelativePosition~%std_msgs/Float32 theta~%sensor_msgs/Imu ball_imu~%geometry_msgs/WrenchStamped ball_force~%nav_msgs/Odometry ball_odom~%nav_msgs/Odometry car_odom~%geometry_msgs/Twist cmd~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/WrenchStamped~%# A wrench with reference coordinate frame and timestamp~%Header header~%Wrench wrench~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ball_Car>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'RelativePosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'theta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ball_imu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ball_force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ball_odom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'car_odom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ball_Car>))
  "Converts a ROS message object to a list"
  (cl:list 'Ball_Car
    (cl:cons ':RelativePosition (RelativePosition msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':ball_imu (ball_imu msg))
    (cl:cons ':ball_force (ball_force msg))
    (cl:cons ':ball_odom (ball_odom msg))
    (cl:cons ':car_odom (car_odom msg))
    (cl:cons ':cmd (cmd msg))
))
