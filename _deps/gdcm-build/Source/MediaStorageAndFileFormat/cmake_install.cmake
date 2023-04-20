# Install script for directory: /__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/bin/libgdcmMSFF.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gdcm-3.0" TYPE FILE FILES
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmAnonymizeEvent.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmAnonymizer.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmApplicationEntity.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmAudioCodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmBitmap.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmBitmapToBitmapFilter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmCleaner.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmCodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmCoder.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmConstCharWrapper.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmCurve.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmDICOMDIR.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmDICOMDIRGenerator.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmDPath.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmDataSetHelper.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmDecoder.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmDeltaEncodingCodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmDictPrinter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmDirectionCosines.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmDirectoryHelper.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmDumper.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmEmptyMaskGenerator.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmEncapsulatedDocument.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmEquipmentManufacturer.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmFiducials.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmFileAnonymizer.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmFileChangeTransferSyntax.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmFileDecompressLookupTable.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmFileDerivation.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmFileExplicitFilter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmFileStreamer.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmIPPSorter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmIconImage.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmIconImageFilter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmIconImageGenerator.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImage.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImageApplyLookupTable.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImageChangePhotometricInterpretation.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImageChangePlanarConfiguration.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImageChangeTransferSyntax.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImageCodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImageConverter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImageFragmentSplitter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImageHelper.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImageReader.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImageRegionReader.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImageToImageFilter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmImageWriter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmJPEG12Codec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmJPEG16Codec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmJPEG2000Codec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmJPEG8Codec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmJPEGCodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmJPEGLSCodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmJSON.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmKAKADUCodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmLookupTable.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmMEC_MR3.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmMeshPrimitive.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmOrientation.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmOverlay.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmPDFCodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmPGXCodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmPNMCodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmPVRGCodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmPersonName.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmPhotometricInterpretation.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmPixelFormat.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmPixmap.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmPixmapReader.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmPixmapToPixmapFilter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmPixmapWriter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmPrinter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmRAWCodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmRLECodec.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmRescaler.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmScanner.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmScanner2.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSegment.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSegmentHelper.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSegmentReader.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSegmentWriter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSegmentedPaletteColorLookupTable.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSerieHelper.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSimpleSubjectWatcher.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSorter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSpacing.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSpectroscopy.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSplitMosaicFilter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmStreamImageReader.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmStreamImageWriter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmStrictScanner.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmStrictScanner2.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmStringFilter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSurface.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSurfaceHelper.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSurfaceReader.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmSurfaceWriter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmTagPath.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmUIDGenerator.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmUUIDGenerator.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmValidate.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmWaveform.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcmXMLPrinter.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcm_j2k.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MediaStorageAndFileFormat/gdcm_jp2.h"
    )
endif()

