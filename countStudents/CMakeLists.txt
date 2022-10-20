cmake_minimum_required(VERSION 3.20)
project(countStudents)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(countStudents
        countStudents.cpp
        countStudents.h)
