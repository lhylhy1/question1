// Generated by gencpp from file srv/communicateRequest.msg
// DO NOT EDIT!


#ifndef SRV_MESSAGE_COMMUNICATEREQUEST_H
#define SRV_MESSAGE_COMMUNICATEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace srv
{
template <class ContainerAllocator>
struct communicateRequest_
{
  typedef communicateRequest_<ContainerAllocator> Type;

  communicateRequest_()
    : num1(0)  {
    }
  communicateRequest_(const ContainerAllocator& _alloc)
    : num1(0)  {
  (void)_alloc;
    }



   typedef int32_t _num1_type;
  _num1_type num1;





  typedef boost::shared_ptr< ::srv::communicateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::srv::communicateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct communicateRequest_

typedef ::srv::communicateRequest_<std::allocator<void> > communicateRequest;

typedef boost::shared_ptr< ::srv::communicateRequest > communicateRequestPtr;
typedef boost::shared_ptr< ::srv::communicateRequest const> communicateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::srv::communicateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::srv::communicateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::srv::communicateRequest_<ContainerAllocator1> & lhs, const ::srv::communicateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.num1 == rhs.num1;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::srv::communicateRequest_<ContainerAllocator1> & lhs, const ::srv::communicateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace srv

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::srv::communicateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::srv::communicateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::srv::communicateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::srv::communicateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srv::communicateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srv::communicateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::srv::communicateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8ebc68ae8e22b48f76a983ce033a6149";
  }

  static const char* value(const ::srv::communicateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8ebc68ae8e22b48fULL;
  static const uint64_t static_value2 = 0x76a983ce033a6149ULL;
};

template<class ContainerAllocator>
struct DataType< ::srv::communicateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "srv/communicateRequest";
  }

  static const char* value(const ::srv::communicateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::srv::communicateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 客户端请求时发送的两个数字\n"
"int32 num1\n"
"\n"
;
  }

  static const char* value(const ::srv::communicateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::srv::communicateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num1);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct communicateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::srv::communicateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::srv::communicateRequest_<ContainerAllocator>& v)
  {
    s << indent << "num1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num1);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SRV_MESSAGE_COMMUNICATEREQUEST_H
