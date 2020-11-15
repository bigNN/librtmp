#!/bin/bash
#ndk路径
#NDK_ROOT=/Users/chris/development/sdk/ndk/21.0.6113669
NDK_ROOT=/Users/chris/development/ndk-r17c
#cpu类型
CPU=arm-linux-androideabi
#编译输出路径
PREFIX=/Users/chris/temp/compile_lib

TOOLCHAIN=$NDK_ROOT/toolchains/$CPU-4.9/prebuilt/darwin-x86_64
echo $TOOLCHAIN
export XCFLAGS="-isysroot $NDK_ROOT/sysroot -isystem $NDK_ROOT/sysroot/usr/include/arm-linux-androideabi -D__ANDROID_API__=17"
export XLDFLAGS="--sysroot=${NDK_ROOT}/platforms/android-17/arch-arm "
export CROSS_COMPILE=$TOOLCHAIN/bin/arm-linux-androideabi-

make install SYS=android prefix=$PREFIX/rtmp CRYPTO= SHARED=  XDEF=-DNO_SSL 



