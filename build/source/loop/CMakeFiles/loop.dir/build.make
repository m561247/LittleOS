# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_SOURCE_DIR = C:/diy-x86os-master/start/new_start

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/diy-x86os-master/start/new_start/build

# Include any dependencies generated for this target.
include source/loop/CMakeFiles/loop.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include source/loop/CMakeFiles/loop.dir/compiler_depend.make

# Include the progress variables for this target.
include source/loop/CMakeFiles/loop.dir/progress.make

# Include the compile flags for this target's objects.
include source/loop/CMakeFiles/loop.dir/flags.make

source/loop/CMakeFiles/loop.dir/__/applib/crt0.S.obj: source/loop/CMakeFiles/loop.dir/flags.make
source/loop/CMakeFiles/loop.dir/__/applib/crt0.S.obj: source/loop/CMakeFiles/loop.dir/includes_ASM.rsp
source/loop/CMakeFiles/loop.dir/__/applib/crt0.S.obj: C:/diy-x86os-master/start/new_start/source/applib/crt0.S
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:/diy-x86os-master/start/new_start/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building ASM object source/loop/CMakeFiles/loop.dir/__/applib/crt0.S.obj"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && C:/x86_64-elf-tools-windows/bin/x86_64-elf-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/loop.dir/__/applib/crt0.S.obj -c C:/diy-x86os-master/start/new_start/source/applib/crt0.S

source/loop/CMakeFiles/loop.dir/__/applib/crt0.S.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing ASM source to CMakeFiles/loop.dir/__/applib/crt0.S.i"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && C:/x86_64-elf-tools-windows/bin/x86_64-elf-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -E C:/diy-x86os-master/start/new_start/source/applib/crt0.S > CMakeFiles/loop.dir/__/applib/crt0.S.i

source/loop/CMakeFiles/loop.dir/__/applib/crt0.S.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling ASM source to assembly CMakeFiles/loop.dir/__/applib/crt0.S.s"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && C:/x86_64-elf-tools-windows/bin/x86_64-elf-gcc.exe $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -S C:/diy-x86os-master/start/new_start/source/applib/crt0.S -o CMakeFiles/loop.dir/__/applib/crt0.S.s

source/loop/CMakeFiles/loop.dir/__/applib/cstart.c.obj: source/loop/CMakeFiles/loop.dir/flags.make
source/loop/CMakeFiles/loop.dir/__/applib/cstart.c.obj: source/loop/CMakeFiles/loop.dir/includes_C.rsp
source/loop/CMakeFiles/loop.dir/__/applib/cstart.c.obj: C:/diy-x86os-master/start/new_start/source/applib/cstart.c
source/loop/CMakeFiles/loop.dir/__/applib/cstart.c.obj: source/loop/CMakeFiles/loop.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:/diy-x86os-master/start/new_start/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object source/loop/CMakeFiles/loop.dir/__/applib/cstart.c.obj"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && C:/x86_64-elf-tools-windows/bin/x86_64-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT source/loop/CMakeFiles/loop.dir/__/applib/cstart.c.obj -MF CMakeFiles/loop.dir/__/applib/cstart.c.obj.d -o CMakeFiles/loop.dir/__/applib/cstart.c.obj -c C:/diy-x86os-master/start/new_start/source/applib/cstart.c

source/loop/CMakeFiles/loop.dir/__/applib/cstart.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/loop.dir/__/applib/cstart.c.i"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && C:/x86_64-elf-tools-windows/bin/x86_64-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/diy-x86os-master/start/new_start/source/applib/cstart.c > CMakeFiles/loop.dir/__/applib/cstart.c.i

source/loop/CMakeFiles/loop.dir/__/applib/cstart.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/loop.dir/__/applib/cstart.c.s"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && C:/x86_64-elf-tools-windows/bin/x86_64-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/diy-x86os-master/start/new_start/source/applib/cstart.c -o CMakeFiles/loop.dir/__/applib/cstart.c.s

source/loop/CMakeFiles/loop.dir/__/applib/lib_syscall.c.obj: source/loop/CMakeFiles/loop.dir/flags.make
source/loop/CMakeFiles/loop.dir/__/applib/lib_syscall.c.obj: source/loop/CMakeFiles/loop.dir/includes_C.rsp
source/loop/CMakeFiles/loop.dir/__/applib/lib_syscall.c.obj: C:/diy-x86os-master/start/new_start/source/applib/lib_syscall.c
source/loop/CMakeFiles/loop.dir/__/applib/lib_syscall.c.obj: source/loop/CMakeFiles/loop.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:/diy-x86os-master/start/new_start/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object source/loop/CMakeFiles/loop.dir/__/applib/lib_syscall.c.obj"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && C:/x86_64-elf-tools-windows/bin/x86_64-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT source/loop/CMakeFiles/loop.dir/__/applib/lib_syscall.c.obj -MF CMakeFiles/loop.dir/__/applib/lib_syscall.c.obj.d -o CMakeFiles/loop.dir/__/applib/lib_syscall.c.obj -c C:/diy-x86os-master/start/new_start/source/applib/lib_syscall.c

