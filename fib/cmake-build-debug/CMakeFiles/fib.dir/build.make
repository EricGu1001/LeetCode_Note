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
CMAKE_SOURCE_DIR = C:\Users\msi-user\Desktop\leetcode\fib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\msi-user\Desktop\leetcode\fib\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/fib.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/fib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fib.dir/flags.make

CMakeFiles/fib.dir/fib.cpp.obj: CMakeFiles/fib.dir/flags.make
CMakeFiles/fib.dir/fib.cpp.obj: CMakeFiles/fib.dir/includes_CXX.rsp
CMakeFiles/fib.dir/fib.cpp.obj: ../fib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\msi-user\Desktop\leetcode\fib\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fib.dir/fib.cpp.obj"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\fib.dir\fib.cpp.obj -c C:\Users\msi-user\Desktop\leetcode\fib\fib.cpp

CMakeFiles/fib.dir/fib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fib.dir/fib.cpp.i"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\msi-user\Desktop\leetcode\fib\fib.cpp > CMakeFiles\fib.dir\fib.cpp.i

CMakeFiles/fib.dir/fib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fib.dir/fib.cpp.s"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\msi-user\Desktop\leetcode\fib\fib.cpp -o CMakeFiles\fib.dir\fib.cpp.s

# Object files for target fib
fib_OBJECTS = \
"CMakeFiles/fib.dir/fib.cpp.obj"

# External object files for target fib
fib_EXTERNAL_OBJECTS =

fib.exe: CMakeFiles/fib.dir/fib.cpp.obj
fib.exe: CMakeFiles/fib.dir/build.make
fib.exe: CMakeFiles/fib.dir/linklibs.rsp
fib.exe: CMakeFiles/fib.dir/objects1.rsp
fib.exe: CMakeFiles/fib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\msi-user\Desktop\leetcode\fib\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fib.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\fib.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fib.dir/build: fib.exe
.PHONY : CMakeFiles/fib.dir/build

CMakeFiles/fib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\fib.dir\cmake_clean.cmake
.PHONY : CMakeFiles/fib.dir/clean

CMakeFiles/fib.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\msi-user\Desktop\leetcode\fib C:\Users\msi-user\Desktop\leetcode\fib C:\Users\msi-user\Desktop\leetcode\fib\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\fib\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\fib\cmake-build-debug\CMakeFiles\fib.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fib.dir/depend

