cmake_minimum_required(VERSION 3.14)

project(LeeFirebase VERSION 1.0 LANGUAGES CXX)

add_subdirectory(sdk/firebase_cpp_sdk)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)


set(PROJECT_SOURCE
    include/LeeFirebaseAuth.h
    src/LeeFirebaseAuth.cpp
)

add_library(LeeFireBaseAuth
    STATIC
    ${PROJECT_SOURCE}
)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG "${CMAKE_CURRENT_SOURCE_DIR}/lib/" ) #->define path for archive
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG "${CMAKE_CURRENT_SOURCE_DIR}/lib/" ) #->define path for Library
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_CURRENT_SOURCE_DIR}/bin/" ) #->define path for Runtime


target_link_libraries(LeeFireBaseAuth PRIVATE firebase_auth)

# set_property(TARGET LeeFireBaseAuth PROPERTY
#     LIBRARY_OUTPUT_DIRECTORY_DEBUG "${CMAKE_CURRENT_SOURCE_DIR}/lib"
#     LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/lib"

# )

message("ABC : ${FIREBASE_SDK_LIBDIR}")

