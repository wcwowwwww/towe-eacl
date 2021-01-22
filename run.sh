export PYTHONPATH=./
export model=w2v_gnn_lstm
export dataset=16res

CUDA_VISIBLE_DEVICES=0 python src/main.py \
--config_path ./src/model/config/conf_$model.ini \
--data_path ./data/$dataset \
--epoch 50 --train_batch_size 16 \
--num_mid_layers 4 \
--eval_frequency 2 \
--save_model_name models/Model_ExtractionNet_$model_$dataset.ckpt