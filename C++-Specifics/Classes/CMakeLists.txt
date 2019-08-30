set(CLASS_TARGETS
    "Animal.cc"
    "Mammal.cc")

set(CLASS_HEADERS
    "Animal.hh"
    "Mammal.hh")

set(CLASS_EXAMPLE "example.cc")


add_executable(class_example ${CLASS_EXAMPLE} ${CLASS_TARGETS} ${CLASS_HEADERS})

target_include_directories (class_example PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
