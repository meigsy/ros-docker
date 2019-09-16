#!/bin/bash

docker run -it --rm \
  --name dev \
  --env ROS_HOSTNAME=dev \
  --env ROS_MASTER_URI=http://master:11311 \
  -v "${PWD}"/catkin_ws:/root/catkin_ws \
  -w /root/catkin_ws \
  --net skynet \
  ros:melodic-robot