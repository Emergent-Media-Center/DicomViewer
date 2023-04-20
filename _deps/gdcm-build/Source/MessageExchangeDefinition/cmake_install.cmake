# Install script for directory: /__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/bin/libgdcmMEXD.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gdcm-3.0" TYPE FILE FILES
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmAAbortPDU.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmAAssociateACPDU.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmAAssociateRJPDU.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmAAssociateRQPDU.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmARTIMTimer.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmAReleaseRPPDU.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmAReleaseRQPDU.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmAbstractSyntax.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmApplicationContext.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmAsynchronousOperationsWindowSub.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmBaseCompositeMessage.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmBaseNormalizedMessage.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmBasePDU.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmBaseQuery.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmBaseRootQuery.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmCEchoMessages.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmCFindMessages.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmCMoveMessages.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmCStoreMessages.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmCommandDataSet.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmCompositeMessageFactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmCompositeNetworkFunctions.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmDIMSE.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmFindPatientRootQuery.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmFindStudyRootQuery.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmImplementationClassUIDSub.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmImplementationUIDSub.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmImplementationVersionNameSub.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmMaximumLengthSub.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmModalityPerformedProcedureStepCreateQuery.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmModalityPerformedProcedureStepSetQuery.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmMovePatientRootQuery.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmMoveStudyRootQuery.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmNActionMessages.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmNCreateMessages.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmNDeleteMessages.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmNEventReportMessages.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmNGetMessages.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmNSetMessages.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmNetworkEvents.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmNetworkStateID.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmNormalizedMessageFactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmNormalizedNetworkFunctions.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmPDUFactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmPDataTFPDU.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmPresentationContext.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmPresentationContextAC.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmPresentationContextGenerator.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmPresentationContextRQ.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmPresentationDataValue.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmQueryBase.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmQueryFactory.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmQueryImage.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmQueryPatient.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmQuerySeries.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmQueryStudy.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmRoleSelectionSub.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmSOPClassExtendedNegociationSub.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmServiceClassApplicationInformation.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmServiceClassUser.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmTransferSyntaxSub.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULAction.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULActionAA.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULActionAE.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULActionAR.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULActionDT.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULBasicCallback.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULConnection.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULConnectionCallback.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULConnectionInfo.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULConnectionManager.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULEvent.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULTransitionTable.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmULWritingCallback.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmUserInformation.h"
    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src/Source/MessageExchangeDefinition/gdcmWLMFindQuery.h"
    )
endif()

