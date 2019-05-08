#!/bin/bash

echo "[lib] build static library"

dist=out/static
rm -rf ${dist}
mkdir -p ${dist}

gcc -c src/add.c -Iinclude/ -o ${dist}/add.o
gcc -c src/sub.c -Iinclude/ -o ${dist}/sub.o
ar rcs out/static/libhello.a out/static/add.o out/static/sub.o
