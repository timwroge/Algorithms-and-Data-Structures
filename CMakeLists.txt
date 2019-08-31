#
# CMakeLists.txt
# Copyright Tim Wroge 2019

cmake_minimum_required (VERSION 3.5 FATAL_ERROR)

project (Algorithms
    VERSION 1.0.0
    LANGUAGES CXX
)
set(PRECOMPILED_README ${CMAKE_SOURCE_DIR}/PRECOMPILEDREADME.md)
set(OUTPUT_README ${CMAKE_SOURCE_DIR}/README.md)

if (CMAKE_GENERATOR STREQUAL "Unix Makefiles")

    add_custom_target (readme_depends
        COMMAND pip install --user readme2tex
    )

    add_custom_target (readme
        DEPENDS ${PRECOMPILEDREADME} ${OUTPUT_README}
        COMMAND python3 -m readme2tex  --svgdir equations --branch master --output README.md PRECOMPILEDREADME.md --nocdn --pngtrick
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    )

    add_custom_target (tests
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    )

endif ()
# add some compiler flags
set (CMAKE_CXX_FLAGS " -std=c++14 -fexceptions -Werror -Wall")
# makes teh binaries go to release within the cmake binary directory
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/release)

#add subdirectories for the rest of the project

add_subdirectory(C++-Specifics)
