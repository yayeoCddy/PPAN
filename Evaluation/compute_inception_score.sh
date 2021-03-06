#!/usr/bin/env bash

# download /inception_finetuned_models in to inception_score/. See Readme

# bird
CUDA_VISIBLE_DEVICES=${device} python inception_score/inception_score.py \
            --checkpoint_dir ./inception_score/inception_finetuned_models/birds_valid299/model.ckpt \
            --image_folder /home/*/PPAN/Results/birds/PPAN_256_birds_testing_num_10 \
            --h5_file 'PPAN_256_birds_G_epoch_595.h5' \
            --batch_size 32

# coco
#CUDA_VISIBLE_DEVICES=${device} python inception_score/inception_score_coco.py \
#            --image_folder ../Results/coco/coco_256_testing_num_1 \
#            --h5_file 'coco_256_G_epoch_200.h5' \
#            --batch_size 32

