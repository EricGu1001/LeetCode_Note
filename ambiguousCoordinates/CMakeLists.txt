cmake_minimum_required(VERSION 3.20)
project(ambiguousCoordinates)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(ambiguousCoordinates
        ambiguousCoordinates.cpp
        ambiguousCoordinates.h)
