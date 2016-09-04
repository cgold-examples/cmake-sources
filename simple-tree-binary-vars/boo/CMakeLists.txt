# boo/CMakeLists.txt

message("Processing boo/CMakeList.txt")
message("CMAKE_BINARY_DIR: ${CMAKE_BINARY_DIR}")
message("CMAKE_CURRENT_BINARY_DIR: ${CMAKE_CURRENT_BINARY_DIR}")

add_subdirectory(baz)
add_subdirectory(bar)
