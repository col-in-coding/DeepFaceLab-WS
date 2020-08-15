#! /bin/bash
# Example: bash applyxseg.sh data_src

DATA=$1

python DeepFaceLab/main.py xseg apply \
--input-dir workspace/${DATA}/aligned \
--model-dir workspace/model