#!/bin/bash
set -e

for dim in {1..50}; do
    ./x264 --preset fast --tune zerolatency --min-keyint 50000 --no-scenecut ~/Videos/4k_nature/ocean_waves.y4m --qp 24 -o temp.h264 --dim=${dim}
    ls -laB temp.h264 | sed -r 's/,//g' | awk -v dim=$dim '{print dim","$5}' 
done
