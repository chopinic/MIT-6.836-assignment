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

# Include any dependencies generated for this target.
include glfw/tests/CMakeFiles/cursor.dir/depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/cursor.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/cursor.dir/flags.make

glfw/tests/CMakeFiles/cursor.dir/cursor_autogen/mocs_compilation.cpp.o: glfw/tests/CMakeFiles/cursor.dir/flags.make
glfw/tests/CMakeFiles/cursor.dir/cursor_autogen/mocs_compilation.cpp.o: glfw/tests/cursor_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object glfw/tests/CMakeFiles/cursor.dir/cursor_autogen/mocs_compilation.cpp.o"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cursor.dir/cursor_autogen/mocs_compilation.cpp.o -c /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests/cursor_autogen/mocs_compilation.cpp

glfw/tests/CMakeFiles/cursor.dir/cursor_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cursor.dir/cursor_autogen/mocs_compilation.cpp.i"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests/cursor_autogen/mocs_compilation.cpp > CMakeFiles/cursor.dir/cursor_autogen/mocs_compilation.cpp.i

glfw/tests/CMakeFiles/cursor.dir/cursor_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cursor.dir/cursor_autogen/mocs_compilation.cpp.s"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests/cursor_autogen/mocs_compilation.cpp -o CMakeFiles/cursor.dir/cursor_autogen/mocs_compilation.cpp.s

glfw/tests/CMakeFiles/cursor.dir/cursor.c.o: glfw/tests/CMakeFiles/cursor.dir/flags.make
glfw/tests/CMakeFiles/cursor.dir/cursor.c.o: ../glfw/tests/cursor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw/tests/CMakeFiles/cursor.dir/cursor.c.o"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cursor.dir/cursor.c.o   -c /Users/yangguang/archive/cmakeTest/qtCMake/glfw/tests/cursor.c

glfw/tests/CMakeFiles/cursor.dir/cursor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cursor.dir/cursor.c.i"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yangguang/archive/cmakeTest/qtCMake/glfw/tests/cursor.c > CMakeFiles/cursor.dir/cursor.c.i

glfw/tests/CMakeFiles/cursor.dir/cursor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cursor.dir/cursor.c.s"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yangguang/archive/cmakeTest/qtCMake/glfw/tests/cursor.c -o CMakeFiles/cursor.dir/cursor.c.s

glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o: glfw/tests/CMakeFiles/cursor.dir/flags.make
glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o: ../glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cursor.dir/__/deps/glad.c.o   -c /Users/yangguang/archive/cmakeTest/qtCMake/glfw/deps/glad.c

glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cursor.dir/__/deps/glad.c.i"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yangguang/archive/cmakeTest/qtCMake/glfw/deps/glad.c > CMakeFiles/cursor.dir/__/deps/glad.c.i

glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cursor.dir/__/deps/glad.c.s"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yangguang/archive/cmakeTest/qtCMake/glfw/deps/glad.c -o CMakeFiles/cursor.dir/__/deps/glad.c.s

# Object files for target cursor
cursor_OBJECTS = \
"CMakeFiles/cursor.dir/cursor_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/cursor.dir/cursor.c.o" \
"CMakeFiles/cursor.dir/__/deps/glad.c.o"

# External object files for target cursor
cursor_EXTERNAL_OBJECTS =

glfw/tests/cursor: glfw/tests/CMakeFiles/cursor.dir/cursor_autogen/mocs_compilation.cpp.o
glfw/tests/cursor: glfw/tests/CMakeFiles/cursor.dir/cursor.c.o
glfw/tests/cursor: glfw/tests/CMakeFiles/cursor.dir/__/deps/glad.c.o
glfw/tests/cursor: glfw/tests/CMakeFiles/cursor.dir/build.make
glfw/tests/cursor: glfw/src/libglfw3.a
glfw/tests/cursor: glfw/tests/CMakeFiles/cursor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable cursor"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cursor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/cursor.dir/build: glfw/tests/cursor

.PHONY : glfw/tests/CMakeFiles/cursor.dir/build

glfw/tests/CMakeFiles/cursor.dir/clean:
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/cursor.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/cursor.dir/clean

glfw/tests/CMakeFiles/cursor.dir/depend:
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yangguang/archive/cmakeTest/qtCMake /Users/yangguang/archive/cmakeTest/qtCMake/glfw/tests /Users/yangguang/archive/cmakeTest/qtCMake/build /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests/CMakeFiles/cursor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/cursor.dir/depend
