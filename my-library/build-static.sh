#!/bin/bash

dist=out/static
rm -rf ${dist}
mkdir -p ${dist}

gcc -c src/add.c -Iinclude/ -o ${dist}/add.o
gcc -c src/sub.c -Iinclude/ -o ${dist}/sub.o
ar rcs ${dist}/libhello.a ${dist}/add.o ${dist}/sub.o

otool -L ${dist}/libhello.a
