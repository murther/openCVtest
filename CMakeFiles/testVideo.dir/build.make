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
include CMakeFiles/testVideo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testVideo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testVideo.dir/flags.make

CMakeFiles/testVideo.dir/testVideo.cpp.o: CMakeFiles/testVideo.dir/flags.make
CMakeFiles/testVideo.dir/testVideo.cpp.o: testVideo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/murther/Documents/cpp/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/testVideo.dir/testVideo.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/testVideo.dir/testVideo.cpp.o -c /home/murther/Documents/cpp/testVideo.cpp

CMakeFiles/testVideo.dir/testVideo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testVideo.dir/testVideo.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/murther/Documents/cpp/testVideo.cpp > CMakeFiles/testVideo.dir/testVideo.cpp.i

CMakeFiles/testVideo.dir/testVideo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testVideo.dir/testVideo.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/murther/Documents/cpp/testVideo.cpp -o CMakeFiles/testVideo.dir/testVideo.cpp.s

CMakeFiles/testVideo.dir/testVideo.cpp.o.requires:
.PHONY : CMakeFiles/testVideo.dir/testVideo.cpp.o.requires

CMakeFiles/testVideo.dir/testVideo.cpp.o.provides: CMakeFiles/testVideo.dir/testVideo.cpp.o.requires
	$(MAKE) -f CMakeFiles/testVideo.dir/build.make CMakeFiles/testVideo.dir/testVideo.cpp.o.provides.build
.PHONY : CMakeFiles/testVideo.dir/testVideo.cpp.o.provides

CMakeFiles/testVideo.dir/testVideo.cpp.o.provides.build: CMakeFiles/testVideo.dir/testVideo.cpp.o

# Object files for target testVideo
testVideo_OBJECTS = \
"CMakeFiles/testVideo.dir/testVideo.cpp.o"

# External object files for target testVideo
testVideo_EXTERNAL_OBJECTS =

testVideo: CMakeFiles/testVideo.dir/testVideo.cpp.o
testVideo: CMakeFiles/testVideo.dir/build.make
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_ts.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
testVideo: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
testVideo: CMakeFiles/testVideo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable testVideo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testVideo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testVideo.dir/build: testVideo
.PHONY : CMakeFiles/testVideo.dir/build

CMakeFiles/testVideo.dir/requires: CMakeFiles/testVideo.dir/testVideo.cpp.o.requires
.PHONY : CMakeFiles/testVideo.dir/requires

CMakeFiles/testVideo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testVideo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testVideo.dir/clean

CMakeFiles/testVideo.dir/depend:
	cd /home/murther/Documents/cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/murther/Documents/cpp /home/murther/Documents/cpp /home/murther/Documents/cpp /home/murther/Documents/cpp /home/murther/Documents/cpp/CMakeFiles/testVideo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testVideo.dir/depend

