cmake_minimum_required(VERSION 3.20)
project(StockSpanner)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(StockSpanner
        StockSpanner.cpp
        StockSpanner.h)
