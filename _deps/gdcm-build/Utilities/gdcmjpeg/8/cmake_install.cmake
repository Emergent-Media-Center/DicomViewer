# Install script for directory: /__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmjpeg/8

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/emsdk/upstream/emscripten/cache/sysroot")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/opt/emsdk/upstream/bin/llvm-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "DebugDevel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/bin/libgdcmjpeg8.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "DebugDevel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gdcm-3.0/gdcmjpeg/8" TYPE FILE FILES
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/Utilities/gdcmjpeg/8/jconfig.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/Utilities/gdcmjpeg/8/jerror.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/Utilities/gdcmjpeg/8/jinclude.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/Utilities/gdcmjpeg/8/jmorecfg.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/Utilities/gdcmjpeg/8/jpegcmake.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/Utilities/gdcmjpeg/8/jpeglib.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/Utilities/gdcmjpeg/8/mangle_jpeg8bits.h"
    )
endif()

