cmake_minimum_required(VERSION 3.20)
project(firstBadVersion)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(firstBadVersion
        firstBad.cpp
        firstBad.h)
