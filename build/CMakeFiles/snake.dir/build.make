# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.16.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.16.5/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ptumulty/Developer/Projects/Snake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ptumulty/Developer/Projects/Snake/build

# Include any dependencies generated for this target.
include CMakeFiles/snake.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/snake.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/snake.dir/flags.make

CMakeFiles/snake.dir/src/main.cpp.o: CMakeFiles/snake.dir/flags.make
CMakeFiles/snake.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ptumulty/Developer/Projects/Snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/snake.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/snake.dir/src/main.cpp.o -c /Users/ptumulty/Developer/Projects/Snake/src/main.cpp

CMakeFiles/snake.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/snake.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ptumulty/Developer/Projects/Snake/src/main.cpp > CMakeFiles/snake.dir/src/main.cpp.i

CMakeFiles/snake.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/snake.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ptumulty/Developer/Projects/Snake/src/main.cpp -o CMakeFiles/snake.dir/src/main.cpp.s

CMakeFiles/snake.dir/src/SnakeGame.cpp.o: CMakeFiles/snake.dir/flags.make
CMakeFiles/snake.dir/src/SnakeGame.cpp.o: ../src/SnakeGame.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ptumulty/Developer/Projects/Snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/snake.dir/src/SnakeGame.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/snake.dir/src/SnakeGame.cpp.o -c /Users/ptumulty/Developer/Projects/Snake/src/SnakeGame.cpp

CMakeFiles/snake.dir/src/SnakeGame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/snake.dir/src/SnakeGame.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ptumulty/Developer/Projects/Snake/src/SnakeGame.cpp > CMakeFiles/snake.dir/src/SnakeGame.cpp.i

CMakeFiles/snake.dir/src/SnakeGame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/snake.dir/src/SnakeGame.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ptumulty/Developer/Projects/Snake/src/SnakeGame.cpp -o CMakeFiles/snake.dir/src/SnakeGame.cpp.s

CMakeFiles/snake.dir/src/Snake.cpp.o: CMakeFiles/snake.dir/flags.make
CMakeFiles/snake.dir/src/Snake.cpp.o: ../src/Snake.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ptumulty/Developer/Projects/Snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/snake.dir/src/Snake.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/snake.dir/src/Snake.cpp.o -c /Users/ptumulty/Developer/Projects/Snake/src/Snake.cpp

CMakeFiles/snake.dir/src/Snake.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/snake.dir/src/Snake.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ptumulty/Developer/Projects/Snake/src/Snake.cpp > CMakeFiles/snake.dir/src/Snake.cpp.i

CMakeFiles/snake.dir/src/Snake.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/snake.dir/src/Snake.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ptumulty/Developer/Projects/Snake/src/Snake.cpp -o CMakeFiles/snake.dir/src/Snake.cpp.s

# Object files for target snake
snake_OBJECTS = \
"CMakeFiles/snake.dir/src/main.cpp.o" \
"CMakeFiles/snake.dir/src/SnakeGame.cpp.o" \
"CMakeFiles/snake.dir/src/Snake.cpp.o"

# External object files for target snake
snake_EXTERNAL_OBJECTS =

snake: CMakeFiles/snake.dir/src/main.cpp.o
snake: CMakeFiles/snake.dir/src/SnakeGame.cpp.o
snake: CMakeFiles/snake.dir/src/Snake.cpp.o
snake: CMakeFiles/snake.dir/build.make
snake: /usr/lib/libcurses.dylib
snake: /usr/lib/libform.dylib
snake: CMakeFiles/snake.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ptumulty/Developer/Projects/Snake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable snake"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/snake.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/snake.dir/build: snake

.PHONY : CMakeFiles/snake.dir/build

CMakeFiles/snake.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/snake.dir/cmake_clean.cmake
.PHONY : CMakeFiles/snake.dir/clean

CMakeFiles/snake.dir/depend:
	cd /Users/ptumulty/Developer/Projects/Snake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ptumulty/Developer/Projects/Snake /Users/ptumulty/Developer/Projects/Snake /Users/ptumulty/Developer/Projects/Snake/build /Users/ptumulty/Developer/Projects/Snake/build /Users/ptumulty/Developer/Projects/Snake/build/CMakeFiles/snake.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/snake.dir/depend
