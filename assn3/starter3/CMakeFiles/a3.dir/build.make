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
CMAKE_SOURCE_DIR = /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3

# Include any dependencies generated for this target.
include CMakeFiles/a3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/a3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/a3.dir/flags.make

CMakeFiles/a3.dir/src/main.cpp.o: CMakeFiles/a3.dir/flags.make
CMakeFiles/a3.dir/src/main.cpp.o: src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/a3.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a3.dir/src/main.cpp.o -c /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/main.cpp

CMakeFiles/a3.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a3.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/main.cpp > CMakeFiles/a3.dir/src/main.cpp.i

CMakeFiles/a3.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a3.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/main.cpp -o CMakeFiles/a3.dir/src/main.cpp.s

CMakeFiles/a3.dir/src/starter3_util.cpp.o: CMakeFiles/a3.dir/flags.make
CMakeFiles/a3.dir/src/starter3_util.cpp.o: src/starter3_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/a3.dir/src/starter3_util.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a3.dir/src/starter3_util.cpp.o -c /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/starter3_util.cpp

CMakeFiles/a3.dir/src/starter3_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a3.dir/src/starter3_util.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/starter3_util.cpp > CMakeFiles/a3.dir/src/starter3_util.cpp.i

CMakeFiles/a3.dir/src/starter3_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a3.dir/src/starter3_util.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/starter3_util.cpp -o CMakeFiles/a3.dir/src/starter3_util.cpp.s

CMakeFiles/a3.dir/src/camera.cpp.o: CMakeFiles/a3.dir/flags.make
CMakeFiles/a3.dir/src/camera.cpp.o: src/camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/a3.dir/src/camera.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a3.dir/src/camera.cpp.o -c /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/camera.cpp

CMakeFiles/a3.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a3.dir/src/camera.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/camera.cpp > CMakeFiles/a3.dir/src/camera.cpp.i

CMakeFiles/a3.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a3.dir/src/camera.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/camera.cpp -o CMakeFiles/a3.dir/src/camera.cpp.s

CMakeFiles/a3.dir/src/vertexrecorder.cpp.o: CMakeFiles/a3.dir/flags.make
CMakeFiles/a3.dir/src/vertexrecorder.cpp.o: src/vertexrecorder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/a3.dir/src/vertexrecorder.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a3.dir/src/vertexrecorder.cpp.o -c /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/vertexrecorder.cpp

CMakeFiles/a3.dir/src/vertexrecorder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a3.dir/src/vertexrecorder.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/vertexrecorder.cpp > CMakeFiles/a3.dir/src/vertexrecorder.cpp.i

CMakeFiles/a3.dir/src/vertexrecorder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a3.dir/src/vertexrecorder.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/vertexrecorder.cpp -o CMakeFiles/a3.dir/src/vertexrecorder.cpp.s

CMakeFiles/a3.dir/src/clothsystem.cpp.o: CMakeFiles/a3.dir/flags.make
CMakeFiles/a3.dir/src/clothsystem.cpp.o: src/clothsystem.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/a3.dir/src/clothsystem.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a3.dir/src/clothsystem.cpp.o -c /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/clothsystem.cpp

CMakeFiles/a3.dir/src/clothsystem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a3.dir/src/clothsystem.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/clothsystem.cpp > CMakeFiles/a3.dir/src/clothsystem.cpp.i

CMakeFiles/a3.dir/src/clothsystem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a3.dir/src/clothsystem.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/clothsystem.cpp -o CMakeFiles/a3.dir/src/clothsystem.cpp.s

CMakeFiles/a3.dir/src/timestepper.cpp.o: CMakeFiles/a3.dir/flags.make
CMakeFiles/a3.dir/src/timestepper.cpp.o: src/timestepper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/a3.dir/src/timestepper.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a3.dir/src/timestepper.cpp.o -c /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/timestepper.cpp

CMakeFiles/a3.dir/src/timestepper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a3.dir/src/timestepper.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/timestepper.cpp > CMakeFiles/a3.dir/src/timestepper.cpp.i

CMakeFiles/a3.dir/src/timestepper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a3.dir/src/timestepper.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/timestepper.cpp -o CMakeFiles/a3.dir/src/timestepper.cpp.s

