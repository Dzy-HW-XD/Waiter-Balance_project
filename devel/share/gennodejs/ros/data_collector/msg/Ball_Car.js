// Auto-generated. Do not edit!

// (in-package data_collector.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');
let nav_msgs = _finder('nav_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Ball_Car {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.RelativePosition = null;
      this.theta = null;
      this.ball_imu = null;
      this.ball_force = null;
      this.ball_odom = null;
      this.car_odom = null;
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('RelativePosition')) {
        this.RelativePosition = initObj.RelativePosition
      }
      else {
        this.RelativePosition = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('ball_imu')) {
        this.ball_imu = initObj.ball_imu
      }
      else {
        this.ball_imu = new sensor_msgs.msg.Imu();
      }
      if (initObj.hasOwnProperty('ball_force')) {
        this.ball_force = initObj.ball_force
      }
      else {
        this.ball_force = new geometry_msgs.msg.WrenchStamped();
      }
      if (initObj.hasOwnProperty('ball_odom')) {
        this.ball_odom = initObj.ball_odom
      }
      else {
        this.ball_odom = new nav_msgs.msg.Odometry();
      }
      if (initObj.hasOwnProperty('car_odom')) {
        this.car_odom = initObj.car_odom
      }
      else {
        this.car_odom = new nav_msgs.msg.Odometry();
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ball_Car
    // Serialize message field [RelativePosition]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.RelativePosition, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.theta, buffer, bufferOffset);
    // Serialize message field [ball_imu]
    bufferOffset = sensor_msgs.msg.Imu.serialize(obj.ball_imu, buffer, bufferOffset);
    // Serialize message field [ball_force]
    bufferOffset = geometry_msgs.msg.WrenchStamped.serialize(obj.ball_force, buffer, bufferOffset);
    // Serialize message field [ball_odom]
    bufferOffset = nav_msgs.msg.Odometry.serialize(obj.ball_odom, buffer, bufferOffset);
    // Serialize message field [car_odom]
    bufferOffset = nav_msgs.msg.Odometry.serialize(obj.car_odom, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ball_Car
    let len;
    let data = new Ball_Car(null);
    // Deserialize message field [RelativePosition]
    data.RelativePosition = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [ball_imu]
    data.ball_imu = sensor_msgs.msg.Imu.deserialize(buffer, bufferOffset);
    // Deserialize message field [ball_force]
    data.ball_force = geometry_msgs.msg.WrenchStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [ball_odom]
    data.ball_odom = nav_msgs.msg.Odometry.deserialize(buffer, bufferOffset);
    // Deserialize message field [car_odom]
    data.car_odom = nav_msgs.msg.Odometry.deserialize(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Imu.getMessageSize(object.ball_imu);
    length += geometry_msgs.msg.WrenchStamped.getMessageSize(object.ball_force);
    length += nav_msgs.msg.Odometry.getMessageSize(object.ball_odom);
    length += nav_msgs.msg.Odometry.getMessageSize(object.car_odom);
    return length + 108;
  }

  static datatype() {
    // Returns string type for a message object
    return 'data_collector/Ball_Car';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9510d95b9c45f4cb225ff6805dd3b74';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose  RelativePosition
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ball_Car(null);
    if (msg.RelativePosition !== undefined) {
      resolved.RelativePosition = geometry_msgs.msg.Pose.Resolve(msg.RelativePosition)
    }
    else {
      resolved.RelativePosition = new geometry_msgs.msg.Pose()
    }

    if (msg.theta !== undefined) {
      resolved.theta = std_msgs.msg.Float32.Resolve(msg.theta)
    }
    else {
      resolved.theta = new std_msgs.msg.Float32()
    }

    if (msg.ball_imu !== undefined) {
      resolved.ball_imu = sensor_msgs.msg.Imu.Resolve(msg.ball_imu)
    }
    else {
      resolved.ball_imu = new sensor_msgs.msg.Imu()
    }

    if (msg.ball_force !== undefined) {
      resolved.ball_force = geometry_msgs.msg.WrenchStamped.Resolve(msg.ball_force)
    }
    else {
      resolved.ball_force = new geometry_msgs.msg.WrenchStamped()
    }

    if (msg.ball_odom !== undefined) {
      resolved.ball_odom = nav_msgs.msg.Odometry.Resolve(msg.ball_odom)
    }
    else {
      resolved.ball_odom = new nav_msgs.msg.Odometry()
    }

    if (msg.car_odom !== undefined) {
      resolved.car_odom = nav_msgs.msg.Odometry.Resolve(msg.car_odom)
    }
    else {
      resolved.car_odom = new nav_msgs.msg.Odometry()
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = geometry_msgs.msg.Twist.Resolve(msg.cmd)
    }
    else {
      resolved.cmd = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = Ball_Car;
