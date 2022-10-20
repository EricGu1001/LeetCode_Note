cmake_minimum_required(VERSION 3.20)
project(searchRange)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(searchRange
        searchRange.cpp
        searchRange.h)
