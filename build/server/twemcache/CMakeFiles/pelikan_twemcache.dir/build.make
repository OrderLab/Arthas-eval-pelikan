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
include server/twemcache/CMakeFiles/pelikan_twemcache.dir/depend.make

# Include the progress variables for this target.
include server/twemcache/CMakeFiles/pelikan_twemcache.dir/progress.make

# Include the compile flags for this target's objects.
include server/twemcache/CMakeFiles/pelikan_twemcache.dir/flags.make

server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o: server/twemcache/CMakeFiles/pelikan_twemcache.dir/flags.make
server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o: ../src/server/twemcache/admin/process.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brian/a_bug_project/systems/pelikan/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pelikan_twemcache.dir/admin/process.c.o   -c /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/admin/process.c

server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pelikan_twemcache.dir/admin/process.c.i"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/admin/process.c > CMakeFiles/pelikan_twemcache.dir/admin/process.c.i

server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pelikan_twemcache.dir/admin/process.c.s"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/admin/process.c -o CMakeFiles/pelikan_twemcache.dir/admin/process.c.s

server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o.requires:

.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o.requires

server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o.provides: server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o.requires
	$(MAKE) -f server/twemcache/CMakeFiles/pelikan_twemcache.dir/build.make server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o.provides.build
.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o.provides

server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o.provides.build: server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o


server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o: server/twemcache/CMakeFiles/pelikan_twemcache.dir/flags.make
server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o: ../src/server/twemcache/data/process.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brian/a_bug_project/systems/pelikan/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pelikan_twemcache.dir/data/process.c.o   -c /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/data/process.c

server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pelikan_twemcache.dir/data/process.c.i"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/data/process.c > CMakeFiles/pelikan_twemcache.dir/data/process.c.i

server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pelikan_twemcache.dir/data/process.c.s"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/data/process.c -o CMakeFiles/pelikan_twemcache.dir/data/process.c.s

server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o.requires:

.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o.requires

server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o.provides: server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o.requires
	$(MAKE) -f server/twemcache/CMakeFiles/pelikan_twemcache.dir/build.make server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o.provides.build
.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o.provides

server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o.provides.build: server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o


server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o: server/twemcache/CMakeFiles/pelikan_twemcache.dir/flags.make
server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o: ../src/server/twemcache/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brian/a_bug_project/systems/pelikan/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pelikan_twemcache.dir/main.c.o   -c /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/main.c

server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pelikan_twemcache.dir/main.c.i"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/main.c > CMakeFiles/pelikan_twemcache.dir/main.c.i

server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pelikan_twemcache.dir/main.c.s"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/main.c -o CMakeFiles/pelikan_twemcache.dir/main.c.s

server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o.requires:

.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o.requires

server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o.provides: server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o.requires
	$(MAKE) -f server/twemcache/CMakeFiles/pelikan_twemcache.dir/build.make server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o.provides.build
.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o.provides

server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o.provides.build: server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o


server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o: server/twemcache/CMakeFiles/pelikan_twemcache.dir/flags.make
server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o: ../src/server/twemcache/setting.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brian/a_bug_project/systems/pelikan/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pelikan_twemcache.dir/setting.c.o   -c /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/setting.c

server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pelikan_twemcache.dir/setting.c.i"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/setting.c > CMakeFiles/pelikan_twemcache.dir/setting.c.i

server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pelikan_twemcache.dir/setting.c.s"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/setting.c -o CMakeFiles/pelikan_twemcache.dir/setting.c.s

server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o.requires:

.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o.requires

server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o.provides: server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o.requires
	$(MAKE) -f server/twemcache/CMakeFiles/pelikan_twemcache.dir/build.make server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o.provides.build
.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o.provides

server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o.provides.build: server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o


server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o: server/twemcache/CMakeFiles/pelikan_twemcache.dir/flags.make
server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o: ../src/server/twemcache/stats.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brian/a_bug_project/systems/pelikan/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pelikan_twemcache.dir/stats.c.o   -c /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/stats.c

server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pelikan_twemcache.dir/stats.c.i"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/stats.c > CMakeFiles/pelikan_twemcache.dir/stats.c.i

