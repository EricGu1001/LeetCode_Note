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
CMAKE_SOURCE_DIR = C:\Users\msi-user\Desktop\leetcode\maxProfit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\msi-user\Desktop\leetcode\maxProfit\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/maxProfit.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/maxProfit.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/maxProfit.dir/flags.make

CMakeFiles/maxProfit.dir/maxProfit.cpp.obj: CMakeFiles/maxProfit.dir/flags.make
CMakeFiles/maxProfit.dir/maxProfit.cpp.obj: ../maxProfit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\msi-user\Desktop\leetcode\maxProfit\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/maxProfit.dir/maxProfit.cpp.obj"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\maxProfit.dir\maxProfit.cpp.obj -c C:\Users\msi-user\Desktop\leetcode\maxProfit\maxProfit.cpp

CMakeFiles/maxProfit.dir/maxProfit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/maxProfit.dir/maxProfit.cpp.i"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\msi-user\Desktop\leetcode\maxProfit\maxProfit.cpp > CMakeFiles\maxProfit.dir\maxProfit.cpp.i

CMakeFiles/maxProfit.dir/maxProfit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/maxProfit.dir/maxProfit.cpp.s"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\msi-user\Desktop\leetcode\maxProfit\maxProfit.cpp -o CMakeFiles\maxProfit.dir\maxProfit.cpp.s

# Object files for target maxProfit
maxProfit_OBJECTS = \
"CMakeFiles/maxProfit.dir/maxProfit.cpp.obj"

# External object files for target maxProfit
maxProfit_EXTERNAL_OBJECTS =

maxProfit.exe: CMakeFiles/maxProfit.dir/maxProfit.cpp.obj
maxProfit.exe: CMakeFiles/maxProfit.dir/build.make
maxProfit.exe: CMakeFiles/maxProfit.dir/linklibs.rsp
maxProfit.exe: CMakeFiles/maxProfit.dir/objects1.rsp
maxProfit.exe: CMakeFiles/maxProfit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\msi-user\Desktop\leetcode\maxProfit\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable maxProfit.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\maxProfit.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/maxProfit.dir/build: maxProfit.exe
.PHONY : CMakeFiles/maxProfit.dir/build

CMakeFiles/maxProfit.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\maxProfit.dir\cmake_clean.cmake
.PHONY : CMakeFiles/maxProfit.dir/clean

CMakeFiles/maxProfit.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\msi-user\Desktop\leetcode\maxProfit C:\Users\msi-user\Desktop\leetcode\maxProfit C:\Users\msi-user\Desktop\leetcode\maxProfit\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\maxProfit\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\maxProfit\cmake-build-debug\CMakeFiles\maxProfit.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/maxProfit.dir/depend

