# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/murther/Documents/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/murther/Documents/cpp

# Include any dependencies generated for this target.
include CMakeFiles/gray.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gray.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gray.dir/flags.make

CMakeFiles/gray.dir/grayscle.cpp.o: CMakeFiles/gray.dir/flags.make
CMakeFiles/gray.dir/grayscle.cpp.o: grayscle.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/murther/Documents/cpp/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/gray.dir/grayscle.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gray.dir/grayscle.cpp.o -c /home/murther/Documents/cpp/grayscle.cpp

CMakeFiles/gray.dir/grayscle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gray.dir/grayscle.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/murther/Documents/cpp/grayscle.cpp > CMakeFiles/gray.dir/grayscle.cpp.i

CMakeFiles/gray.dir/grayscle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gray.dir/grayscle.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/murther/Documents/cpp/grayscle.cpp -o CMakeFiles/gray.dir/grayscle.cpp.s

CMakeFiles/gray.dir/grayscle.cpp.o.requires:
.PHONY : CMakeFiles/gray.dir/grayscle.cpp.o.requires

CMakeFiles/gray.dir/grayscle.cpp.o.provides: CMakeFiles/gray.dir/grayscle.cpp.o.requires
	$(MAKE) -f CMakeFiles/gray.dir/build.make CMakeFiles/gray.dir/grayscle.cpp.o.provides.build
.PHONY : CMakeFiles/gray.dir/grayscle.cpp.o.provides

CMakeFiles/gray.dir/grayscle.cpp.o.provides.build: CMakeFiles/gray.dir/grayscle.cpp.o

# Object files for target gray
gray_OBJECTS = \
"CMakeFiles/gray.dir/grayscle.cpp.o"

# External object files for target gray
gray_EXTERNAL_OBJECTS =

gray: CMakeFiles/gray.dir/grayscle.cpp.o
gray: CMakeFiles/gray.dir/build.make
gray: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_ts.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
gray: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
gray: CMakeFiles/gray.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable gray"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gray.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gray.dir/build: gray
.PHONY : CMakeFiles/gray.dir/build

CMakeFiles/gray.dir/requires: CMakeFiles/gray.dir/grayscle.cpp.o.requires
.PHONY : CMakeFiles/gray.dir/requires

CMakeFiles/gray.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gray.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gray.dir/clean

CMakeFiles/gray.dir/depend:
	cd /home/murther/Documents/cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/murther/Documents/cpp /home/murther/Documents/cpp /home/murther/Documents/cpp /home/murther/Documents/cpp /home/murther/Documents/cpp/CMakeFiles/gray.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gray.dir/depend

