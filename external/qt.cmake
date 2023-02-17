set(CMAKE_AUTOMOC ON)

CPMAddPackage(
        NAME Qt
            URL "https://download.qt.io/official_releases/qt/6.4/6.4.2/single/qt-everywhere-src-6.4.2.tar.xz"
        VERSION 6.4.2
        URL_HASH "MD5=15e2530292b65a2b3dc23fc03f140796"
#        OPTIONS
##          "Qt6_DIR ${CMAKE_BINARY_DIR}/_deps/qt-build/"
#        "Qt6_DIR ${CMAKE_BINARY_DIR}/_deps/qt-build/qtbase/lib/cmake/Qt6"
#        "QT_BUILD_SUBMODULES qttools;qtpositioning;qtmultimedia;qtbase;qtsvg;qtimageformats;qtdeclarative"
#        "QT_BUILD_SUBMODULES qtbase"
#        CONFIGURE_COMMAND "./configure"
        DOWNLOAD_ONLY YES
)

if(Qt_ADDED)
    execute_process(
            COMMAND ./configure -opensource -confirm-license -prefix ${Qt_BINARY_DIR} -nomake examples -nomake tests -skip qtwebview,qttranslations,qtwebengine,qtwebchannel,qtwayland,qtspeech,qt5compat,qttools,qtdoc
            COMMAND_ECHO STDOUT
            WORKING_DIRECTORY ${Qt_SOURCE_DIR}
    )

    execute_process(
            COMMAND cmake --build . --parallel
            COMMAND_ECHO STDOUT
            WORKING_DIRECTORY ${Qt_SOURCE_DIR}
    )

    execute_process(
            COMMAND cmake --install .
            COMMAND_ECHO STDOUT
            WORKING_DIRECTORY ${Qt_SOURCE_DIR}
    )

    message(STATUS "Qt ADDED")
    message(STATUS "Qt_BINARY_DIR: ${Qt_BINARY_DIR}")
    message(STATUS "Qt_SOURCE_DIR: ${Qt_SOURCE_DIR}")


    find_package(Qt6 REQUIRED COMPONENTS Core Gui Quick Quick3D
        PATHS ${Qt_BINARY_DIR} ${Qt_SOURCE_DIR}/qtbase/lib/cmake/Qt6 ${Qt_SOURCE_DIR})
else()
    message(FATAL_ERROR "Qt NOT ADDED")
endif()
