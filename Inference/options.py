import argparse

# DATASETS = ["sent140", "femnist", "shakespeare", "celeba", "synthetic", "reddit"]
# SAMPLERS = ["random", "brute", "bayesian", "probability", "ga", "gbp-cs"]

def parse_args():
    parser = argparse.ArgumentParser()

    parser.add_argument("--dataset-path", help="dataset path to be used;",type=str,default="./dataset/summarization/gigaword")
    parser.add_argument("--model-path",help="model path to be used;",type=str,default="./models--google--flan-t5-base")
    parser.add_argument("--token-path",help="token path to be used;",type=str,default="./models--google--flan-t5-base")
    parser.add_argument("--json-name-ini",help="first json path to be used;",type=str,default='Flan_Summary_gigaword_info10000.json')
    parser.add_argument("--json-name-inif",help="first json path to be used;",type=str,default='Flan_Summary_gigaword_info10000f.json')
    parser.add_argument("-outdir", help="output directionary;",type=str,default="./results/summarization/")
    
    parser.add_argument("--json-name-all",help="first K json path to be used;",type=str,default='Flan_Summary_gigaword_infoall.json')
    parser.add_argument("--json-name-allf",help="first K json path to be used;",type=str,default='Flan_Summary_gigaword_infoallf.json')

    parser.add_argument("--x-name",help="name of x(passage/content);",type=str,default='document')
    parser.add_argument("--y-name",help="name of y(label/summary/answer);",type=str,default='summary')

    parser.add_argument("-questions",help="questions",type=str,default=None)
    parser.add_argument("-options",help="options",type=str,default=None)

    parser.add_argument("--prefix-lengh",help="prefix length",type=int,default=50)
    parser.add_argument("-gpu",help="gpu used to train;",type=str,default='cuda:0')
    parser.add_argument("--batch-size",help="number of training samples in each batch;", type=int, default=40)

    #For the attention experiment-- decide the name
    parser.add_argument("-dataset", help="dataset used;",type=str,default="multi_news")
    parser.add_argument("-task", help="task used;",type=str,default="summarization")
    parser.add_argument("-model", help="model used;",type=str,default="finetunedt5")
    parser.add_argument("--output", help="output", type=str, default="./test_output.txt")

    parser.add_argument("--dir_name", type=str)
    parser.add_argument("--subset_name", type=str)
    parser.add_argument("--output_name", type=str)
    parser.add_argument("--debug_mode", type=bool)
    return parser.parse_args()







    
    