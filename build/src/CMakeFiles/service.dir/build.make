# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/brian/a_bug_project/systems/pelikan

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/brian/a_bug_project/systems/pelikan/build

# Utility rule file for service.

# Include the progress variables for this target.
include src/CMakeFiles/service.dir/progress.make

service: src/CMakeFiles/service.dir/build.make

.PHONY : service

# Rule to build all files generated by this target.
src/CMakeFiles/service.dir/build: service

.PHONY : src/CMakeFiles/service.dir/build

src/CMakeFiles/service.dir/clean:
	cd /home/brian/a_bug_project/systems/pelikan/build/src && $(CMAKE_COMMAND) -P CMakeFiles/service.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/service.dir/clean

src/CMakeFiles/service.dir/depend:
	cd /home/brian/a_bug_project/systems/pelikan/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brian/a_bug_project/systems/pelikan /home/brian/a_bug_project/systems/pelikan/src /home/brian/a_bug_project/systems/pelikan/build /home/brian/a_bug_project/systems/pelikan/build/src /home/brian/a_bug_project/systems/pelikan/build/src/CMakeFiles/service.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/service.dir/depend

