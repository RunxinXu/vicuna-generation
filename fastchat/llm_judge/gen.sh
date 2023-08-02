#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python gen_model_answer.py \
    --model-path lmsys/vicuna-7b-v1.3 \
    --model-id vicuna-7b-v1.3-temmode1 \
    --bench-name mt_bench \
    --temperatureconfig 1 \
    --num-choices 40

