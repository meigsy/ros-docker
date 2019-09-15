#!/bin/bash

docker run -it --rm \
  --name listener \
  --env ROS_HOSTNAME=listener \
  --env ROS_MASTER_URI=http://master:11311 \
  -v "${PWD}"/catkin_ws:/root/catkin_ws \
  -w /root/catkin_ws \
  --net skynet \
  ros:melodic-ros-core ./src/beginner_tutorials/scripts/start_listener.sh
