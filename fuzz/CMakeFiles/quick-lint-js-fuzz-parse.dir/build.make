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

# Include any dependencies generated for this target.
include fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/compiler_depend.make

# Include the progress variables for this target.
include fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/progress.make

# Include the compile flags for this target's objects.
include fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/flags.make

fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.pch: fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/flags.make
fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.pch: fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.cxx
fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.pch: fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx
fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.pch: fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/koragg/Downloads/Projects/open source/quick-lint-js/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.pch"
	cd "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGSarm64) -Winvalid-pch -Xclang -emit-pch -Xclang -include -Xclang "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx" -x c++-header -MD -MT fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.pch -MF CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.pch.d -o CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.pch -c "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.cxx"

fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.i"
	cd "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGSarm64) -Winvalid-pch -Xclang -emit-pch -Xclang -include -Xclang "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx" -x c++-header -E "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.cxx" > CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.i

fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.s"
	cd "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGSarm64) -Winvalid-pch -Xclang -emit-pch -Xclang -include -Xclang "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx" -x c++-header -S "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.cxx" -o CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.s

fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.o: fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/flags.make
fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.o: fuzz/fuzz-parse.cpp
fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.o: fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx
fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.o: fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.pch
fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.o: fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/koragg/Downloads/Projects/open source/quick-lint-js/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.o"
	cd "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 "-include/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx" -MD -MT fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.o -MF CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.o.d -o CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.o -c "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/fuzz-parse.cpp"

fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.i"
	cd "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 "-include/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx" -E "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/fuzz-parse.cpp" > CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.i

fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.s"
	cd "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xarch_arm64 "-include/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx" -S "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/fuzz-parse.cpp" -o CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.s

# Object files for target quick-lint-js-fuzz-parse
quick__lint__js__fuzz__parse_OBJECTS = \
"CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.o"

# External object files for target quick-lint-js-fuzz-parse
quick__lint__js__fuzz__parse_EXTERNAL_OBJECTS =

fuzz/quick-lint-js-fuzz-parse: fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_pch_arm64.hxx.pch
fuzz/quick-lint-js-fuzz-parse: fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/fuzz-parse.cpp.o
fuzz/quick-lint-js-fuzz-parse: fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/build.make
fuzz/quick-lint-js-fuzz-parse: src/libquick-lint-js-lib.a
fuzz/quick-lint-js-fuzz-parse: src/libquick-lint-js-tool-lib.a
fuzz/quick-lint-js-fuzz-parse: vendor/simdjson/libsimdjson.a
fuzz/quick-lint-js-fuzz-parse: fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/koragg/Downloads/Projects/open source/quick-lint-js/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable quick-lint-js-fuzz-parse"
	cd "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/quick-lint-js-fuzz-parse.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/build: fuzz/quick-lint-js-fuzz-parse
.PHONY : fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/build

fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/clean:
	cd "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz" && $(CMAKE_COMMAND) -P CMakeFiles/quick-lint-js-fuzz-parse.dir/cmake_clean.cmake
.PHONY : fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/clean

fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/depend:
	cd "/Users/koragg/Downloads/Projects/open source/quick-lint-js" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/koragg/Downloads/Projects/open source/quick-lint-js" "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz" "/Users/koragg/Downloads/Projects/open source/quick-lint-js" "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz" "/Users/koragg/Downloads/Projects/open source/quick-lint-js/fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : fuzz/CMakeFiles/quick-lint-js-fuzz-parse.dir/depend

