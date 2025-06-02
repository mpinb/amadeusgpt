#!/bin/bash
source ~/anaconda3/bin/activate
conda env create -f amadeusGPT.yml
conda activate amadeusgpt
# adjust this line according to your cuda version
conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia
# Install the latest version of DeepLabCut with PyTorch support
python -m pip install --pre deeplabcut
python -m pip install pycocotools
python -m pip install -e .[streamlit]
# install the python kernel
python -m ipykernel install --user --name amadeusgpt --display-name "amadeusgpt"
