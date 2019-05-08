#!/bin/bash

set -e

# Color code
function echo_y () {
    YELLOW="\033[1;33m"
    RESET="\033[0m"
    echo -e "${YELLOW}$@${RESET}"
}

root=$(pwd)

echo_y "[lib] build static library"
cd ${root}/my-library
./build-static.sh

echo_y "\n[app] build app with static library"
cd ${root}/my-app
./build-static.sh

echo_y "\n[run] run static app"
cd out
./static-app.exe

echo -e "\n----------------------------------------------------------"

echo_y "\n[lib] build shared library"
cd ${root}/my-library
./build-shared.sh

echo_y "\n[app] build app with shared library"
cd ${root}/my-app
./build-shared.sh

echo_y "\n[run] run shared app"
cd out
./shared-app.exe
