#!/bin/bash

docker run -it --rm \
  --name master \
  --env ROS_HOSTNAME=master \
  -v "${PWD}"/catkin_ws:/root/catkin_ws \
  -w /root/catkin_ws \
  --net skynet \
  ros:melodic-ros-core roscore
