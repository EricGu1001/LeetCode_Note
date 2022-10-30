cmake_minimum_required(VERSION 3.20)
project(permute)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(permute
        permute.cpp
        permute.h)
