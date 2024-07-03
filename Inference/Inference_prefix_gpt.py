# Load model directly
from transformers import AutoTokenizer, AutoModelForSeq2SeqLM
import torch
import json
from datasets import load_dataset,load_from_disk
from torch.utils.data import DataLoader,TensorDataset, random_split
from torchsummary import summary
from transformers import AutoModelForCausalLM, AutoTokenizer, GenerationConfig
from options import parse_args
import pandas as pd
import rouge
import evaluate
import os
import numpy as np

def main():
    args = parse_args()
    """
    INPUT: Model, dataset
    OUTPUT: dict{ids: output_id_list}
    """

    """
    ========================================================
    Change settings 
    """
    batch_size=args.batch_size
    print("batchsize",batch_size)
    device=args.gpu
    print("device",device)
    dataset_path=args.dataset_path
    print("dataset_path",dataset_path)
    tokenizer_path=args.token_path
    print("token path",tokenizer_path)
    model_path=args.model_path
    print("model_path",model_path)

    x_name=args.x_name
    print("x_name",x_name)
    y_name=args.y_name
    print("y_name",y_name)
    outdir=args.outdir
    print("outdir",outdir)
    output_name=args.output_name
    print("output_name",output_name)

    """
    ========================================================
    """
    torch.cuda.empty_cache()

    # tokenizer = AutoTokenizer.from_pretrained("./models/gpt-neo-125m/", padding_side="left")
    tokenizer = AutoTokenizer.from_pretrained(args.token_path, padding_side="left")
    # model = AutoModelForCausalLM.from_pretrained("./models/gpt-neo-125m/").to(device)
    model = AutoModelForCausalLM.from_pretrained(args.model_path).to(device)

    # trainloader = DataLoader('/localscratch/yaxin/post_processed_data/' + args.dir_name + '/' + 'tokenized_' + args.subset_name + '_prefix', batch_size=batch_size, shuffle=False)
    dataset = load_from_disk('./post_processed_data/' + 'finetuned_Github_gptneo_lr_2e05' + '/' + 'tokenized_' + args.subset_name + '_prefix')
    df = pd.read_json('./post_processed_data/' + 'finetuned_Github_gptneo_lr_2e05' + '/' + args.subset_name + '_prefix.json',orient='split')

    print("Successfully load")

    """
    Test Space
    """
    print(model)

    import ipdb
    # ipdb.set_trace()
        
    j=0
    output_list=[]
    text_id_list=[]
    prefix_id_list=[]
    
    if not os.path.exists("./memorization_" + args.dir_name + "/"):
        os.mkdir("./memorization_" + args.dir_name + "/")
    if not os.path.exists("./memorization_" + args.dir_name + "/" + args.subset_name):
        os.mkdir("./memorization_" + args.dir_name + "/" + args.subset_name )
    dir_path = "./memorization_" + args.dir_name + "/" + args.subset_name + "/"
    # ipdb.set_trace()

    generation_output_suffix = []
    # rouge = evaluate.load('./rouge')
    # rouge_list = []

    batch = []
    MyFile = open(dir_path + args.output_name + '.txt', 'w')
    MyFile2 = open(dir_path + args.output_name + "_original.txt", 'w')

    length = len(dataset)
    # for step, batch in enumerate(trainloader):
    for step in range(0, 10000, batch_size):

        if step + batch_size > 9999:
            break
        torch.cuda.empty_cache()
        j += 1
        num_samples=batch_size*(j-1)
        print("NUM SAMPLES:",num_samples)

        text_ids=list(range(num_samples,(num_samples+batch_size)))
        print(text_ids)
        text_id_list.extend(text_ids)
        # print(prompt)
        batch = []

        for i in range(batch_size):
            batch.append(dataset[step + i]['input_ids'])
            # input_ids_list=torch.cat(batch, dim=0).to(device)
        # print(input_ids_list)

        batch = torch.tensor(batch).to(device)
        import ipdb
        # ipdb.set_trace()
        with torch.no_grad():
            generation_output = model.generate(
            input_ids=batch, max_new_tokens=100
            )

        output_ids=generation_output.tolist()
        # print("output_ids",output_ids)
        # print(tokenizer.decode(output_ids[0]))
        output_list.extend(output_ids)
    
    generation_output_suffix = []
    # MyFile = open('./output/enron_generated_suffix_gpt_neo_125m.txt', 'w')
    # rouge = evaluate.load('./rouge')
    # rouge_list = []
    for i in range(len(output_list)):
        out = tokenizer.decode(output_list[i])
        prefix = df.loc[i]["prefix"]
        suffix = df.loc[i]["suffix"]
        
        # print(out)
        # print(suffix)
        # results = rouge.compute(predictions=[out], references=[suffix])
        generation_output_suffix.append(out)
        # rouge_list.append(results['rougeL'])
        MyFile.write('{index}=======================\n'.format(index = i))
        MyFile.write(out + '\n')
        MyFile2.write('{index}=======================\n'.format(index = i))
        MyFile2.write('prefix: ' + prefix + '\n')
        MyFile2.write('suffix: ' + suffix + '\n')

    with open(dir_path + args.output_name + "_tokenized_output.npy", 'wb') as f:
        np.save(f, output_list)
    # print(rouge_list)
    # with open("./output/" + args.output + "_rouge.txt", 'w') as f:
    #     json.dump(rouge_list, f)
    
if __name__ == "__main__":
    main()
