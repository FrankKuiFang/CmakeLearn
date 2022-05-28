


include_directories(${CMAKE_CURRENT_SOURCE_DIR})


list( APPEND Utils_Src ${CMAKE_CURRENT_SOURCE_DIR}/utils.cpp )

#add_library(util  ${Utils_Src}) # staic lib
add_library(util SHARED  ${Utils_Src}) # dynamic lib


install(TARGETS util
        DESTINATION lib
       )

       