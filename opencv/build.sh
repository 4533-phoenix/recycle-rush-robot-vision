#!/bin/bash

OPENCV_VERSION=2.4.10

cd /vagrant

if [ ! -d ./opencv ]; then
	git clone https://github.com/Itseez/opencv.git
fi

if [ ! -d ./build ]; then
	mkdir ./build
fi

cd opencv
git checkout ${OPENCV_VERSION}
sed -i 's/GCC_COMPILER_VERSION \"[0-9].[0-9]\"/GCC_COMPILER_VERSION \"4.7\"/' platforms/linux/arm-gnueabi.toolchain.cmake

cd ../build
cmake -DSOFTFP=ON  -DCMAKE_TOOLCHAIN_FILE=../opencv/platforms/linux/arm-gnueabi.toolchain.cmake ../opencv

make
make install
cd install
tar cvf - . | gzip > ../opencv-${OPENCV_VERSION}.tar.gz

