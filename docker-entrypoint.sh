#! /bin/bash
cd /home/ubuntu/TecoGAN-master
python runGan.py 1

cp -R /home/ubuntu/TecoGAN-master/LR/final_test /home/ubuntu/dish_data/inputs
cd /home/ubuntu/TecoGAN-master/results/final_test
chmod 666 * && rm *
cd /home/ubuntu/TecoGAN-master/LR/final_test
chmod 666 * && rm *

cd /home/ubuntu/MPRNet-main
python demo.py --input_dir /home/ubuntu/TecoGAN-master/results/final_test/ --results_dir /home/ubuntu/dish_data/outputs/ --task Denoising
# add denoising script entry here as a additoinal stepm
# to compare both outputs.
