cmake_minimum_required(VERSION 3.20)
project(bestCoordinate)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(bestCoordinate
        bestCoordinate.cpp
        bestCoordinate.h)
