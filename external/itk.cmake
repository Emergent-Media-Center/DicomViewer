# itk
CPMAddPackage(
        NAME itk
        GITHUB_REPOSITORY InsightSoftwareConsortium/ITK
        GIT_TAG v5.3.0
        OPTIONS
        "ITK_USE_CLANG_FORMAT OFF"
)

#get_cmake_property(_variableNames VARIABLES)
#list (SORT _variableNames)
#foreach (_variableName ${_variableNames})
#    message(STATUS "${_variableName}=${${_variableName}}")
#endforeach()

if(itk_ADDED)
    include(${itk_BINARY_DIR}/ITKConfig.cmake)
    include(${itk_SOURCE_DIR}/CMake/UseITK.cmake)
    message(STATUS "libs: ${ITK_LIBRARIES}")
else()
    MESSAGE(FATAL_ERROR "ITK not found")
endif()

include_directories(
        "${ITKGDCM_BINARY_DIR}/Source/Common"
        "${ITKGDCM_SOURCE_DIR}/Source/Common"
        "${ITKGDCM_SOURCE_DIR}/Source/DataStructureAndEncodingDefinition"
        "${ITKGDCM_SOURCE_DIR}/Source/MediaStorageAndFileFormat"
        "${ITKGDCM_SOURCE_DIR}/Source/InformationObjectDefinition"
        "${ITKGDCM_SOURCE_DIR}/Source/MessageExchangeDefinition"
        # FIXME:
        "${ITKGDCM_SOURCE_DIR}/Source/DataDictionary"
        "${ITKGDCM_SOURCE_DIR}/Utilities"
)
