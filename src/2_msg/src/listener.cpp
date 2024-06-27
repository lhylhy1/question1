/*
    这是第二题的订阅者代码
*/

#include "ros/ros.h"
#include "msg/req.h"
#include <iostream>

// 回调函数，当接收到 chatter 话题的消息时调用
void chatterCallback(const msg::req::ConstPtr& msg)
{
    std::string response = "收到: " + msg->data; // 简单的字符串拼接操作
    ROS_INFO("处理后的字符串: %s", response.c_str());
}

int main(int argc, char **argv)
{
    setlocale(LC_ALL,"");

    // 初始化ROS节点
    ros::init(argc, argv, "listener");

    // 创建节点句柄
    ros::NodeHandle n;

    // 创建一个订阅者，订阅"chatter"话题，注册回调函数chatterCallback
    ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);

    // 进入循环，等待回调函数的调用
    ros::spin();

    return 0;
}