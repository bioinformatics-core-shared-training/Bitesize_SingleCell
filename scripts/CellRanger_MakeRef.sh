#!/bin/bash
#SBATCH --cpus-per-task=8
#SBATCH --mem=32G
#SBATCH --time=2:00:00
#SBATCH -o CR_mkref.%j.out
#SBATCH -e CR_mkref.%j.err
#SBATCH -J CR_mkref

export PATH=/home/bioinformatics/software/10x/cellranger-6.1.2/bin:${PATH}

cellranger mkref --genome=GRCh38_custom_10X \
                 --fasta=references/combined.fa \
                 --genes=references/combined.gtf \
                 --memgb=32 \
                 --nthreads=8