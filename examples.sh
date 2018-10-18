#!/bin/bash

echo "Do not run this script directly, copy and paste the following examples into your console or a separate script!"
exit


############ Examples of training:

# Parallel training instance 1:
python3 main.py \
    --output_dir ./data/at/2018-10-17/train/out/sample-norm/ \
    --summary_dir ./data/at/2018-10-17/train/log/sample-norm/ \
    --mode train \
    --is_training True \
    --task SRResnet \
    --batch_size 128 \
    --flip True \
    --random_crop True \
    --crop_size 24 \
    --input_dir_LR ./data/at/2018-10-17/train/tiles-small-norm/ \
    --input_dir_HR ./data/at/2018-10-17/train/tiles-norm/ \
    --num_resblock 16 \
    --name_queue_capacity 4096 \
    --image_queue_capacity 4096 \
    --perceptual_mode MSE \
    --queue_thread 12 \
    --ratio 0.001 \
    --learning_rate 0.0001 \
    --decay_step 500000 \
    --decay_rate 0.1 \
    --stair True \
    --beta 0.9 \
    --max_iter 1000000 \
    --save_freq 20000


# Parallel training instance 2:
python3 main.py \
    --output_dir ./data/at/2018-10-17/train/out/smooth-norm/ \
    --summary_dir ./data/at/2018-10-17/train/log/smooth-norm/ \
    --mode train \
    --is_training True \
    --task SRResnet \
    --batch_size 128 \
    --flip True \
    --random_crop True \
    --crop_size 24 \
    --input_dir_LR ./data/at/2018-10-17/train/tiles-small-smooth/ \
    --input_dir_HR ./data/at/2018-10-17/train/tiles-norm/ \
    --num_resblock 16 \
    --name_queue_capacity 4096 \
    --image_queue_capacity 4096 \
    --perceptual_mode MSE \
    --queue_thread 12 \
    --ratio 0.001 \
    --learning_rate 0.0001 \
    --decay_step 500000 \
    --decay_rate 0.1 \
    --stair True \
    --beta 0.9 \
    --max_iter 1000000 \
    --save_freq 20000



############ Examples of inference:

python3 main.py \
    --output_dir ./data/test/out/ \
    --summary_dir ./data/test/log/ \
    --mode inference \
    --is_training False \
    --task SRGAN \
    --input_dir_LR ./data/test/lowres/ \
    --num_resblock 16 \
    --perceptual_mode VGG54 \
    --pre_trained_model True \
    --checkpoint ./data/at/2018-10-17/train/out/smooth-norm
