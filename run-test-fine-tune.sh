#!/bin/bash

base_dir=../embeddings

#exp_name=pydoc-glove-fine-tuned-vocab-20000-window-5-iter-5000
#exp_name=pydoc-mu-1-glove-fine-tuned-vocab-19000-window-5-iter-2000
exp_name=python-so-glove-fine-tuned-vocab-9736-window-7-iter-5000

python emb_fine_tune/test-fine-tune.py \
    -pt_emb_file ${base_dir}/glove.840B.300d.txt.pickle \
    -vocab_file ${base_dir}/${exp_name}/*.vocab \
    -ft_emb_file ${base_dir}/${exp_name}/*.emb \
    -pt_factor 0.3 \
    -ft_factor 0.7
