
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-kinetic-fanuc-lrmate200ib-support";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/kinetic/fanuc_lrmate200ib_support/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "b5c07a7a6355ca3de6c6f378acc6fd6e74852939c82c42dcabc5820e8153f8ed";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      ROS-Industrial support for the Fanuc LR Mate 200iB (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc LR Mate 200iB manipulators. This currently includes the base
      model and the /3L.
    </p>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>Fanuc LR Mate 200iB-200iB/3L datasheet</em>, dated <em>24-Feb-2003</em>.
      All urdfs are based on the default motion and joint velocity limits,
      unless noted otherwise (ie: no support for high speed joints,
      extended / limited motion ranges or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>
    <p><b>Contributors</b>:</p>
    <p>
      This support package has received contributions from: Victor Lamoine.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
