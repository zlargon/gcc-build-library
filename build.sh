#!/bin/bash

set -e

root=$(pwd)

cd my-library
./build-static.sh

cd ${root}/my-app
./build-static.sh

echo "[run] execute static app"
cd out
./static-app.exe
