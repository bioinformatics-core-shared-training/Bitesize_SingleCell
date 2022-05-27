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

# set the working directory to the Robjects directory
projDir <- "/mnt/scratcha/bioinformatics/sawle01/Bitesize_SingleCell_Course_Materials/Robjects"
setwd(projDir)

# load the data
sce <- readRDS("DataIntegration_mnn.out.AllCells.Rds")

# run cluster sweep
out <- clusterSweep(reducedDim(sce, "corrected"), 
    NNGraphParam(), 
    k=as.integer(c(5, 10, 15, 20, 25, 30, 40, 50, 60)),
    cluster.fun=c("louvain", "walktrap", "infomap"),
    BPPARAM=bpp)

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
all.wcss <- lapply(as.list(out$clusters), function(cluster) {
    sum(clusterRMSD(reducedDim(sce, "corrected"), cluster, sum=TRUE), na.rm=TRUE)
})
df$wcss <- unlist(all.wcss)

# save the dataframe
write_tsv(df, "clusterSweep.metrics_df.tsv")
