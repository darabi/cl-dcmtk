cmake_minimum_required(VERSION 3.10)
project(dcmtk.clawed)

set(LIBRARY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/dcmtk)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

if (MSVC)
    add_compile_options(/O2)
    add_compile_options(/arch:AVX)
    set(TARGET_TRIPLE x86_64-pc-windows-msvc)
else()
    add_compile_options(-O2)
    set(TARGET_TRIPLE x86_64-pc-linux-gnu)
    add_compile_options(-mavx)
endif()

add_subdirectory("${LIBRARY_DIR}")

#
# MAIN
#
set(TARGET dcmtk.clawed)
set(ADAPTER "adapter.${TARGET_TRIPLE}.cxx")

add_library(${TARGET} SHARED ${ADAPTER})
set_source_files_properties(${ADAPTER} PROPERTIES LANGUAGE CXX)

target_include_directories(${TARGET}
  PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../"
  PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../config/${TARGET_TRIPLE}/"
  PRIVATE "${LIBRARY_DIR}/oflog/include/"
  PRIVATE "${LIBRARY_DIR}/ofstd/include/"
  PRIVATE "${LIBRARY_DIR}/dcmdata/include/")

target_link_libraries(${TARGET}
  PRIVATE dcmdata)
