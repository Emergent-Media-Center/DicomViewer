# Install script for directory: /__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/bin/libgdcmCommon.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gdcm-3.0" TYPE FILE FILES
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmASN1.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmBase64.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmBoxRegion.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmByteSwap.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmByteSwap.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmCAPICryptoFactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmCAPICryptographicMessageSyntax.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmCommand.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmCryptoFactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmCryptographicMessageSyntax.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmDataEvent.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmDeflateStream.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmDirectory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmDummyValueGenerator.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmEvent.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmException.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmFileNameEvent.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmFilename.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmFilenameGenerator.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmLegacyMacro.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmMD5.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmObject.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmOpenSSLCryptoFactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmOpenSSLCryptographicMessageSyntax.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmOpenSSLP7CryptoFactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmOpenSSLP7CryptographicMessageSyntax.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmProgressEvent.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmRegion.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSHA1.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSmartPointer.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmStaticAssert.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmString.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSubject.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSwapCode.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSwapper.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSwapper.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSystem.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmTerminal.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmTestDriver.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmTesting.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmTrace.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmTypes.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmUnpacker12Bits.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmVersion.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmWin32.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/zipstreamimpl.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gdcm-3.0" TYPE FILE FILES
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmASN1.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmBase64.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmBoxRegion.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmByteSwap.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmByteSwap.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmCAPICryptoFactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmCAPICryptographicMessageSyntax.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmCommand.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmCryptoFactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmCryptographicMessageSyntax.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmDataEvent.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmDeflateStream.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmDirectory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmDummyValueGenerator.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmEvent.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmException.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmFileNameEvent.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmFilename.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmFilenameGenerator.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmLegacyMacro.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmMD5.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmObject.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmOpenSSLCryptoFactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmOpenSSLCryptographicMessageSyntax.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmOpenSSLP7CryptoFactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmOpenSSLP7CryptographicMessageSyntax.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmProgressEvent.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmRegion.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSHA1.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSmartPointer.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmStaticAssert.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmString.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSubject.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSwapCode.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSwapper.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSwapper.txx"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmSystem.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmTerminal.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmTestDriver.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmTesting.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmTrace.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmTypes.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmUnpacker12Bits.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmVersion.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/gdcmWin32.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/Common/zipstreamimpl.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/Source/Common/gdcmConfigure.h"
    )
endif()

