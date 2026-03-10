#!/bin/bash

wd=$(pwd)
mkdir data
unzip test.zip -d data/
rm test.zip

python infer.py \
  --data-dir $wd/data/ \
  --model-path $wd/model.pth
