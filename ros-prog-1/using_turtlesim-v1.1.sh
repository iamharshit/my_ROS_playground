# running the master node
roscore


#slave node_1(running the simulator)
rosrun turtlesim turtlesim_node __name:=A

#slave node_2(running another simulator)
rosrun turtlesim turtlesim_node __name:=B


#slave node_3(controlling the turtle)
rosrun turtlesim turtle_teleop_key __name:=C

#slave node_4(another node for controlling the turtle)
rosrun turtlesim turtle_teleop_key __name:=D


#Note: -using __name parameter we are overiding the default name that each node tries to write to itself
#      -these are needed because ros does not allow multiple node with the same name
#      -if another node of the same executable file is run without giving it a name(and also the first one is not given name)
#       then the second node would run file but the first node would automatically shut down.
