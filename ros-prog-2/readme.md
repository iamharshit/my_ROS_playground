##Writing ROS programs

###Steps:

#####1)Create Initial Directories
Since ROS programs are organised into packages, prior to writing ROS program we need to create package.

* Create Workspace Directory : `mkdir <directory-name>`
* Create sub-directory : `mkdir <sub-directory-name>`
* Create a ROS package : `catkin_create_pkg <package-name>`
  
Note:The catkin command creates a directory to hold the package and creates 2 configuration files(package.xml and CMakeLists.txt) inside that directory

#####2)Code

Write the ROS program in your preffered programming language (mine is c++) and save it inside your package (i.e with package.xml and CMakeLists.txt)

#####3)Compile the program
