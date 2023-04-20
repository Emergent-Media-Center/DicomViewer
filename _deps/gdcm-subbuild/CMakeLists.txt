# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.24.2)

# We name the project and the target for the ExternalProject_Add() call
# to something that will highlight to the user what we are working on if
# something goes wrong and an error message is produced.

project(gdcm-populate NONE)



include(ExternalProject)
ExternalProject_Add(gdcm-populate
                     "UPDATE_DISCONNECTED" "False" "DOWNLOAD_EXTRACT_TIMESTAMP" "FALSE" "URL" "https://github.com/malaterre/GDCM/archive/refs/tags/v3.0.20.zip"
                    SOURCE_DIR          "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src"
                    BINARY_DIR          "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build"
                    CONFIGURE_COMMAND   ""
                    BUILD_COMMAND       ""
                    INSTALL_COMMAND     ""
                    TEST_COMMAND        ""
                    USES_TERMINAL_DOWNLOAD  YES
                    USES_TERMINAL_UPDATE    YES
                    USES_TERMINAL_PATCH     YES
)


