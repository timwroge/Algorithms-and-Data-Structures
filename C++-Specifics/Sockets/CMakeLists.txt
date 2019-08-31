set(UDP_TARGETS
    "udp.cc")

set(UDP_HEADERS
    "udp.hh")


add_executable(udp_example ${UDP_TARGETS} ${UDP_HEADERS})

target_include_directories (udp_example PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

set(TCP_TARGETS
    "tcp.cc")

set(TCP_HEADERS
    "tcp.hh")


add_executable(tcp_example ${UDP_TARGETS} ${UDP_HEADERS})

target_include_directories (tcp_example PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
