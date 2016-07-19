# Top level CMakeLists.txt

cmake_minimum_required(VERSION 2.8)
project(foo LANGUAGES NONE)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/modules")

include(MyModule)
