# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/ctvr/srsLTE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ctvr/srsLTE/build

# Include any dependencies generated for this target.
include lib/test/phy/CMakeFiles/phy_dl_test.dir/depend.make

# Include the progress variables for this target.
include lib/test/phy/CMakeFiles/phy_dl_test.dir/progress.make

# Include the compile flags for this target's objects.
include lib/test/phy/CMakeFiles/phy_dl_test.dir/flags.make

lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o: lib/test/phy/CMakeFiles/phy_dl_test.dir/flags.make
lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o: ../lib/test/phy/phy_dl_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ctvr/srsLTE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o"
	cd /home/ctvr/srsLTE/build/lib/test/phy && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o   -c /home/ctvr/srsLTE/lib/test/phy/phy_dl_test.c

lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/phy_dl_test.dir/phy_dl_test.c.i"
	cd /home/ctvr/srsLTE/build/lib/test/phy && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ctvr/srsLTE/lib/test/phy/phy_dl_test.c > CMakeFiles/phy_dl_test.dir/phy_dl_test.c.i

lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/phy_dl_test.dir/phy_dl_test.c.s"
	cd /home/ctvr/srsLTE/build/lib/test/phy && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ctvr/srsLTE/lib/test/phy/phy_dl_test.c -o CMakeFiles/phy_dl_test.dir/phy_dl_test.c.s

lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o.requires:

.PHONY : lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o.requires

lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o.provides: lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o.requires
	$(MAKE) -f lib/test/phy/CMakeFiles/phy_dl_test.dir/build.make lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o.provides.build
.PHONY : lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o.provides

lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o.provides.build: lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o


# Object files for target phy_dl_test
phy_dl_test_OBJECTS = \
"CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o"

# External object files for target phy_dl_test
phy_dl_test_EXTERNAL_OBJECTS =

lib/test/phy/phy_dl_test: lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o
lib/test/phy/phy_dl_test: lib/test/phy/CMakeFiles/phy_dl_test.dir/build.make
lib/test/phy/phy_dl_test: lib/src/phy/libsrslte_phy.a
lib/test/phy/phy_dl_test: lib/src/common/libsrslte_common.a
lib/test/phy/phy_dl_test: lib/src/phy/libsrslte_phy.a
lib/test/phy/phy_dl_test: /usr/local/lib/libmbedcrypto.a
lib/test/phy/phy_dl_test: /usr/lib/x86_64-linux-gnu/libfftw3f.so
lib/test/phy/phy_dl_test: lib/test/phy/CMakeFiles/phy_dl_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ctvr/srsLTE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable phy_dl_test"
	cd /home/ctvr/srsLTE/build/lib/test/phy && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/phy_dl_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/test/phy/CMakeFiles/phy_dl_test.dir/build: lib/test/phy/phy_dl_test

.PHONY : lib/test/phy/CMakeFiles/phy_dl_test.dir/build

lib/test/phy/CMakeFiles/phy_dl_test.dir/requires: lib/test/phy/CMakeFiles/phy_dl_test.dir/phy_dl_test.c.o.requires

.PHONY : lib/test/phy/CMakeFiles/phy_dl_test.dir/requires

lib/test/phy/CMakeFiles/phy_dl_test.dir/clean:
	cd /home/ctvr/srsLTE/build/lib/test/phy && $(CMAKE_COMMAND) -P CMakeFiles/phy_dl_test.dir/cmake_clean.cmake
.PHONY : lib/test/phy/CMakeFiles/phy_dl_test.dir/clean

lib/test/phy/CMakeFiles/phy_dl_test.dir/depend:
	cd /home/ctvr/srsLTE/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ctvr/srsLTE /home/ctvr/srsLTE/lib/test/phy /home/ctvr/srsLTE/build /home/ctvr/srsLTE/build/lib/test/phy /home/ctvr/srsLTE/build/lib/test/phy/CMakeFiles/phy_dl_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/test/phy/CMakeFiles/phy_dl_test.dir/depend

