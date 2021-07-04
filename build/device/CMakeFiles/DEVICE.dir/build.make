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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build

# Include any dependencies generated for this target.
include device/CMakeFiles/DEVICE.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include device/CMakeFiles/DEVICE.dir/compiler_depend.make

# Include the progress variables for this target.
include device/CMakeFiles/DEVICE.dir/progress.make

# Include the compile flags for this target's objects.
include device/CMakeFiles/DEVICE.dir/flags.make

device/CMakeFiles/DEVICE.dir/startup_stm32h743xx.s.obj: device/CMakeFiles/DEVICE.dir/flags.make
device/CMakeFiles/DEVICE.dir/startup_stm32h743xx.s.obj: ../device/startup_stm32h743xx.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building ASM object device/CMakeFiles/DEVICE.dir/startup_stm32h743xx.s.obj"
	cd C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/device && "C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-gcc.exe" $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/DEVICE.dir/startup_stm32h743xx.s.obj -c C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/device/startup_stm32h743xx.s

device/CMakeFiles/DEVICE.dir/startup_stm32h743xx.s.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing ASM source to CMakeFiles/DEVICE.dir/startup_stm32h743xx.s.i"
	cd C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/device && "C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-gcc.exe" $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/device/startup_stm32h743xx.s > CMakeFiles/DEVICE.dir/startup_stm32h743xx.s.i

device/CMakeFiles/DEVICE.dir/startup_stm32h743xx.s.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling ASM source to assembly CMakeFiles/DEVICE.dir/startup_stm32h743xx.s.s"
	cd C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/device && "C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-gcc.exe" $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/device/startup_stm32h743xx.s -o CMakeFiles/DEVICE.dir/startup_stm32h743xx.s.s

device/CMakeFiles/DEVICE.dir/system_stm32h7xx.c.obj: device/CMakeFiles/DEVICE.dir/flags.make
device/CMakeFiles/DEVICE.dir/system_stm32h7xx.c.obj: ../device/system_stm32h7xx.c
device/CMakeFiles/DEVICE.dir/system_stm32h7xx.c.obj: device/CMakeFiles/DEVICE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object device/CMakeFiles/DEVICE.dir/system_stm32h7xx.c.obj"
	cd C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/device && "C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT device/CMakeFiles/DEVICE.dir/system_stm32h7xx.c.obj -MF CMakeFiles/DEVICE.dir/system_stm32h7xx.c.obj.d -o CMakeFiles/DEVICE.dir/system_stm32h7xx.c.obj -c C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/device/system_stm32h7xx.c

device/CMakeFiles/DEVICE.dir/system_stm32h7xx.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/DEVICE.dir/system_stm32h7xx.c.i"
	cd C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/device && "C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/device/system_stm32h7xx.c > CMakeFiles/DEVICE.dir/system_stm32h7xx.c.i

device/CMakeFiles/DEVICE.dir/system_stm32h7xx.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/DEVICE.dir/system_stm32h7xx.c.s"
	cd C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/device && "C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-gcc.exe" $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/device/system_stm32h7xx.c -o CMakeFiles/DEVICE.dir/system_stm32h7xx.c.s

# Object files for target DEVICE
DEVICE_OBJECTS = \
"CMakeFiles/DEVICE.dir/startup_stm32h743xx.s.obj" \
"CMakeFiles/DEVICE.dir/system_stm32h7xx.c.obj"

# External object files for target DEVICE
DEVICE_EXTERNAL_OBJECTS =

device/libDEVICE.a: device/CMakeFiles/DEVICE.dir/startup_stm32h743xx.s.obj
device/libDEVICE.a: device/CMakeFiles/DEVICE.dir/system_stm32h7xx.c.obj
device/libDEVICE.a: device/CMakeFiles/DEVICE.dir/build.make
device/libDEVICE.a: device/CMakeFiles/DEVICE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libDEVICE.a"
	cd C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/device && $(CMAKE_COMMAND) -P CMakeFiles/DEVICE.dir/cmake_clean_target.cmake
	cd C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/device && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DEVICE.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
device/CMakeFiles/DEVICE.dir/build: device/libDEVICE.a
.PHONY : device/CMakeFiles/DEVICE.dir/build

device/CMakeFiles/DEVICE.dir/clean:
	cd C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/device && $(CMAKE_COMMAND) -P CMakeFiles/DEVICE.dir/cmake_clean.cmake
.PHONY : device/CMakeFiles/DEVICE.dir/clean

device/CMakeFiles/DEVICE.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/device C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/device C:/dev/STM32H7/Workspace/Cmake_C++_VS/Simple/build/device/CMakeFiles/DEVICE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : device/CMakeFiles/DEVICE.dir/depend

