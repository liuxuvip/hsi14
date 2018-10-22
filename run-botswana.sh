for ((i=1; i<=10; i++))
do
    echo ${i}
    python -u joint_sda.py --hsi "../data 1/Botswana/Botswana.mat" \
    --gt "../data 1/Botswana/Botswana_gt.mat" --key_hsi Botswana --key_gt Botswana_gt \
    --layers 280 100 100 100 --pretraining_epochs 500 --training_epochs 80000 > botswana_log${i}
done