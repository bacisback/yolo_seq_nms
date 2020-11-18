#!/bin/bash
conda create --name yolo_seqnms_Lab2 python=3.7
conda activate yolo_seqnms_Lab2

conda install -y -c conda-forge opencv
conda install cudatoolkit=10.1
conda install -y -c anaconda scipy

pip install matplotlib
pip install tensorflow
pip install imageio
pip install numpy

export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-10.1/lib64
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/cuda-10.1/lib64

make
