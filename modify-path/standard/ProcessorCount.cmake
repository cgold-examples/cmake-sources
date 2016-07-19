# standard/ProcessorCount.cmake

function(ProcessorCount varname)
  message("Force processor count")
  set("${varname}" 16 PARENT_SCOPE)
endfunction()
