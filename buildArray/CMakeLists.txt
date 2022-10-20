cmake_minimum_required(VERSION 3.20)
project(buildArray)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(buildArray
        buildArray.cpp
        buildArray.h)
