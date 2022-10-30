cmake_minimum_required(VERSION 3.20)
project(mergeAlternately)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(mergeAlternately
        mergeAlternately.cpp
        mergeAlternately.h)
