cmake_minimum_required(VERSION 3.20)
project(reversePrint)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(reversePrint
        reversePrint.cpp
        reversePrint.h)
