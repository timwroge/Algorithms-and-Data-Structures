if (_CLONE_REPOSITORY_INCLUDED)
    return ()
endif ()

set (_CLONE_REPOSITORY_INCLUDED TRUE)
set (_CLONE_REPOSITORY_MODULE_DIR ${CMAKE_CURRENT_LIST_DIR})

include (CMakeParseArguments)

function (CloneRepository _NAME)

    set (_OPTIONS)
    set (_SINGLE_VALUE_ARGS
        GIT_REPOSITORY
        GIT_TAG
        GIT_PROGRESS
        HG_REPOSITORY
        HG_TAG
    )
    set (_MULTI_VALUE_ARGS)

    set (_CLONE_REPOSITORY_NAME ${_NAME})
    set (_CLONE_REPOSITORY_EXTERNAL_PROJECT_DIR ${CMAKE_SOURCE_DIR}/external)

    cmake_parse_arguments (_CLONE_REPOSITORY "${_OPTIONS}" "${_SINGLE_VALUE_ARGS}" "${_MULTI_VALUE_ARGS}" ${ARGN})

    file (MAKE_DIRECTORY "${CMAKE_BINARY_DIR}/external/tmp/${_CLONE_REPOSITORY_NAME}")
    configure_file ("${_CLONE_REPOSITORY_MODULE_DIR}/CloneRepository.CMakeLists.txt.in" "${CMAKE_BINARY_DIR}/external/tmp/${_CLONE_REPOSITORY_NAME}/CMakeLists.txt")

    execute_process (
        COMMAND ${CMAKE_COMMAND} .
        WORKING_DIRECTORY "${CMAKE_BINARY_DIR}/external/tmp/${_CLONE_REPOSITORY_NAME}"
    )
    execute_process (
        COMMAND ${CMAKE_COMMAND} --build .
        WORKING_DIRECTORY "${CMAKE_BINARY_DIR}/external/tmp/${_CLONE_REPOSITORY_NAME}"
    )
endfunction ()
