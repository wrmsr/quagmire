cmake_minimum_required(VERSION 2.8)

find_package(SWIG REQUIRED)

project(quagmire)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14 -Wall -Wextra -fPIC")

add_library(quagmire quagmire.cpp)

set_target_properties(quagmire PROPERTIES PUBLIC_HEADER "quagmire.h")

add_executable(quagmire_test quagmire_test.cpp)

target_link_libraries(quagmire_test quagmire)

include(${SWIG_USE_FILE})

add_subdirectory(python)

