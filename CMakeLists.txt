# Copyright (C) 2022 The Qt Company Ltd.
# SPDX-License-Identifier: BSD-3-Clause

cmake_minimum_required(VERSION 3.16)
project(dicomviewer LANGUAGES CXX)

# CPM
include(external/cpm.cmake)

# General flags
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

# Qt folder to work on clion on windows - WiP
include(external/FindQtWindows.cmake)
include(external/qt.cmake)
set(CMAKE_AUTOMOC ON)

# find qt
find_package(Qt6 REQUIRED COMPONENTS Core Gui Quick Quick3D)

# gdcm
include(external/gdcm.cmake)

# glob source files
file(GLOB DICOMVIEWER_INC
        CONFIGURE_DEPENDS
        ${CMAKE_CURRENT_SOURCE_DIR}/*.h
        ${CMAKE_CURRENT_SOURCE_DIR}/*.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/*.hxx
        )
file(GLOB DICOMVIEWER_SRC
        CONFIGURE_DEPENDS
        ${CMAKE_CURRENT_SOURCE_DIR}/*.c
        ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/*.cxx
    )

# add those files to be built
qt_add_executable(dicomviewer ${DICOMVIEWER_SRC})

# work in progress to make it work in clion on windows
#if (WIN32)
#  set(DEBUG_SUFFIX)
#  if (MSVC AND CMAKE_BUILD_TYPE MATCHES "Debug")
#    set(DEBUG_SUFFIX "d")
#  endif ()
#  set(QT_INSTALL_PATH "${CMAKE_PREFIX_PATH}")
#  if (NOT EXISTS "${QT_INSTALL_PATH}/bin")
#    set(QT_INSTALL_PATH "${QT_INSTALL_PATH}/..")
#    if (NOT EXISTS "${QT_INSTALL_PATH}/bin")
#      set(QT_INSTALL_PATH "${QT_INSTALL_PATH}/..")
#    endif ()
#  endif ()
#  if (EXISTS "${QT_INSTALL_PATH}/plugins/platforms/qwindows${DEBUG_SUFFIX}.dll")
#    add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
#            COMMAND ${CMAKE_COMMAND} -E make_directory
#            "$<TARGET_FILE_DIR:${PROJECT_NAME}>/plugins/platforms/")
#    add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
#            COMMAND ${CMAKE_COMMAND} -E copy
#            "${QT_INSTALL_PATH}/plugins/platforms/qwindows${DEBUG_SUFFIX}.dll"
#            "$<TARGET_FILE_DIR:${PROJECT_NAME}>/plugins/platforms/")
#  endif ()
#  foreach (QT_LIB Core Gui Quick Quick3D Quick3DRuntimeRender QmlModels Qml Quick3DUtils Network ShaderTools OpenGL)
#    add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
#            COMMAND ${CMAKE_COMMAND} -E copy
#            "${QT_INSTALL_PATH}/bin/Qt6${QT_LIB}${DEBUG_SUFFIX}.dll"
#            "$<TARGET_FILE_DIR:${PROJECT_NAME}>")
#  endforeach (QT_LIB)
#endif ()

# link executable
target_link_libraries(dicomviewer PUBLIC
        Qt::Core
        Qt::Gui
        Qt::Quick
        Qt::Quick3D
        gdcmMSFF
        )

if(WIN32 AND NOT CYGWIN AND NOT MINGW)
  target_link_libraries(dicomviewer PUBLIC
          Qt::Core
          Qt::Gui
          Qt::Quick
          Qt::Quick3D
          gdcmgetopt
          )
endif()


set_target_properties(dicomviewer PROPERTIES
    WIN32_EXECUTABLE TRUE
    MACOSX_BUNDLE TRUE
)

qt_add_qml_module(dicomviewer
    URI Example
    VERSION 1.0
    QML_FILES
        # MAIN
        main.qml
        # CUSTOM COMPONENTS
        ThreeDFrame.qml
    RESOURCES
        suzanne.mesh
    NO_RESOURCE_TARGET_PATH
)

install(TARGETS dicomviewer
    RUNTIME DESTINATION "${INSTALL_EXAMPLEDIR}"
    BUNDLE DESTINATION "${INSTALL_EXAMPLEDIR}"
    LIBRARY DESTINATION "${INSTALL_EXAMPLEDIR}"
)


MESSAGE(STATUS "binary dir: ${CMAKE_BINARY_DIR}")
