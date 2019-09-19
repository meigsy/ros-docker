#!/bin/bash

docker run -it --rm \
  --name turtle_teleop_key \
  --env ROS_HOSTNAME=turtle_teleop_key \
  --env ROS_MASTER_URI=http://master:11311 \
  --net skynet \
  beginner_tutorials/ros-tutlesim rosrun turtlesim turtle_teleop_key