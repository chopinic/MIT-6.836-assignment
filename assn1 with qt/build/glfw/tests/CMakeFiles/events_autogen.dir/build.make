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

# Utility rule file for events_autogen.

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/events_autogen.dir/progress.make

glfw/tests/CMakeFiles/events_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target events"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/CMake.app/Contents/bin/cmake -E cmake_autogen /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests/CMakeFiles/events_autogen.dir/AutogenInfo.json Debug

events_autogen: glfw/tests/CMakeFiles/events_autogen
events_autogen: glfw/tests/CMakeFiles/events_autogen.dir/build.make

.PHONY : events_autogen

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/events_autogen.dir/build: events_autogen

.PHONY : glfw/tests/CMakeFiles/events_autogen.dir/build

glfw/tests/CMakeFiles/events_autogen.dir/clean:
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/events_autogen.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/events_autogen.dir/clean

glfw/tests/CMakeFiles/events_autogen.dir/depend:
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yangguang/archive/cmakeTest/qtCMake /Users/yangguang/archive/cmakeTest/qtCMake/glfw/tests /Users/yangguang/archive/cmakeTest/qtCMake/build /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests/CMakeFiles/events_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/events_autogen.dir/depend

