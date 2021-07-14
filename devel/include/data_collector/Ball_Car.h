// Generated by gencpp from file data_collector/Ball_Car.msg
// DO NOT EDIT!


#ifndef DATA_COLLECTOR_MESSAGE_BALL_CAR_H
#define DATA_COLLECTOR_MESSAGE_BALL_CAR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>
#include <std_msgs/Float32.h>
#include <sensor_msgs/Imu.h>
#include <geometry_msgs/WrenchStamped.h>
#include <nav_msgs/Odometry.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>

namespace data_collector
{
template <class ContainerAllocator>
struct Ball_Car_
{
  typedef Ball_Car_<ContainerAllocator> Type;

  Ball_Car_()
    : RelativePosition()
    , theta()
    , ball_imu()
    , ball_force()
    , ball_odom()
    , car_odom()
    , cmd()  {
    }
  Ball_Car_(const ContainerAllocator& _alloc)
    : RelativePosition(_alloc)
    , theta(_alloc)
    , ball_imu(_alloc)
    , ball_force(_alloc)
    , ball_odom(_alloc)
    , car_odom(_alloc)
    , cmd(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _RelativePosition_type;
  _RelativePosition_type RelativePosition;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _theta_type;
  _theta_type theta;

   typedef  ::sensor_msgs::Imu_<ContainerAllocator>  _ball_imu_type;
  _ball_imu_type ball_imu;

   typedef  ::geometry_msgs::WrenchStamped_<ContainerAllocator>  _ball_force_type;
  _ball_force_type ball_force;

   typedef  ::nav_msgs::Odometry_<ContainerAllocator>  _ball_odom_type;
  _ball_odom_type ball_odom;

   typedef  ::nav_msgs::Odometry_<ContainerAllocator>  _car_odom_type;
  _car_odom_type car_odom;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _cmd_type;
  _cmd_type cmd;





  typedef boost::shared_ptr< ::data_collector::Ball_Car_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::data_collector::Ball_Car_<ContainerAllocator> const> ConstPtr;

}; // struct Ball_Car_

typedef ::data_collector::Ball_Car_<std::allocator<void> > Ball_Car;

typedef boost::shared_ptr< ::data_collector::Ball_Car > Ball_CarPtr;
typedef boost::shared_ptr< ::data_collector::Ball_Car const> Ball_CarConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::data_collector::Ball_Car_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::data_collector::Ball_Car_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::data_collector::Ball_Car_<ContainerAllocator1> & lhs, const ::data_collector::Ball_Car_<ContainerAllocator2> & rhs)
{
  return lhs.RelativePosition == rhs.RelativePosition &&
    lhs.theta == rhs.theta &&
    lhs.ball_imu == rhs.ball_imu &&
    lhs.ball_force == rhs.ball_force &&
    lhs.ball_odom == rhs.ball_odom &&
    lhs.car_odom == rhs.car_odom &&
    lhs.cmd == rhs.cmd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::data_collector::Ball_Car_<ContainerAllocator1> & lhs, const ::data_collector::Ball_Car_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace data_collector

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::data_collector::Ball_Car_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::data_collector::Ball_Car_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::data_collector::Ball_Car_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::data_collector::Ball_Car_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::data_collector::Ball_Car_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::data_collector::Ball_Car_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::data_collector::Ball_Car_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c9510d95b9c45f4cb225ff6805dd3b74";
  }

  static const char* value(const ::data_collector::Ball_Car_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc9510d95b9c45f4cULL;
  static const uint64_t static_value2 = 0xb225ff6805dd3b74ULL;
};

template<class ContainerAllocator>
struct DataType< ::data_collector::Ball_Car_<ContainerAllocator> >
{
  static const char* value()
  {
    return "data_collector/Ball_Car";
  }

  static const char* value(const ::data_collector::Ball_Car_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::data_collector::Ball_Car_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose  RelativePosition\n"
"std_msgs/Float32 theta\n"
"sensor_msgs/Imu ball_imu\n"
"geometry_msgs/WrenchStamped ball_force\n"
"nav_msgs/Odometry ball_odom\n"
"nav_msgs/Odometry car_odom\n"
"geometry_msgs/Twist cmd\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
"================================================================================\n"
"MSG: sensor_msgs/Imu\n"
"# This is a message to hold data from an IMU (Inertial Measurement Unit)\n"
"#\n"
"# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec\n"
"#\n"
"# If the covariance of the measurement is known, it should be filled in (if all you know is the \n"
"# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)\n"
"# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the\n"
"# data a covariance will have to be assumed or gotten from some other source\n"
"#\n"
"# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation \n"
"# estimate), please set element 0 of the associated covariance matrix to -1\n"
"# If you are interpreting this message, please check for a value of -1 in the first element of each \n"
"# covariance matrix, and disregard the associated estimate.\n"
"\n"
"Header header\n"
"\n"
"geometry_msgs/Quaternion orientation\n"
"float64[9] orientation_covariance # Row major about x, y, z axes\n"
"\n"
"geometry_msgs/Vector3 angular_velocity\n"
"float64[9] angular_velocity_covariance # Row major about x, y, z axes\n"
"\n"
"geometry_msgs/Vector3 linear_acceleration\n"
"float64[9] linear_acceleration_covariance # Row major x, y z \n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/WrenchStamped\n"
"# A wrench with reference coordinate frame and timestamp\n"
"Header header\n"
"Wrench wrench\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Wrench\n"
"# This represents force in free space, separated into\n"
"# its linear and angular parts.\n"
"Vector3  force\n"
"Vector3  torque\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/Odometry\n"
"# This represents an estimate of a position and velocity in free space.  \n"
"# The pose in this message should be specified in the coordinate frame given by header.frame_id.\n"
"# The twist in this message should be specified in the coordinate frame given by the child_frame_id\n"
"Header header\n"
"string child_frame_id\n"
"geometry_msgs/PoseWithCovariance pose\n"
"geometry_msgs/TwistWithCovariance twist\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseWithCovariance\n"
"# This represents a pose in free space with uncertainty.\n"
"\n"
"Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/TwistWithCovariance\n"
"# This expresses velocity in free space with uncertainty.\n"
"\n"
"Twist twist\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
;
  }

  static const char* value(const ::data_collector::Ball_Car_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::data_collector::Ball_Car_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.RelativePosition);
      stream.next(m.theta);
      stream.next(m.ball_imu);
      stream.next(m.ball_force);
      stream.next(m.ball_odom);
      stream.next(m.car_odom);
      stream.next(m.cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Ball_Car_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::data_collector::Ball_Car_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::data_collector::Ball_Car_<ContainerAllocator>& v)
  {
    s << indent << "RelativePosition: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.RelativePosition);
    s << indent << "theta: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.theta);
    s << indent << "ball_imu: ";
    s << std::endl;
    Printer< ::sensor_msgs::Imu_<ContainerAllocator> >::stream(s, indent + "  ", v.ball_imu);
    s << indent << "ball_force: ";
    s << std::endl;
    Printer< ::geometry_msgs::WrenchStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.ball_force);
    s << indent << "ball_odom: ";
    s << std::endl;
    Printer< ::nav_msgs::Odometry_<ContainerAllocator> >::stream(s, indent + "  ", v.ball_odom);
    s << indent << "car_odom: ";
    s << std::endl;
    Printer< ::nav_msgs::Odometry_<ContainerAllocator> >::stream(s, indent + "  ", v.car_odom);
    s << indent << "cmd: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DATA_COLLECTOR_MESSAGE_BALL_CAR_H
