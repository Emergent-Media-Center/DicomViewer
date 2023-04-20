# Install script for directory: /__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/bin/libgdcmDSED.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gdcm-3.0" TYPE FILE FILES
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmAttribute.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmBasicOffsetTable.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmByteBuffer.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmByteSwapFilter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmByteValue.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmCP246ExplicitDataElement.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmCP246ExplicitDataElement.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmCSAElement.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmCSAHeader.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmCodeString.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmDataElement.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmDataSet.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmDataSet.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmDataSetEvent.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmElement.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmExplicitDataElement.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmExplicitDataElement.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmExplicitImplicitDataElement.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmExplicitImplicitDataElement.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmFile.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmFileMetaInformation.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmFileSet.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmFragment.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmFragment.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmImplicitDataElement.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmImplicitDataElement.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmItem.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmItem.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmLO.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmMediaStorage.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmMrProtocol.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmPDBElement.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmPDBHeader.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmParseException.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmParser.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmPreamble.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmPrivateTag.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmReader.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmSequenceOfFragments.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmSequenceOfFragments.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmSequenceOfItems.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmSequenceOfItems.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmTag.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmTagToVR.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmTransferSyntax.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmUNExplicitDataElement.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmUNExplicitDataElement.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmUNExplicitImplicitDataElement.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmUNExplicitImplicitDataElement.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmVL.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmVM.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmVR.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmVR16ExplicitDataElement.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmVR16ExplicitDataElement.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmValue.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmValue.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmValueIO.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmValueIO.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/DataStructureAndEncodingDefinition/gdcmWriter.h"
    )
endif()

