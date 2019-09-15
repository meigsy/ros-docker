#!/bin/bash

docker run -it --rm \
  --name add-two-ints-server \
  --env ROS_HOSTNAME=add-two-ints-server \
  --env ROS_MASTER_URI=http://master:11311 \
  -v "${PWD}"/catkin_ws:/root/catkin_ws \
  -w /root/catkin_ws \
  --net skynet \
  ros:melodic-ros-core ./src/beginner_tutorials/scripts/start_add_two_ints_server.sh
