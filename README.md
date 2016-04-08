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

####Basics of working in ROS 

######Master Node->
* Starting ROS master :
`roscore`

######Slave Node->
* Starting a ROS node :
`rosrun <package-name> <executable-name>`

* Get the list of all current running Nodes :
`rosnode list`

* Inspecting a Node :
`rosnode info <node-name>`

* Killing a Node : 
`rosnode kill <node-name>`

######Topic->
*Echoing Messages Published on a Topic :
`rostopic echo <topic-name>`

*Inspecting a Topic :
`rostopic info <topic-name>`

######Message->
*Inspecting a Message type :
`rosmsg show <message-type-name>`

*Publishing message by Hand :
`rostopic pub -r <rate-in-hz> <topic-name> <message-type> <message-content>`

alternative : 
`rostopic pub <topic-name> <message-type> <message-content>`
(format for <message-content> can be got by pressing tab twice)

######Checking for Problem->
`roswtf`

######Note: It may be so that the name of the node may not be exactly same as that of its executable.
