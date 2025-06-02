#!/bin/bash
# change this to your own miniconda / miniforge path
source ~/anaconda3/bin/activate
conda env create -f amadeusGPT.yml
conda activate amadeusgpt
pip install pycocotools
pip install -e .[streamlit]
python -m ipykernel install --user --name amadeusgpt --display-name "amadeusgpt"