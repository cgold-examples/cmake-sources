# Top-level CMakeLists.txt

cmake_minimum_required(VERSION 2.8)
project(foo NONE)

message("Top level CMakeLists.txt")
message("CMAKE_BINARY_DIR: ${CMAKE_BINARY_DIR}")
message("CMAKE_CURRENT_BINARY_DIR: ${CMAKE_CURRENT_BINARY_DIR}")

add_subdirectory(foo)
add_subdirectory(boo)
