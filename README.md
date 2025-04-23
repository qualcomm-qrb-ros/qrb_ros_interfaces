
# QRB ROS Interfaces

## Overview
qrb_ros_interfaces is a ros2 package contains the custom qrb ros messages.

## Quick Start

> **Note：**
> This document 's build & run is the latest.
> If it conflict with the online document, please follow this.

We provide two ways to use this package.

<details>
<summary>Docker</summary>

#### Setup
Please follow this [steps](https://github.com/qualcomm-qrb-ros/qrb_ros_docker?tab=readme-ov-file#quickstart) to setup docker env.


#### Build
How to build it.

#### Run
How to run it.

</details>

<details>
<summary>QIRP-SDK</summary>

#### Setup
Please follow this [steps](https://qualcomm-qrb-ros.github.io/main/getting_started/index.html) to setup qirp-sdk env.


#### Build
```bash
export AMENT_PREFIX_PATH="${OECORE_TARGET_SYSROOT}/usr;${OECORE_NATIVE_SYSROOT}/usr"
export PYTHONPATH=${PYTHONPATH}:${OECORE_TARGET_SYSROOT}/usr/lib/python3.10/site-packages

colcon build --merge-install --cmake-args \
  -DPython3_ROOT_DIR=${OECORE_TARGET_SYSROOT}/usr \
  -DPython3_NumPy_INCLUDE_DIR=${OECORE_TARGET_SYSROOT}/usr/lib/python3.10/site-packages/numpy/core/include \
  -DPYTHON_SOABI=cpython-310-aarch64-linux-gnu -DCMAKE_STAGING_PREFIX=$(pwd)/install \
  -DCMAKE_PREFIX_PATH=$(pwd)/install/share \
  -DBUILD_TESTING=OFF
```


</details>

<br>

You can get more details from [here](https://qualcomm-qrb-ros.github.io/main/index.html).

## Contributing

We would love to have you as a part of the QRB ROS community. Whether you are helping us fix bugs, proposing new features, improving our documentation, or spreading the word, please refer to our [contribution guidelines](./CONTRIBUTING.md) and [code of conduct](./CODE_OF_CONDUCT.md).

- Bug report: If you see an error message or encounter failures, please create a [bug report](../../issues)
- Feature Request: If you have an idea or if there is a capability that is missing and would make development easier and more robust, please submit a [feature request](../../issues)

<Update link with template>


## Authors

* **Zhaoyuan Cheng** - *Initial work* - [zhaoyuan](https://github.com/quic-zhaoyuan)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.


## License

Project is licensed under the [BSD-3-clause License](https://spdx.org/licenses/BSD-3-Clause.html). See [LICENSE](./LICENSE) for the full license text.

