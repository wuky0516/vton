#!/bin/bash
CUDA_VISIBLE_DEVICES=0 torchrun --standalone --nnodes=1 --nproc_per_node=4 train_PBAFN_viton.py --name=train_viton  \
--resize_or_crop=none --verbose --tf_log --batchSize=32 --num_gpus=1 --gpu_ids=0 --label_nc=13 --dataroot=VITON-HD/
