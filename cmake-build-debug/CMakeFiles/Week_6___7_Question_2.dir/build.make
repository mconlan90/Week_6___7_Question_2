# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Week_6___7_Question_2.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Week_6___7_Question_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Week_6___7_Question_2.dir/flags.make

CMakeFiles/Week_6___7_Question_2.dir/main.c.o: CMakeFiles/Week_6___7_Question_2.dir/flags.make
CMakeFiles/Week_6___7_Question_2.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Week_6___7_Question_2.dir/main.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Week_6___7_Question_2.dir/main.c.o -c "/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2/main.c"

CMakeFiles/Week_6___7_Question_2.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Week_6___7_Question_2.dir/main.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2/main.c" > CMakeFiles/Week_6___7_Question_2.dir/main.c.i

CMakeFiles/Week_6___7_Question_2.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Week_6___7_Question_2.dir/main.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2/main.c" -o CMakeFiles/Week_6___7_Question_2.dir/main.c.s

# Object files for target Week_6___7_Question_2
Week_6___7_Question_2_OBJECTS = \
"CMakeFiles/Week_6___7_Question_2.dir/main.c.o"

# External object files for target Week_6___7_Question_2
Week_6___7_Question_2_EXTERNAL_OBJECTS =

Week_6___7_Question_2: CMakeFiles/Week_6___7_Question_2.dir/main.c.o
Week_6___7_Question_2: CMakeFiles/Week_6___7_Question_2.dir/build.make
Week_6___7_Question_2: CMakeFiles/Week_6___7_Question_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Week_6___7_Question_2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Week_6___7_Question_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Week_6___7_Question_2.dir/build: Week_6___7_Question_2
.PHONY : CMakeFiles/Week_6___7_Question_2.dir/build

CMakeFiles/Week_6___7_Question_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Week_6___7_Question_2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Week_6___7_Question_2.dir/clean

CMakeFiles/Week_6___7_Question_2.dir/depend:
	cd "/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2" "/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2" "/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2/cmake-build-debug" "/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2/cmake-build-debug" "/Users/matthewconlan/CLionProjects/Week 6 & 7 Question 2/cmake-build-debug/CMakeFiles/Week_6___7_Question_2.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Week_6___7_Question_2.dir/depend

