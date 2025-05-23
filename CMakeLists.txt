cmake_minimum_required(VERSION 3.5)
project(qrb_ros_robot_base_msgs VERSION 1.2.3)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "srv/GetControlMode.srv"
  "srv/SetControlMode.srv"
  "srv/Forward.srv"
  "srv/Rotate.srv"
  "srv/SetMotionMode.srv"
  "srv/EmergencyCmd.srv"
  "srv/GetBatteryState.srv"
  "msg/Stop.msg"
  "msg/ChargerCmd.msg"
  "msg/Error.msg"
  "msg/Exception.msg"
  DEPENDENCIES std_msgs
  DEPENDENCIES sensor_msgs
)

set_target_properties(${PROJECT_NAME} PROPERTIES
  VERSION ${PROJECT_VERSION}
  SOVERSION 1
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
