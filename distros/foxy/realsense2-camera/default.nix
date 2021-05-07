
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, cv-bridge, eigen, geometry-msgs, image-transport, launch-ros, librealsense2, nav-msgs, opencv3, rclcpp, rclcpp-components, realsense2-camera-msgs, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-realsense2-camera";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/foxy/realsense2_camera/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "c6b1e27024c24a334742f6acf2d6913d778500efc7de3edab5c936dd04286600";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common opencv3 ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge eigen geometry-msgs image-transport launch-ros librealsense2 nav-msgs rclcpp rclcpp-components realsense2-camera-msgs sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RealSense Camera package allowing access to Intel SR300, D400 and L500 3D cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
