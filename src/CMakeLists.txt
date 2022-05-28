


include_directories(${CMAKE_CURRENT_SOURCE_DIR})


list( APPEND APP_SRC ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp )

add_executable(cmakeLearnApp   ${APP_SRC} )

target_link_libraries(cmakeLearnApp util)# cmake会自动去找哎！

install(TARGETS cmakeLearnApp
        DESTINATION bin
       )

add_subdirectory(tools)
add_subdirectory(common_lib)
       