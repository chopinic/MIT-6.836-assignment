# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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


# Suppress display of executed commands.
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
CMAKE_SOURCE_DIR = /Users/yangguang/archive/cmakeTest/qtCMake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yangguang/archive/cmakeTest/qtCMake/build

# Utility rule file for a1_autogen.

# Include the progress variables for this target.
include CMakeFiles/a1_autogen.dir/progress.make

CMakeFiles/a1_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target a1"
	/Applications/CMake.app/Contents/bin/cmake -E cmake_autogen /Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles/a1_autogen.dir/AutogenInfo.json Debug

a1_autogen: CMakeFiles/a1_autogen
a1_autogen: CMakeFiles/a1_autogen.dir/build.make

.PHONY : a1_autogen

# Rule to build all files generated by this target.
CMakeFiles/a1_autogen.dir/build: a1_autogen

.PHONY : CMakeFiles/a1_autogen.dir/build

CMakeFiles/a1_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/a1_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/a1_autogen.dir/clean

CMakeFiles/a1_autogen.dir/depend:
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yangguang/archive/cmakeTest/qtCMake /Users/yangguang/archive/cmakeTest/qtCMake /Users/yangguang/archive/cmakeTest/qtCMake/build /Users/yangguang/archive/cmakeTest/qtCMake/build /Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles/a1_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/a1_autogen.dir/depend
