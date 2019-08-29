if (EXISTS "$CMAKE_SOURCE_DIR}/CMakeCache.txt" OR EXISTS "${CMAKE_SOURCE_DIR}/CMakeFiles")

    message (FATAL_ERROR "CMakeCache.txt or CMakeFiles exists in source directory.")

elseif ()

    message (FATAL_ERROR "In-source builds are not allowed.")

endif ()

if (CMAKE_GENERATOR STREQUAL "Unix Makefiles")

    if (NOT DEFINED CMAKE_BUILD_TYPE OR CMAKE_BUILD_TYPE STREQUAL "")

        set (CMAKE_BUILD_TYPE Debug CACHE STRING "Choose the type of build, options are: Debug Release RelWithDebInfo MinSizeRel." FORCE)

    endif ()

    if (NOT DEFINED CMAKE_BUILD_TYPE_CACHE)

        set (CMAKE_BUILD_TYPE_CACHE ${CMAKE_BUILD_TYPE} CACHE INTERNAL "")

    elseif (NOT CMAKE_BUILD_TYPE STREQUAL CMAKE_BUILD_TYPE_CACHE)

        set (CMAKE_BUILD_TYPE ${CMAKE_BUILD_TYPE_CACHE} CACHE STRING "Choose the type of build, options are: Debug Release RelWithDebInfo MinSizeRel." FORCE)
        message (FATAL_ERROR "CMAKE_BUILD_TYPE cannot be changed.")

    endif ()

endif ()

include (ExternalProject)
include (CloneRepository)

enable_testing ()
