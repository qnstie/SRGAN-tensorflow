python3 main.py \
    --output_dir ./data/at/2018-10-17/test/out/ \
    --summary_dir ./data/at/2018-10-17/test/log/ \
    --mode inference \
    --is_training False \
    --task SRGAN \
    --input_dir_LR ./data/at/2018-10-17/test/lowres/ \
    --num_resblock 16 \
    --perceptual_mode VGG54 \
    --pre_trained_model True \
    --checkpoint ./data/at/2018-10-17/train/out/sample-norm/model-180000
