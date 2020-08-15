#! /bin/bash
# Example: bash denoise.sh data_src

# $1 [data_src | data_src]
DATA=$1

# $2 Scale (1:20, step:1)
FACTOR=$2

python DeepFaceLab/main.py videoed denoise-image-sequence --input-dir workspace/${DATA} --factor ${FACTOR}