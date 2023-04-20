/*=========================================================================

  Program: GDCM (Grassroots DICOM). A DICOM library

  Copyright (c) 2006-2011 Mathieu Malaterre
  All rights reserved.
  See Copyright.txt or http://gdcm.sourceforge.net/Copyright.html for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#ifndef GDCMCONFIGURE_H
#define GDCMCONFIGURE_H

/* This header is configured by GDCM's build process.  */

/*--------------------------------------------------------------------------*/
/* Platform Features                                                        */

/* Byte order.  */
/* All compilers that support Mac OS X define either __BIG_ENDIAN__ or
   __LITTLE_ENDIAN__ to match the endianness of the architecture being
   compiled for. This is not necessarily the same as the architecture of the
   machine doing the building. In order to support Universal Binaries on
   Mac OS X, we prefer those defines to decide the endianness.
   Elsewhere use the platform check result.  */
#if !defined(__APPLE__)
/* #undef GDCM_WORDS_BIGENDIAN */
#elif defined(__BIG_ENDIAN__)
# define GDCM_WORDS_BIGENDIAN
#endif

/* Hard code the path to the public dictionary */
#define PUB_DICT_PATH ""

/* Useful in particular for loadshared where the full path
 * to the lib is needed */
#define GDCM_SOURCE_DIR "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-src"
#define GDCM_EXECUTABLE_OUTPUT_PATH "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/bin"
#define GDCM_LIBRARY_OUTPUT_PATH    "/__w/DicomViewer/DicomViewer/build/_deps/gdcm-build/bin"

/* #undef GDCM_BUILD_TESTING */

/* #undef GDCM_USE_SYSTEM_ZLIB */
/* #undef GDCM_USE_SYSTEM_UUID */
/* #undef GDCM_USE_SYSTEM_POPPLER */
/* #undef GDCM_USE_SYSTEM_LIBXML2 */
/* #undef GDCM_USE_SYSTEM_OPENSSL */
/* #undef GDCM_USE_SYSTEM_MD5 */
/* #undef GDCM_USE_SYSTEM_EXPAT */
/* #undef GDCM_USE_SYSTEM_JSON */
/* #undef GDCM_USE_SYSTEM_LJPEG */
/* #undef GDCM_USE_SYSTEM_OPENJPEG */
/* #undef GDCM_USE_SYSTEM_CHARLS */
/* #undef GDCM_USE_SYSTEM_KAKADU */
/* #undef GDCM_USE_SYSTEM_PVRG */
#define GDCMV2_0_COMPATIBILITY
/* #undef GDCM_USE_SYSTEM_PAPYRUS3 */

#ifndef GDCM_USE_SYSTEM_OPENJPEG
#define OPENJPEG_VERSION_MAJOR 2
#else
#define OPENJPEG_VERSION_MAJOR 
#endif //GDCM_USE_SYSTEM_OPENJPEG

#ifndef OPENJPEG_VERSION_MAJOR
#error problem with openjpeg major version
#endif // OPENJPEG_VERSION_MAJOR

/* #undef GDCM_USE_PVRG */
/* #undef GDCM_USE_KAKADU */
#define GDCM_USE_JPEGLS

/* #undef GDCM_AUTOLOAD_GDCMJNI */

/* This variable allows you to have helpful debug statement */
/* That are in between #ifdef / endif in the gdcm code */
/* That means if GDCM_DEBUG is OFF there shouldn't be any 'cout' at all ! */
/* only cerr, for instance 'invalid file' will be allowed */
/* #undef GDCM_DEBUG */

#define GDCM_CMAKE_INSTALL_PREFIX "/opt/emsdk/upstream/emscripten/cache/sysroot"
#define GDCM_INSTALL_INCLUDE_DIR "include/gdcm-3.0"
#define GDCM_INSTALL_DATA_DIR "share/gdcm-3.0"

/* Whether we are building shared libraries.  */
/* #undef GDCM_BUILD_SHARED_LIBS */

/* GDCM uses __FUNCTION__ which is not ANSI C, but C99 */
#define GDCM_CXX_HAS_FUNCTION

/* Special time structure support */
#define GDCM_HAVE_SYS_TIME_H
/* #undef GDCM_HAVE_WINSOCK_H */
#define GDCM_HAVE_BYTESWAP_H
/* #undef GDCM_HAVE_RPC_H */
// CMS with PBE (added in OpenSSL 1.0.0 ~ Fri Nov 27 15:33:25 CET 2009)
/* #undef GDCM_HAVE_CMS_RECIPIENT_PASSWORD */
#define GDCM_HAVE_LANGINFO_H
#define GDCM_HAVE_NL_LANGINFO

#define GDCM_HAVE_STRCASECMP
#define GDCM_HAVE_STRNCASECMP
#define GDCM_HAVE_STRPTIME
/* #undef GDCM_HAVE__STRICMP */
/* #undef GDCM_HAVE__STRNICMP */
/* #undef GDCM_HAVE_LROUND */
#define GDCM_HAVE_GETTIMEOFDAY
/* #undef GDCM_HAVE_ATOLL */
/* #undef GDCM_HAVE_JSON_OBJECT_OBJECT_GET_EX */

// MM: I have a feeling that if GDCM_HAVE_WCHAR_IFSTREAM, then UNICODE filename
// are expected to be specified as UTF-16, but if no API exist for UTF-16
// at std::ifstream level, then const char* of std::ifstream might accept
// UTF-8
#define GDCM_HAVE_WCHAR_IFSTREAM

// https://stackoverflow.com/questions/15615136/is-codecvt-not-a-std-header
// https://stackoverflow.com/questions/50867257/c-use-of-wstring-convert-on-linux
#define GDCM_HAVE_CODECVT

/* #undef GDCM_FORCE_BIGENDIAN_EMULATION */

#ifndef GDCM_OVERRIDE_BROKEN_IMPLEMENTATION
/* To Remove code that support broken DICOM implementation and therefore
 * add some over head. Turn Off at your own risk
 */
#define GDCM_SUPPORT_BROKEN_IMPLEMENTATION
#endif
#ifndef gdcm_ns
#define gdcm_ns gdcm
#endif

#define GDCM_PVRG_JPEG_EXECUTABLE ""
#define GDCM_KAKADU_EXPAND_EXECUTABLE ""

/*--------------------------------------------------------------------------*/
/* GDCM Versioning                                                          */

/* Version number.  */
#define GDCM_MAJOR_VERSION 3
#define GDCM_MINOR_VERSION 0
#define GDCM_BUILD_VERSION 20
#define GDCM_VERSION "3.0.20"
#define GDCM_API_VERSION "3.0"

/*
#define GDCM_FILE_META_INFORMATION_VERSION "\0\1"
// echo "gdcm" | od -b
#define GDCM_IMPLEMENTATION_CLASS_UID "107.104.103.115";
#define GDCM_IMPLEMENTATION_VERSION_NAME "GDCM " GDCM_VERSION
#define GDCM_SOURCE_APPLICATION_ENTITY_TITLE "GDCM"
*/


/*--------------------------------------------------------------------------*/
/* GDCM deprecation mechanism                                               */
/* #undef GDCM_LEGACY_REMOVE */
/* #undef GDCM_LEGACY_SILENT */

/* #undef GDCM_ALWAYS_TRACE_MACRO */

/* ITK Specific */
/* #undef GDCM_USE_COREFOUNDATION_LIBRARY */

#endif
