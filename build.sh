#!/bin/sh

if [ -d "build/" ]; then
    echo "Found build/"
    cd build
    cmake -GNinja -DBUILD_WITH_BLE=ON ..
    ninja
else
    echo "Not Found build/"
    mkdir build
    cd build
    cmake -GNinja -DBUILD_WITH_BLE=ON ..
    ninja
fi
