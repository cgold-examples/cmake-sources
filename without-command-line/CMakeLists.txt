cmake_minimum_required(VERSION 2.8)
project(foo LANGUAGES NONE)

set(dir_to_remove "${CMAKE_CURRENT_BINARY_DIR}/__temp")

if(WIN32)
  # 'rmdir' will exit with error if directory doesn't exist
  # so we have to put 'if' here
  if(EXISTS "${dir_to_remove}")
    # need to convert to windows-style path
    file(TO_NATIVE_PATH "${dir_to_remove}" native_path)
    execute_process(
        COMMAND cmd /c rmdir "${native_path}" /S /Q
        RESULT_VARIABLE result
    )
  endif()
else()
  # no need to put 'if', 'rm -rf' produce no error if directory doesn't exist
  execute_process(
      COMMAND rm -rf "${dir_to_remove}"
      RESULT_VARIABLE result
  )
endif()

if(NOT result EQUAL 0)
  # Error
endif()
