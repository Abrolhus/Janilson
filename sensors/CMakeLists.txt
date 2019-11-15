cmake_minimum_required(VERSION 2.6.4 FATAL_ERROR)
project(sensors)
find_package(qibuild)

include_directories(".")

qi_create_bin(sensors main.cpp Timer.cpp )
qi_use_lib(sensors ALCOMMON ALPROXIES)

