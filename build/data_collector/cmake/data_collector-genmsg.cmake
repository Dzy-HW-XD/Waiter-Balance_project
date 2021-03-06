# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "data_collector: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idata_collector:/home/ziyudu/catkin_ws/src/data_collector/msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(data_collector_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ziyudu/catkin_ws/src/data_collector/msg/Ball_Car.msg" NAME_WE)
add_custom_target(_data_collector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "data_collector" "/home/ziyudu/catkin_ws/src/data_collector/msg/Ball_Car.msg" "geometry_msgs/WrenchStamped:nav_msgs/Odometry:geometry_msgs/TwistWithCovariance:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:std_msgs/Header:geometry_msgs/Twist:sensor_msgs/Imu:std_msgs/Float32:geometry_msgs/Point:geometry_msgs/Wrench:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(data_collector
  "/home/ziyudu/catkin_ws/src/data_collector/msg/Ball_Car.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/WrenchStamped.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/data_collector
)

### Generating Services

### Generating Module File
_generate_module_cpp(data_collector
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/data_collector
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(data_collector_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(data_collector_generate_messages data_collector_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziyudu/catkin_ws/src/data_collector/msg/Ball_Car.msg" NAME_WE)
add_dependencies(data_collector_generate_messages_cpp _data_collector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(data_collector_gencpp)
add_dependencies(data_collector_gencpp data_collector_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS data_collector_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(data_collector
  "/home/ziyudu/catkin_ws/src/data_collector/msg/Ball_Car.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/WrenchStamped.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/data_collector
)

### Generating Services

### Generating Module File
_generate_module_eus(data_collector
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/data_collector
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(data_collector_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(data_collector_generate_messages data_collector_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziyudu/catkin_ws/src/data_collector/msg/Ball_Car.msg" NAME_WE)
add_dependencies(data_collector_generate_messages_eus _data_collector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(data_collector_geneus)
add_dependencies(data_collector_geneus data_collector_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS data_collector_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(data_collector
  "/home/ziyudu/catkin_ws/src/data_collector/msg/Ball_Car.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/WrenchStamped.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/data_collector
)

### Generating Services

### Generating Module File
_generate_module_lisp(data_collector
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/data_collector
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(data_collector_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(data_collector_generate_messages data_collector_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziyudu/catkin_ws/src/data_collector/msg/Ball_Car.msg" NAME_WE)
add_dependencies(data_collector_generate_messages_lisp _data_collector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(data_collector_genlisp)
add_dependencies(data_collector_genlisp data_collector_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS data_collector_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(data_collector
  "/home/ziyudu/catkin_ws/src/data_collector/msg/Ball_Car.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/WrenchStamped.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/data_collector
)

### Generating Services

### Generating Module File
_generate_module_nodejs(data_collector
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/data_collector
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(data_collector_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(data_collector_generate_messages data_collector_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziyudu/catkin_ws/src/data_collector/msg/Ball_Car.msg" NAME_WE)
add_dependencies(data_collector_generate_messages_nodejs _data_collector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(data_collector_gennodejs)
add_dependencies(data_collector_gennodejs data_collector_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS data_collector_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(data_collector
  "/home/ziyudu/catkin_ws/src/data_collector/msg/Ball_Car.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/WrenchStamped.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/data_collector
)

### Generating Services

### Generating Module File
_generate_module_py(data_collector
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/data_collector
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(data_collector_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(data_collector_generate_messages data_collector_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ziyudu/catkin_ws/src/data_collector/msg/Ball_Car.msg" NAME_WE)
add_dependencies(data_collector_generate_messages_py _data_collector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(data_collector_genpy)
add_dependencies(data_collector_genpy data_collector_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS data_collector_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/data_collector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/data_collector
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(data_collector_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(data_collector_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(data_collector_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/data_collector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/data_collector
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(data_collector_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(data_collector_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(data_collector_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/data_collector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/data_collector
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(data_collector_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(data_collector_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(data_collector_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/data_collector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/data_collector
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(data_collector_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(data_collector_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(data_collector_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/data_collector)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/data_collector\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/data_collector
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(data_collector_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(data_collector_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(data_collector_generate_messages_py geometry_msgs_generate_messages_py)
endif()
