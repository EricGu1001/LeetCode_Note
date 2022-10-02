cmake_minimum_required(VERSION 3.20)
project(canPartitionKSubsets)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(canPartitionKSubsets
        canPartitionKSubsets.cpp
        canPartitionKSubsets.h)
