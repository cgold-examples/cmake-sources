# script.cmake

cmake_minimum_required(VERSION 3.1)

set("Jane Doe" "")
set(MYNAME "Jane Doe")

message("MYNAME: ${MYNAME}")

if("${MYNAME}" STREQUAL "")
  message("MYNAME is empty!")
endif()
