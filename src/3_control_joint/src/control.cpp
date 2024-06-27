/*  
    这是第三题的代码
*/
#include "ros/ros.h"
#include "sensor_msgs/JointState.h"
#include "std_msgs/Header.h"

int main(int argc, char **argv)
{
  // 初始化ROS节点
  ros::init(argc, argv, "joint_state_publisher_cpp");

  // 创建节点句柄
  ros::NodeHandle n;

  // 创建一个发布者，发布到"joint_states"话题
  ros::Publisher joint_state_pub = n.advertise<sensor_msgs::JointState>("joint_states", 10);

  // 设置发布频率
  ros::Rate loop_rate(1);

  while (ros::ok())
  {
    // 创建JointState消息
    sensor_msgs::JointState joint_state;

    // 填充消息的header
    joint_state.header.stamp = ros::Time::now();
    
    // 填充关节名称和位置
    joint_state.name = {"13_Joint", "12_Joint", "11_Joint", "23_Joint", "22_Joint", "21_Joint", "33_Joint", "32_Joint", "31_Joint", "43_Joint", "42_Joint", "41_Joint", "53_Joint", "52_Joint", "51_Joint", "50_Joint", "500_Joint"};
    joint_state.position = {1.00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0};
    joint_state.velocity = {}; // 留空
    joint_state.effort = {}; // 留空

    // 发布消息
    joint_state_pub.publish(joint_state);

    ros::spinOnce();

    loop_rate.sleep();
  }

  return 0;
}