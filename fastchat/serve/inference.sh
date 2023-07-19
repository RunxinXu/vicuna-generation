#!/bin/bash

# CUDA_VISIBLE_DEVICES=0 python -m fastchat.serve.cli \
#     --dataset $P/dahoas_static_hh_bias_vicunaformat_30k \
#     --save $P/dahoas_static_hh_bias_vicunaformat_30k_vicuna7b_response \
#     --model-path lmsys/vicuna-7b-v1.3 \
#     --temperature 1.0 \
#     --repetition_penalty 1.0

conda activate llama
P=/home/xrx/rm/applications/DeepSpeed-Chat/training/step2_reward_model_finetuning/data/data
d=dahoas_static_hh_bias_vicunaformat_30k_split_2
r=${d}_vicuna7b_generation.json
CUDA_VISIBLE_DEVICES=1 python -m fastchat.serve.cli --dataset ${P}/${d} --save ${P}/${r} --responsenum 2 --model-path lmsys/vicuna-7b-v1.3 --temperature 1.0 --repetition_penalty 1.0
