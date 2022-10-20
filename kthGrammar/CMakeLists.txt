cmake_minimum_required(VERSION 3.20)
project(kthGrammar)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(kthGrammar
        kthGrammar.cpp
        kthGrammar.h)
