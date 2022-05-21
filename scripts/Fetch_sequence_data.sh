#!/bin/bash
#SBATCH --mem=4G
#SBATCH --time=2:00:00
#SBATCH -o fetch_data.%j.out
#SBATCH -e fetch_data.%j.err
#SBATCH -J fetch_data 

slxid=$1

java -jar software/clarity-tools.jar --library ${slxid}

