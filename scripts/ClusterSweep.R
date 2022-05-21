#!/usr/bin/env Rscript
#SBATCH --nodes=1
#SBATCH --mincpus 16 
#SBATCH --mem=64G
#SBATCH --time=28:00:00
#SBATCH -o clusterSweep.%j.out
#SBATCH -e clusterSweep.%j.err
#SBATCH -J clusterSweep 
#SBATCH --reservation=sawle01_74

library(scater)
library(scran)
library(bluster)
library(BiocParallel)
bpp <- BiocParallel::MulticoreParam(16)

# set the working directory to the Course_Materials directory
workingDir <- "<<YOUR_CODE_HERE>>/Course_Materials"
setwd(workingDir)

# load the data
sce <- readRDS("Robjects/DataIntegration_mnn.out.AllCells.Rds")

# run cluster sweep
out <- <<YOUR_CODEHERE>>

# save the cluster sweep results
saveRDS(out, "Robjects/clusterSweep.out.rds")

# add the clusters to the sce object and save that
colData(sce) <- cbind(colData(sce), DataFrame(out$clusters))
saveRDS(sce, "Robjects/clusterSweep.sce.rds")

# create a data frame with cluster behaviour metrics

df <- as.data.frame(out$parameters)

## add count of clusters
df$num.clusters <- apply(out$clusters, 2, max)

## add mean silhouette width
all.sil <- lapply(as.list(out$clusters), function(cluster) {
    sil <- approxSilhouette(reducedDim(sce, "corrected"), cluster)
    mean(sil$width)
})
df$silhouette <- unlist(all.sil)

## add sum of Within-cluser sum of squares
all.wcss <- <<YOUR_CODEHERE>>
df$wcss <- unlist(all.wcss)

# save the dataframe
write_tsv(df, "Robjects/clusterSweep.metrics_df.tsv")

