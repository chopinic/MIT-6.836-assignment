# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.15.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.15.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yangguang/归档/图形学/assn1/starter1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yangguang/归档/图形学/assn1/starter1/build

# Include any dependencies generated for this target.
include glfw/tests/CMakeFiles/reopen.dir/depend.make

# Include the progress variables for this target.
include glfw/tests/CMakeFiles/reopen.dir/progress.make

# Include the compile flags for this target's objects.
include glfw/tests/CMakeFiles/reopen.dir/flags.make

glfw/tests/CMakeFiles/reopen.dir/reopen.c.o: glfw/tests/CMakeFiles/reopen.dir/flags.make
glfw/tests/CMakeFiles/reopen.dir/reopen.c.o: ../glfw/tests/reopen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/归档/图形学/assn1/starter1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object glfw/tests/CMakeFiles/reopen.dir/reopen.c.o"
	cd /Users/yangguang/归档/图形学/assn1/starter1/build/glfw/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/reopen.dir/reopen.c.o   -c /Users/yangguang/归档/图形学/assn1/starter1/glfw/tests/reopen.c

glfw/tests/CMakeFiles/reopen.dir/reopen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/reopen.dir/reopen.c.i"
	cd /Users/yangguang/归档/图形学/assn1/starter1/build/glfw/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yangguang/归档/图形学/assn1/starter1/glfw/tests/reopen.c > CMakeFiles/reopen.dir/reopen.c.i

glfw/tests/CMakeFiles/reopen.dir/reopen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/reopen.dir/reopen.c.s"
	cd /Users/yangguang/归档/图形学/assn1/starter1/build/glfw/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yangguang/归档/图形学/assn1/starter1/glfw/tests/reopen.c -o CMakeFiles/reopen.dir/reopen.c.s

glfw/tests/CMakeFiles/reopen.dir/__/deps/glad.c.o: glfw/tests/CMakeFiles/reopen.dir/flags.make
glfw/tests/CMakeFiles/reopen.dir/__/deps/glad.c.o: ../glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/归档/图形学/assn1/starter1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object glfw/tests/CMakeFiles/reopen.dir/__/deps/glad.c.o"
	cd /Users/yangguang/归档/图形学/assn1/starter1/build/glfw/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/reopen.dir/__/deps/glad.c.o   -c /Users/yangguang/归档/图形学/assn1/starter1/glfw/deps/glad.c

glfw/tests/CMakeFiles/reopen.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/reopen.dir/__/deps/glad.c.i"
	cd /Users/yangguang/归档/图形学/assn1/starter1/build/glfw/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/yangguang/归档/图形学/assn1/starter1/glfw/deps/glad.c > CMakeFiles/reopen.dir/__/deps/glad.c.i

glfw/tests/CMakeFiles/reopen.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/reopen.dir/__/deps/glad.c.s"
	cd /Users/yangguang/归档/图形学/assn1/starter1/build/glfw/tests && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/yangguang/归档/图形学/assn1/starter1/glfw/deps/glad.c -o CMakeFiles/reopen.dir/__/deps/glad.c.s

# Object files for target reopen
reopen_OBJECTS = \
"CMakeFiles/reopen.dir/reopen.c.o" \
"CMakeFiles/reopen.dir/__/deps/glad.c.o"

# External object files for target reopen
reopen_EXTERNAL_OBJECTS =

glfw/tests/reopen: glfw/tests/CMakeFiles/reopen.dir/reopen.c.o
glfw/tests/reopen: glfw/tests/CMakeFiles/reopen.dir/__/deps/glad.c.o
glfw/tests/reopen: glfw/tests/CMakeFiles/reopen.dir/build.make
glfw/tests/reopen: glfw/src/libglfw3.a
glfw/tests/reopen: glfw/tests/CMakeFiles/reopen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yangguang/归档/图形学/assn1/starter1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable reopen"
	cd /Users/yangguang/归档/图形学/assn1/starter1/build/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reopen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
glfw/tests/CMakeFiles/reopen.dir/build: glfw/tests/reopen

.PHONY : glfw/tests/CMakeFiles/reopen.dir/build

glfw/tests/CMakeFiles/reopen.dir/clean:
	cd /Users/yangguang/归档/图形学/assn1/starter1/build/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/reopen.dir/cmake_clean.cmake
.PHONY : glfw/tests/CMakeFiles/reopen.dir/clean

glfw/tests/CMakeFiles/reopen.dir/depend:
	cd /Users/yangguang/归档/图形学/assn1/starter1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yangguang/归档/图形学/assn1/starter1 /Users/yangguang/归档/图形学/assn1/starter1/glfw/tests /Users/yangguang/归档/图形学/assn1/starter1/build /Users/yangguang/归档/图形学/assn1/starter1/build/glfw/tests /Users/yangguang/归档/图形学/assn1/starter1/build/glfw/tests/CMakeFiles/reopen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : glfw/tests/CMakeFiles/reopen.dir/depend

