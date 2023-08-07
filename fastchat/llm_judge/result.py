import json
from collections import defaultdict
import numpy as np

# win, tie, lose = 0, 0, 0
# with open('data/mt_bench/model_judgment/gpt-4_pair.jsonl') as f:
#     for line in f:
#         line = json.loads(line)
#         qid[line['question_id']].append(line)
#         g1, g2 = line['g1_winner'], line['g2_winner']
#         if g1 == 'error' or g2 == 'error':
#             continue
#         a, b = 0, 0
#         if g1 == 'model_1': 
#             a += 1
#         elif g1 == 'model_2':
#             b += 1
#         if g2 == 'model_1': 
#             a += 1
#         elif g2 == 'model_2':
#             b += 1
#         if a > b:
#             win += 1
#         elif a == b:
#             tie += 1
#         else:
#             lose += 1
# print(win, tie, lose)

# for item in qid[81]:
#     print(item)
#     input()
# print(len(qid[81]))


r = defaultdict(list)
with open('/home/xrx/FastChat/fastchat/llm_judge/data/mt_bench/model_judgment/gpt-4_single.jsonl') as f:
    for line in f:
        line = json.loads(line)
        r[line['model']].append(line['score'])
for k, v in r.items():
    print(f'{k}: {np.mean(v)}')

