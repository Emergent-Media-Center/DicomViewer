# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src"
  "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build"
  "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-subbuild/gdcm-populate-prefix"
  "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-subbuild/gdcm-populate-prefix/tmp"
  "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-subbuild/gdcm-populate-prefix/src/gdcm-populate-stamp"
  "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-subbuild/gdcm-populate-prefix/src"
  "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-subbuild/gdcm-populate-prefix/src/gdcm-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-subbuild/gdcm-populate-prefix/src/gdcm-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-subbuild/gdcm-populate-prefix/src/gdcm-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
