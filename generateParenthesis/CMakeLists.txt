cmake_minimum_required(VERSION 3.20)
project(generateParenthesis)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(generateParenthesis
        generateParenthesis.cpp
        generateParenthesis.h)
