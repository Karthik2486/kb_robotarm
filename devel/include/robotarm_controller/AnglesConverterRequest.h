// Generated by gencpp from file robotarm_controller/AnglesConverterRequest.msg
// DO NOT EDIT!


#ifndef ROBOTARM_CONTROLLER_MESSAGE_ANGLESCONVERTERREQUEST_H
#define ROBOTARM_CONTROLLER_MESSAGE_ANGLESCONVERTERREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotarm_controller
{
template <class ContainerAllocator>
struct AnglesConverterRequest_
{
  typedef AnglesConverterRequest_<ContainerAllocator> Type;

  AnglesConverterRequest_()
    : base(0.0)
    , shoulder(0.0)
    , elbow(0.0)
    , gripper(0.0)  {
    }
  AnglesConverterRequest_(const ContainerAllocator& _alloc)
    : base(0.0)
    , shoulder(0.0)
    , elbow(0.0)
    , gripper(0.0)  {
  (void)_alloc;
    }



   typedef double _base_type;
  _base_type base;

   typedef double _shoulder_type;
  _shoulder_type shoulder;

   typedef double _elbow_type;
  _elbow_type elbow;

   typedef double _gripper_type;
  _gripper_type gripper;





  typedef boost::shared_ptr< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AnglesConverterRequest_

typedef ::robotarm_controller::AnglesConverterRequest_<std::allocator<void> > AnglesConverterRequest;

typedef boost::shared_ptr< ::robotarm_controller::AnglesConverterRequest > AnglesConverterRequestPtr;
typedef boost::shared_ptr< ::robotarm_controller::AnglesConverterRequest const> AnglesConverterRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator1> & lhs, const ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator2> & rhs)
{
  return lhs.base == rhs.base &&
    lhs.shoulder == rhs.shoulder &&
    lhs.elbow == rhs.elbow &&
    lhs.gripper == rhs.gripper;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator1> & lhs, const ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robotarm_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "19b04e0ebe735f18fbbd5aea9d85b833";
  }

  static const char* value(const ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x19b04e0ebe735f18ULL;
  static const uint64_t static_value2 = 0xfbbd5aea9d85b833ULL;
};

template<class ContainerAllocator>
struct DataType< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotarm_controller/AnglesConverterRequest";
  }

  static const char* value(const ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 base\n"
"float64 shoulder\n"
"float64 elbow \n"
"float64 gripper\n"
;
  }

  static const char* value(const ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.base);
      stream.next(m.shoulder);
      stream.next(m.elbow);
      stream.next(m.gripper);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AnglesConverterRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotarm_controller::AnglesConverterRequest_<ContainerAllocator>& v)
  {
    s << indent << "base: ";
    Printer<double>::stream(s, indent + "  ", v.base);
    s << indent << "shoulder: ";
    Printer<double>::stream(s, indent + "  ", v.shoulder);
    s << indent << "elbow: ";
    Printer<double>::stream(s, indent + "  ", v.elbow);
    s << indent << "gripper: ";
    Printer<double>::stream(s, indent + "  ", v.gripper);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTARM_CONTROLLER_MESSAGE_ANGLESCONVERTERREQUEST_H