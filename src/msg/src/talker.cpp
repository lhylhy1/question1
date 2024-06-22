#include "ros/ros.h"
#include "msg/req.h"
#include <iostream> // 用于std::getline

int main(int argc, char **argv)
{
    setlocale(LC_ALL,"");

    // 初始化ROS节点
    ros::init(argc, argv, "talker");

    // 创建节点句柄
    ros::NodeHandle n;

    // 创建一个发布者，发布到"chatter"话题上，消息类型为msg::req
    ros::Publisher chatter_pub = n.advertise<msg::req>("chatter", 1000);

    ros::Rate loop_rate(10);

    while (ros::ok())
    {
        msg::req msg;

        std::string input;
        std::cout << "请输入字符串: ";
        std::getline(std::cin, input); // 从键盘读取字符串

        if (!ros::ok()) {
            break; // 如果ROS系统请求关闭（例如，通过Ctrl+C），则退出循环
        }

        msg.data = input;

        ROS_INFO("%s", msg.data.c_str());

        // 发布消息
        chatter_pub.publish(msg);

        ros::spinOnce();

        loop_rate.sleep();
    }

    return 0;
}