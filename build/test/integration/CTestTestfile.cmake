# CMake generated Testfile for 
# Source directory: /home/brian/a_bug_project/systems/pelikan/test/integration
# Build directory: /home/brian/a_bug_project/systems/pelikan/build/test/integration
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(integration "/usr/bin/python" "test_twemcache.py" "--pmem")
set_tests_properties(integration PROPERTIES  WORKING_DIRECTORY "/home/brian/a_bug_project/systems/pelikan/test/integration")
