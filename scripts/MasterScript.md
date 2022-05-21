This document is in "markdown" format. The sections between backticks are code to run.
Don't type the backticks.

# 1. Make a custom reference

We have already downloaded the human chromosome 14 fasta file and gtf, and created
a fasta file and gtf for the custom genes. These are in the **references**
directory.

## a) Combine the custom gene references with the human references

```
cd references
cat Homo_sapiens.GRCh38.105.chr14.gtf customgenes.gtf > combined.gtf
cat Homo_sapiens.GRCh38.dna.chromosome.14.fa customgenes.fa > combined.fa
cd ..
```

## b) Run `mkref` on the combined reference

```
sbatch scripts/CellRanger_MakeRef.sh
```

# 1. Downloading the data

## a) Download clarity tools

```
mkdir software
wget -P software http://internal-bioinformatics.cruk.cam.ac.uk/software/clarity-tools.jar 
```

## b) Download data

```
sbatch scripts/Fetch_sequence_data.sh SLX-21334
```

## c) Rename the fastq to the correct format for CellRanger

```
./scripts/SoftlinkFastq.sh SLX-21334
```

# 2. Analyse with CellRanger

## a) Copy the reference from the bioinformatics reference directory

```
cp -r /mnt/scratchb/bioinformatics/reference_data/10x/refdata-gex-GRCh38-2020-A \
  references/.
```
  
## b) Run `cellranger count`
  
```
referenceDir=references/refdata-gex-GRCh38-2020-A
for barcode in `ls fastq/ | cut -f 1 -d '_' | uniq`; do
  sbatch scripts/CellRanger_Count.sh ${barcode} ${refDir}
done
```

```
mkdir logs/cellranger_count
mv cellranger_count.1* logs/cellranger_count/.
```

