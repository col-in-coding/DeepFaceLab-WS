#! /bin/bash
# Example: bash exsegedt.sh data_dst

DATA=$1

python DeepFaceLab/main.py xseg editor \
--input-dir workspace/${DATA}/aligned