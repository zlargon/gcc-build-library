#!/bin/bash

root=$(pwd)

rm -rf out
mkdir -p out

cd ${root}
gcc -c src/main.c -I../my-library/include -o out/main.o
gcc out/main.o -L../my-library/out/static -lhello -o out/static-app.exe
