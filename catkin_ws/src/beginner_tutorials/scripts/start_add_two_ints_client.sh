#!/bin/bash

source /opt/ros/melodic/setup.bash
source /root/catkin_ws/devel/setup.bash
rosrun beginner_tutorials add_two_ints_client "$1" "$2"