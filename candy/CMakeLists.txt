cmake_minimum_required(VERSION 3.20)
project(candy)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(candy
        candy.cpp
        candy.h)
