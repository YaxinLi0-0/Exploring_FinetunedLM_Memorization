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
chunks = []
token_buf = []

def preprocess_function(examples):
    # ipdb.set_trace(
    model_inputs={"text": ""}
    if examples["context"] is not None and examples["question"] is not None:
        inputs =  examples["context"] + examples["question"] + "\n ---------- \n" + str(examples["answers"]["text"])
        model_inputs["text"] = inputs
    
        return model_inputs
    return model_inputs

train_data = datasets.load_from_disk("/root/paddlejob/workspace/squad_v2/train/")
test_data = datasets.load_from_disk("/root/paddlejob/workspace/squad_v2/validation/")
import ipdb
print("tokenize", flush=True)
dataset_train = train_data.map(preprocess_function, remove_columns=['id', 'title', 'context', 'question', 'answers'])
dataset_test = test_data.map(preprocess_function, remove_columns=['id', 'title', 'context', 'question', 'answers'])

# torch.save(tokenized_data, "./tokenized_amazon_summary.pt")
dataset_train.save_to_disk("./dataset_squad_train")
dataset_test.save_to_disk("./dataset_squad_test")