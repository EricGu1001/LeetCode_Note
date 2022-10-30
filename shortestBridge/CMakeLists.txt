cmake_minimum_required(VERSION 3.20)
project(shortestBridge)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(shortestBridge
        shortestBridge.cpp
        shortestBridge.h)
