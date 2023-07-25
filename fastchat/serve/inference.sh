#!/bin/bash

# CUDA_VISIBLE_DEVICES=0 python -m fastchat.serve.cli \
#     --dataset $P/dahoas_static_hh_bias_vicunaformat_30k \
#     --save $P/dahoas_static_hh_bias_vicunaformat_30k_vicuna7b_response \
#     --model-path lmsys/vicuna-7b-v1.3 \
#     --temperature 1.0 \
#     --repetition_penalty 1.0

conda activate llama    
P=/home/xrx/rm/applications/DeepSpeed-Chat/training/step2_reward_model_finetuning/data/data
d=dahoas_static_hh_bias_vicunaformat_30k_first15k_split_8
r=${d}_vicuna_generation_10response.json
CUDA_VISIBLE_DEVICES=7 python -m fastchat.serve.cli \
    --dataset ${P}/${d} \
    --save ${P}/${r} \
    --responsenum 10 \
    --model-path lmsys/vicuna-7b-v1.3 \
    --temperature 1.0 \
    --repetition_penalty 1.0
