

list( APPEND test_Src ${CMAKE_CURRENT_SOURCE_DIR}/test.cpp )

add_executable(UtilTestApp  ${test_Src}) 
target_link_libraries(UtilTestApp util)# cmake会自动去找哎！

# install application to ${CMAKE_INSTALL_PREFIX}/bin, install static lib and dynamic lib to ${CMAKE_INSTALL_PREFIX}/lib
install(TARGETS UtilTestApp
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        RUNTIME DESTINATION bin
       )