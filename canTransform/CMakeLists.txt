cmake_minimum_required(VERSION 3.20)
project(canTransform)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(canTransform
        canTransform.cpp
        canTransform.h)
