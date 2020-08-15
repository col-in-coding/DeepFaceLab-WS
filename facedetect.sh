#! /bin/bash
# Example: bash facedetect.sh data_dst --output-debug

# [data_src | data_dst]
DATA=$1
# ["--output-debug" | "--no-output-debug"]
DEBUG=$2
# whole face : "--face-type whole_face"
WHOLE_FACE=$3

python DeepFaceLab/main.py extract \
--input-dir workspace/${DATA} \
--output-dir workspace/${DATA}/aligned \
--detector s3fd --force-gpu-idxs 0 ${DEBUG} ${WHOLE_FACE}