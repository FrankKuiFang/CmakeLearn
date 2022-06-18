


include_directories(${CMAKE_CURRENT_SOURCE_DIR})


list( APPEND Utils_Src ${CMAKE_CURRENT_SOURCE_DIR}/utils.cpp )

#add_library(util  ${Utils_Src}) # staic lib
add_library(util SHARED  ${Utils_Src}) # dynamic lib

IF (BUILE_TEST)
    add_subdirectory(test)
ENDIF()

#************************************************************************
# There are two methords to install the lib to target dir
## methord 1: install util to ${CMAKE_INSTALL_PREFIX}/lib.
# install(TARGETS util
#         DESTINATION lib
#        )

## methord 2: install application to ${CMAKE_INSTALL_PREFIX}/bin, install static lib and dynamic lib to ${CMAKE_INSTALL_PREFIX}/lib,
## This method seems more professional, heihei.
install(TARGETS util
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        RUNTIME DESTINATION bin
       )
# #you can also install many targets:
# # install(TARGETS util
# #         other_target_1
# #         other_target_2
# #         ARCHIVE DESTINATION lib
# #         LIBRARY DESTINATION lib
# #         RUNTIME DESTINATION bin
# #        )
#************************************************************************


#************************************************************************
# Install .h files of some directory to ${CMAKE_INSTALL_PREFIX}/include/cmake_learn,
# 文件的层次关系保持不变
#  PATTERN "test*" EXCLUDE is used to exclude directoty started with "test"
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
        DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/physic
        DESTINATION include/cmake_learn
        FILES_MATCHING
        PATTERN "*.h"
        PATTERN ".git" EXCLUDE
        PATTERN "build*" EXCLUDE
        PATTERN "test*" EXCLUDE
        PATTERN ".vscode*" EXCLUDE
       )