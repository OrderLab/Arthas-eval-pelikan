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

# Include any dependencies generated for this target.
include ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/depend.make

# Include the progress variables for this target.
include ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/progress.make

# Include the compile flags for this target's objects.
include ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/flags.make

ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o: ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/flags.make
ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o: ../deps/ccommon/test/ring_array/check_ring_array.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brian/a_bug_project/systems/pelikan/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o"
	cd /home/brian/a_bug_project/systems/pelikan/build/ccommon/test/ring_array && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/check_ring_array.dir/check_ring_array.c.o   -c /home/brian/a_bug_project/systems/pelikan/deps/ccommon/test/ring_array/check_ring_array.c

ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/check_ring_array.dir/check_ring_array.c.i"
	cd /home/brian/a_bug_project/systems/pelikan/build/ccommon/test/ring_array && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/brian/a_bug_project/systems/pelikan/deps/ccommon/test/ring_array/check_ring_array.c > CMakeFiles/check_ring_array.dir/check_ring_array.c.i

ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/check_ring_array.dir/check_ring_array.c.s"
	cd /home/brian/a_bug_project/systems/pelikan/build/ccommon/test/ring_array && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/brian/a_bug_project/systems/pelikan/deps/ccommon/test/ring_array/check_ring_array.c -o CMakeFiles/check_ring_array.dir/check_ring_array.c.s

ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o.requires:

.PHONY : ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o.requires

ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o.provides: ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o.requires
	$(MAKE) -f ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/build.make ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o.provides.build
.PHONY : ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o.provides

ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o.provides.build: ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o


# Object files for target check_ring_array
check_ring_array_OBJECTS = \
"CMakeFiles/check_ring_array.dir/check_ring_array.c.o"

# External object files for target check_ring_array
check_ring_array_EXTERNAL_OBJECTS =

ccommon/test/ring_array/check_ring_array: ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o
ccommon/test/ring_array/check_ring_array: ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/build.make
ccommon/test/ring_array/check_ring_array: ccommon/lib/libccommon-2.1.0.a
ccommon/test/ring_array/check_ring_array: /usr/local/lib/libcheck.so
ccommon/test/ring_array/check_ring_array: ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/brian/a_bug_project/systems/pelikan/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable check_ring_array"
	cd /home/brian/a_bug_project/systems/pelikan/build/ccommon/test/ring_array && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/check_ring_array.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/build: ccommon/test/ring_array/check_ring_array

.PHONY : ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/build

ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/requires: ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/check_ring_array.c.o.requires

.PHONY : ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/requires

ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/clean:
	cd /home/brian/a_bug_project/systems/pelikan/build/ccommon/test/ring_array && $(CMAKE_COMMAND) -P CMakeFiles/check_ring_array.dir/cmake_clean.cmake
.PHONY : ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/clean

ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/depend:
	cd /home/brian/a_bug_project/systems/pelikan/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brian/a_bug_project/systems/pelikan /home/brian/a_bug_project/systems/pelikan/deps/ccommon/test/ring_array /home/brian/a_bug_project/systems/pelikan/build /home/brian/a_bug_project/systems/pelikan/build/ccommon/test/ring_array /home/brian/a_bug_project/systems/pelikan/build/ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ccommon/test/ring_array/CMakeFiles/check_ring_array.dir/depend

