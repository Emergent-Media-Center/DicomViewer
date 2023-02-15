# needed by gdcm compile with charls codec, it can be optionally be compiled to be dynamic instead of static
add_definitions(-DCHARLS_STATIC)

# gdcm
CPMAddPackage(
        NAME gdcm
        URL "https://github.com/malaterre/GDCM/archive/refs/tags/v3.0.20.zip"
        OPTIONS
        "GDCM_BUILD_DOCBOOK_MANPAGES 0"
        "BUILD_APPLICATIONS 0"
        "GDCM_BUILD_APPLICATIONS 0"
        "GDCM_BUILD_EXAMPLES 0"
)

if(gdcm_ADDED)
    message(STATUS "GDCM ADDED")
    message(STATUS "GDCM_BINARY_DIR: ${GDCM_BINARY_DIR}")
    message(STATUS "GDCM_SOURCE_DIR: ${GDCM_SOURCE_DIR}")
else()
    message(FATAL_ERROR "GDCM NOT ADDED")
endif()
find_package(gdcm)


if(WIN32 AND NOT CYGWIN AND NOT MINGW)
    include_directories(
            "${GDCM_SOURCE_DIR}/Utilities/getopt"
    )
endif()

# Add the include paths
include_directories(
        "${GDCM_BINARY_DIR}/Source/Common"
        "${GDCM_SOURCE_DIR}/Source/Common"
        "${GDCM_SOURCE_DIR}/Source/DataStructureAndEncodingDefinition"
        "${GDCM_SOURCE_DIR}/Source/MediaStorageAndFileFormat"
        "${GDCM_SOURCE_DIR}/Source/InformationObjectDefinition"
        "${GDCM_SOURCE_DIR}/Source/MessageExchangeDefinition"
        # FIXME:
        "${GDCM_SOURCE_DIR}/Source/DataDictionary"
        "${GDCM_SOURCE_DIR}/Utilities"
)

if(WIN32)
    if (BUILD_SHARED_LIBS)
        add_definitions(-DGETOPT_DLL)
    endif ()
endif()

if(NOT BUILD_SHARED_LIBS)
    set_source_files_properties(gdcmstream.cxx
            PROPERTIES
            COMPILE_FLAGS -DOPJ_STATIC
            )
endif()