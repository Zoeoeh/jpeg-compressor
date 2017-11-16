cmake_minimum_required(VERSION 3.10)
project(jpeg_compressor)

set(CMAKE_CXX_STANDARD 11)

file(GLOB_RECURSE SOURCE_FILES src/*.cpp src/*.h)

add_executable(jpeg_compressor ${SOURCE_FILES})

add_custom_command(TARGET jpeg_compressor POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory "${PROJECT_SOURCE_DIR}/res" $<TARGET_FILE_DIR:jpeg_compressor>/res)