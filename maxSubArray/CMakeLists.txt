cmake_minimum_required(VERSION 3.20)
project(maxSubArray)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(maxSubArray
        Solution.cpp
        Solution.h)
