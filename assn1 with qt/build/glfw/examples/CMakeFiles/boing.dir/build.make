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
include glfw/examples/CMakeFiles/boing.dir/depend.make

# Include the progress variables for this target.
include glfw/examples/CMakeFiles/boing.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/examples/CMakeFiles/boing.dir/flags.make

glfw/examples/boing.app/Contents/Resources/glfw.icns: ../glfw/examples/glfw.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content glfw/examples/boing.app/Contents/Resources/glfw.icns"
	$(CMAKE_COMMAND) -E copy /Users/yangguang/archive/cmakeTest/qtCMake/glfw/examples/glfw.icns glfw/examples/boing.app/Contents/Resources/glfw.icns

glfw/examples/CMakeFiles/boing.dir/boing_autogen/mocs_compilation.cpp.o: glfw/examples/CMakeFiles/boing.dir/flags.make
glfw/examples/CMakeFiles/boing.dir/boing_autogen/mocs_compilation.cpp.o: glfw/examples/boing_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object glfw/examples/CMakeFiles/boing.dir/boing_autogen/mocs_compilation.cpp.o"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/boing.dir/boing_autogen/mocs_compilation.cpp.o -c /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples/boing_autogen/mocs_compilation.cpp

glfw/examples/CMakeFiles/boing.dir/boing_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/boing.dir/boing_autogen/mocs_compilation.cpp.i"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples/boing_autogen/mocs_compilation.cpp > CMakeFiles/boing.dir/boing_autogen/mocs_compilation.cpp.i

glfw/examples/CMakeFiles/boing.dir/boing_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/boing.dir/boing_autogen/mocs_compilation.cpp.s"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples/boing_autogen/mocs_compilation.cpp -o CMakeFiles/boing.dir/boing_autogen/mocs_compilation.cpp.s

glfw/examples/CMakeFiles/boing.dir/boing.c.o: glfw/examples/CMakeFiles/boing.dir/flags.make
glfw/examples/CMakeFiles/boing.dir/boing.c.o: ../glfw/examples/boing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw/examples/CMakeFiles/boing.dir/boing.c.o"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/boing.dir/boing.c.o   -c /Users/yangguang/archive/cmakeTest/qtCMake/glfw/examples/boing.c

glfw/examples/CMakeFiles/boing.dir/boing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/boing.dir/boing.c.i"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yangguang/archive/cmakeTest/qtCMake/glfw/examples/boing.c > CMakeFiles/boing.dir/boing.c.i

glfw/examples/CMakeFiles/boing.dir/boing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/boing.dir/boing.c.s"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yangguang/archive/cmakeTest/qtCMake/glfw/examples/boing.c -o CMakeFiles/boing.dir/boing.c.s

glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o: glfw/examples/CMakeFiles/boing.dir/flags.make
glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o: ../glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/boing.dir/__/deps/glad.c.o   -c /Users/yangguang/archive/cmakeTest/qtCMake/glfw/deps/glad.c

glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/boing.dir/__/deps/glad.c.i"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yangguang/archive/cmakeTest/qtCMake/glfw/deps/glad.c > CMakeFiles/boing.dir/__/deps/glad.c.i

glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/boing.dir/__/deps/glad.c.s"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yangguang/archive/cmakeTest/qtCMake/glfw/deps/glad.c -o CMakeFiles/boing.dir/__/deps/glad.c.s

# Object files for target boing
boing_OBJECTS = \
"CMakeFiles/boing.dir/boing_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/boing.dir/boing.c.o" \
"CMakeFiles/boing.dir/__/deps/glad.c.o"

# External object files for target boing
boing_EXTERNAL_OBJECTS =

glfw/examples/boing.app/Contents/MacOS/boing: glfw/examples/CMakeFiles/boing.dir/boing_autogen/mocs_compilation.cpp.o
glfw/examples/boing.app/Contents/MacOS/boing: glfw/examples/CMakeFiles/boing.dir/boing.c.o
glfw/examples/boing.app/Contents/MacOS/boing: glfw/examples/CMakeFiles/boing.dir/__/deps/glad.c.o
glfw/examples/boing.app/Contents/MacOS/boing: glfw/examples/CMakeFiles/boing.dir/build.make
glfw/examples/boing.app/Contents/MacOS/boing: glfw/src/libglfw3.a
glfw/examples/boing.app/Contents/MacOS/boing: glfw/examples/CMakeFiles/boing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yangguang/archive/cmakeTest/qtCMake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable boing.app/Contents/MacOS/boing"
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/examples/CMakeFiles/boing.dir/build: glfw/examples/boing.app/Contents/MacOS/boing
glfw/examples/CMakeFiles/boing.dir/build: glfw/examples/boing.app/Contents/Resources/glfw.icns

.PHONY : glfw/examples/CMakeFiles/boing.dir/build

glfw/examples/CMakeFiles/boing.dir/clean:
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples && $(CMAKE_COMMAND) -P CMakeFiles/boing.dir/cmake_clean.cmake
.PHONY : glfw/examples/CMakeFiles/boing.dir/clean

glfw/examples/CMakeFiles/boing.dir/depend:
	cd /Users/yangguang/archive/cmakeTest/qtCMake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yangguang/archive/cmakeTest/qtCMake /Users/yangguang/archive/cmakeTest/qtCMake/glfw/examples /Users/yangguang/archive/cmakeTest/qtCMake/build /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples /Users/yangguang/archive/cmakeTest/qtCMake/build/glfw/examples/CMakeFiles/boing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/examples/CMakeFiles/boing.dir/depend
