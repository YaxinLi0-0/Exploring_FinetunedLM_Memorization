# python Load_to_Elastic.py -dir ../subset_prefix_0409/ -fn ExPorter_prefix.json --index-xsuffix exporter_suffix
# python Load_to_Elastic.py -dir ../subset_prefix_0409/ -fn FreeLaw_prefix.json --index-xsuffix freelaw_suffix
# python Load_to_Elastic.py -dir ../subset_prefix_0409/ -fn HackerNews_prefix.json --index-xsuffix hackernews_suffix
# python Load_to_Elastic.py -dir ../subset_prefix_0409/ -fn StackExchange_prefix.json --index-xsuffix stackexchange_suffix
# python Load_to_Elastic.py -dir ../subset_prefix_0409/ -fn Mathematics_prefix.json --index-xsuffix mathematics_suffix



# python Load_to_Elastic.py -dir ./pile_subset2_processed/ -fn Central_20k_prefix.json --index-xsuffix central_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_ori/Central_20k.txt -type gpt_125m_ori -dataset Central --index-xsuffix central_20k_suffix

# python Load_to_Elastic.py -dir ./pile_subset2_processed/ -fn Emails_20k_prefix.json --index-xsuffix emails_20k_suffix
# python Load_to_Elastic.py -dir ./pile_subset2_processed/ -fn FreeLaw_20k_prefix.json --index-xsuffix freelaw_20k_suffix
# python Load_to_Elastic.py -dir ./pile_subset2_processed/ -fn HackerNews_20k_prefix.json --index-xsuffix hackernews_20k_suffix
# python Load_to_Elastic.py -dir ./pile_subset2_processed/ -fn StackExchange_20k_prefix.json --index-xsuffix stackexchange_20k_suffix
# python Load_to_Elastic.py -dir ./pile_subset2_processed/ -fn Mathematics_20k_prefix.json --index-xsuffix mathematics_20k_suffix
# python Load_to_Elastic.py -dir ./pile_subset2_processed/ -fn Github_20k_prefix.json --index-xsuffix github_20k_suffix
# python Load_to_Elastic.py -dir ./pile_subset2_processed/ -fn Pile-CC_20k_prefix.json --index-xsuffix pilecc_20k_suffix
# python Load_to_Elastic.py -dir ./pile_subset2_processed/ -fn ExPorter_20k_prefix.json --index-xsuffix exporter_20k_suffix
# python Load_to_Elastic.py -dir ./pile_subset2_processed/ -fn ArXiv_20k_prefix.json --index-xsuffix arxiv_20k_suffix


# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_ori/FreeLaw_20k.txt -type gpt_125m_ori -dataset FreeLaw --index-xsuffix freelaw_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_ori/Pile-CC_20k.txt -type gpt_125m_ori -dataset Pile-CC --index-xsuffix pilecc_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_ori/StackExchange_20k.txt -type gpt_125m_ori -dataset StackExchange --index-xsuffix stackexchange_20k_suffix
# # python PAN2015_plagiarism_detection2.py -filedir ../generation_output/ExPorter_10k.txt -type gpt_125m_ori -dataset ExPorter --index-xsuffix exporter_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_ori/Mathematics_20k.txt -type gpt_125m_ori -dataset Mathematics --index-xsuffix mathmatics_20k_suffix
# # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_ori/HackerNews_20k.txt -type gpt_125m_ori -dataset HackerNews --index-xsuffix hackernews_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_ori/Github_20k.txt -type gpt_125m_ori -dataset Github --index-xsuffix github_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_ori/Emails_20k.txt -type gpt_125m_ori -dataset Emails --index-xsuffix emails_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_ori/ArXiv_20k.txt -type gpt_125m_ori -dataset ArXiv --index-xsuffix arxiv_20k_suffix


# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_imdb/FreeLaw_20k.txt -type gpt_125m_imdb -dataset FreeLaw --index-xsuffix freelaw_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_imdb/Central_20k.txt -type gpt_125m_imdb -dataset Central --index-xsuffix central_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_imdb/Pile-CC_20k.txt -type gpt_125m_imdb -dataset Pile-CC --index-xsuffix pilecc_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_imdb/StackExchange_20k.txt -type gpt_125m_imdb -dataset StackExchange --index-xsuffix stackexchange_20k_suffix
# # python PAN2015_plagiarism_detection2.py -filedir ../generation_output/ExPorter_10k.txt -type gpt_125m_imdb -dataset ExPorter --index-xsuffix exporter_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_imdb/Mathematics_20k.txt -type gpt_125m_imdb -dataset Mathematics --index-xsuffix mathmatics_20k_suffix
# # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_imdb/HackerNews_20k.txt -type gpt_125m_imdb -dataset HackerNews --index-xsuffix hackernews_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_imdb/Github_20k.txt -type gpt_125m_imdb -dataset Github --index-xsuffix github_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_imdb/Emails_20k.txt -type gpt_125m_imdb -dataset Emails --index-xsuffix emails_20k_suffix
# # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_ori/Abstracts_20k.txt -type gpt_125m_imdb -dataset Abstract_1 --index-xsuffix abstracts_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_imdb/ArXiv_20k.txt -type gpt_125m_imdb -dataset ArXiv --index-xsuffix arxiv_20k_suffix

# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_summarization/ArXiv_20k.txt -type gpt_125m_multi_news -dataset ArXiv --index-xsuffix arxiv_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_summarization/FreeLaw_20k.txt -type gpt_125m_multi_news -dataset FreeLaw --index-xsuffix freelaw_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_summarization/Central_20k.txt -type gpt_125m_multi_news -dataset Central --index-xsuffix central_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_summarization/Pile-CC_20k.txt -type gpt_125m_multi_news -dataset Pile-CC --index-xsuffix pilecc_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_summarization/StackExchange_20k.txt -type gpt_125m_multi_news -dataset StackExchange --index-xsuffix stackexchange_20k_suffix
# # python PAN2015_plagiarism_detection2.py -filedir ../generation_output/ExPorter_10k.txt -type gpt_125m_multi_new -dataset ExPorter --index-xsuffix exporter_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_summarization/Mathematics_20k.txt -type gpt_125m_multi_news -dataset Mathematics --index-xsuffix mathmatics_20k_suffix
# # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_summarization/HackerNews_20k.txt -type gpt_125m_multi_news -dataset HackerNews --index-xsuffix hackernews_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_summarization/Github_20k.txt -type gpt_125m_multi_news -dataset Github --index-xsuffix github_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_summarization/Emails_20k.txt -type gpt_125m_multi_news -dataset Emails --index-xsuffix emails_20k_suffix
# # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_summarization/Abstracts_20k.txt -type gpt_125m_multi_news -dataset Abstract_1 --index-xsuffix abstracts_20k_suffix

# python Load_to_Elastic.py -dir ./pile_subset2_t5_small_processed/ -fn Emails_20k_prefix.json --index-xsuffix emails_20k_suffix_t5_small
# python Load_to_Elastic.py -dir ./pile_subset2_t5_small_processed/ -fn FreeLaw_20k_prefix.json --index-xsuffix freelaw_20k_suffix_t5_small
# python Load_to_Elastic.py -dir ./pile_subset2_t5_small_processed/ -fn HackerNews_20k_prefix.json --index-xsuffix hackernews_20k_suffix_t5_small
# python Load_to_Elastic.py -dir ./pile_subset2_t5_small_processed/ -fn StackExchange_20k_prefix.json --index-xsuffix stackexchange_20k_suffix_t5_small
# python Load_to_Elastic.py -dir ./pile_subset2_t5_small_processed/ -fn Mathematics_20k_prefix.json --index-xsuffix mathematics_20k_suffix_t5_small
# python Load_to_Elastic.py -dir ./pile_subset2_t5_small_processed/ -fn Github_20k_prefix.json --index-xsuffix github_20k_suffix_t5_small
# python Load_to_Elastic.py -dir ./pile_subset2_t5_small_processed/ -fn Pile-CC_20k_prefix.json --index-xsuffix pillcc_20k_suffix_t5_small
# python Load_to_Elastic.py -dir ./pile_subset2_t5_small_processed/ -fn ExPorter_20k_prefix.json --index-xsuffix exporter_20k_suffix_t5_small
# python Load_to_Elastic.py -dir ./pile_subset2_t5_small_processed/ -fn ArXiv_20k_prefix.json --index-xsuffix arxiv_20k_suffix_t5_small
# python Load_to_Elastic.py -dir ./pile_subset2_t5_small_processed/ -fn Central_20k_prefix.json --index-xsuffix central_20k_suffix_t5_small

# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_t5_small_imdb/FreeLaw_20k.txt -type gpt_125m_imdb -dataset FreeLaw --index-xsuffix freelaw_20k_suffix_t5_small
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_t5_small_imdb/Central_20k.txt -type gpt_125m_imdb -dataset Central --index-xsuffix central_20k_suffix_t5_small
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_t5_small_imdb/Pile-CC_20k.txt -type gpt_125m_imdb -dataset Pile-CC --index-xsuffix pilecc_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_t5_small_imdb/StackExchange_20k.txt -type gpt_125m_imdb -dataset StackExchange --index-xsuffix stackexchange_20k_suffix
# # python PAN2015_plagiarism_detection2.py -filedir ../generation_output/ExPorter_10k.txt -type gpt_125m_imdb -dataset ExPorter --index-xsuffix exporter_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_t5_small_imdb/Mathematics_20k.txt -type gpt_125m_imdb -dataset Mathematics --index-xsuffix mathmatics_20k_suffix_t5_small
# # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_imdb/HackerNews_20k.txt -type gpt_125m_imdb -dataset HackerNews --index-xsuffix hackernews_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_t5_small_imdb/Github_20k.txt -type gpt_125m_imdb -dataset Github --index-xsuffix github_20k_suffix_t5_small
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_t5_small_imdb/Emails_20k.txt -type gpt_125m_imdb -dataset Emails --index-xsuffix emails_20k_suffix
# # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_ori/Abstracts_20k.txt -type gpt_125m_imdb -dataset Abstract_1 --index-xsuffix abstracts_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_t5_small_imdb/ArXiv_20k.txt -type gpt_125m_imdb -dataset ArXiv --index-xsuffix arxiv_20k_suffix


# # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_pretrained_t5_small/FreeLaw_20k.txt -type pretrained_t5_small -dataset FreeLaw --index-xsuffix freelaw_20k_suffix_t5_small
# # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_pretrained_t5_small/Central_20k.txt -type pretrained_t5_small -dataset Central --index-xsuffix central_20k_suffix_t5_small
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_pretrained_t5_small/Pile-CC_20k.txt -type pretrained_t5_small -dataset Pile-CC --index-xsuffix pilecc_20k_suffix_t5_small
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_pretrained_t5_small/StackExchange_20k.txt -type pretrained_t5_small -dataset StackExchange --index-xsuffix stackexchange_20k_suffix_t5_small
# # python PAN2015_plagiarism_detection2.py -filedir ../generation_output/ExPorter_10k.txt -type gpt_125m_imdb -dataset ExPorter --index-xsuffix exporter_suffix
# # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_pretrained_t5_small/Mathematics_20k.txt -type pretrained_t5_small -dataset Mathematics --index-xsuffix mathmatics_20k_suffix_t5_small
# # # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_imdb/HackerNews_20k.txt -type gpt_125m_imdb -dataset HackerNews --index-xsuffix hackernews_20k_suffix
# # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_pretrained_t5_small/Github_20k.txt -type pretrained_t5_small -dataset Github --index-xsuffix github_20k_suffix_t5_small
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_pretrained_t5_small/Emails_20k.txt -type pretrained_t5_small -dataset Emails --index-xsuffix emails_20k_suffix_t5_small
# # # python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_ori/Abstracts_20k.txt -type gpt_125m_imdb -dataset Abstract_1 --index-xsuffix abstracts_20k_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./pile_subset_output_pretrained_t5_small/ArXiv_20k.txt -type pretrained_t5_small -dataset ArXiv --index-xsuffix arxiv_20k_suffix_t5_small


# Remove redundent in subset

