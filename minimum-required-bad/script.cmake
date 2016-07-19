# script.cmake

set("Jane Doe" "")
set(MYNAME "Jane Doe")

message("MYNAME: ${MYNAME}")

if("${MYNAME}" STREQUAL "")
  message("MYNAME is empty!")
endif()