server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pelikan_twemcache.dir/stats.c.s"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && /usr/local/bin/wllvm $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/brian/a_bug_project/systems/pelikan/src/server/twemcache/stats.c -o CMakeFiles/pelikan_twemcache.dir/stats.c.s

server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o.requires:

.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o.requires

server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o.provides: server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o.requires
	$(MAKE) -f server/twemcache/CMakeFiles/pelikan_twemcache.dir/build.make server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o.provides.build
.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o.provides

server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o.provides.build: server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o


# Object files for target pelikan_twemcache
pelikan_twemcache_OBJECTS = \
"CMakeFiles/pelikan_twemcache.dir/admin/process.c.o" \
"CMakeFiles/pelikan_twemcache.dir/data/process.c.o" \
"CMakeFiles/pelikan_twemcache.dir/main.c.o" \
"CMakeFiles/pelikan_twemcache.dir/setting.c.o" \
"CMakeFiles/pelikan_twemcache.dir/stats.c.o"

# External object files for target pelikan_twemcache
pelikan_twemcache_EXTERNAL_OBJECTS =

_bin/pelikan_twemcache: server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o
_bin/pelikan_twemcache: server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o
_bin/pelikan_twemcache: server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o
_bin/pelikan_twemcache: server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o
_bin/pelikan_twemcache: server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o
_bin/pelikan_twemcache: server/twemcache/CMakeFiles/pelikan_twemcache.dir/build.make
_bin/pelikan_twemcache: core/libcore.a
_bin/pelikan_twemcache: hotkey/libhotkey.a
_bin/pelikan_twemcache: protocol/admin/libprotocol_admin.a
_bin/pelikan_twemcache: protocol/data/memcache/libprotocol_memcache.a
_bin/pelikan_twemcache: storage/slab/libslab.a
_bin/pelikan_twemcache: time/libtime.a
_bin/pelikan_twemcache: util/libutil.a
_bin/pelikan_twemcache: ccommon/lib/libccommon-2.1.0.a
_bin/pelikan_twemcache: datapool/libdatapool.a
_bin/pelikan_twemcache: server/twemcache/CMakeFiles/pelikan_twemcache.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/brian/a_bug_project/systems/pelikan/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable ../../_bin/pelikan_twemcache"
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pelikan_twemcache.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
server/twemcache/CMakeFiles/pelikan_twemcache.dir/build: _bin/pelikan_twemcache

.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/build

server/twemcache/CMakeFiles/pelikan_twemcache.dir/requires: server/twemcache/CMakeFiles/pelikan_twemcache.dir/admin/process.c.o.requires
server/twemcache/CMakeFiles/pelikan_twemcache.dir/requires: server/twemcache/CMakeFiles/pelikan_twemcache.dir/data/process.c.o.requires
server/twemcache/CMakeFiles/pelikan_twemcache.dir/requires: server/twemcache/CMakeFiles/pelikan_twemcache.dir/main.c.o.requires
server/twemcache/CMakeFiles/pelikan_twemcache.dir/requires: server/twemcache/CMakeFiles/pelikan_twemcache.dir/setting.c.o.requires
server/twemcache/CMakeFiles/pelikan_twemcache.dir/requires: server/twemcache/CMakeFiles/pelikan_twemcache.dir/stats.c.o.requires

.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/requires

server/twemcache/CMakeFiles/pelikan_twemcache.dir/clean:
	cd /home/brian/a_bug_project/systems/pelikan/build/server/twemcache && $(CMAKE_COMMAND) -P CMakeFiles/pelikan_twemcache.dir/cmake_clean.cmake
.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/clean

server/twemcache/CMakeFiles/pelikan_twemcache.dir/depend:
	cd /home/brian/a_bug_project/systems/pelikan/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brian/a_bug_project/systems/pelikan /home/brian/a_bug_project/systems/pelikan/src/server/twemcache /home/brian/a_bug_project/systems/pelikan/build /home/brian/a_bug_project/systems/pelikan/build/server/twemcache /home/brian/a_bug_project/systems/pelikan/build/server/twemcache/CMakeFiles/pelikan_twemcache.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : server/twemcache/CMakeFiles/pelikan_twemcache.dir/depend

