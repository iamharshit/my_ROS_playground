# my_ROS_playground

####ROS Installation on Ubuntu :

     Type the following commands on Terminal 

* `sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'`
* `sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 0xB01FA116`
* `sudo apt-get install ros-jade-desktop-full`
* `sudo -E rosdep init`
* `rosdep update`

####Before startind working with ROS always run :

* `source /opt/ros/jade/setup.bash`
