cmake_minimum_required(VERSION 3.20)
project(merge)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(merge
        merge.cpp
        merge.h)
