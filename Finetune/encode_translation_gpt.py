import os
import random
from secrets import randbelow
import numpy as np
import json
import sys
import torch
import argparse
from pathlib import Path

from tqdm import tqdm
from tqdm.contrib.concurrent import process_map
import functools
from transformers import AutoTokenizer
import json
import ipdb
import pandas as pd
import datasets
data = []
tokenizer = AutoTokenizer.from_pretrained("/root/paddlejob/workspace/env_run/t5-finetune-imdb/gpt-neo-125m/")
# dialogue_data = []
with open('/root/paddlejob/workspace/env_run/t5-finetune-imdb/HealthCareMagic-100k.json', 'r') as file:
    dialogue_data = json.load(file)

def preprocess_function(examples):
    model_inputs={"text":""}
    if examples["translation"]['en'] is not None and examples['translation']['de'] is not None:
        prefix = "Please translation the following paragraph to Germany: "
        inputs = prefix + examples['translation']['en'] + "\n ---------- \n" + examples['translation']['de']
        model_inputs["text"] = inputs
        return model_inputs
    return model_inputs

length = len(dialogue_data)
train_length =int(length * 0.9)
train_data = datasets.load_from_disk("/root/paddlejob/workspace/env_run/t5-finetune-imdb/wmt16_de_en/train/")
test_data = datasets.load_from_disk("/root/paddlejob/workspace/env_run/t5-finetune-imdb/wmt16_de_en/validation/")

print("tokenize", flush=True)
tokenized_data_train = train_data.map(preprocess_function, remove_columns=['translation'])
tokenized_data_test = test_data.map(preprocess_function, remove_columns=['translation'])
import ipdb
ipdb.set_trace()
tokenized_data_train.save_to_disk("./tokenized_translation_gpt_train")
tokenized_data_test.save_to_disk("./tokenized_translation_gpt_test")
