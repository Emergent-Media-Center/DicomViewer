# Install script for directory: /__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/bin/libgdcmcharls.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gdcm-3.0/gdcmcharls" TYPE FILE FILES
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/charls.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/colortransform.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/context.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/contextrunmode.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/decoderstrategy.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/defaulttraits.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/encoderstrategy.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/jlscodecfactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/jpegimagedatasegment.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/jpegmarkercode.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/jpegmarkersegment.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/jpegsegment.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/jpegstreamreader.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/jpegstreamwriter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/lookuptable.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/losslesstraits.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/processline.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/publictypes.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/scan.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Utilities/gdcmcharls/util.h"
    )
endif()
