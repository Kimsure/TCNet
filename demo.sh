服务器上应该做些什么数据处理:
1.将训练的Vimeo90k数据整理成lmdb格式:
python scripts/data_preparation/create_lmdb.py --dataset ['dataset_name']
2.注意设置训练中的val数据集和测试数据集,是用vimeo90K的测试还是Vid4.如果用vimeo90k,则需要使用meta_info_file,///或许不用,已有meta_info_file文件
python scripts/data_preparation/generate_meta_info.py 来生成 meta_info_file
3.不用考虑Vid4,数据集里已经有LR图

## BasicVSR train test
export CUDA_VISIBLE_DEVICES=1,2
python basicsr/train.py -opt options/train/BasicVSR/train_BasicVSR_Vimeo90K_BIBUICX4.yml
export CUDA_VISIBLE_DEVICES=1,2
python basicsr/test.py -opt options/test/BasicVSR/test_BasicVSR_Vimeo90K_BIx4.yml

#training/testing for attentionbasicVSR
export CUDA_VISIBLE_DEVICES=1,2
python basicsr/train.py -opt options/train/AttentionVSR/train_attentionVSR.yml 
export CUDA_VISIBLE_DEVICES=1,2
python basicsr/test.py -opt options/test/AttentionVSR/test_attentionVSR.yml

#training for attentionedvr/EDVR
export CUDA_VISIBLE_DEVICES=1,2
python basicsr/train.py -opt options/train/EDVR/train_EDVR_L_x4_SR_Vimeo.yml


