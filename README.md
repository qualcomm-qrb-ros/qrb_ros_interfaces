<div align="center">
  <h1>QRB ROS Interfaces</h1>
  <p align="center">
  <img src="https://s7d1.scene7.com/is/image/dmqualcommprod/rb3gen2-dev-kits-hero-7" alt="Qualcomm QRB ROS" title="Qualcomm QRB ROS"  width=800 />
  </p>
  <p>ROS interfaces for Qualcomm robotics platforms</p>

  <a href="https://ubuntu.com/download/qualcomm-iot" target="_blank"><img src="https://img.shields.io/badge/Qualcomm%20Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white" alt="Qualcomm Ubuntu"></a>
  <a href="https://docs.ros.org/en/jazzy/" target="_blank"><img src="https://img.shields.io/badge/ROS%20Jazzy-1c428a?style=for-the-badge&logo=ros&logoColor=white" alt="Jazzy"></a>

</div>

---

## Overview

The `qrb_ros_interfaces` is a **collection of ROS 2 interface packages** designed to define and consolidate **custom message, service, and action types** specifically tailored for robust communication within the `QRB ROS` ecosystem. This collection serves as a **centralized repository** for all QRB ROS related communication interfaces, ensuring standardization and consistency across various QRB ROS nodes.

Each package within this collection provides specific interface definitions crucial for enabling seamless interoperability and efficient data exchange between components interacting with QRB hardware or software.

