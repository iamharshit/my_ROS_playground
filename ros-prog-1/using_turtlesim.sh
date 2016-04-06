# running the master node(a.k.a the blackboard)
roscore


#slave node_1(running the simulator)
rosrun turtlesim turtlesim_node


#slave node_2(controlling the turtle)
rosrun turtlesim turtle_teleop_key
