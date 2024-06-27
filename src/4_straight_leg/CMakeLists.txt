cmake_minimum_required(VERSION 3.0.2)
project(straight_leg)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  sensor_msgs
  std_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES control_joint
#  CATKIN_DEPENDS roscpp rospy sensor_msgs std_msgs
#  DEPENDS system_lib
)
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(leg src/leg.cpp)

target_link_libraries(leg
  ${catkin_LIBRARIES}
)