
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, exotica-collision-scene-fcl-latest, exotica-core, exotica-python, geometry-msgs, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-exotica-core-task-maps";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_core_task_maps/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "e6b78770db972837a0b78a2cc6c6990dfbedc3a1b44c526c818c626db35b5c19";
  };

  buildType = "catkin";
  buildInputs = [ eigen-conversions ];
  checkInputs = [ exotica-collision-scene-fcl-latest rosunit ];
  propagatedBuildInputs = [ exotica-core exotica-python geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common taskmaps provided with EXOTica.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