source/loop/CMakeFiles/loop.dir/__/applib/lib_syscall.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/loop.dir/__/applib/lib_syscall.c.i"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && C:/x86_64-elf-tools-windows/bin/x86_64-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/diy-x86os-master/start/new_start/source/applib/lib_syscall.c > CMakeFiles/loop.dir/__/applib/lib_syscall.c.i

source/loop/CMakeFiles/loop.dir/__/applib/lib_syscall.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/loop.dir/__/applib/lib_syscall.c.s"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && C:/x86_64-elf-tools-windows/bin/x86_64-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/diy-x86os-master/start/new_start/source/applib/lib_syscall.c -o CMakeFiles/loop.dir/__/applib/lib_syscall.c.s

source/loop/CMakeFiles/loop.dir/main.c.obj: source/loop/CMakeFiles/loop.dir/flags.make
source/loop/CMakeFiles/loop.dir/main.c.obj: source/loop/CMakeFiles/loop.dir/includes_C.rsp
source/loop/CMakeFiles/loop.dir/main.c.obj: C:/diy-x86os-master/start/new_start/source/loop/main.c
source/loop/CMakeFiles/loop.dir/main.c.obj: source/loop/CMakeFiles/loop.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:/diy-x86os-master/start/new_start/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object source/loop/CMakeFiles/loop.dir/main.c.obj"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && C:/x86_64-elf-tools-windows/bin/x86_64-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT source/loop/CMakeFiles/loop.dir/main.c.obj -MF CMakeFiles/loop.dir/main.c.obj.d -o CMakeFiles/loop.dir/main.c.obj -c C:/diy-x86os-master/start/new_start/source/loop/main.c

source/loop/CMakeFiles/loop.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/loop.dir/main.c.i"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && C:/x86_64-elf-tools-windows/bin/x86_64-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/diy-x86os-master/start/new_start/source/loop/main.c > CMakeFiles/loop.dir/main.c.i

source/loop/CMakeFiles/loop.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/loop.dir/main.c.s"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && C:/x86_64-elf-tools-windows/bin/x86_64-elf-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/diy-x86os-master/start/new_start/source/loop/main.c -o CMakeFiles/loop.dir/main.c.s

# Object files for target loop
loop_OBJECTS = \
"CMakeFiles/loop.dir/__/applib/crt0.S.obj" \
"CMakeFiles/loop.dir/__/applib/cstart.c.obj" \
"CMakeFiles/loop.dir/__/applib/lib_syscall.c.obj" \
"CMakeFiles/loop.dir/main.c.obj"

# External object files for target loop
loop_EXTERNAL_OBJECTS =

source/loop/loop.exe: source/loop/CMakeFiles/loop.dir/__/applib/crt0.S.obj
source/loop/loop.exe: source/loop/CMakeFiles/loop.dir/__/applib/cstart.c.obj
source/loop/loop.exe: source/loop/CMakeFiles/loop.dir/__/applib/lib_syscall.c.obj
source/loop/loop.exe: source/loop/CMakeFiles/loop.dir/main.c.obj
source/loop/loop.exe: source/loop/CMakeFiles/loop.dir/build.make
source/loop/loop.exe: source/loop/CMakeFiles/loop.dir/linkLibs.rsp
source/loop/loop.exe: source/loop/CMakeFiles/loop.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:/diy-x86os-master/start/new_start/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable loop.exe"
	cd C:/diy-x86os-master/start/new_start/build/source/loop && x86_64-elf-ld @CMakeFiles/loop.dir/objects1.rsp -m elf_i386 -T C:/diy-x86os-master/start/new_start/source/loop/link.lds -L C:/diy-x86os-master/start/new_start/build/../../newlib/i686-elf/lib -lm -lc -o C:/diy-x86os-master/start/new_start/build/source/loop/loop.elf
	cd C:/diy-x86os-master/start/new_start/build/source/loop && x86_64-elf-objcopy -S loop.elf C:/diy-x86os-master/start/new_start/../../image/loop.elf
	cd C:/diy-x86os-master/start/new_start/build/source/loop && x86_64-elf-objdump -x -d -S -m i386 C:/diy-x86os-master/start/new_start/build/source/loop/loop.elf > loop_dis.txt
	cd C:/diy-x86os-master/start/new_start/build/source/loop && x86_64-elf-readelf -a C:/diy-x86os-master/start/new_start/build/source/loop/loop.elf > loop_elf.txt

# Rule to build all files generated by this target.
source/loop/CMakeFiles/loop.dir/build: source/loop/loop.exe
.PHONY : source/loop/CMakeFiles/loop.dir/build

source/loop/CMakeFiles/loop.dir/clean:
	cd C:/diy-x86os-master/start/new_start/build/source/loop && $(CMAKE_COMMAND) -P CMakeFiles/loop.dir/cmake_clean.cmake
.PHONY : source/loop/CMakeFiles/loop.dir/clean

source/loop/CMakeFiles/loop.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/diy-x86os-master/start/new_start C:/diy-x86os-master/start/new_start/source/loop C:/diy-x86os-master/start/new_start/build C:/diy-x86os-master/start/new_start/build/source/loop C:/diy-x86os-master/start/new_start/build/source/loop/CMakeFiles/loop.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : source/loop/CMakeFiles/loop.dir/depend

