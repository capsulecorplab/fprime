####
# Raspberry PI Toolchain
#
# This is a toolchain for the Raspberry Pi. This toolchain can be used ot build
# against the Raspberry Pi embedded Linux target. In order to use this toolchain,
# the Raspbery Pi cross-compiler should be installed on a Linux host. These
# tools are installable as follows:
#   sudo apt install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf  gdb-multiarch
####

# Set the system information
set(CMAKE_SYSTEM_NAME       Linux)
set(CMAKE_SYSTEM_PROCESSOR  arm)
set(CMAKE_SYSTEM_VERSION    1)

# Set the GNU ARM toolchain
set(CMAKE_AR            arm-linux-gnueabihf-ar)
find_program(CMAKE_C_COMPILER NAMES aarch64-linux-gnu-gcc aarch64-none-linux-gnu-gcc PATHS ENV AARCH_DIR PATH_SUFFIXES bin REQUIRED)
find_program(CMAKE_CXX_COMPILER NAMES aarch64-linux-gnu-g++ aarch64-none-linux-gnu-g++ PATHS ENV AARCH_DIR PATH_SUFFIXES bin REQUIRED)
message(STATUS "[aarch64-linux] C Compiler: ${CMAKE_C_COMPILER}")
message(STATUS "[aarch64-linux] CXX Compiler: ${CMAKE_CXX_COMPILER}")
set(CMAKE_ASM_COMPILER  arm-linux-gnueabihf-as)
set(CMAKE_OBJCOPY       arm-linux-gnueabihf-objcopy)
set(CMAKE_OBJDUMP       arm-linux-gnueabihf-objdump)
set(CMAKE_C_GDB         gdb-multiarch)

# Configure the find commands for finding the toolchain
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM   NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY   NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE   NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE   NEVER)
