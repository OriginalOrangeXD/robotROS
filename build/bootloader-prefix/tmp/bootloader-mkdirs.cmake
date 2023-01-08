# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/robby/esp/esp-idf/components/bootloader/subproject"
  "/home/robby/esp/micro_ros_espidf_component/examples/int32_publisher/build/bootloader"
  "/home/robby/esp/micro_ros_espidf_component/examples/int32_publisher/build/bootloader-prefix"
  "/home/robby/esp/micro_ros_espidf_component/examples/int32_publisher/build/bootloader-prefix/tmp"
  "/home/robby/esp/micro_ros_espidf_component/examples/int32_publisher/build/bootloader-prefix/src/bootloader-stamp"
  "/home/robby/esp/micro_ros_espidf_component/examples/int32_publisher/build/bootloader-prefix/src"
  "/home/robby/esp/micro_ros_espidf_component/examples/int32_publisher/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/robby/esp/micro_ros_espidf_component/examples/int32_publisher/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/robby/esp/micro_ros_espidf_component/examples/int32_publisher/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
