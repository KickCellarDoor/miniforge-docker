#!/bin/bash

wget --no-check-certificate -q https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
bash Miniforge3-Linux-x86_64.sh -b -p /home/dev/miniforge
rm Miniforge-pypy3-Linux-x86_64.sh
eval "$(/home/dev/miniforge/bin/conda shell.bash hook)"
conda init