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
include test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/depend.make

# Include the progress variables for this target.
include test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/progress.make

# Include the compile flags for this target's objects.
include test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/flags.make

test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o: test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/flags.make
test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o: ../test/storage/cuckoo_pmem/check_cuckoo_pmem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brian/a_bug_project/systems/pelikan/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o"
	cd /home/brian/a_bug_project/systems/pelikan/build/test/storage/cuckoo_pmem && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o   -c /home/brian/a_bug_project/systems/pelikan/test/storage/cuckoo_pmem/check_cuckoo_pmem.c

test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.i"
	cd /home/brian/a_bug_project/systems/pelikan/build/test/storage/cuckoo_pmem && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/brian/a_bug_project/systems/pelikan/test/storage/cuckoo_pmem/check_cuckoo_pmem.c > CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.i

test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.s"
	cd /home/brian/a_bug_project/systems/pelikan/build/test/storage/cuckoo_pmem && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/brian/a_bug_project/systems/pelikan/test/storage/cuckoo_pmem/check_cuckoo_pmem.c -o CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.s

test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o.requires:

.PHONY : test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o.requires

test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o.provides: test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o.requires
	$(MAKE) -f test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/build.make test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o.provides.build
.PHONY : test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o.provides

test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o.provides.build: test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o


# Object files for target check_cuckoo_pmem
check_cuckoo_pmem_OBJECTS = \
"CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o"

# External object files for target check_cuckoo_pmem
check_cuckoo_pmem_EXTERNAL_OBJECTS =

test/storage/cuckoo_pmem/check_cuckoo_pmem: test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o
test/storage/cuckoo_pmem/check_cuckoo_pmem: test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/build.make
test/storage/cuckoo_pmem/check_cuckoo_pmem: storage/cuckoo/libcuckoo.a
test/storage/cuckoo_pmem/check_cuckoo_pmem: time/libtime.a
test/storage/cuckoo_pmem/check_cuckoo_pmem: ccommon/lib/libccommon-2.1.0.a
test/storage/cuckoo_pmem/check_cuckoo_pmem: /usr/local/lib/libcheck.so
test/storage/cuckoo_pmem/check_cuckoo_pmem: datapool/libdatapool.a
test/storage/cuckoo_pmem/check_cuckoo_pmem: test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/brian/a_bug_project/systems/pelikan/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable check_cuckoo_pmem"
	cd /home/brian/a_bug_project/systems/pelikan/build/test/storage/cuckoo_pmem && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/check_cuckoo_pmem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/build: test/storage/cuckoo_pmem/check_cuckoo_pmem

.PHONY : test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/build

test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/requires: test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/check_cuckoo_pmem.c.o.requires

.PHONY : test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/requires

test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/clean:
	cd /home/brian/a_bug_project/systems/pelikan/build/test/storage/cuckoo_pmem && $(CMAKE_COMMAND) -P CMakeFiles/check_cuckoo_pmem.dir/cmake_clean.cmake
.PHONY : test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/clean

test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/depend:
	cd /home/brian/a_bug_project/systems/pelikan/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brian/a_bug_project/systems/pelikan /home/brian/a_bug_project/systems/pelikan/test/storage/cuckoo_pmem /home/brian/a_bug_project/systems/pelikan/build /home/brian/a_bug_project/systems/pelikan/build/test/storage/cuckoo_pmem /home/brian/a_bug_project/systems/pelikan/build/test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/storage/cuckoo_pmem/CMakeFiles/check_cuckoo_pmem.dir/depend

