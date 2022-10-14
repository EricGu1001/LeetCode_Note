cmake_minimum_required(VERSION 3.20)
project(reverseList)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(reverseList
        reverseList.cpp
        reverseList.h)
