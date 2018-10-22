for ((i=1; i<=10; i++))
do
    echo ${i}
    python -u joint_sda.py --hsi "../data 1/Salinas/Salinas_corrected.mat" \
    --gt "../data 1/Salinas/Salinas_gt.mat" --key_hsi salinas_corrected --key_gt salinas_gt \
    --layers 280 100 100 100 --pretraining_epochs 500 --training_epochs 80000 > salinas_log${i}
done