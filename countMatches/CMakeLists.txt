cmake_minimum_required(VERSION 3.20)
project(countMatches)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(countMatches
        countMatches.cpp
        countMatches.h)
