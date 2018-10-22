for ((i=1; i<=10; i++))
do
    echo ${i}
    python -u joint_sda.py --hsi "../data 1/PaviaU/PaviaU.mat" \
    --gt "../data 1/PaviaU/PaviaU_gt.mat" --key_hsi paviaU --key_gt paviaU_gt \
    --layers 280 100 100 100 --pretraining_epochs 500 --training_epochs 80000 > paviau_log${i}
done