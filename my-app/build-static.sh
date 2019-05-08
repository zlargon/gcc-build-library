#!/bin/bash

dist=out/static
rm -rf ${dist}
mkdir -p ${dist}

gcc -c src/main.c -I../my-library/include -o out/main.o
gcc out/main.o -L../my-library/${dist} -lhello -o ${dist}/app.exe
