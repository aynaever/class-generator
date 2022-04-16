# C++ Class Generator

A Shell script that automate the creation of c++ classes in Orthodox Canonical Form.

## How to use it ?
Write the names of classes that you want to create in arguments, the script will automatically create for each class two files, one for the header that contains the definition of the class with the .hpp extension. And other one, that contains the implementation of function members with .cpp extension.

`./class.sh	classA classB classC ...`

Also, the script will automatically insert a Header trough the AddHeader command in nvim ( from a plugin ), you can comment the two lines in the script if you are not using it.

## Example
The following command `./class.sh	classA classB`, it will create:

* ClassA.cpp
* ClassA.hpp

* ClassB.cpp
* ClassB.hpp

with classes' definitions and declarations as it's shown in screenshots below:

* ClassA.hpp
![clasAhpp](./screenshots/classAhpp.png)

* ClassA.cpp
![clasAcpp](./screenshots/classAcpp.png)
