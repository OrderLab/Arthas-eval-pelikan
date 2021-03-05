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
include test/hotkey/key_window/CMakeFiles/check_key_window.dir/depend.make

# Include the progress variables for this target.
include test/hotkey/key_window/CMakeFiles/check_key_window.dir/progress.make

# Include the compile flags for this target's objects.
include test/hotkey/key_window/CMakeFiles/check_key_window.dir/flags.make

test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o: test/hotkey/key_window/CMakeFiles/check_key_window.dir/flags.make
test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o: ../test/hotkey/key_window/check_key_window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brian/a_bug_project/systems/pelikan/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o"
	cd /home/brian/a_bug_project/systems/pelikan/build/test/hotkey/key_window && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/check_key_window.dir/check_key_window.c.o   -c /home/brian/a_bug_project/systems/pelikan/test/hotkey/key_window/check_key_window.c

test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/check_key_window.dir/check_key_window.c.i"
	cd /home/brian/a_bug_project/systems/pelikan/build/test/hotkey/key_window && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/brian/a_bug_project/systems/pelikan/test/hotkey/key_window/check_key_window.c > CMakeFiles/check_key_window.dir/check_key_window.c.i

test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/check_key_window.dir/check_key_window.c.s"
	cd /home/brian/a_bug_project/systems/pelikan/build/test/hotkey/key_window && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/brian/a_bug_project/systems/pelikan/test/hotkey/key_window/check_key_window.c -o CMakeFiles/check_key_window.dir/check_key_window.c.s

test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o.requires:

.PHONY : test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o.requires

test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o.provides: test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o.requires
	$(MAKE) -f test/hotkey/key_window/CMakeFiles/check_key_window.dir/build.make test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o.provides.build
.PHONY : test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o.provides

test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o.provides.build: test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o


# Object files for target check_key_window
check_key_window_OBJECTS = \
"CMakeFiles/check_key_window.dir/check_key_window.c.o"

# External object files for target check_key_window
check_key_window_EXTERNAL_OBJECTS =

test/hotkey/key_window/check_key_window: test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o
test/hotkey/key_window/check_key_window: test/hotkey/key_window/CMakeFiles/check_key_window.dir/build.make
test/hotkey/key_window/check_key_window: hotkey/libhotkey.a
test/hotkey/key_window/check_key_window: ccommon/lib/libccommon-2.1.0.a
test/hotkey/key_window/check_key_window: /usr/local/lib/libcheck.so
test/hotkey/key_window/check_key_window: test/hotkey/key_window/CMakeFiles/check_key_window.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/brian/a_bug_project/systems/pelikan/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable check_key_window"
	cd /home/brian/a_bug_project/systems/pelikan/build/test/hotkey/key_window && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/check_key_window.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/hotkey/key_window/CMakeFiles/check_key_window.dir/build: test/hotkey/key_window/check_key_window

.PHONY : test/hotkey/key_window/CMakeFiles/check_key_window.dir/build

test/hotkey/key_window/CMakeFiles/check_key_window.dir/requires: test/hotkey/key_window/CMakeFiles/check_key_window.dir/check_key_window.c.o.requires

.PHONY : test/hotkey/key_window/CMakeFiles/check_key_window.dir/requires

test/hotkey/key_window/CMakeFiles/check_key_window.dir/clean:
	cd /home/brian/a_bug_project/systems/pelikan/build/test/hotkey/key_window && $(CMAKE_COMMAND) -P CMakeFiles/check_key_window.dir/cmake_clean.cmake
.PHONY : test/hotkey/key_window/CMakeFiles/check_key_window.dir/clean

test/hotkey/key_window/CMakeFiles/check_key_window.dir/depend:
	cd /home/brian/a_bug_project/systems/pelikan/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brian/a_bug_project/systems/pelikan /home/brian/a_bug_project/systems/pelikan/test/hotkey/key_window /home/brian/a_bug_project/systems/pelikan/build /home/brian/a_bug_project/systems/pelikan/build/test/hotkey/key_window /home/brian/a_bug_project/systems/pelikan/build/test/hotkey/key_window/CMakeFiles/check_key_window.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/hotkey/key_window/CMakeFiles/check_key_window.dir/depend

