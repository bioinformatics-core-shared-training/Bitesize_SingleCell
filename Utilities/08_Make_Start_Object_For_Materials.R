library(scater)
library(scran)
library(batchelor)
library(bluster)
library(tidyverse)
library(BiocSingular)

sce <- readRDS("../Robjects/DataIntegration_all_sce_dimred.Rds")
sce

quick.corrected <- quickCorrect(sce, batch = sce$SampleName)

mnn.out <- quick.corrected$corrected

#mnn.out

set.seed(10101010)
mnn.out <- runTSNE(mnn.out, dimred="corrected")
mnn.out <- runUMAP(mnn.out, dimred="corrected")

colData(mnn.out) <- colData(sce)[,1:5]
rowData(mnn.out) <- rowData(sce)[,1:4]
#plotTSNE(mnn.out, colour_by="batch")

saveRDS(mnn.out, "../Robjects/DataIntegration_mnn.out.Rds")
