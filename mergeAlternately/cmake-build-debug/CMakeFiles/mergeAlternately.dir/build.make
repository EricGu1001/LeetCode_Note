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
CMAKE_SOURCE_DIR = C:\Users\msi-user\Desktop\leetcode\mergeAlternately

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\msi-user\Desktop\leetcode\mergeAlternately\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/mergeAlternately.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/mergeAlternately.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mergeAlternately.dir/flags.make

CMakeFiles/mergeAlternately.dir/mergeAlternately.cpp.obj: CMakeFiles/mergeAlternately.dir/flags.make
CMakeFiles/mergeAlternately.dir/mergeAlternately.cpp.obj: CMakeFiles/mergeAlternately.dir/includes_CXX.rsp
CMakeFiles/mergeAlternately.dir/mergeAlternately.cpp.obj: ../mergeAlternately.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\msi-user\Desktop\leetcode\mergeAlternately\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mergeAlternately.dir/mergeAlternately.cpp.obj"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\mergeAlternately.dir\mergeAlternately.cpp.obj -c C:\Users\msi-user\Desktop\leetcode\mergeAlternately\mergeAlternately.cpp

CMakeFiles/mergeAlternately.dir/mergeAlternately.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mergeAlternately.dir/mergeAlternately.cpp.i"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\msi-user\Desktop\leetcode\mergeAlternately\mergeAlternately.cpp > CMakeFiles\mergeAlternately.dir\mergeAlternately.cpp.i

CMakeFiles/mergeAlternately.dir/mergeAlternately.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mergeAlternately.dir/mergeAlternately.cpp.s"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\msi-user\Desktop\leetcode\mergeAlternately\mergeAlternately.cpp -o CMakeFiles\mergeAlternately.dir\mergeAlternately.cpp.s

# Object files for target mergeAlternately
mergeAlternately_OBJECTS = \
"CMakeFiles/mergeAlternately.dir/mergeAlternately.cpp.obj"

# External object files for target mergeAlternately
mergeAlternately_EXTERNAL_OBJECTS =

mergeAlternately.exe: CMakeFiles/mergeAlternately.dir/mergeAlternately.cpp.obj
mergeAlternately.exe: CMakeFiles/mergeAlternately.dir/build.make
mergeAlternately.exe: CMakeFiles/mergeAlternately.dir/linklibs.rsp
mergeAlternately.exe: CMakeFiles/mergeAlternately.dir/objects1.rsp
mergeAlternately.exe: CMakeFiles/mergeAlternately.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\msi-user\Desktop\leetcode\mergeAlternately\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mergeAlternately.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\mergeAlternately.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mergeAlternately.dir/build: mergeAlternately.exe
.PHONY : CMakeFiles/mergeAlternately.dir/build

CMakeFiles/mergeAlternately.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\mergeAlternately.dir\cmake_clean.cmake
.PHONY : CMakeFiles/mergeAlternately.dir/clean

CMakeFiles/mergeAlternately.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\msi-user\Desktop\leetcode\mergeAlternately C:\Users\msi-user\Desktop\leetcode\mergeAlternately C:\Users\msi-user\Desktop\leetcode\mergeAlternately\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\mergeAlternately\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\mergeAlternately\cmake-build-debug\CMakeFiles\mergeAlternately.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mergeAlternately.dir/depend
