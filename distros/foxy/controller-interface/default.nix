
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, hardware-interface, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-foxy-controller-interface";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/controller_interface/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "1a5dd311c14074233172bd80b22d0dfac019864f09fa7c14952f6aa2d0f6a082";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of controller_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
