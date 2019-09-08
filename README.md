# ros-docker

## start ros master
docker-compose up

## start dev container
./run_dev.sh

## initialize catkin workspace (in dev container)
cd ~/catkin_ws
catkin_make

## overlay your workspace on top of this environment (in dev container)
source devel/setup.bash

### check that sourcing worked (your path should be in this output)
echo $ROS_PACKAGE_PATH
