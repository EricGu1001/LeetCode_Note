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
CMAKE_SOURCE_DIR = C:\Users\msi-user\Desktop\leetcode\StockSpanner

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\msi-user\Desktop\leetcode\StockSpanner\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/StockSpanner.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/StockSpanner.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/StockSpanner.dir/flags.make

CMakeFiles/StockSpanner.dir/StockSpanner.cpp.obj: CMakeFiles/StockSpanner.dir/flags.make
CMakeFiles/StockSpanner.dir/StockSpanner.cpp.obj: CMakeFiles/StockSpanner.dir/includes_CXX.rsp
CMakeFiles/StockSpanner.dir/StockSpanner.cpp.obj: ../StockSpanner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\msi-user\Desktop\leetcode\StockSpanner\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/StockSpanner.dir/StockSpanner.cpp.obj"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\StockSpanner.dir\StockSpanner.cpp.obj -c C:\Users\msi-user\Desktop\leetcode\StockSpanner\StockSpanner.cpp

CMakeFiles/StockSpanner.dir/StockSpanner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/StockSpanner.dir/StockSpanner.cpp.i"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\msi-user\Desktop\leetcode\StockSpanner\StockSpanner.cpp > CMakeFiles\StockSpanner.dir\StockSpanner.cpp.i

CMakeFiles/StockSpanner.dir/StockSpanner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/StockSpanner.dir/StockSpanner.cpp.s"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\msi-user\Desktop\leetcode\StockSpanner\StockSpanner.cpp -o CMakeFiles\StockSpanner.dir\StockSpanner.cpp.s

# Object files for target StockSpanner
StockSpanner_OBJECTS = \
"CMakeFiles/StockSpanner.dir/StockSpanner.cpp.obj"

# External object files for target StockSpanner
StockSpanner_EXTERNAL_OBJECTS =

StockSpanner.exe: CMakeFiles/StockSpanner.dir/StockSpanner.cpp.obj
StockSpanner.exe: CMakeFiles/StockSpanner.dir/build.make
StockSpanner.exe: CMakeFiles/StockSpanner.dir/linklibs.rsp
StockSpanner.exe: CMakeFiles/StockSpanner.dir/objects1.rsp
StockSpanner.exe: CMakeFiles/StockSpanner.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\msi-user\Desktop\leetcode\StockSpanner\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable StockSpanner.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\StockSpanner.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/StockSpanner.dir/build: StockSpanner.exe
.PHONY : CMakeFiles/StockSpanner.dir/build

CMakeFiles/StockSpanner.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\StockSpanner.dir\cmake_clean.cmake
.PHONY : CMakeFiles/StockSpanner.dir/clean

CMakeFiles/StockSpanner.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\msi-user\Desktop\leetcode\StockSpanner C:\Users\msi-user\Desktop\leetcode\StockSpanner C:\Users\msi-user\Desktop\leetcode\StockSpanner\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\StockSpanner\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\StockSpanner\cmake-build-debug\CMakeFiles\StockSpanner.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/StockSpanner.dir/depend

