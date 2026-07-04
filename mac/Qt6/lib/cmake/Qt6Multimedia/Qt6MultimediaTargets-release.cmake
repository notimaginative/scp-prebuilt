#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::Multimedia" for configuration "Release"
set_property(TARGET Qt6::Multimedia APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qt6::Multimedia PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Qt6::Concurrent"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libQt6Multimedia.6.11.1.dylib"
  IMPORTED_SONAME_RELEASE "@rpath/libQt6Multimedia.6.dylib"
  )

list(APPEND _cmake_import_check_targets Qt6::Multimedia )
list(APPEND _cmake_import_check_files_for_Qt6::Multimedia "${_IMPORT_PREFIX}/lib/libQt6Multimedia.6.11.1.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
