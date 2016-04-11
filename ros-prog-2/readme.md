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
* Declaring Dependencies: (declaring other packages on which our's depends)
  - changes in CMakeLists.txt => change `find_package(catkin REQUIRED)` to `find_package(catkin REQUIRED COMPONENTS <package-name>)`
  - changes(optional) in package.xml =>add `<build_depend><package-name></build_depend>` and `<run_depend><packa ge-name></run_depend>`
  
* Declaring an executable:
  - changes in CMakeLists.txt => `add_executable(<executable-name> <source-file-name>)` and `target_link_libraries(<executable-name>${catkin_LIBRABRIES})` 
  
  Note: The first command(add_exe....) declares the name of the executable we want, and a list of source file that should bee combined t form that executable.The second command (target_li....) also does something.

* Building the workspace:
  - run the command from workspace directory(in terminal) `catkin_make`
   
  Note: This command does several configuration steps and make 2 subdirectories (devel and build) within our workspace.This command needed to be executed everytime we recompile.

* Sourcing setup.bash: We need to execute setup.bash created by 'catkin_make' inside the devel subdir. of workspace.
  - run(in terminal): `source setup.bash`

    Note: This sets several enviornmental variables that enables ROS to find package and its executables. This command needed to be done only once even if we modify our code and recompile with catkin_make.


