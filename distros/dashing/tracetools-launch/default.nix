
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, launch-ros, pythonPackages, tracetools-trace }:
buildRosPackage {
  pname = "ros-dashing-tracetools-launch";
  version = "0.2.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/ros-tracing/ros2_tracing-release/-/archive/release/dashing/tracetools_launch/0.2.8-1/ros2_tracing-release-release-dashing-tracetools_launch-0.2.8-1.tar.gz";
    name = "ros2_tracing-release-release-dashing-tracetools_launch-0.2.8-1.tar.gz";
    sha256 = "79e8f22eefe5b15423eb3d57822ef407a03b0bd4a9cca40bae1eeeddc7acac4e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ launch launch-ros tracetools-trace ];

  meta = {
    description = ''Launch integration for tracing.'';
    license = with lib.licenses; [ asl20 ];
  };
}
