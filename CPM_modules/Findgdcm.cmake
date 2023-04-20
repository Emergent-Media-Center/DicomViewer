include("/__w/DicomViewer/DicomViewer/build/cmake/CPM_0.37.0.cmake")
CPMAddPackage("NAME;gdcm;URL;https://github.com/malaterre/GDCM/archive/refs/tags/v3.0.20.zip;OPTIONS;GDCM_BUILD_DOCBOOK_MANPAGES 0;BUILD_APPLICATIONS 0;GDCM_BUILD_APPLICATIONS 0;GDCM_BUILD_EXAMPLES 0")
set(gdcm_FOUND TRUE)