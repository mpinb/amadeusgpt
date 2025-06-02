#!/bin/bash
source ~/anaconda3/bin/activate
conda env create -f amadeusGPT.yml
conda activate amadeusgpt
# adjust this line according to your cuda version
conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia
pip install "git+https://github.com/DeepLabCut/DeepLabCut.git@pytorch_dlc#egg=deeplabcut"
pip install pycocotools
pip install -e .[streamlit]
# install the python kernel
python -m ipykernel install --user --name amadeusgpt --display-name "amadeusgpt"
