library(scater)
library(scran)
library(batchelor)
library(bluster)
library(tidyverse)
library(BiocSingular)

sce <- readRDS("../Robjects/Caron_filtered_genes.rds")
sce

sce2 <- readRDS("../Robjects/DataIntegration_all_sce_dimred.Rds")
sce2

colData(sce) %>%
  as.data.frame() %>% 
  count(Sample)

# get the same 7 samples as in the materials
samples <- colData(sce)$Sample %in% colData(sce2)$SampleName

# get same genes as in the materials
genes <- rownames(sce2)

# subset
sce <- sce[genes, samples]

colData(sce) %>%
  as.data.frame() %>% 
  count(Sample)

colnames(colData(sce))[1] <- "SampleName"

quick.corrected <- quickCorrect(sce, batch = sce$SampleName)

mnn.out <- quick.corrected$corrected

#mnn.out

set.seed(10101010)
mnn.out <- runTSNE(mnn.out, dimred="corrected")
mnn.out <- runUMAP(mnn.out, dimred="corrected")

colData(mnn.out) <- colData(sce)[,1:3]
colData(mnn.out)$SampleGroup <- str_remove(colData(sce)$SampleName, "_.*")
colData(mnn.out)$DatasetName <- "Caron"
rowData(mnn.out) <- rowData(sce)

plotTSNE(mnn.out, colour_by="SampleName")
plotUMAP(mnn.out, colour_by="SampleName")

saveRDS(mnn.out, "../Robjects/DataIntegration_mnn.out.AllCells.Rds")
