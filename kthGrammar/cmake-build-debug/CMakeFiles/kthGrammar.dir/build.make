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
CMAKE_SOURCE_DIR = C:\Users\msi-user\Desktop\leetcode\kthGrammar

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\msi-user\Desktop\leetcode\kthGrammar\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/kthGrammar.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/kthGrammar.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kthGrammar.dir/flags.make

CMakeFiles/kthGrammar.dir/kthGrammar.cpp.obj: CMakeFiles/kthGrammar.dir/flags.make
CMakeFiles/kthGrammar.dir/kthGrammar.cpp.obj: CMakeFiles/kthGrammar.dir/includes_CXX.rsp
CMakeFiles/kthGrammar.dir/kthGrammar.cpp.obj: ../kthGrammar.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\msi-user\Desktop\leetcode\kthGrammar\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/kthGrammar.dir/kthGrammar.cpp.obj"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\kthGrammar.dir\kthGrammar.cpp.obj -c C:\Users\msi-user\Desktop\leetcode\kthGrammar\kthGrammar.cpp

CMakeFiles/kthGrammar.dir/kthGrammar.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kthGrammar.dir/kthGrammar.cpp.i"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\msi-user\Desktop\leetcode\kthGrammar\kthGrammar.cpp > CMakeFiles\kthGrammar.dir\kthGrammar.cpp.i

CMakeFiles/kthGrammar.dir/kthGrammar.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kthGrammar.dir/kthGrammar.cpp.s"
	C:\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\msi-user\Desktop\leetcode\kthGrammar\kthGrammar.cpp -o CMakeFiles\kthGrammar.dir\kthGrammar.cpp.s

# Object files for target kthGrammar
kthGrammar_OBJECTS = \
"CMakeFiles/kthGrammar.dir/kthGrammar.cpp.obj"

# External object files for target kthGrammar
kthGrammar_EXTERNAL_OBJECTS =

kthGrammar.exe: CMakeFiles/kthGrammar.dir/kthGrammar.cpp.obj
kthGrammar.exe: CMakeFiles/kthGrammar.dir/build.make
kthGrammar.exe: CMakeFiles/kthGrammar.dir/linklibs.rsp
kthGrammar.exe: CMakeFiles/kthGrammar.dir/objects1.rsp
kthGrammar.exe: CMakeFiles/kthGrammar.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\msi-user\Desktop\leetcode\kthGrammar\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable kthGrammar.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\kthGrammar.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kthGrammar.dir/build: kthGrammar.exe
.PHONY : CMakeFiles/kthGrammar.dir/build

CMakeFiles/kthGrammar.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\kthGrammar.dir\cmake_clean.cmake
.PHONY : CMakeFiles/kthGrammar.dir/clean

CMakeFiles/kthGrammar.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\msi-user\Desktop\leetcode\kthGrammar C:\Users\msi-user\Desktop\leetcode\kthGrammar C:\Users\msi-user\Desktop\leetcode\kthGrammar\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\kthGrammar\cmake-build-debug C:\Users\msi-user\Desktop\leetcode\kthGrammar\cmake-build-debug\CMakeFiles\kthGrammar.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kthGrammar.dir/depend

