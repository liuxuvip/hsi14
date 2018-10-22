for ((i=1; i<=10; i++))
do
    echo ${i}
    python -u joint_sda.py --hsi "../data 1/KSC/KSC.mat" \
    --gt "../data 1/KSC/KSC_gt.mat" --key_hsi KSC --key_gt KSC_gt \
    --layers 280 100 100 100 --pretraining_epochs 500 --training_epochs 100000 > ksc_log${i}
done