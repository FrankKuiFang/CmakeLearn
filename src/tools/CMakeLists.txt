


include_directories(${CMAKE_CURRENT_SOURCE_DIR})


list( APPEND Tool_App_Src ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp )

add_executable(toolApp   ${Tool_App_Src} )

#target_link_libraries(fgCppStdApp "${OpenMP_CXX_FLAGS}")

install(TARGETS toolApp
        DESTINATION bin
       )

       