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
CMAKE_SOURCE_DIR = /home/notebook/Rinobot/Janilson/janilson

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/notebook/Rinobot/Janilson/janilson/build-rinobot-robot

# Include any dependencies generated for this target.
include CMakeFiles/nao.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nao.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nao.dir/flags.make

CMakeFiles/nao.dir/main.cpp.o: CMakeFiles/nao.dir/flags.make
CMakeFiles/nao.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/notebook/Rinobot/Janilson/janilson/build-rinobot-robot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/nao.dir/main.cpp.o"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nao.dir/main.cpp.o -c /home/notebook/Rinobot/Janilson/janilson/main.cpp

CMakeFiles/nao.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nao.dir/main.cpp.i"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/notebook/Rinobot/Janilson/janilson/main.cpp > CMakeFiles/nao.dir/main.cpp.i

CMakeFiles/nao.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nao.dir/main.cpp.s"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/notebook/Rinobot/Janilson/janilson/main.cpp -o CMakeFiles/nao.dir/main.cpp.s

CMakeFiles/nao.dir/src/NAO.cpp.o: CMakeFiles/nao.dir/flags.make
CMakeFiles/nao.dir/src/NAO.cpp.o: ../src/NAO.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/notebook/Rinobot/Janilson/janilson/build-rinobot-robot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/nao.dir/src/NAO.cpp.o"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nao.dir/src/NAO.cpp.o -c /home/notebook/Rinobot/Janilson/janilson/src/NAO.cpp

CMakeFiles/nao.dir/src/NAO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nao.dir/src/NAO.cpp.i"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/notebook/Rinobot/Janilson/janilson/src/NAO.cpp > CMakeFiles/nao.dir/src/NAO.cpp.i

CMakeFiles/nao.dir/src/NAO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nao.dir/src/NAO.cpp.s"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/notebook/Rinobot/Janilson/janilson/src/NAO.cpp -o CMakeFiles/nao.dir/src/NAO.cpp.s

CMakeFiles/nao.dir/src/Timer.cpp.o: CMakeFiles/nao.dir/flags.make
CMakeFiles/nao.dir/src/Timer.cpp.o: ../src/Timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/notebook/Rinobot/Janilson/janilson/build-rinobot-robot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/nao.dir/src/Timer.cpp.o"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nao.dir/src/Timer.cpp.o -c /home/notebook/Rinobot/Janilson/janilson/src/Timer.cpp

CMakeFiles/nao.dir/src/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nao.dir/src/Timer.cpp.i"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/notebook/Rinobot/Janilson/janilson/src/Timer.cpp > CMakeFiles/nao.dir/src/Timer.cpp.i

CMakeFiles/nao.dir/src/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nao.dir/src/Timer.cpp.s"
	/home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/bin/i686-aldebaran-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/notebook/Rinobot/Janilson/janilson/src/Timer.cpp -o CMakeFiles/nao.dir/src/Timer.cpp.s

# Object files for target nao
nao_OBJECTS = \
"CMakeFiles/nao.dir/main.cpp.o" \
"CMakeFiles/nao.dir/src/NAO.cpp.o" \
"CMakeFiles/nao.dir/src/Timer.cpp.o"

# External object files for target nao
nao_EXTERNAL_OBJECTS =

sdk/bin/nao: CMakeFiles/nao.dir/main.cpp.o
sdk/bin/nao: CMakeFiles/nao.dir/src/NAO.cpp.o
sdk/bin/nao: CMakeFiles/nao.dir/src/Timer.cpp.o
sdk/bin/nao: CMakeFiles/nao.dir/build.make
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libalproxies.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libalcommon.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_signals-mt-1_55.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/librttools.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libalvalue.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libalerror.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libqimessaging.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libqitype.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/libnaoqi/lib/libqi.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_chrono-mt-1_55.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_filesystem-mt-1_55.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_program_options-mt-1_55.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_regex-mt-1_55.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/i686-aldebaran-linux-gnu/sysroot/usr/lib/libdl.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/i686-aldebaran-linux-gnu/sysroot/usr/lib/librt.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_date_time-mt-1_55.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_system-mt-1_55.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_locale-mt-1_55.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/boost/lib/libboost_thread-mt-1_55.so
sdk/bin/nao: /home/notebook/Mari/sdk/ctc-linux64-atom-2.1.4.13/cross/i686-aldebaran-linux-gnu/sysroot/usr/lib/libpthread.so
sdk/bin/nao: CMakeFiles/nao.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/notebook/Rinobot/Janilson/janilson/build-rinobot-robot/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable sdk/bin/nao"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nao.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nao.dir/build: sdk/bin/nao

.PHONY : CMakeFiles/nao.dir/build

CMakeFiles/nao.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nao.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nao.dir/clean

CMakeFiles/nao.dir/depend:
	cd /home/notebook/Rinobot/Janilson/janilson/build-rinobot-robot && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/notebook/Rinobot/Janilson/janilson /home/notebook/Rinobot/Janilson/janilson /home/notebook/Rinobot/Janilson/janilson/build-rinobot-robot /home/notebook/Rinobot/Janilson/janilson/build-rinobot-robot /home/notebook/Rinobot/Janilson/janilson/build-rinobot-robot/CMakeFiles/nao.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nao.dir/depend
