cmake_minimum_required(VERSION 3.20)
project(partitionDisjoint)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(partitionDisjoint
        partitionDisjoint.cpp
        partitionDisjoint.h)
