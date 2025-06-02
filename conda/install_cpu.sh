#!/bin/bash
source ~/anaconda3/bin/activate
conda env create -f amadeusGPT.yml
conda activate amadeusgpt
conda install pytorch torchvision cpuonly -c pytorch
# Install the latest version of DeepLabCut with PyTorch support
python -m pip install --pre deeplabcut
python -m pip install pycocotools
python -m pip install -e .[streamlit]
# install the python kernel
python -m ipykernel install --user --name amadeusgpt --display-name "amadeusgpt"
