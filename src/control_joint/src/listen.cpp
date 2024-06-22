/*  
    订阅小乌龟的位姿: 时时获取小乌龟在窗体中的坐标并打印
    准备工作:
        1.获取话题名称 /turtle1/pose
        2.获取消息类型 sensor_msgs/JointState
        3.运行前启动 sensor_msgs_node 与 turtle_teleop_key 节点

    实现流程:
        1.包含头文件
        2.初始化 ROS 节点
        3.创建 ROS 句柄
        4.创建订阅者对象
        5.回调函数处理订阅的数据
        6.spin
*/

#include "ros/ros.h"
#include "sensor_msgs/JointState.h"

void doJointState(const boost::shared_ptr<const sensor_msgs::JointState>& p) {
    if (!p) return; // 检查指针是否为空

    // 检查向量是否为空，以避免访问空向量导致的错误
    std::string name = p->name.empty() ? "N/A" : p->name[0];
    double position = p->position.empty() ? 0.0 : p->position[0];
    double velocity = p->velocity.empty() ? 0.0 : p->velocity[0];
    double effort = p->effort.empty() ? 0.0 : p->effort[0];

    ROS_INFO("Header Seq: %u, Stamp: %.2f, Frame ID: %s, Name: %s, Position: %.2f, Velocity: %.2f, Effort: %.2f",
        p->header.seq, p->header.stamp.toSec(), p->header.frame_id.c_str(), name.c_str(), position, velocity, effort);
}
int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    // 2.初始化 ROS 节点
    ros::init(argc,argv,"sub_pose");
    // 3.创建 ROS 句柄
    ros::NodeHandle nh;
    // 4.创建订阅者对象
    ros::Subscriber sub = nh.subscribe<sensor_msgs::JointState>("/joint_states",1000,doJointState);
    // 5.回调函数处理订阅的数据
    // 6.spin
    ros::spin();
    return 0;
}