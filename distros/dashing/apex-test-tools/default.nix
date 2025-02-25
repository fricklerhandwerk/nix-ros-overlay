
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, ament-cmake-pclint, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-dashing-apex-test-tools";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_test_tools-release/-/archive/release/dashing/apex_test_tools/0.0.1-1/apex_test_tools-release-release-dashing-apex_test_tools-0.0.1-1.tar.gz";
    name = "apex_test_tools-release-release-dashing-apex_test_tools-0.0.1-1.tar.gz";
    sha256 = "b6b2e089f91c2599d15173c41729109d70a03fc1e41823ffa1b293c9fdb461d4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pclint ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-gtest osrf-testing-tools-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = ''The package Apex.OS Test Tools contains test helpers'';
    license = with lib.licenses; [ asl20 ];
  };
}
