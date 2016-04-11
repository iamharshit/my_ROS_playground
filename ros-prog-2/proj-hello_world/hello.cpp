#include<ros/ros.h>                      //includes all the header files from the standard classes

int main(int argc,char **argv){
    ros::init(argc,arv,"hello_world");   //does some kind of initialization
    
    ros::NodeHandle nh;                  //creates an object which helps in comm. b/w rosmaster(aka roscore) and the current node
    
    ROS_INFO_STREAM("Hello World")       //it generates an inforational message sent to different screens
}
