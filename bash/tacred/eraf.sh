

export PYTHONPATH=`pwd`

CUDA_VISIBLE_DEVICES=$1 python3 main/eraf.py \
  --memory_size 10 \
  --total_round 5 \
  --task_name TACRED \
  --data_file data/data_with_marker_tacred.json \
  --relation_file data/id2rel_tacred.json \
  --num_of_train 420 \
  --num_of_val 140 \
  --num_of_test 140 \
  --batch_size_per_step 32 \
  --exp_name RPCRE \
  --num_of_relation 40  \
  --cache_file data/TACRED_data.pt \
  --rel_per_task 4
