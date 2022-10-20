cmake_minimum_required(VERSION 3.20)
project(search_1)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(search_1
        search.cpp
        search.h)
