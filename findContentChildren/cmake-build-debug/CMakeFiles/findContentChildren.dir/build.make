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
CMAKE_SOURCE_DIR = C:\Users\msi-user\Desktop\leetcode\findContentChildren

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\msi-user\Desktop\leetcode\findContentChildren\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/findContentChildren.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/findContentChildren.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/findContentChildren.dir/flags.make

CMakeFiles/findContentChildren.dir/findContentChildren.cpp.obj: CMakeFiles/findContentChildren.dir/flags.make
CMakeFiles/findContentChildren.dir/findContentChildren.cpp.obj: CMakeFiles/findContentChildren.dir/includes_CXX.rsp
CMakeFiles/findContentChildren.dir/findContentChildren.cpp.obj: ../findContentChildren.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\msi-user\Desktop\leetcode\findContentChildren\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/findContentChildren.dir/findContentChildren.cpp.obj"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\findContentChildren.dir\findContentChildren.cpp.obj -c C:\Users\msi-user\Desktop\leetcode\findContentChildren\findContentChildren.cpp

CMakeFiles/findContentChildren.dir/findContentChildren.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/findContentChildren.dir/findContentChildren.cpp.i"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\msi-user\Desktop\leetcode\findContentChildren\findContentChildren.cpp > CMakeFiles\findContentChildren.dir\findContentChildren.cpp.i

CMakeFiles/findContentChildren.dir/findContentChildren.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/findContentChildren.dir/findContentChildren.cpp.s"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\msi-user\Desktop\leetcode\findContentChildren\findContentChildren.cpp -o CMakeFiles\findContentChildren.dir\findContentChildren.cpp.s

# Object files for target findContentChildren
findContentChildren_OBJECTS = \
"CMakeFiles/findContentChildren.dir/findContentChildren.cpp.obj"

# External object files for target findContentChildren
findContentChildren_EXTERNAL_OBJECTS =

findContentChildren.exe: CMakeFiles/findContentChildren.dir/findContentChildren.cpp.obj
findContentChildren.exe: CMakeFiles/findContentChildren.dir/build.make
findContentChildren.exe: CMakeFiles/findContentChildren.dir/linklibs.rsp
findContentChildren.exe: CMakeFiles/findContentChildren.dir/objects1.rsp
findContentChildren.exe: CMakeFiles/findContentChildren.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\msi-user\Desktop\leetcode\findContentChildren\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable findContentChildren.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\findContentChildren.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/findContentChildren.dir/build: findContentChildren.exe
.PHONY : CMakeFiles/findContentChildren.dir/build

CMakeFiles/findContentChildren.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\findContentChildren.dir\cmake_clean.cmake
.PHONY : CMakeFiles/findContentChildren.dir/clean

CMakeFiles/findContentChildren.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\msi-user\Desktop\leetcode\findContentChildren C:\Users\msi-user\Desktop\leetcode\findContentChildren C:\Users\msi-user\Desktop\leetcode\findContentChildren\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\findContentChildren\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\findContentChildren\cmake-build-debug\CMakeFiles\findContentChildren.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/findContentChildren.dir/depend
