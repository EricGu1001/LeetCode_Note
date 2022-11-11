cmake_minimum_required(VERSION 3.20)
project(magicalString)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(magicalString
        magicalString.cpp
        magicalString.h)
