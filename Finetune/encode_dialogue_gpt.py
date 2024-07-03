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
f = open("/root/paddlejob/workspace/env_run/t5-finetune-imdb/HealthCareMagic-100k.json", "r", encoding="utf-8")
# dialogue_data = []
with open('/root/paddlejob/workspace/env_run/t5-finetune-imdb/HealthCareMagic-100k.json', 'r') as file:
    dialogue_data = json.load(file)

def preprocess_function(examples):
    model_inputs={"text":""}
    if examples["instruction"] is not None and examples["input"] is not None and examples["output"] is not None:
        inputs = examples["instruction"] + examples["input"] + "\n ---------- \n" + examples["output"]
        model_inputs["text"] = inputs
        return model_inputs
    return model_inputs

length = len(dialogue_data)
train_length =int(length * 0.9)
dialogue_data_train = datasets.Dataset.from_pandas(pd.DataFrame(data=dialogue_data[0:train_length]))
dialogue_data_test = datasets.Dataset.from_pandas(pd.DataFrame(data=dialogue_data[train_length:]))
print("tokenize", flush=True)
tokenized_data_train = dialogue_data_train.map(preprocess_function, remove_columns=['input', 'output','instruction'])
tokenized_data_test = dialogue_data_test.map(preprocess_function, remove_columns=['input', 'output','instruction'])
import ipdb
ipdb.set_trace()
tokenized_data_train.save_to_disk("./tokenized_dialogue_gpt_train")
tokenized_data_test.save_to_disk("./tokenized_dialogue_gpt_test")

