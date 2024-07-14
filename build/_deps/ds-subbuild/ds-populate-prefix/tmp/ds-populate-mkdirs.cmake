# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "F:/qt_ws/PartManagament/build/_deps/ds-src"
  "F:/qt_ws/PartManagament/build/_deps/ds-build"
  "F:/qt_ws/PartManagament/build/_deps/ds-subbuild/ds-populate-prefix"
  "F:/qt_ws/PartManagament/build/_deps/ds-subbuild/ds-populate-prefix/tmp"
  "F:/qt_ws/PartManagament/build/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp"
  "F:/qt_ws/PartManagament/build/_deps/ds-subbuild/ds-populate-prefix/src"
  "F:/qt_ws/PartManagament/build/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "F:/qt_ws/PartManagament/build/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "F:/qt_ws/PartManagament/build/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
