#!/bin/bash
#SBATCH --job-name abnormal-test
#SBATCH --output %x-%j.log
#SBATCH --error %x-%j.err
#SBATCH --nodes 1
#SBATCH --gpus tesla:1

date
singularity exec --nv ~/abnormal/template/abnormal_detection/anaconda3_latest.sif python main.py
date
