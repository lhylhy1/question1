/*
    这是第一题的客户端
*/
// 1.包含头文件
#include "ros/ros.h"
#include "srv/communicate.h"

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");

    // 调用时动态传值,如果通过 launch 的 args 传参，需要传递的参数个数 +3
    if (argc != 1)
    // if (argc != 5)//launch 传参(0-文件路径 1传入的参数 2传入的参数 3节点名称 4日志路径)
    {
        ROS_ERROR("请提交一个整数");
        return 1;
    }
    // 2.初始化 ROS 节点
    ros::init(argc,argv,"client");
    // 3.创建 ROS 句柄
    ros::NodeHandle nh;
    // 4.创建 客户端 对象
    ros::ServiceClient client = nh.serviceClient<srv::communicate>("communicate");
    //等待服务启动成功
    //方式1
    ros::service::waitForService("communicate");
    //方式2
    // client.waitForExistence();
    // 5.组织请求数据
    while (ros::ok())
    {
        
        srv::communicate ai;
        int inputNum;
        std::cout << "请输入一个整数: ";
        std::cin >> inputNum; // 通过键盘输入获取整数
        ai.request.num1 = inputNum; // 将输入的整数赋值给num1
        if (inputNum == -1) break; // 如果用户输入-1，则退出循环
        // 6.发送请求,返回 bool 值，标记是否成功
        bool flag = client.call(ai);
        // 7.处理响应
        if (flag)
        {
            ROS_INFO("请求正常处理,响应结果:%d",ai.response.result);
        }
        else
        {
            ROS_ERROR("请求处理失败....");
            return 1;
        }
    }

    return 0;
}