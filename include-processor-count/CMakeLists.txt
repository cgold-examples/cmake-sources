cmake_minimum_required(VERSION 2.8)
project(foo NONE)

include(ProcessorCount)

ProcessorCount(N)
message("Number of processors: ${N}")
