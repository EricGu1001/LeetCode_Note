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
CMAKE_SOURCE_DIR = C:\Users\msi-user\Desktop\leetcode\reverseList

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\msi-user\Desktop\leetcode\reverseList\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/reverseList.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/reverseList.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/reverseList.dir/flags.make

CMakeFiles/reverseList.dir/reverseList.cpp.obj: CMakeFiles/reverseList.dir/flags.make
CMakeFiles/reverseList.dir/reverseList.cpp.obj: CMakeFiles/reverseList.dir/includes_CXX.rsp
CMakeFiles/reverseList.dir/reverseList.cpp.obj: ../reverseList.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\msi-user\Desktop\leetcode\reverseList\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/reverseList.dir/reverseList.cpp.obj"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\reverseList.dir\reverseList.cpp.obj -c C:\Users\msi-user\Desktop\leetcode\reverseList\reverseList.cpp

CMakeFiles/reverseList.dir/reverseList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reverseList.dir/reverseList.cpp.i"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\msi-user\Desktop\leetcode\reverseList\reverseList.cpp > CMakeFiles\reverseList.dir\reverseList.cpp.i

CMakeFiles/reverseList.dir/reverseList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reverseList.dir/reverseList.cpp.s"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\msi-user\Desktop\leetcode\reverseList\reverseList.cpp -o CMakeFiles\reverseList.dir\reverseList.cpp.s

# Object files for target reverseList
reverseList_OBJECTS = \
"CMakeFiles/reverseList.dir/reverseList.cpp.obj"

# External object files for target reverseList
reverseList_EXTERNAL_OBJECTS =

reverseList.exe: CMakeFiles/reverseList.dir/reverseList.cpp.obj
reverseList.exe: CMakeFiles/reverseList.dir/build.make
reverseList.exe: CMakeFiles/reverseList.dir/linklibs.rsp
reverseList.exe: CMakeFiles/reverseList.dir/objects1.rsp
reverseList.exe: CMakeFiles/reverseList.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\msi-user\Desktop\leetcode\reverseList\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable reverseList.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\reverseList.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/reverseList.dir/build: reverseList.exe
.PHONY : CMakeFiles/reverseList.dir/build

CMakeFiles/reverseList.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\reverseList.dir\cmake_clean.cmake
.PHONY : CMakeFiles/reverseList.dir/clean

CMakeFiles/reverseList.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\msi-user\Desktop\leetcode\reverseList C:\Users\msi-user\Desktop\leetcode\reverseList C:\Users\msi-user\Desktop\leetcode\reverseList\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\reverseList\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\reverseList\cmake-build-debug\CMakeFiles\reverseList.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/reverseList.dir/depend

