#!/bin/bash

source /opt/ros/melodic/setup.bash
source /root/catkin_ws/devel/setup.bash
rosrun beginner_tutorials add_two_ints_client.py "$1" "$2"