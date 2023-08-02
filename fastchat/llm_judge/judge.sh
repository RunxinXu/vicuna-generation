#!/bin/bash

export OPENAI_API_KEY=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

# python gen_judgment.py \
#     --mode pairwise-baseline \
#     --model-list vicuna \
#     --baseline-model static \
#     --bench-name mt_bench \
#     --parallel 2

python gen_judgment.py \
    --mode single \
    --model-list vicuna_temmode2 vicuna_temmode3 vicuna_temmode4 \
    --bench-name mt_bench \
    --parallel 2

# python show_result.py \
#     --mode pairwise-baseline \
#     --model-list vicuna \
#     --baseline-model static 

# python show_result.py \
#     --mode single  \
#     --model-list vicuna static vicuna-7b-v1.3 \
#     --bench-name mt_bench