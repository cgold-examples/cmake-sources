cmake_minimum_required(VERSION 2.8)
project(foo LANGUAGES NONE)

include(ProcessorCount)

ProcessorCount(N)
message("Number of processors: ${N}")
