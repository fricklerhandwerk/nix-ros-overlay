
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-mavlink";
  version = "2021.3.3-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/kinetic/mavlink/2021.3.3-1.tar.gz";
    name = "2021.3.3-1.tar.gz";
    sha256 = "dee06a1432d00385ca8b22832598f6597c3bbb72c6591ba4cebaceb196250c94";
  };

  buildType = "cmake";
  buildInputs = [ python pythonPackages.future pythonPackages.lxml ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
