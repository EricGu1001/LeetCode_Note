cmake_minimum_required(VERSION 3.20)
project(subDomainVisits)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(subDomainVisits
        subDomainVisits.cpp
        subDomainVisits.h)
