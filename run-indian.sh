for ((i=1; i<=10; i++))
do
    echo ${i}
    python -u joint_sda.py --hsi "../data 1/Indian Pines/Indian_pines_corrected.mat" --gt \
    "../data 1/Indian Pines/Indian_pines_gt.mat" --key_hsi indian_pines_corrected --key_gt indian_pines_gt \
    --layers 280 100 100 100 --pretraining_epochs 500 --training_epochs 80000 > indian_log${i}
done