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
include glfw/tests/CMakeFiles/glfwinfo.dir/depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/glfwinfo.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/glfwinfo.dir/flags.make

glfw/tests/CMakeFiles/glfwinfo.dir/glfwinfo_autogen/mocs_compilation.cpp.o: glfw/tests/CMakeFiles/glfwinfo.dir/flags.make
glfw/tests/CMakeFiles/glfwinfo.dir/glfwinfo_autogen/mocs_compilation.cpp.o: glfw/tests/glfwinfo_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object glfw/tests/CMakeFiles/glfwinfo.dir/glfwinfo_autogen/mocs_compilation.cpp.o"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/glfwinfo.dir/glfwinfo_autogen/mocs_compilation.cpp.o -c /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests/glfwinfo_autogen/mocs_compilation.cpp

glfw/tests/CMakeFiles/glfwinfo.dir/glfwinfo_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glfwinfo.dir/glfwinfo_autogen/mocs_compilation.cpp.i"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests/glfwinfo_autogen/mocs_compilation.cpp > CMakeFiles/glfwinfo.dir/glfwinfo_autogen/mocs_compilation.cpp.i

glfw/tests/CMakeFiles/glfwinfo.dir/glfwinfo_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glfwinfo.dir/glfwinfo_autogen/mocs_compilation.cpp.s"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests/glfwinfo_autogen/mocs_compilation.cpp -o CMakeFiles/glfwinfo.dir/glfwinfo_autogen/mocs_compilation.cpp.s

glfw/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o: glfw/tests/CMakeFiles/glfwinfo.dir/flags.make
glfw/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o: ../glfw/tests/glfwinfo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/glfwinfo.c.o   -c /Users/yangguang/archive/cmakeTest/qtCMake/glfw/tests/glfwinfo.c

glfw/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/glfwinfo.c.i"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yangguang/archive/cmakeTest/qtCMake/glfw/tests/glfwinfo.c > CMakeFiles/glfwinfo.dir/glfwinfo.c.i

glfw/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/glfwinfo.c.s"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yangguang/archive/cmakeTest/qtCMake/glfw/tests/glfwinfo.c -o CMakeFiles/glfwinfo.dir/glfwinfo.c.s

glfw/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o: glfw/tests/CMakeFiles/glfwinfo.dir/flags.make
glfw/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o: ../glfw/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object glfw/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o   -c /Users/yangguang/archive/cmakeTest/qtCMake/glfw/deps/getopt.c

glfw/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/__/deps/getopt.c.i"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yangguang/archive/cmakeTest/qtCMake/glfw/deps/getopt.c > CMakeFiles/glfwinfo.dir/__/deps/getopt.c.i

glfw/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/__/deps/getopt.c.s"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yangguang/archive/cmakeTest/qtCMake/glfw/deps/getopt.c -o CMakeFiles/glfwinfo.dir/__/deps/getopt.c.s

glfw/tests/CMakeFiles/glfwinfo.dir/__/deps/glad.c.o: glfw/tests/CMakeFiles/glfwinfo.dir/flags.make
glfw/tests/CMakeFiles/glfwinfo.dir/__/deps/glad.c.o: ../glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object glfw/tests/CMakeFiles/glfwinfo.dir/__/deps/glad.c.o"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/__/deps/glad.c.o   -c /Users/yangguang/archive/cmakeTest/qtCMake/glfw/deps/glad.c

glfw/tests/CMakeFiles/glfwinfo.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/__/deps/glad.c.i"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yangguang/archive/cmakeTest/qtCMake/glfw/deps/glad.c > CMakeFiles/glfwinfo.dir/__/deps/glad.c.i

glfw/tests/CMakeFiles/glfwinfo.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/__/deps/glad.c.s"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yangguang/archive/cmakeTest/qtCMake/glfw/deps/glad.c -o CMakeFiles/glfwinfo.dir/__/deps/glad.c.s

# Object files for target glfwinfo
glfwinfo_OBJECTS = \
"CMakeFiles/glfwinfo.dir/glfwinfo_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/glfwinfo.dir/glfwinfo.c.o" \
"CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o" \
"CMakeFiles/glfwinfo.dir/__/deps/glad.c.o"

# External object files for target glfwinfo
glfwinfo_EXTERNAL_OBJECTS =

glfw/tests/glfwinfo: glfw/tests/CMakeFiles/glfwinfo.dir/glfwinfo_autogen/mocs_compilation.cpp.o
glfw/tests/glfwinfo: glfw/tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o
glfw/tests/glfwinfo: glfw/tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o
glfw/tests/glfwinfo: glfw/tests/CMakeFiles/glfwinfo.dir/__/deps/glad.c.o
glfw/tests/glfwinfo: glfw/tests/CMakeFiles/glfwinfo.dir/build.make
glfw/tests/glfwinfo: glfw/src/libglfw3.a
glfw/tests/glfwinfo: glfw/tests/CMakeFiles/glfwinfo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable glfwinfo"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfwinfo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/glfwinfo.dir/build: glfw/tests/glfwinfo

.PHONY : glfw/tests/CMakeFiles/glfwinfo.dir/build

glfw/tests/CMakeFiles/glfwinfo.dir/clean:
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/glfwinfo.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/glfwinfo.dir/clean

glfw/tests/CMakeFiles/glfwinfo.dir/depend:
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yangguang/archive/cmakeTest/qtCMake /Users/yangguang/archive/cmakeTest/qtCMake/glfw/tests /Users/yangguang/archive/cmakeTest/qtCMake/build /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/tests/CMakeFiles/glfwinfo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/glfwinfo.dir/depend
