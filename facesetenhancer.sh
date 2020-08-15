#! /bin/bash
# Example: bash facesetenhancer.sh data_dst

# [data_src | data_dst]
DATA=$1

python DeepFaceLab/main.py facesettool enhance \
--input-dir workspace/${DATA}/aligned