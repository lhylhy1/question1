# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lsklsk/task/question1/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lsklsk/task/question1/build

# Include any dependencies generated for this target.
include straight_leg/CMakeFiles/leg.dir/depend.make

# Include the progress variables for this target.
include straight_leg/CMakeFiles/leg.dir/progress.make

# Include the compile flags for this target's objects.
include straight_leg/CMakeFiles/leg.dir/flags.make

straight_leg/CMakeFiles/leg.dir/src/leg.cpp.o: straight_leg/CMakeFiles/leg.dir/flags.make
straight_leg/CMakeFiles/leg.dir/src/leg.cpp.o: /home/lsklsk/task/question1/src/straight_leg/src/leg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lsklsk/task/question1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object straight_leg/CMakeFiles/leg.dir/src/leg.cpp.o"
	cd /home/lsklsk/task/question1/build/straight_leg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/leg.dir/src/leg.cpp.o -c /home/lsklsk/task/question1/src/straight_leg/src/leg.cpp

straight_leg/CMakeFiles/leg.dir/src/leg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/leg.dir/src/leg.cpp.i"
	cd /home/lsklsk/task/question1/build/straight_leg && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lsklsk/task/question1/src/straight_leg/src/leg.cpp > CMakeFiles/leg.dir/src/leg.cpp.i

straight_leg/CMakeFiles/leg.dir/src/leg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/leg.dir/src/leg.cpp.s"
	cd /home/lsklsk/task/question1/build/straight_leg && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lsklsk/task/question1/src/straight_leg/src/leg.cpp -o CMakeFiles/leg.dir/src/leg.cpp.s

# Object files for target leg
leg_OBJECTS = \
"CMakeFiles/leg.dir/src/leg.cpp.o"

# External object files for target leg
leg_EXTERNAL_OBJECTS =

/home/lsklsk/task/question1/devel/lib/straight_leg/leg: straight_leg/CMakeFiles/leg.dir/src/leg.cpp.o
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: straight_leg/CMakeFiles/leg.dir/build.make
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /opt/ros/noetic/lib/libroscpp.so
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /opt/ros/noetic/lib/librosconsole.so
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /opt/ros/noetic/lib/librostime.so
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /opt/ros/noetic/lib/libcpp_common.so
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/lsklsk/task/question1/devel/lib/straight_leg/leg: straight_leg/CMakeFiles/leg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lsklsk/task/question1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/lsklsk/task/question1/devel/lib/straight_leg/leg"
	cd /home/lsklsk/task/question1/build/straight_leg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/leg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
straight_leg/CMakeFiles/leg.dir/build: /home/lsklsk/task/question1/devel/lib/straight_leg/leg

.PHONY : straight_leg/CMakeFiles/leg.dir/build

straight_leg/CMakeFiles/leg.dir/clean:
	cd /home/lsklsk/task/question1/build/straight_leg && $(CMAKE_COMMAND) -P CMakeFiles/leg.dir/cmake_clean.cmake
.PHONY : straight_leg/CMakeFiles/leg.dir/clean

straight_leg/CMakeFiles/leg.dir/depend:
	cd /home/lsklsk/task/question1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lsklsk/task/question1/src /home/lsklsk/task/question1/src/straight_leg /home/lsklsk/task/question1/build /home/lsklsk/task/question1/build/straight_leg /home/lsklsk/task/question1/build/straight_leg/CMakeFiles/leg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : straight_leg/CMakeFiles/leg.dir/depend

