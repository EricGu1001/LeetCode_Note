# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\msi-user\Desktop\leetcode\ambiguousCoordinates

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\msi-user\Desktop\leetcode\ambiguousCoordinates\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ambiguousCoordinates.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/ambiguousCoordinates.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ambiguousCoordinates.dir/flags.make

CMakeFiles/ambiguousCoordinates.dir/ambiguousCoordinates.cpp.obj: CMakeFiles/ambiguousCoordinates.dir/flags.make
CMakeFiles/ambiguousCoordinates.dir/ambiguousCoordinates.cpp.obj: CMakeFiles/ambiguousCoordinates.dir/includes_CXX.rsp
CMakeFiles/ambiguousCoordinates.dir/ambiguousCoordinates.cpp.obj: ../ambiguousCoordinates.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\msi-user\Desktop\leetcode\ambiguousCoordinates\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ambiguousCoordinates.dir/ambiguousCoordinates.cpp.obj"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ambiguousCoordinates.dir\ambiguousCoordinates.cpp.obj -c C:\Users\msi-user\Desktop\leetcode\ambiguousCoordinates\ambiguousCoordinates.cpp

CMakeFiles/ambiguousCoordinates.dir/ambiguousCoordinates.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ambiguousCoordinates.dir/ambiguousCoordinates.cpp.i"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\msi-user\Desktop\leetcode\ambiguousCoordinates\ambiguousCoordinates.cpp > CMakeFiles\ambiguousCoordinates.dir\ambiguousCoordinates.cpp.i

CMakeFiles/ambiguousCoordinates.dir/ambiguousCoordinates.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ambiguousCoordinates.dir/ambiguousCoordinates.cpp.s"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\msi-user\Desktop\leetcode\ambiguousCoordinates\ambiguousCoordinates.cpp -o CMakeFiles\ambiguousCoordinates.dir\ambiguousCoordinates.cpp.s

# Object files for target ambiguousCoordinates
ambiguousCoordinates_OBJECTS = \
"CMakeFiles/ambiguousCoordinates.dir/ambiguousCoordinates.cpp.obj"

# External object files for target ambiguousCoordinates
ambiguousCoordinates_EXTERNAL_OBJECTS =

ambiguousCoordinates.exe: CMakeFiles/ambiguousCoordinates.dir/ambiguousCoordinates.cpp.obj
ambiguousCoordinates.exe: CMakeFiles/ambiguousCoordinates.dir/build.make
ambiguousCoordinates.exe: CMakeFiles/ambiguousCoordinates.dir/linklibs.rsp
ambiguousCoordinates.exe: CMakeFiles/ambiguousCoordinates.dir/objects1.rsp
ambiguousCoordinates.exe: CMakeFiles/ambiguousCoordinates.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\msi-user\Desktop\leetcode\ambiguousCoordinates\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ambiguousCoordinates.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ambiguousCoordinates.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ambiguousCoordinates.dir/build: ambiguousCoordinates.exe
.PHONY : CMakeFiles/ambiguousCoordinates.dir/build

CMakeFiles/ambiguousCoordinates.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ambiguousCoordinates.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ambiguousCoordinates.dir/clean

CMakeFiles/ambiguousCoordinates.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\msi-user\Desktop\leetcode\ambiguousCoordinates C:\Users\msi-user\Desktop\leetcode\ambiguousCoordinates C:\Users\msi-user\Desktop\leetcode\ambiguousCoordinates\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\ambiguousCoordinates\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\ambiguousCoordinates\cmake-build-debug\CMakeFiles\ambiguousCoordinates.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ambiguousCoordinates.dir/depend

