# Install script for directory: /home/brian/a_bug_project/systems/pelikan/deps/ccommon/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/brian/a_bug_project/systems/pelikan/build/ccommon/lib/libccommon-2.1.0.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libccommon.so.2.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libccommon.so.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libccommon.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/brian/a_bug_project/systems/pelikan/build/ccommon/lib/libccommon.so.2.1.0"
    "/home/brian/a_bug_project/systems/pelikan/build/ccommon/lib/libccommon.so.0"
    "/home/brian/a_bug_project/systems/pelikan/build/ccommon/lib/libccommon.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libccommon.so.2.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libccommon.so.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libccommon.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ccommon-2.1" TYPE DIRECTORY FILES "/home/brian/a_bug_project/systems/pelikan/deps/ccommon/src/../include/" FILES_MATCHING REGEX "/[^/]*$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/brian/a_bug_project/systems/pelikan/build/ccommon/src/buffer/cmake_install.cmake")
  include("/home/brian/a_bug_project/systems/pelikan/build/ccommon/src/channel/cmake_install.cmake")
  include("/home/brian/a_bug_project/systems/pelikan/build/ccommon/src/event/cmake_install.cmake")
  include("/home/brian/a_bug_project/systems/pelikan/build/ccommon/src/hash/cmake_install.cmake")
  include("/home/brian/a_bug_project/systems/pelikan/build/ccommon/src/stats/cmake_install.cmake")
  include("/home/brian/a_bug_project/systems/pelikan/build/ccommon/src/stream/cmake_install.cmake")
  include("/home/brian/a_bug_project/systems/pelikan/build/ccommon/src/time/cmake_install.cmake")

endif()