CMakeFiles/a3.dir/src/particlesystem.cpp.o: CMakeFiles/a3.dir/flags.make
CMakeFiles/a3.dir/src/particlesystem.cpp.o: src/particlesystem.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/a3.dir/src/particlesystem.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a3.dir/src/particlesystem.cpp.o -c /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/particlesystem.cpp

CMakeFiles/a3.dir/src/particlesystem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a3.dir/src/particlesystem.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/particlesystem.cpp > CMakeFiles/a3.dir/src/particlesystem.cpp.i

CMakeFiles/a3.dir/src/particlesystem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a3.dir/src/particlesystem.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/particlesystem.cpp -o CMakeFiles/a3.dir/src/particlesystem.cpp.s

CMakeFiles/a3.dir/src/pendulumsystem.cpp.o: CMakeFiles/a3.dir/flags.make
CMakeFiles/a3.dir/src/pendulumsystem.cpp.o: src/pendulumsystem.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/a3.dir/src/pendulumsystem.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a3.dir/src/pendulumsystem.cpp.o -c /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/pendulumsystem.cpp

CMakeFiles/a3.dir/src/pendulumsystem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a3.dir/src/pendulumsystem.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/pendulumsystem.cpp > CMakeFiles/a3.dir/src/pendulumsystem.cpp.i

CMakeFiles/a3.dir/src/pendulumsystem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a3.dir/src/pendulumsystem.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/pendulumsystem.cpp -o CMakeFiles/a3.dir/src/pendulumsystem.cpp.s

CMakeFiles/a3.dir/src/simplesystem.cpp.o: CMakeFiles/a3.dir/flags.make
CMakeFiles/a3.dir/src/simplesystem.cpp.o: src/simplesystem.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/a3.dir/src/simplesystem.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a3.dir/src/simplesystem.cpp.o -c /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/simplesystem.cpp

CMakeFiles/a3.dir/src/simplesystem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a3.dir/src/simplesystem.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/simplesystem.cpp > CMakeFiles/a3.dir/src/simplesystem.cpp.i

CMakeFiles/a3.dir/src/simplesystem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a3.dir/src/simplesystem.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/src/simplesystem.cpp -o CMakeFiles/a3.dir/src/simplesystem.cpp.s

# Object files for target a3
a3_OBJECTS = \
"CMakeFiles/a3.dir/src/main.cpp.o" \
"CMakeFiles/a3.dir/src/starter3_util.cpp.o" \
"CMakeFiles/a3.dir/src/camera.cpp.o" \
"CMakeFiles/a3.dir/src/vertexrecorder.cpp.o" \
"CMakeFiles/a3.dir/src/clothsystem.cpp.o" \
"CMakeFiles/a3.dir/src/timestepper.cpp.o" \
"CMakeFiles/a3.dir/src/particlesystem.cpp.o" \
"CMakeFiles/a3.dir/src/pendulumsystem.cpp.o" \
"CMakeFiles/a3.dir/src/simplesystem.cpp.o"

# External object files for target a3
a3_EXTERNAL_OBJECTS =

a3: CMakeFiles/a3.dir/src/main.cpp.o
a3: CMakeFiles/a3.dir/src/starter3_util.cpp.o
a3: CMakeFiles/a3.dir/src/camera.cpp.o
a3: CMakeFiles/a3.dir/src/vertexrecorder.cpp.o
a3: CMakeFiles/a3.dir/src/clothsystem.cpp.o
a3: CMakeFiles/a3.dir/src/timestepper.cpp.o
a3: CMakeFiles/a3.dir/src/particlesystem.cpp.o
a3: CMakeFiles/a3.dir/src/pendulumsystem.cpp.o
a3: CMakeFiles/a3.dir/src/simplesystem.cpp.o
a3: CMakeFiles/a3.dir/build.make
a3: 3rd_party/glfw/src/libglfw3.a
a3: vecmath/libvecmath.a
a3: CMakeFiles/a3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable a3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/a3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/a3.dir/build: a3

.PHONY : CMakeFiles/a3.dir/build

CMakeFiles/a3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/a3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/a3.dir/clean

CMakeFiles/a3.dir/depend:
	cd /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3 /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3 /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3 /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3 /Users/yangguang/archive/图形学/MIT-6.836-assignment/assn3/starter3/CMakeFiles/a3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/a3.dir/depend

