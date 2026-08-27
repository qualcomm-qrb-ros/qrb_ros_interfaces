
# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.1] - 2026-07-09

### Added
- `qrb_ros_tensor_list_msgs`: Added `int32` (data_type `8`) as a supported QNN data type.

### Fixed
- Synced version numbers between `package.xml` and `CMakeLists.txt` for `qrb_ros_robot_base_msgs` and `qrb_ros_slam_msgs`.
- Replaced `pull_request_target` with `pull_request` in CI workflows (security requirement).

### Changed
- Updated `Tensor.msg` documentation in README to include all data types and DMA-BUF fields.
- Removed RB3 Gen2 hardware references from README.
- Delegated preflight checks to reusable workflow in `qrb_ros_gh_actions`.

## [2.0.0] - 2026-04-23

### Added
- `qrb_ros_tensor_list_msgs`: Added DMA-BUF transport support to `Tensor.msg`:
  - New fields: `dmabuf_fd`, `dmabuf_size`, `dmabuf_offset`, `dmabuf_ptr` for zero-copy DMA-BUF based tensor data transfer.
  - New data types: `uint16` (4), `float16` (5), `uint32` (6), `uint64` (7).
- Added GitHub Pull Request template (`.github/PULL_REQUEST_TEMPLATE.md`).

### Breaking Changes
- `qrb_ros_tensor_list_msgs/msg/Tensor`: Adding new fields changes the ROS 2 message type hash, breaking wire compatibility with nodes built against `1.0.0`.

## [1.0.0] - 2025-11-28
### Added
- CI pipeline for testing and building the packages.
  - dependabots
  - qirp-sdk-build-checker
  - stale-issues
  - ubuntu-build

### Changed
- Added a `status` colum to the interface table in the README.
- `qrb_ros_sensor_service_msgs` is marked for deprecation.
- Update README for better user experience.

## [0.2.0] - 2025-08-01

### Remved
- Removed interface package list:
  - qrb_ros_manipulator_base_msgs
  - qrb_ros_robot_arm_service_msgs

## [0.1.0] - 2025-04-30

### Added
- First experimental release.
- Interface package list:
  - qrb_ros_amr_msgs
  - qrb_ros_audio_service_msgs
  - qrb_ros_manipulator_base_msgs
  - qrb_ros_navigation_msgs
  - qrb_ros_robot_arm_service_msgs
  - qrb_ros_robot_base_msgs
  - qrb_ros_sensor_service_msgs
  - qrb_ros_slam_msgs
  - qrb_ros_system_monitor_msgs
  - qrb_ros_tensor_list_msgs
  - qrb_ros_vision_msgs
