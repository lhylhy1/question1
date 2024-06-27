/*
    这是第一题的服务端代码
*/
#include "ros/ros.h"
#include "srv/communicate.h"

// bool 返回值由于标志是否处理成功
bool doReq(srv::communicate::Request& req,
          srv::communicate::Response& resp){
    int num1 = req.num1;
 
    ROS_INFO("服务器接收到的请求数据为:num1 = %d",num1);

    //逻辑处理
    if (num1 < 0)
    {
        ROS_ERROR("提交的数据异常:数据不可以为负数");
        return false;
    }

    //如果没有异常，那么相加并将结果赋值给 resp
    resp.result = num1 + 1;
    return true;


}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    // 2.初始化 ROS 节点
    ros::init(argc,argv,"server");
    // 3.创建 ROS 句柄
    ros::NodeHandle nh;
    // 4.创建 服务 对象
    ros::ServiceServer server = nh.advertiseService("communicate",doReq);
    ROS_INFO("服务已经启动....");
    //     5.回调函数处理请求并产生响应
    //     6.由于请求有多个，需要调用 ros::spin()
    ros::spin();
    return 0;
}