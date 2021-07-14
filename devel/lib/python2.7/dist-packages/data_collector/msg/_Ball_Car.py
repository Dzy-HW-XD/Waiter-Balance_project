# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from data_collector/Ball_Car.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import nav_msgs.msg
import sensor_msgs.msg
import std_msgs.msg

class Ball_Car(genpy.Message):
  _md5sum = "c9510d95b9c45f4cb225ff6805dd3b74"
  _type = "data_collector/Ball_Car"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Pose  RelativePosition
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
# A covariance matrix of all zeros will be interpreted as "covariance unknown", and to use the
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
"""
  __slots__ = ['RelativePosition','theta','ball_imu','ball_force','ball_odom','car_odom','cmd']
  _slot_types = ['geometry_msgs/Pose','std_msgs/Float32','sensor_msgs/Imu','geometry_msgs/WrenchStamped','nav_msgs/Odometry','nav_msgs/Odometry','geometry_msgs/Twist']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       RelativePosition,theta,ball_imu,ball_force,ball_odom,car_odom,cmd

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Ball_Car, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.RelativePosition is None:
        self.RelativePosition = geometry_msgs.msg.Pose()
      if self.theta is None:
        self.theta = std_msgs.msg.Float32()
      if self.ball_imu is None:
        self.ball_imu = sensor_msgs.msg.Imu()
      if self.ball_force is None:
        self.ball_force = geometry_msgs.msg.WrenchStamped()
      if self.ball_odom is None:
        self.ball_odom = nav_msgs.msg.Odometry()
      if self.car_odom is None:
        self.car_odom = nav_msgs.msg.Odometry()
      if self.cmd is None:
        self.cmd = geometry_msgs.msg.Twist()
    else:
      self.RelativePosition = geometry_msgs.msg.Pose()
      self.theta = std_msgs.msg.Float32()
      self.ball_imu = sensor_msgs.msg.Imu()
      self.ball_force = geometry_msgs.msg.WrenchStamped()
      self.ball_odom = nav_msgs.msg.Odometry()
      self.car_odom = nav_msgs.msg.Odometry()
      self.cmd = geometry_msgs.msg.Twist()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_7df3I().pack(_x.RelativePosition.position.x, _x.RelativePosition.position.y, _x.RelativePosition.position.z, _x.RelativePosition.orientation.x, _x.RelativePosition.orientation.y, _x.RelativePosition.orientation.z, _x.RelativePosition.orientation.w, _x.theta.data, _x.ball_imu.header.seq, _x.ball_imu.header.stamp.secs, _x.ball_imu.header.stamp.nsecs))
      _x = self.ball_imu.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4d().pack(_x.ball_imu.orientation.x, _x.ball_imu.orientation.y, _x.ball_imu.orientation.z, _x.ball_imu.orientation.w))
      buff.write(_get_struct_9d().pack(*self.ball_imu.orientation_covariance))
      _x = self
      buff.write(_get_struct_3d().pack(_x.ball_imu.angular_velocity.x, _x.ball_imu.angular_velocity.y, _x.ball_imu.angular_velocity.z))
      buff.write(_get_struct_9d().pack(*self.ball_imu.angular_velocity_covariance))
      _x = self
      buff.write(_get_struct_3d().pack(_x.ball_imu.linear_acceleration.x, _x.ball_imu.linear_acceleration.y, _x.ball_imu.linear_acceleration.z))
      buff.write(_get_struct_9d().pack(*self.ball_imu.linear_acceleration_covariance))
      _x = self
      buff.write(_get_struct_3I().pack(_x.ball_force.header.seq, _x.ball_force.header.stamp.secs, _x.ball_force.header.stamp.nsecs))
      _x = self.ball_force.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_6d3I().pack(_x.ball_force.wrench.force.x, _x.ball_force.wrench.force.y, _x.ball_force.wrench.force.z, _x.ball_force.wrench.torque.x, _x.ball_force.wrench.torque.y, _x.ball_force.wrench.torque.z, _x.ball_odom.header.seq, _x.ball_odom.header.stamp.secs, _x.ball_odom.header.stamp.nsecs))
      _x = self.ball_odom.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.ball_odom.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.ball_odom.pose.pose.position.x, _x.ball_odom.pose.pose.position.y, _x.ball_odom.pose.pose.position.z, _x.ball_odom.pose.pose.orientation.x, _x.ball_odom.pose.pose.orientation.y, _x.ball_odom.pose.pose.orientation.z, _x.ball_odom.pose.pose.orientation.w))
      buff.write(_get_struct_36d().pack(*self.ball_odom.pose.covariance))
      _x = self
      buff.write(_get_struct_6d().pack(_x.ball_odom.twist.twist.linear.x, _x.ball_odom.twist.twist.linear.y, _x.ball_odom.twist.twist.linear.z, _x.ball_odom.twist.twist.angular.x, _x.ball_odom.twist.twist.angular.y, _x.ball_odom.twist.twist.angular.z))
      buff.write(_get_struct_36d().pack(*self.ball_odom.twist.covariance))
      _x = self
      buff.write(_get_struct_3I().pack(_x.car_odom.header.seq, _x.car_odom.header.stamp.secs, _x.car_odom.header.stamp.nsecs))
      _x = self.car_odom.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.car_odom.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.car_odom.pose.pose.position.x, _x.car_odom.pose.pose.position.y, _x.car_odom.pose.pose.position.z, _x.car_odom.pose.pose.orientation.x, _x.car_odom.pose.pose.orientation.y, _x.car_odom.pose.pose.orientation.z, _x.car_odom.pose.pose.orientation.w))
      buff.write(_get_struct_36d().pack(*self.car_odom.pose.covariance))
      _x = self
      buff.write(_get_struct_6d().pack(_x.car_odom.twist.twist.linear.x, _x.car_odom.twist.twist.linear.y, _x.car_odom.twist.twist.linear.z, _x.car_odom.twist.twist.angular.x, _x.car_odom.twist.twist.angular.y, _x.car_odom.twist.twist.angular.z))
      buff.write(_get_struct_36d().pack(*self.car_odom.twist.covariance))
      _x = self
      buff.write(_get_struct_6d().pack(_x.cmd.linear.x, _x.cmd.linear.y, _x.cmd.linear.z, _x.cmd.angular.x, _x.cmd.angular.y, _x.cmd.angular.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.RelativePosition is None:
        self.RelativePosition = geometry_msgs.msg.Pose()
      if self.theta is None:
        self.theta = std_msgs.msg.Float32()
      if self.ball_imu is None:
        self.ball_imu = sensor_msgs.msg.Imu()
      if self.ball_force is None:
        self.ball_force = geometry_msgs.msg.WrenchStamped()
      if self.ball_odom is None:
        self.ball_odom = nav_msgs.msg.Odometry()
      if self.car_odom is None:
        self.car_odom = nav_msgs.msg.Odometry()
      if self.cmd is None:
        self.cmd = geometry_msgs.msg.Twist()
      end = 0
      _x = self
      start = end
      end += 72
      (_x.RelativePosition.position.x, _x.RelativePosition.position.y, _x.RelativePosition.position.z, _x.RelativePosition.orientation.x, _x.RelativePosition.orientation.y, _x.RelativePosition.orientation.z, _x.RelativePosition.orientation.w, _x.theta.data, _x.ball_imu.header.seq, _x.ball_imu.header.stamp.secs, _x.ball_imu.header.stamp.nsecs,) = _get_struct_7df3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ball_imu.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ball_imu.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.ball_imu.orientation.x, _x.ball_imu.orientation.y, _x.ball_imu.orientation.z, _x.ball_imu.orientation.w,) = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 72
      self.ball_imu.orientation_covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 24
      (_x.ball_imu.angular_velocity.x, _x.ball_imu.angular_velocity.y, _x.ball_imu.angular_velocity.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.ball_imu.angular_velocity_covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 24
      (_x.ball_imu.linear_acceleration.x, _x.ball_imu.linear_acceleration.y, _x.ball_imu.linear_acceleration.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.ball_imu.linear_acceleration_covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 12
      (_x.ball_force.header.seq, _x.ball_force.header.stamp.secs, _x.ball_force.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ball_force.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ball_force.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 60
      (_x.ball_force.wrench.force.x, _x.ball_force.wrench.force.y, _x.ball_force.wrench.force.z, _x.ball_force.wrench.torque.x, _x.ball_force.wrench.torque.y, _x.ball_force.wrench.torque.z, _x.ball_odom.header.seq, _x.ball_odom.header.stamp.secs, _x.ball_odom.header.stamp.nsecs,) = _get_struct_6d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ball_odom.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ball_odom.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ball_odom.child_frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ball_odom.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.ball_odom.pose.pose.position.x, _x.ball_odom.pose.pose.position.y, _x.ball_odom.pose.pose.position.z, _x.ball_odom.pose.pose.orientation.x, _x.ball_odom.pose.pose.orientation.y, _x.ball_odom.pose.pose.orientation.z, _x.ball_odom.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 288
      self.ball_odom.pose.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 48
      (_x.ball_odom.twist.twist.linear.x, _x.ball_odom.twist.twist.linear.y, _x.ball_odom.twist.twist.linear.z, _x.ball_odom.twist.twist.angular.x, _x.ball_odom.twist.twist.angular.y, _x.ball_odom.twist.twist.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 288
      self.ball_odom.twist.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 12
      (_x.car_odom.header.seq, _x.car_odom.header.stamp.secs, _x.car_odom.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.car_odom.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.car_odom.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.car_odom.child_frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.car_odom.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.car_odom.pose.pose.position.x, _x.car_odom.pose.pose.position.y, _x.car_odom.pose.pose.position.z, _x.car_odom.pose.pose.orientation.x, _x.car_odom.pose.pose.orientation.y, _x.car_odom.pose.pose.orientation.z, _x.car_odom.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 288
      self.car_odom.pose.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 48
      (_x.car_odom.twist.twist.linear.x, _x.car_odom.twist.twist.linear.y, _x.car_odom.twist.twist.linear.z, _x.car_odom.twist.twist.angular.x, _x.car_odom.twist.twist.angular.y, _x.car_odom.twist.twist.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 288
      self.car_odom.twist.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 48
      (_x.cmd.linear.x, _x.cmd.linear.y, _x.cmd.linear.z, _x.cmd.angular.x, _x.cmd.angular.y, _x.cmd.angular.z,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_7df3I().pack(_x.RelativePosition.position.x, _x.RelativePosition.position.y, _x.RelativePosition.position.z, _x.RelativePosition.orientation.x, _x.RelativePosition.orientation.y, _x.RelativePosition.orientation.z, _x.RelativePosition.orientation.w, _x.theta.data, _x.ball_imu.header.seq, _x.ball_imu.header.stamp.secs, _x.ball_imu.header.stamp.nsecs))
      _x = self.ball_imu.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_4d().pack(_x.ball_imu.orientation.x, _x.ball_imu.orientation.y, _x.ball_imu.orientation.z, _x.ball_imu.orientation.w))
      buff.write(self.ball_imu.orientation_covariance.tostring())
      _x = self
      buff.write(_get_struct_3d().pack(_x.ball_imu.angular_velocity.x, _x.ball_imu.angular_velocity.y, _x.ball_imu.angular_velocity.z))
      buff.write(self.ball_imu.angular_velocity_covariance.tostring())
      _x = self
      buff.write(_get_struct_3d().pack(_x.ball_imu.linear_acceleration.x, _x.ball_imu.linear_acceleration.y, _x.ball_imu.linear_acceleration.z))
      buff.write(self.ball_imu.linear_acceleration_covariance.tostring())
      _x = self
      buff.write(_get_struct_3I().pack(_x.ball_force.header.seq, _x.ball_force.header.stamp.secs, _x.ball_force.header.stamp.nsecs))
      _x = self.ball_force.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_6d3I().pack(_x.ball_force.wrench.force.x, _x.ball_force.wrench.force.y, _x.ball_force.wrench.force.z, _x.ball_force.wrench.torque.x, _x.ball_force.wrench.torque.y, _x.ball_force.wrench.torque.z, _x.ball_odom.header.seq, _x.ball_odom.header.stamp.secs, _x.ball_odom.header.stamp.nsecs))
      _x = self.ball_odom.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.ball_odom.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.ball_odom.pose.pose.position.x, _x.ball_odom.pose.pose.position.y, _x.ball_odom.pose.pose.position.z, _x.ball_odom.pose.pose.orientation.x, _x.ball_odom.pose.pose.orientation.y, _x.ball_odom.pose.pose.orientation.z, _x.ball_odom.pose.pose.orientation.w))
      buff.write(self.ball_odom.pose.covariance.tostring())
      _x = self
      buff.write(_get_struct_6d().pack(_x.ball_odom.twist.twist.linear.x, _x.ball_odom.twist.twist.linear.y, _x.ball_odom.twist.twist.linear.z, _x.ball_odom.twist.twist.angular.x, _x.ball_odom.twist.twist.angular.y, _x.ball_odom.twist.twist.angular.z))
      buff.write(self.ball_odom.twist.covariance.tostring())
      _x = self
      buff.write(_get_struct_3I().pack(_x.car_odom.header.seq, _x.car_odom.header.stamp.secs, _x.car_odom.header.stamp.nsecs))
      _x = self.car_odom.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.car_odom.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.car_odom.pose.pose.position.x, _x.car_odom.pose.pose.position.y, _x.car_odom.pose.pose.position.z, _x.car_odom.pose.pose.orientation.x, _x.car_odom.pose.pose.orientation.y, _x.car_odom.pose.pose.orientation.z, _x.car_odom.pose.pose.orientation.w))
      buff.write(self.car_odom.pose.covariance.tostring())
      _x = self
      buff.write(_get_struct_6d().pack(_x.car_odom.twist.twist.linear.x, _x.car_odom.twist.twist.linear.y, _x.car_odom.twist.twist.linear.z, _x.car_odom.twist.twist.angular.x, _x.car_odom.twist.twist.angular.y, _x.car_odom.twist.twist.angular.z))
      buff.write(self.car_odom.twist.covariance.tostring())
      _x = self
      buff.write(_get_struct_6d().pack(_x.cmd.linear.x, _x.cmd.linear.y, _x.cmd.linear.z, _x.cmd.angular.x, _x.cmd.angular.y, _x.cmd.angular.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.RelativePosition is None:
        self.RelativePosition = geometry_msgs.msg.Pose()
      if self.theta is None:
        self.theta = std_msgs.msg.Float32()
      if self.ball_imu is None:
        self.ball_imu = sensor_msgs.msg.Imu()
      if self.ball_force is None:
        self.ball_force = geometry_msgs.msg.WrenchStamped()
      if self.ball_odom is None:
        self.ball_odom = nav_msgs.msg.Odometry()
      if self.car_odom is None:
        self.car_odom = nav_msgs.msg.Odometry()
      if self.cmd is None:
        self.cmd = geometry_msgs.msg.Twist()
      end = 0
      _x = self
      start = end
      end += 72
      (_x.RelativePosition.position.x, _x.RelativePosition.position.y, _x.RelativePosition.position.z, _x.RelativePosition.orientation.x, _x.RelativePosition.orientation.y, _x.RelativePosition.orientation.z, _x.RelativePosition.orientation.w, _x.theta.data, _x.ball_imu.header.seq, _x.ball_imu.header.stamp.secs, _x.ball_imu.header.stamp.nsecs,) = _get_struct_7df3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ball_imu.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ball_imu.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.ball_imu.orientation.x, _x.ball_imu.orientation.y, _x.ball_imu.orientation.z, _x.ball_imu.orientation.w,) = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 72
      self.ball_imu.orientation_covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 24
      (_x.ball_imu.angular_velocity.x, _x.ball_imu.angular_velocity.y, _x.ball_imu.angular_velocity.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.ball_imu.angular_velocity_covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 24
      (_x.ball_imu.linear_acceleration.x, _x.ball_imu.linear_acceleration.y, _x.ball_imu.linear_acceleration.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.ball_imu.linear_acceleration_covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 12
      (_x.ball_force.header.seq, _x.ball_force.header.stamp.secs, _x.ball_force.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ball_force.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ball_force.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 60
      (_x.ball_force.wrench.force.x, _x.ball_force.wrench.force.y, _x.ball_force.wrench.force.z, _x.ball_force.wrench.torque.x, _x.ball_force.wrench.torque.y, _x.ball_force.wrench.torque.z, _x.ball_odom.header.seq, _x.ball_odom.header.stamp.secs, _x.ball_odom.header.stamp.nsecs,) = _get_struct_6d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ball_odom.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ball_odom.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ball_odom.child_frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.ball_odom.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.ball_odom.pose.pose.position.x, _x.ball_odom.pose.pose.position.y, _x.ball_odom.pose.pose.position.z, _x.ball_odom.pose.pose.orientation.x, _x.ball_odom.pose.pose.orientation.y, _x.ball_odom.pose.pose.orientation.z, _x.ball_odom.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 288
      self.ball_odom.pose.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 48
      (_x.ball_odom.twist.twist.linear.x, _x.ball_odom.twist.twist.linear.y, _x.ball_odom.twist.twist.linear.z, _x.ball_odom.twist.twist.angular.x, _x.ball_odom.twist.twist.angular.y, _x.ball_odom.twist.twist.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 288
      self.ball_odom.twist.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 12
      (_x.car_odom.header.seq, _x.car_odom.header.stamp.secs, _x.car_odom.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.car_odom.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.car_odom.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.car_odom.child_frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.car_odom.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.car_odom.pose.pose.position.x, _x.car_odom.pose.pose.position.y, _x.car_odom.pose.pose.position.z, _x.car_odom.pose.pose.orientation.x, _x.car_odom.pose.pose.orientation.y, _x.car_odom.pose.pose.orientation.z, _x.car_odom.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 288
      self.car_odom.pose.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 48
      (_x.car_odom.twist.twist.linear.x, _x.car_odom.twist.twist.linear.y, _x.car_odom.twist.twist.linear.z, _x.car_odom.twist.twist.angular.x, _x.car_odom.twist.twist.angular.y, _x.car_odom.twist.twist.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 288
      self.car_odom.twist.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 48
      (_x.cmd.linear.x, _x.cmd.linear.y, _x.cmd.linear.z, _x.cmd.angular.x, _x.cmd.angular.y, _x.cmd.angular.z,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_36d = None
def _get_struct_36d():
    global _struct_36d
    if _struct_36d is None:
        _struct_36d = struct.Struct("<36d")
    return _struct_36d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
_struct_6d3I = None
def _get_struct_6d3I():
    global _struct_6d3I
    if _struct_6d3I is None:
        _struct_6d3I = struct.Struct("<6d3I")
    return _struct_6d3I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_7df3I = None
def _get_struct_7df3I():
    global _struct_7df3I
    if _struct_7df3I is None:
        _struct_7df3I = struct.Struct("<7df3I")
    return _struct_7df3I
_struct_9d = None
def _get_struct_9d():
    global _struct_9d
    if _struct_9d is None:
        _struct_9d = struct.Struct("<9d")
    return _struct_9d