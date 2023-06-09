# Install script for directory: /Users/koragg/Downloads/Projects/open source/quick-lint-js/plugin/vscode

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "vscode-node")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/dist" TYPE SHARED_LIBRARY FILES "/Users/koragg/Downloads/Projects/open source/quick-lint-js/plugin/vscode/quick-lint-js-vscode-node_darwin-arm64.node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/dist/quick-lint-js-vscode-node_darwin-arm64.node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/dist/quick-lint-js-vscode-node_darwin-arm64.node")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/dist/quick-lint-js-vscode-node_darwin-arm64.node")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "vscode-node")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "vscode-node")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/dist" TYPE FILE RENAME "copyright_quick-lint-js-vscode-node_darwin-arm64.txt" FILES "/Users/koragg/Downloads/Projects/open source/quick-lint-js/plugin/vscode/quick-lint-js-vscode-node-licenses.txt")
endif()

