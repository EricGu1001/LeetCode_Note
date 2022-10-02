cmake_minimum_required(VERSION 3.20)
project(rotatedDigits)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(rotatedDigits
        rotatedDigits.cpp
        rotatedDigits.h)
