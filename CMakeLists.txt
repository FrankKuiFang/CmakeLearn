CMAKE_MINIMUM_REQUIRED(VERSION 3.4.0)
project(open_mp)

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 14)

#add_compile_options(-DNDEBUG)

add_compile_options(-Wall -Wextra -Wpedantic)

add_definitions(-DENABLE_ME)

add_subdirectory(src)

#*****************************************************************
# Install files to target directory: ${CMAKE_INSTALL_PREFIX}/bin
install(FILES 
        environment.sh
        demo.sh
        DESTINATION bin
        )