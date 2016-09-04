# boo/CMakeLists.txt

message("Processing boo/CMakeList.txt")

add_subdirectory(baz)
add_subdirectory(bar)

include(mymodule)