## 🔎 Table of Contents
- [📦 Custom Interface Definitions](#-custom-interface-definitions)
- [🎯 Supported Targets](#-supported-targets)
- [✨ Installation](#-installation)
  - [  Prerequisites](#--prerequisites)
  - [Add Qualcomm IOT PPA repository](#add-qualcomm-iot-ppa-repository)
  - [Install qrb\_ros\_interfaces packages](#install-qrb_ros_interfaces-packages)
- [🚀 Usage](#-usage)
- [👨‍💻 Build from Source](#-build-from-source)
  - [Prerequisites](#prerequisites)
  - [Dependencies](#dependencies)
  - [Build Steps](#build-steps)
- [🤝 Contributing](#-contributing)
- [📜 License](#-license)

## 📦 Custom Interface Definitions
The following table lists the interface packages cureently included in this collection:

| Interface Package Name | Description                       | Interface Types (Contains) |
|-------------------|----------------------------------------|--------------------------|
| `qrb_ros_amr_msgs` | QRB AMR ROS msg                       | message, service, action |
| `qrb_ros_audio_common_msgs` | QRB ROS audio common msgs    | message, action          |
| `qrb_ros_audio_service_msgs` | QRB ROS Audio Service MSGS  | message, service         |
| `qrb_ros_navigation_msgs` | QRB Navigation ROS msg         | message, service         |
| `qrb_ros_robot_base_msgs` | QRB ROS robot base msgs        | message, service         |
| `qrb_ros_sensor_service_msgs` | QRB ROS Sensor Service Interfaces | message, service  |
| `qrb_ros_slam_msgs` | Messages ROS Package for QRB SLAM Service call | message, service |
| `qrb_ros_system_monitor_msgs`  | System monitor interfaces | message, service         |
| `qrb_ros_tensor_list_msgs` | Msgs for model inference      | message                  |
| `qrb_ros_vision_msgs` | Messages for computer vision pipelines | message              |


## 🎯 Supported Targets

<table >
  <tr>
    <th>Development Hardware</th>
    <td>Qualcomm Dragonwing™ RB3 Gen2</td>
    <td>Qualcomm Dragonwing™ IQ-9075 EVK</td>
  </tr>
  <tr>
    <th>Hardware Overview</th>
    <th><a href="https://www.qualcomm.com/developer/hardware/rb3-gen-2-development-kit"><img src="https://s7d1.scene7.com/is/image/dmqualcommprod/rb3-gen2-carousel?fmt=webp-alpha&qlt=85" width="180"/></a></th>
    <th><a href="https://www.qualcomm.com/products/internet-of-things/industrial-processors/iq9-series/iq-9075"><img src="https://s7d1.scene7.com/is/image/dmqualcommprod/dragonwing-IQ-9075-EVK?$QC_Responsive$&fmt=png-alpha" width="160"></a></th>
  </tr>
</table>

---

## ✨ Installation
This section details how to install the `qrb_ros_interfaces` packages. The recommended approach for most users is to install the packages from the Qualcomm PPA repository(if available in QCOM PPA).  

### <a name="prereq"></a>  Prerequisites
- [Install ROS 2 Jazzy](https://docs.ros.org/en/jazzy/index.html)
- [Ubuntu image installation instructions for your target platform](https://ubuntu.com/download/qualcomm-iot)

### Add Qualcomm IOT PPA repository
```shell
sudo add-apt-repository ppa:ubuntu-qcom-iot/qcom-noble-ppa
sudo add-apt-repository ppa:ubuntu-qcom-iot/qirp
sudo apt update
```

### Install qrb_ros_interfaces packages
Install the qrb_ros_interfaces packages using `sudo apt install <package name>`:

```shell
# Example: Install qrb_ros_tensor_list_msgs package
sudo apt install ros-jazzy-qrb-ros-tensor-list-msgs
```
>**Note:**
>- The exact package names (`ros-<distro>-<package-name>`) are determined during the release process.
>- If you encounter issues finding a package, it might not yet be released as a binary or the repository might not be correctly added. Use `apt search <part_of_package_name>` (e.g., `apt search ros-jazzy-qrb-ros-vision-msgs`) to discover available packages.

## 🚀 Usage

```shell
ros2 interface package qrb_ros_tensor_list_msgs
```
Output:
```shell
qrb_ros_tensor_list_msgs/msg/Tensor
qrb_ros_tensor_list_msgs/msg/TensorList
```

```shell
ros2 interface show qrb_ros_tensor_list_msgs/msg/Tensor
```
Output:
```shell
# Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
# SPDX-License-Identifier: BSD-3-Clause-Clear

# name of tensor
string name

# type of tensor data
# 0: "uint8"
# 1: "int8"
# 2: "float32"
# 3: "float64"
int32 data_type

# shape of tensor
uint32[] shape

# data buffer
uint8[] data
```

---

## 👨‍💻 Build from Source
This section provides instructions for building the `qrb_ros_interfaces` packages from source. This approach is suitable for developers who want to contribute to the project or customize the packages.

### Prerequisites
>Refer to [Prerequisites](#prereq) section for installation instructions.

### Dependencies
Install dependencies `ros-dev-tools`:
```shell
sudo apt install ros-dev-tools
```

### Build Steps

1. Clone the repository:

```bash
mkdir -p ~/ros2_ws/src
cd ~/ros2_ws/src
git clone https://github.com/qualcomm-qrb-ros/qrb_ros_interfaces.git
```

2. Resolve dependencies
```shell
cd ~/ros2_ws
rosdep install -i --from-path src --rosdistro jazzy -y
```

3. Build and run
```shell
colcon build
```
Open a new terminal, navigate to ros2_ws, and source the setup files:
```shell
source install/setup.bash
ros2 interface package qrb_ros_tensor_list_msgs
ros2 interface show qrb_ros_tensor_list_msgs/msg/Tensor
```

## 🤝 Contributing

We would love to have you as a part of the QRB ROS community. Whether you are helping us fix bugs, proposing new features, improving our documentation, or spreading the word, please refer to our [contribution guidelines](./CONTRIBUTING.md) and [code of conduct](./CODE_OF_CONDUCT.md).

- Bug report: If you see an error message or encounter failures, please create a [bug report](../../issues)
- Feature Request: If you have an idea or if there is a capability that is missing and would make development easier and more robust, please submit a [feature request](../../issues)


## 📜 License

This project is licensed under the [BSD-3-clause License](https://spdx.org/licenses/BSD-3-Clause.html). See [LICENSE](./LICENSE) for the full license text.
