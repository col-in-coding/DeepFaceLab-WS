#! /bin/bash
# Example: bash sortaligned.sh data_src hist

# [data_src | data_dst]
DATA=$1

# [hist | face-yaw]
TYPE=$2

python DeepFaceLab/main.py sort \
--input-dir workspace/${DATA}/aligned \
--by ${TYPE}
