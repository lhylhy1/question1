/*
    这是第四题的代码
*/

#include "ros/ros.h"
#include "sensor_msgs/JointState.h"
#include "std_msgs/Header.h"
#include <cmath>
#include <vector>
#include <chrono>
#include <thread>

// 计算角度的函数
std::vector<double> xyztoang(double x, double y, double z, double yoffh, double hu, double hl) {
    double dyz = std::sqrt(y*y + z*z);
    double lyz = std::sqrt(dyz*dyz - yoffh*yoffh);
    double gamma_yz = -std::atan2(y, z);
    double gamma_h_offset = -std::atan2(-yoffh, lyz);
    double gamma = gamma_yz - gamma_h_offset;

    double lxzp = std::sqrt(lyz*lyz + x*x);
    double n = (lxzp*lxzp - hl*hl - hu*hu) / (2*hu);
    double beta = -std::acos(n / hl);

    double alfa_xzp = -std::atan2(x, lyz);
    double alfa_off = std::acos((hu + n) / lxzp);
    double alfa = alfa_xzp + alfa_off;

    std::vector<double> angles = {gamma, alfa, beta};
    for (double angle : angles) {
        if (std::isnan(angle)) {
            std::cout << x << ", " << y << ", " << z << ", " << yoffh << ", " << hu << ", " << hl << std::endl;
            break;
        }
    }
    return angles;
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "joint_controller_publisher1");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<sensor_msgs::JointState>("/joint_states", 10);
    ros::Rate rate(10);

    std::vector<std::string> joint_names = {
        "13_Joint", "12_Joint", "11_Joint", "23_Joint", "22_Joint", "21_Joint",
        "33_Joint", "32_Joint", "31_Joint", "43_Joint", "42_Joint", "41_Joint",
        "53_Joint", "52_Joint", "51_Joint", "50_Joint", "500_Joint"
    };

    double value = -0.04; // 初始值
    double step = 0.0005; // 每次递增或递减的步长
    bool incrementing = true; // 控制递增或递减的标志

    while (ros::ok()) {
        sensor_msgs::JointState msg;
        msg.header.stamp = ros::Time::now();
        msg.name = joint_names;

        // 更新value变量
        if (incrementing) {
            value += step;
            if (value >= 0.01) { // 达到递增上限，开始递减
                incrementing = false;
            }
        } else {
            value -= step;
            if (value <= -0.04) { // 达到递减下限，开始递增
                incrementing = true;
            }
        }

        double x = value;
        std::vector<double> angles = xyztoang(x, 0.0389, -0.07, 0.0389, 0.0730, 0.0755);
        msg.position = {0, angles[1], (M_PI * (105.0 / 180.0)) + angles[2], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        pub.publish(msg);

        rate.sleep();
    }

    return 0;
}