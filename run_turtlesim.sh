#!/bin/bash

# To run this gui app in docker desktop for mac:
#
# - Install brew
# - Install socat: brew install socat
# - Install xquartz: brew install xquartz
# - Start xquartz: open -a Xquartz
# - Start socat: socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
# - Add your IP to the list of hostname/usernames allowed to connect to the x server
#   - xhost + $IP
# - Start your gui app:


open -a Xquartz
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &
SOCAT_PID=$!

docker run -it --rm \
  --name turtlesim_node \
  --env ROS_HOSTNAME=turtlesim_node \
  --env ROS_MASTER_URI=http://master:11311 \
  --env DISPLAY=host.docker.internal:0 \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  --net skynet \
  beginner_tutorials/ros-tutlesim rosrun turtlesim turtlesim_node

kill -9 ${SOCAT_PID}