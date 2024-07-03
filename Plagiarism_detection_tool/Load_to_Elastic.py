import json
from elasticsearch import Elasticsearch
from options import parse_args
import pandas as pd
"""
INPUT: FILE_NAME dict{text_id: x_all, x_prefix, x_generation,y}
LOAD TO ELASTICSEARCH
INDEX_1:x_all {id,text_id, x_all}
INDEX_2:x_y {id,text_id, x_y}
INDEX_3:x_suffix {id,text_id, x_suffix}
"""
args = parse_args()
# flag_rag=args.flag_rag
# print("RAG:",flag_rag)

FILE_DIR=args.dir
FILENAME=args.fn
import ipdb
# ipdb.set_trace()
lst_values = []
# with open(FILE_DIR + FILENAME, 'r') as file:
#     for line in file:
#         # ipdb.set_trace()
#         if len(lst_values) > 10000:
#             break
#         try:
#             json_object = json.loads(line)
#             lst_values.append(json_object['text'])
#         except json.JSONDecodeError as e:
#             print(f"Error decoding JSON: {e}")
df = pd.read_json(FILE_DIR + FILENAME, orient='split')
# print(info_data)

USER=""
PASS=""
CERTIFICATE=""
es = Elasticsearch("https://127.0.0.1:9200/", basic_auth=(USER, PASS), ca_certs=CERTIFICATE, verify_certs=False)
print(es)

"""
Load x_suffix
"""
print("Load x_suffix")
# INDEX_NAME = "imdb_x_suffix_10000"
# c4_original
INDEX_NAME = args.index_xsuffix
# dict = dict.fromkeys(("id","text_id","text"))
dict = dict.fromkeys(("id","text"))

import ipdb
# ipdb.set_trace()
idx=0
le = len(df.index) 
# for value in lst_values:
for i in range(le):
    print("idx",idx)

    # suffix=x_all[len(prefix)-3:]
    suffix = df.loc[i]["suffix"]
    # print(suffix)
    dict["text"]=suffix
    # dict["text_id"]=lst_keys[idx]
    dict["id"]=idx
    idx += 1
    res = es.index(index = INDEX_NAME, id=idx, document=dict)

print(res)
res = es.get(index = INDEX_NAME, id =10)
print(res)


# """
# Load x_all
# """
# INDEX_NAME =args.index_xall
# print("Load x_all")
# # INDEX_NAME = "imdb_x_all_10000"
# dict1 = dict.fromkeys(("id","text_id","text"))
#
# idx=0
# for value in lst_values:
#     print("idx",idx)
#     x_all=value[0]
#     # print(prefix)
#     # print(suffix)
#     dict1["text"]=x_all
#     dict1["text_id"]=lst_keys[idx]
#     dict1["id"]=idx
#     idx += 1
#     res = es.index(index=INDEX_NAME, id=idx, document=dict1)
#
# print(res)
# res = es.get(index = INDEX_NAME, id =5000)
# print(res)
# """
# Load y
# """
# print("Load y")
# INDEX_NAME =args.index_y
# # INDEX_NAME = "imdb_question_10000"
# dict2 = dict.fromkeys(("id","text_id","text"))
# idx=0
#
# for value in lst_values:
#     print("idx",idx)
#     y=value[3]
#     # print(prefix)
#     # print(suffix)
#     dict2["text"]=3
#     dict2["text_id"]=lst_keys[idx]
#     dict2["id"]=idx
#     idx += 1
#     res = es.index(index=INDEX_NAME, id=idx, document=dict2)
#
# print(res)
# res = es.get(index = INDEX_NAME, id =5000)
# print(res)

# print("Load y2")
# INDEX_NAME = "t5squad_answer_10000"
# dict2 = dict.fromkeys(("id","text_id","text"))
# idx=0
#
# for value in lst_values:
#     print("idx",idx)
#     y=value[4]
#     # print(prefix)
#     # print(suffix)
#     dict2["text"]=3
#     dict2["text_id"]=lst_keys[idx]
#     dict2["id"]=idx
#     idx += 1
#     res = es.index(index=INDEX_NAME, id=idx, document=dict2)
#
# print(res)
# res = es.get(index = INDEX_NAME, id =5000)
# print(res)