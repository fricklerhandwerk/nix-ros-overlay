
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bota-device-driver, catkin, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-factory, rokubimini-manager, rokubimini-msgs, rokubimini-serial }:
buildRosPackage {
  pname = "ros-melodic-bota-driver";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/melodic/bota_driver/0.5.9-1/bota_driver-release-release-melodic-bota_driver-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-melodic-bota_driver-0.5.9-1.tar.gz";
    sha256 = "746165368b4474d44ef6b22e001fcca9f5157c1872c7a74038df4faec9800751";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bota-device-driver rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-factory rokubimini-manager rokubimini-msgs rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains all essential packages of BOTA driver.'';
    license = with lib.licenses; [ asl20 ];
  };
}
