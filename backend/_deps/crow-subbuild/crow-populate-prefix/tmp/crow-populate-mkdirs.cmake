# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "E:/payroll-System/Payroll-System/backend/_deps/crow-src")
  file(MAKE_DIRECTORY "E:/payroll-System/Payroll-System/backend/_deps/crow-src")
endif()
file(MAKE_DIRECTORY
  "E:/payroll-System/Payroll-System/backend/_deps/crow-build"
  "E:/payroll-System/Payroll-System/backend/_deps/crow-subbuild/crow-populate-prefix"
  "E:/payroll-System/Payroll-System/backend/_deps/crow-subbuild/crow-populate-prefix/tmp"
  "E:/payroll-System/Payroll-System/backend/_deps/crow-subbuild/crow-populate-prefix/src/crow-populate-stamp"
  "E:/payroll-System/Payroll-System/backend/_deps/crow-subbuild/crow-populate-prefix/src"
  "E:/payroll-System/Payroll-System/backend/_deps/crow-subbuild/crow-populate-prefix/src/crow-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "E:/payroll-System/Payroll-System/backend/_deps/crow-subbuild/crow-populate-prefix/src/crow-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "E:/payroll-System/Payroll-System/backend/_deps/crow-subbuild/crow-populate-prefix/src/crow-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
