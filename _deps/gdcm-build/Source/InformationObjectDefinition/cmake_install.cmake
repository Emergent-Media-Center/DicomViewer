# Install script for directory: /__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/bin/libgdcmIOD.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gdcm-3.0" TYPE FILE FILES
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmDefinedTerms.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmDefs.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmEnumeratedValues.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmIOD.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmIODEntry.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmIODs.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmMacro.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmMacroEntry.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmMacros.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmModule.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmModuleEntry.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmModules.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmNestedModuleEntries.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmPatient.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmSeries.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmStudy.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmTable.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmTableEntry.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmTableReader.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmType.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmUsage.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmXMLDictReader.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/gdcmXMLPrivateDictReader.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gdcm-3.0/XML" TYPE FILE FILES
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/Part3.xml"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/InformationObjectDefinition/Part4.xml"
    )
endif()

