#! /usr/bin/bash

set -e

rm -rf build
mkdir -p build
cd build && cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_BUILD_TYPE=Release .. && cmake --build .
cp compile_commands.json ../
