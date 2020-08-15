#! /bin/bash
# Example: bash train.sh XSeg

# [XSeg, SAEHD]
MODEL=$1

python DeepFaceLab/main.py train \
--training-data-src-dir workspace/data_src/aligned \
--training-data-dst-dir workspace/data_dst/aligned \
--pretraining-data-dir pretrain \
--model-dir workspace/model --model ${MODEL} \
--silent-start