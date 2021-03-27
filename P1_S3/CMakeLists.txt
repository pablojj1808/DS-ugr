cmake_minimum_required(VERSION 3.17)
project(P1_S3)

set(CMAKE_CXX_STANDARD 20)
include_directories(./include)

add_executable(P1_S3 main.cpp src/Cliente.cpp include/Cliente.h src/FilterManager.cpp include/FilterManager.h src/FilterChain.cpp include/FilterChain.h include/Filter.h)