#!/bin/bash

export OPENAI_API_KEY=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

# python gen_judgment.py \
#     --mode pairwise-baseline \
#     --model-list vicuna \
#     --baseline-model static \
#     --bench-name vicuna_bench \
#     --parallel 2

python gen_judgment.py \
    --mode single \
    --model-list static vicuna \
    --bench-name mt_bench \
    --parallel 2

# python show_result.py \
#     --mode pairwise-baseline \
#     --model-list vicuna \
#     --baseline-model static \
#     --bench-name vicuna_bench

# python show_result.py \
#     --mode single  \
#     --model-list vicuna static2e-4 static9e-5 \
#     --bench-name vicuna_bench