cmake_minimum_required(VERSION 3.19)

set(CMAKE_TOOLCHAIN_FILE ${CMAKE_CURRENT_SOURCE_DIR}/toolchain.cmake CACHE STRING "Toolchain file")

project(ps4-update-decryptor)

add_subdirectory(src)
