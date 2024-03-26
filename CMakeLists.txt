# Copyright (C) 2020-2022 Dremio Corporation
#
# See "LICENSE" for license information.
#

cmake_minimum_required(VERSION 3.16)
set(CMAKE_CXX_STANDARD 17)

project(flightsql_odbc)

if(CMAKE_BUILD_TYPE STREQUAL "Release")
    add_compile_definitions(NDEBUG)
endif()

# Add Boost dependencies. Should be pre-installed (Brew on Mac).
find_package(Boost REQUIRED)
find_package(ODBC REQUIRED)


# Fetch and include GTest
# Adapted from Google's documentation: https://google.github.io/googletest/quickstart-cmake.html#set-up-a-project
include(FetchContent)
FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/refs/tags/v1.14.0.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

add_subdirectory(flight_sql)
add_subdirectory(odbcabstraction)
