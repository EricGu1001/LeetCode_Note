cmake_minimum_required(VERSION 3.20)
project(minArray)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(minArray
        minArray.cpp
        minArray.h)
