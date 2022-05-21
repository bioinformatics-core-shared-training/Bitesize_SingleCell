#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=32G
#SBATCH --time=2880
#SBATCH -o CR_count.%j.out
#SBATCH -e CR_count.%j.err
#SBATCH -J CR_count 

id=$1 # Sample Barcode ID
refData=$2 # CellRanger reference directory
expCells=$3 # Number of expected cells
if [[ !${expCells} ]]; then
	expCells=3000
fi

fastq_dir=fastq

export PATH=/home/bioinformatics/software/10x/cellranger-6.1.2/bin:${PATH}

cellranger count \
	--id=${id} \
	--fastqs=${fastq_dir} \
	--sample=${id} \
	--transcriptome=${refData} \
	--expect-cells ${expCells} \
	--localcores=16 \
	--localmem=32
