#
# CMakeLists.txt
#

cmake_minimum_required (VERSION 3.5 FATAL_ERROR)

project (Algorithms
    VERSION 1.0.0
    LANGUAGES NONE
)
set(PRECOMPILED_README ${CMAKE_SOURCE_DIR}/PRECOMPILEDREADME.md)
set(OUTPUT_README ${CMAKE_SOURCE_DIR}/README.md)
list (INSERT CMAKE_MODULE_PATH 0 "${CMAKE_SOURCE_DIR}/cmake")
include (BuildSystemCore)

if (CMAKE_GENERATOR STREQUAL "Unix Makefiles")

    add_custom_target (readme_depends
        COMMAND pip install --user readme2tex
    )

    add_custom_target (readme
        DEPENDS ${PRECOMPILEDREADME} ${OUTPUT_README}
        COMMAND python -m readme2tex --usepackage "tikz" --usepackage "xcolor" --output README.md PRECOMPILEDREADME.md
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    )

endif ()

