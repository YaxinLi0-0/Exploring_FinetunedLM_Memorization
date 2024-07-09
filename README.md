# Exploring_FinetunedLM_Memorization
This is the code repository for ACL2024 paper: 
### Exploring Memorization in Fine-tuned Language Models
Shenglai Zeng*, Yaxin Li*, Jie Ren, Yiding Liu, Han Xu, Pengfei He, Yue Xing, Shuaiqiang Wang, Jiliang Tang, Dawei Yin

## Abstract
Large language models (LLMs) have shown great capabilities in various tasks but also exhibited memorization of training data, raising tremendous privacy and copyright concerns. While prior works have studied memorization during pre-training, the exploration of memorization during fine-tuning is rather limited. Compared to pre-training, fine-tuning typically involves more sensitive data and diverse objectives, thus may bring distinct privacy risks and unique memorization behaviors. In this work, we conduct the first comprehensive analysis to explore language models' (LMs) memorization during fine-tuning across tasks. Our studies with open-sourced and our own fine-tuned LMs across various tasks indicate that memorization presents a strong disparity among different fine-tuning tasks. We provide an intuitive explanation of this task disparity via sparse coding theory and unveil a strong correlation between memorization and attention score distribution.

## Finetune
Prerequisite: Finetuning requires installing Deepspeed accelerator
1. Tokenize the finetune data
```
python encode_dialogue_gpt.py
```

2. Finetune with the tokenized data
Example:
```
deepspeed --num_gpus=4 run_clm_gpt.py --deepspeed ds_config_gpt.json --model_name_or_path ./gpt-neo-1.3B --train_file ./tokenized_data/tokenized_dialogue_train --validation_file /localscratch/yaxin/tokenized_data/tokenized_dialogue_test --model_type gptneo --do_train --overwrite_cache --overwrite_output_dir --output_dir /localscratch/yaxin/finetuned_models/finetuned_dialogue_gptneo_1.3B --num_train_epochs 20 --gradient_accumulation_steps 2 --per_device_train_batch_size 8 --learning_rate 2e-05 --save_total_limit 20 --save_strategy epoch --block_size 1028 --seed 5 --warmup_steps 10
```

## Inference
1. Generate the output of the finetuned model based on the prefix.
```
python Inference_prefix_gpt.py --model-path ./finetuned_dialogue_gptneo_1.3B --token-path ./models/gpt-neo-1.3B  --output_name dialogue --subset_name dialogue --dir_name finetuned_dialogue
```

## Plagraism Detection 
Prerequisite: ElasticSearch Engine
```
python Load_to_Elastic.py -dir ./pretrained_gpt-neo-125m/ -fn [name_of_prefix].json --index-xsuffix [name_of_suffix]
python PAN2015_plagiarism_detection2.py -filedir ./memorization_gpt-neo-125m/[name_of_txt].txt -type gpt-neo-125m -dataset [name_of_dataset] --index-xsuffix [name_of_suffix]
```
