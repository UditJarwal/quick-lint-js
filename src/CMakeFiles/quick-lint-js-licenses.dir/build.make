# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/koragg/Downloads/Projects/open source/quick-lint-js"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/koragg/Downloads/Projects/open source/quick-lint-js"

# Utility rule file for quick-lint-js-licenses.

# Include any custom commands dependencies for this target.
include src/CMakeFiles/quick-lint-js-licenses.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/quick-lint-js-licenses.dir/progress.make

src/CMakeFiles/quick-lint-js-licenses: src/quick-lint-js-licenses.txt

src/quick-lint-js-licenses.txt: tools/collect-copyright
src/quick-lint-js-licenses.txt: quick-lint-js
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/Users/koragg/Downloads/Projects/open source/quick-lint-js/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Generating quick-lint-js-licenses.txt"
	cd "/Users/koragg/Downloads/Projects/open source/quick-lint-js/src" && /usr/bin/python3 /Users/koragg/Downloads/Projects/open\ source/quick-lint-js/cmake/../tools/collect-copyright --build-directory /Users/koragg/Downloads/Projects/open\ source/quick-lint-js --linkmap /Users/koragg/Downloads/Projects/open\ source/quick-lint-js/src/quick-lint-js.trace >"/Users/koragg/Downloads/Projects/open\ source/quick-lint-js/src/quick-lint-js-licenses.txt"

quick-lint-js-licenses: src/CMakeFiles/quick-lint-js-licenses
quick-lint-js-licenses: src/quick-lint-js-licenses.txt
quick-lint-js-licenses: src/CMakeFiles/quick-lint-js-licenses.dir/build.make
.PHONY : quick-lint-js-licenses

# Rule to build all files generated by this target.
src/CMakeFiles/quick-lint-js-licenses.dir/build: quick-lint-js-licenses
.PHONY : src/CMakeFiles/quick-lint-js-licenses.dir/build

src/CMakeFiles/quick-lint-js-licenses.dir/clean:
	cd "/Users/koragg/Downloads/Projects/open source/quick-lint-js/src" && $(CMAKE_COMMAND) -P CMakeFiles/quick-lint-js-licenses.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/quick-lint-js-licenses.dir/clean

src/CMakeFiles/quick-lint-js-licenses.dir/depend:
	cd "/Users/koragg/Downloads/Projects/open source/quick-lint-js" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/koragg/Downloads/Projects/open source/quick-lint-js" "/Users/koragg/Downloads/Projects/open source/quick-lint-js/src" "/Users/koragg/Downloads/Projects/open source/quick-lint-js" "/Users/koragg/Downloads/Projects/open source/quick-lint-js/src" "/Users/koragg/Downloads/Projects/open source/quick-lint-js/src/CMakeFiles/quick-lint-js-licenses.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : src/CMakeFiles/quick-lint-js-licenses.dir/depend

