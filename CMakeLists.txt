cmake_minimum_required(VERSION 3.10)
project(linux_uptime)

#set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 17)

set(SOURCE_FILES main.cpp)

add_executable(linux_uptime main.c)