
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, control-toolbox, eigen, eigen-conversions, geometry-msgs, mavros, mavros-extras, roscpp, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-test-mavros";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/noetic/test_mavros/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "ce1a93c95a6a1a466a96140eceb01dc187c2a98515e18926b38f475966b05dfe";
  };

  buildType = "catkin";
  buildInputs = [ angles cmake-modules ];
  propagatedBuildInputs = [ control-toolbox eigen eigen-conversions geometry-msgs mavros mavros-extras roscpp std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for MAVROS package'';
    license = with lib.licenses; [ bsdOriginal gpl3 lgpl2 ];
  };
}
