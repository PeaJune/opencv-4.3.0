SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_VERSION 1)
SET(CMAKE_SYSTEM_PROCESSOR arm64)
#SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -L/home/haoqing/work/cross_libs/output/lib -mcpu=cortex-a53 -mfloat-abi=softfp -mfpu=neon-vfpv4 -ftree-vectorize -mno-unaligned-access -fno-aggressive-loop-optimizations")

# specify the cross compiler
SET(CMAKE_C_COMPILER   /opt/hisi-linux/x86-arm/aarch64-himix100-linux/bin/aarch64-himix100-linux-gcc)
SET(CMAKE_CXX_COMPILER /opt/hisi-linux/x86-arm/aarch64-himix100-linux/bin/aarch64-himix100-linux-g++)
SET(CMAKE_LINKER /opt/hisi-linux/x86-arm/aarch64-himix100-linux/bin/aarch64-himix100-linux-ld)
SET(CMAKE_AR /opt/hisi-linux/x86-arm/aarch64-himix100-linux/bin/aarch64-himix100-linux-ar CACHE FILEPATH "Archiver")
SET(CMAKE_STRIP /opt/hisi-linux/x86-arm/aarch64-himix100-linux/bin/aarch64-himix100-linux-strip)

# where is the target environment
SET(CMAKE_FIND_ROOT_PATH /opt/hisi-linux/x86-arm/aarch64-himix100-linux/target/usr/lib/)
#SET(CMAKE_FIND_ROOT_PATH  /home/haoqing/work/cross_libs/output/lib)
#SET(CMAKE_FIND_ROOT_PATH  /opt/hisi-linux/x86-arm/arm-himix200-linux/bin/lib)
# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
