# External module: mymodule.cmake

file(READ "${CMAKE_CURRENT_LIST_DIR}/info/message.txt" _mymodule_message)
file(SHA1 "${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.txt" _mymodule_cmakelists_sha1)
file(
    WRITE
    "${CMAKE_CURRENT_BINARY_DIR}/sha1"
    "${_mymodule_message}\nsha1(CMakeLists.txt) = ${_mymodule_cmakelists_sha1}\n"
)
