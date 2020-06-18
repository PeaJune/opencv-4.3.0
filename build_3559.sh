#!/bin/sh
root_path=`pwd`
mkdir -p build
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=../platforms/linux/hisi_3559a.cmake \
        -DCMAKE_INSTALL_PREFIX=${root_path}/install/arm64 \
        -DWITH_CUDA=OFF -DWITH_GTK=OFF -DWITH_VTK=OFF -DWITH_TBB=OFF \
        -DWITH_TIFF=OFF \
        -DWITH_1394=OFF -DWITH_OPENEXR=OFF  -DWITH_V4L=OFF -DWITH_LIBV4L=OFF \
        -DWIDTH_NEON=ON \
        -DBUILD_opencv_nonfree=ON \
        -DCXXFLAGS=-D__STDC_CONSTANT_MACROS \
        -DENABLE=ON \
        -DWITH_FFMPEG=OFF \
        -DWITH_OPENCL=OFF -DBUILD_ZLIB=ON  -Wno-dev
make -j32
make install
