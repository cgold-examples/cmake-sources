# Top-level CMakeLists.txt

cmake_minimum_required(VERSION 2.8)
project(foo NONE)

message("Top level CMakeLists.txt")

add_subdirectory(foo)
add_subdirectory(boo)
