# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/notebook/Rinobot/Janilson/sensors

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/notebook/Rinobot/Janilson/sensors/build-rinobot-robot

# Include any dependencies generated for this target.
include CMakeFiles/sensors.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sensors.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sensors.dir/flags.make

CMakeFiles/sensors.dir/main.cpp.o: CMakeFiles/sensors.dir/flags.make
CMakeFiles/sensors.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/notebook/Rinobot/Janilson/sensors/build-rinobot-robot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sensors.dir/main.cpp.o"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sensors.dir/main.cpp.o -c /home/notebook/Rinobot/Janilson/sensors/main.cpp

CMakeFiles/sensors.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensors.dir/main.cpp.i"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/notebook/Rinobot/Janilson/sensors/main.cpp > CMakeFiles/sensors.dir/main.cpp.i

CMakeFiles/sensors.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensors.dir/main.cpp.s"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/notebook/Rinobot/Janilson/sensors/main.cpp -o CMakeFiles/sensors.dir/main.cpp.s

CMakeFiles/sensors.dir/Timer.cpp.o: CMakeFiles/sensors.dir/flags.make
CMakeFiles/sensors.dir/Timer.cpp.o: ../Timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/notebook/Rinobot/Janilson/sensors/build-rinobot-robot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sensors.dir/Timer.cpp.o"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sensors.dir/Timer.cpp.o -c /home/notebook/Rinobot/Janilson/sensors/Timer.cpp

CMakeFiles/sensors.dir/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensors.dir/Timer.cpp.i"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/notebook/Rinobot/Janilson/sensors/Timer.cpp > CMakeFiles/sensors.dir/Timer.cpp.i

CMakeFiles/sensors.dir/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensors.dir/Timer.cpp.s"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/notebook/Rinobot/Janilson/sensors/Timer.cpp -o CMakeFiles/sensors.dir/Timer.cpp.s

# Object files for target sensors
sensors_OBJECTS = \
"CMakeFiles/sensors.dir/main.cpp.o" \
"CMakeFiles/sensors.dir/Timer.cpp.o"

# External object files for target sensors
sensors_EXTERNAL_OBJECTS =

sdk/bin/sensors: CMakeFiles/sensors.dir/main.cpp.o
sdk/bin/sensors: CMakeFiles/sensors.dir/Timer.cpp.o
sdk/bin/sensors: CMakeFiles/sensors.dir/build.make
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libalproxies.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libalcommon.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_signals-mt-1_55.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/librttools.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libalvalue.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libalerror.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libqimessaging.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libqitype.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libqi.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_chrono-mt-1_55.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_filesystem-mt-1_55.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_program_options-mt-1_55.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_regex-mt-1_55.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/i686-aldebaran-linux-gnu/sysroot/usr/lib/libdl.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/i686-aldebaran-linux-gnu/sysroot/usr/lib/librt.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_date_time-mt-1_55.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_system-mt-1_55.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_locale-mt-1_55.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_thread-mt-1_55.so
sdk/bin/sensors: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/i686-aldebaran-linux-gnu/sysroot/usr/lib/libpthread.so
sdk/bin/sensors: CMakeFiles/sensors.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/notebook/Rinobot/Janilson/sensors/build-rinobot-robot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable sdk/bin/sensors"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sensors.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sensors.dir/build: sdk/bin/sensors

.PHONY : CMakeFiles/sensors.dir/build

CMakeFiles/sensors.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sensors.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sensors.dir/clean

CMakeFiles/sensors.dir/depend:
	cd /home/notebook/Rinobot/Janilson/sensors/build-rinobot-robot && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/notebook/Rinobot/Janilson/sensors /home/notebook/Rinobot/Janilson/sensors /home/notebook/Rinobot/Janilson/sensors/build-rinobot-robot /home/notebook/Rinobot/Janilson/sensors/build-rinobot-robot /home/notebook/Rinobot/Janilson/sensors/build-rinobot-robot/CMakeFiles/sensors.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sensors.dir/depend

