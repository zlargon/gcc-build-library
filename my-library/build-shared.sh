#!/bin/bash

dist=out/shared
rm -rf ${dist}
mkdir -p ${dist}

gcc -c -fPIC src/add.c -Iinclude/ -o ${dist}/add.o      # -fPIC?
gcc -c -fPIC src/sub.c -Iinclude/ -o ${dist}/sub.o
gcc -shared ${dist}/add.o ${dist}/sub.o -o ${dist}/libhello.so              # Ubuntu
gcc -shared ${dist}/add.o ${dist}/sub.o -o $(pwd)/${dist}/libhello.dylib    # macOS absolute path?
