export CUDA_VISIBLE_DEVICES=0
for((i=0;i<5;i++));  
do   

python run_bert.py \
--model_type bert \
--model_name_or_path ../../../txt/lm_finetune/pytorchmodeltaskalldata_roerta_1006 \
--do_train \
--do_eval \
--do_test \
--data_dir ./data_final/task1/data_$i \
--output_dir ./Model_file/task1_robert_alldata_1005/model_bert$i \
--max_seq_length 80 \
--split_num 1 \
--lstm_hidden_size 512 \
--lstm_layers 1 \
--lstm_dropout 0.1 \
--eval_steps 300 \
--per_gpu_train_batch_size 12 \
--gradient_accumulation_steps 1 \
--warmup_steps 0 \
--per_gpu_eval_batch_size 32 \
--learning_rate 5e-6 \
--adam_epsilon 1e-6 \
--weight_decay 0 \
--train_steps 6000

done  





