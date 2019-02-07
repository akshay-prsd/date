#!/bin/sh
## Short script to build and pack the library into a debian.
## It will also invoke an installation for the library
if [ ! -d "build" ]; then
	mkdir build
fi
cd build
cmake ..
OUTPUT=$(cpack .. | tail -1)
echo "The package was created in the build directory and is named : $OUTPUT"
echo "You may use sudo dpkg -i <package name> to install the package"