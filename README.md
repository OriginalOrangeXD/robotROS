<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/OriginalOrangeXD/robotROS/humble.png">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">ROS2 + microROS</h3>

  <p align="center">
    Basic Robot to improve my knowledge of ROS2 and microROS
    <br />
    <br />
    <br />
    <a href="">Demo Coming Soon</a>
    ·
    <a href="">Feature Request Soon</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

There are lots of ROS projects out there and even more documentation, many projects seem to simple, or too complex for intermediate ROS users, I hope that this project strikes the right balance

Items:
* Use an esp32 microController
* Ubuntu VM 
* Some electronics


<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With


* [![ROS2]]
* [![Humble Hawksbill]]
* [![MicroRos]]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

1. Create a Ubuntu VM
2. Create a bridged network
3. Install [ROS2][https://docs.ros.org/en/rolling/Releases/Release-Humble-Hawksbill.html#installation]
4. Install [microROS][https://micro.ros.org/docs/tutorials/core/first_application_linux/]
5. Start having fun


### Boot up

_Below is an example of what may be needed to run on bootup of virtual machine_ 

1. Source ROS2 so that you can run ROS2 commands
   ```sh
   source /opt/ros/$ROS_DISTRO/setup.bash
   ```

2. Source microROS to get the build and flash commands 
   ```sh
   cd $microROS_directory
   source install/local_setup.bash
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Creating a project

The process of creating a project is fairly simple but takes a fair bit of compute power to compile the demo firmware
1. Create the firmware, this will create a lot of useless stuff but for now it is fine
    ```sh
    ros2 run micro_ros_setup create_firmware_ws.sh freertos esp32
    ```
2. Modify the file _below_ to only export the app you would like, for example for ping_pong
```
src/uros/micro-ROS-demos/rclc/CMakeLists.txt
export_executable(ping_pong)
```
3. Build your firmware using the ros2 commands, then source the Installation

```sh
ros2 run micro_ros_setup configure_firmware.sh int32_publisher -t udp -i [your local machine IP] -p 8888
ros2 run micro_ros_setup build_firmware.sh menuconfig
ros2 run micro_ros_setup build_firmware.sh
```

4. Flash Firmware
```sh  
ros2 run micro_ros_setup flash_firmware.sh
```



<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments


* [ESP32-microROS](https://micro.ros.org/blog/2020/08/27/esp32/)
* [Default MicroRos](https://micro.ros.org/docs/tutorials/core/first_application_linux/)
* [ROS2](https://docs.ros.org/en/rolling/Releases/Release-Humble-Hawksbill.html#installation)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
