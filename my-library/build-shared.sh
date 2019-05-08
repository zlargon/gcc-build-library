#!/bin/bash

echo "[lib] build shared library"

dist=out/shared
rm -rf ${dist}
mkdir -p ${dist}

gcc -c -fPIC src/add.c -Iinclude/ -o ${dist}/add.o
gcc -c -fPIC src/sub.c -Iinclude/ -o ${dist}/sub.o
gcc -shared ${dist}/add.o ${dist}/sub.o -o ${dist}/libhello.dylib

otool -L ${dist}/libhello.dylib
