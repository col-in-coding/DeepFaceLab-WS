#! /bin/bash
# Example: bash extract.sh dst

if [ $1 == "dst" ]
then
    echo "=== Clean workspace/data_dst/ ========"
    rm -rf workspace/data_dst/*
    echo "=== Extract workspace/data_dst.mp4 ==="
    python DeepFaceLab/main.py videoed extract-video --input-file workspace/data_dst.* --output-dir workspace/data_dst/
elif [ $1 == "src" ]
then
    echo "=== Clean workspace/data_src/ ========"
    rm -rf workspace/data_src/*
    echo "=== Extract workspace/data_src.mp4 ==="
    python DeepFaceLab/main.py videoed extract-video --input-file workspace/data_src.* --output-dir workspace/data_src/
else
    echo "args error: extract [src|dst]"
fi