cmake_minimum_required(VERSION 2.8)
project(foo NONE)

execute_process(
    COMMAND "${CMAKE_COMMAND}" -E remove_directory "${CMAKE_CURRENT_BINARY_DIR}/__temp"
    RESULT_VARIABLE result
)

if(NOT result EQUAL 0)
  # Error
endif()
