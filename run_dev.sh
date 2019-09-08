#!/bin/bash

docker run -it --rm \
  --net ros-docker_ros \
  --name dev \
  --env ROS_HOSTNAME=talker \
  --env ROS_MASTER_URI=http://master:11311 \
  -v "${PWD}"/catkin_ws:/root/catkin_ws \
  -w /root/catkin_ws \
  ros:melodic-robot