# python Load_to_Elastic.py -dir ./gpt-neo-125m/ -fn ArXiv_prefix.json --index-xsuffix arxiv_nr_suffix
# python Load_to_Elastic.py -dir ./gpt-neo-125m/ -fn Central_prefix.json --index-xsuffix central_nr_suffix
# python Load_to_Elastic.py -dir ./gpt-neo-125m/ -fn Emails_prefix.json --index-xsuffix emails_nr_suffix
# python Load_to_Elastic.py -dir ./gpt-neo-125m/ -fn FreeLaw_prefix.json --index-xsuffix freelaw_nr_suffix
# python Load_to_Elastic.py -dir ./gpt-neo-125m/ -fn Github_prefix.json --index-xsuffix github_nr_suffix
# python Load_to_Elastic.py -dir ./gpt-neo-125m/ -fn StackExchange_prefix.json --index-xsuffix stackexchange_nr_suffix


# python PAN2015_plagiarism_detection2.py -filedir ./memorization_gpt-neo-125m/ArXiv/ArXiv_norepeat.txt -type gpt-neo-125m_detection -dataset ArXiv --index-xsuffix arxiv_nr_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_summarization_gpt-neo-125m/ArXiv/ArXiv_norepeat_multi_news.txt -type summarization_gpt-neo-125m_detection -dataset ArXiv --index-xsuffix arxiv_nr_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_classification_gpt-neo-125m/ArXiv/ArXiv_norepeat_imdb.txt -type classification_gpt-neo-125m_detection -dataset ArXiv --index-xsuffix arxiv_nr_suffix

# python PAN2015_plagiarism_detection2.py -filedir ./memorization_gpt-neo-125m/Central/Central_norepeat.txt -type gpt-neo-125m_detection -dataset Central --index-xsuffix central_nr_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_summarization_gpt-neo-125m/Central/Central_norepeat_multi_news.txt -type summarization_gpt-neo-125m_detection -dataset Central --index-xsuffix central_nr_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_classification_gpt-neo-125m/Central/Central_norepeat_imdb.txt -type classification_gpt-neo-125m_detection -dataset Central --index-xsuffix central_nr_suffix

# python PAN2015_plagiarism_detection2.py -filedir ./memorization_gpt-neo-125m/Emails/Emails_norepeat.txt -type gpt-neo-125m_detection -dataset Emails --index-xsuffix emails_nr_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_summarization_gpt-neo-125m/Emails/Emails_norepeat_multi_news.txt -type summarization_gpt-neo-125m_detection -dataset Emails --index-xsuffix emails_nr_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_classification_gpt-neo-125m/Emails/Emails_norepeat_imdb.txt -type classification_gpt-neo-125m_detection -dataset Emails --index-xsuffix emails_nr_suffix

# python PAN2015_plagiarism_detection2.py -filedir ./memorization_gpt-neo-125m/FreeLaw/FreeLaw_norepeat.txt -type gpt-neo-125m_detection -dataset FreeLaw --index-xsuffix freelaw_nr_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_summarization_gpt-neo-125m/FreeLaw/FreeLaw_norepeat_multi_news.txt -type summarization_gpt-neo-125m_detection -dataset FreeLaw --index-xsuffix freelaw_nr_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_classification_gpt-neo-125m/FreeLaw/FreeLaw_norepeat_imdb.txt -type classification_gpt-neo-125m_detection -dataset FreeLaw --index-xsuffix freelaw_nr_suffix

# python PAN2015_plagiarism_detection2.py -filedir ./memorization_gpt-neo-125m/Github/Github_norepeat.txt -type gpt-neo-125m_detection -dataset Github --index-xsuffix github_nr_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_summarization_gpt-neo-125m/Github/Github_norepeat_multi_news.txt -type summarization_gpt-neo-125m_detection -dataset Github --index-xsuffix github_nr_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_classification_gpt-neo-125m/Github/Github_norepeat_imdb.txt -type classification_gpt-neo-125m_detection -dataset Github --index-xsuffix github_nr_suffix

# python PAN2015_plagiarism_detection2.py -filedir ./memorization_gpt-neo-125m/StackExchange/StackExchange_norepeat.txt -type gpt-neo-125m_detection -dataset StackExchange --index-xsuffix stackexchange_nr_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_summarization_gpt-neo-125m/StackExchange/StackExchange_norepeat_multi_news.txt -type summarization_gpt-neo-125m_detection -dataset StackExchange --index-xsuffix stackexchange_nr_suffix
# python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_classification_gpt-neo-125m/StackExchange/StackExchange_norepeat_imdbs.txt -type classification_gpt-neo-125m_detection -dataset StackExchange --index-xsuffix stackexchange_nr_suffix


