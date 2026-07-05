#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::LabsSynchronizer" for configuration "Release"
set_property(TARGET Qt6::LabsSynchronizer APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Qt6::LabsSynchronizer PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Qt6::Qml"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libQt6LabsSynchronizer.so.6.11.1"
  IMPORTED_SONAME_RELEASE "libQt6LabsSynchronizer.so.6"
  )

list(APPEND _IMPORT_CHECK_TARGETS Qt6::LabsSynchronizer )
list(APPEND _IMPORT_CHECK_FILES_FOR_Qt6::LabsSynchronizer "${_IMPORT_PREFIX}/lib/libQt6LabsSynchronizer.so.6.11.1" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
