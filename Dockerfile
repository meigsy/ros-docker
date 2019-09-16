FROM ros:melodic

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y apt-utils vim
RUN apt-get install -y ros-melodic-turtlesim

# place here your application's setup specifics
RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
RUN echo "source /root/catkin_ws/devel/setup.bash" >> ~/.bashrc