#########
# python Load_to_Elastic.py -dir ./pretrained_gpt-neo-125m/ -fn ArXiv_norepeat_2_prefix.json --index-xsuffix arxiv_nr_2_suffix
# python Load_to_Elastic.py -dir ./pretrained_gpt-neo-125m/ -fn Abstracts_norepeat_2_prefix.json --index-xsuffix abstracts_nr_2_suffix
# python Load_to_Elastic.py -dir ./pretrained_gpt-neo-125m/ -fn Github_norepeat_2_prefix.json --index-xsuffix github_nr_2_suffix
# python Load_to_Elastic.py -dir ./pretrained_gpt-neo-125m/ -fn FreeLaw_norepeat_2_prefix.json --index-xsuffix freelaw_nr_2_suffix



python PAN2015_plagiarism_detection2.py -filedir ./memorization_gpt-neo-125m/ArXiv_norepeat_2/ArXiv_norepeat.txt -type gpt-neo-125m_detection_subset2 -dataset ArXiv --index-xsuffix arxiv_nr_2_suffix
python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_summarization_gpt-neo-125m/ArXiv_norepeat_2/ArXiv_norepeat_multi_news.txt -type summarization_gpt-neo-125m_detection_subset2 -dataset ArXiv --index-xsuffix arxiv_nr_2_suffix
python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_classification_gpt-neo-125m/ArXiv_norepeat_2/ArXiv_norepeat_imdb.txt -type classification_gpt-neo-125m_detection_subset2 -dataset ArXiv --index-xsuffix arxiv_nr_2_suffix

python PAN2015_plagiarism_detection2.py -filedir ./memorization_gpt-neo-125m/FreeLaw_norepeat_2/FreeLaw_norepeat.txt -type gpt-neo-125m_detection_subset2 -dataset FreeLaw --index-xsuffix freelaw_nr_2_suffix
python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_summarization_gpt-neo-125m/FreeLaw_norepeat_2/FreeLaw_norepeat_multi_news.txt -type summarization_gpt-neo-125m_detection_subset2 -dataset FreeLaw --index-xsuffix freelaw_nr_2_suffix
python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_classification_gpt-neo-125m/FreeLaw_norepeat_2/FreeLaw_norepeat_imdb.txt -type classification_gpt-neo-125m_detection_subset2 -dataset FreeLaw --index-xsuffix freelaw_nr_2_suffix

python PAN2015_plagiarism_detection2.py -filedir ./memorization_gpt-neo-125m/Abstracts_norepeat_2/Abstracts_norepeat_2.txt -type gpt-neo-125m_detection_subset2 -dataset Abstracts --index-xsuffix abstracts_nr_2_suffix
python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_summarization_gpt-neo-125m/Abstracts_norepeat_2/FreeLaw_norepeat_multi_news.txt -type summarization_gpt-neo-125m_detection_subset2 -dataset Abstracts --index-xsuffix abstracts_nr_2_suffix
python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_classification_gpt-neo-125m/Abstracts_norepeat_2/FreeLaw_norepeat_imdb.txt -type classification_gpt-neo-125m_detection_subset2 -dataset Abstracts --index-xsuffix abstracts_nr_2_suffix

python PAN2015_plagiarism_detection2.py -filedir ./memorization_gpt-neo-125m/Github_norepeat_2/Github_norepeat.txt -type gpt-neo-125m_detection_subset2 -dataset Github --index-xsuffix github_nr_2_suffix
python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_summarization_gpt-neo-125m/Github_norepeat_2/Github_norepeat_multi_news.txt -type summarization_gpt-neo-125m_detection_subset2 -dataset Github --index-xsuffix github_nr_2_suffix
python PAN2015_plagiarism_detection2.py -filedir ./memorization_finetuned_classification_gpt-neo-125m/Github_norepeat_2/Github_norepeat_imdb.txt -type classification_gpt-neo-125m_detection_subset2 -dataset Github --index-xsuffix github_nr_2_suffix