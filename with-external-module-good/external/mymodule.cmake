# External module: mymodule.cmake

# This is not a part of the function so 'CMAKE_CURRENT_LIST_DIR' is the path
# to the directory with 'mymodule.cmake'.
set(MYMODULE_PATH_TO_INFO "${CMAKE_CURRENT_LIST_DIR}/info/message.txt")

function(mymodule)
  # When we are inside function 'CMAKE_CURRENT_LIST_DIR' is the path to the
  # caller, i.e. path to directory with CMakeLists.txt in our case.
  file(SHA1 "${CMAKE_CURRENT_LIST_DIR}/CMakeLists.txt" sha1)

  file(READ "${MYMODULE_PATH_TO_INFO}" msg)
  file(
      WRITE
      "${CMAKE_CURRENT_BINARY_DIR}/sha1"
      "${msg}\nsha1(CMakeLists.txt) = ${sha1}\n"
  )
endfunction()
