cmake_minimum_required(VERSION 3.20)
project(arraySign)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(arraySign
        arraySign.cpp
        arraySign.h)
