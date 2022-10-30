cmake_minimum_required(VERSION 3.20)
project(fib)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(fib
        fib.cpp
        fib.h)
