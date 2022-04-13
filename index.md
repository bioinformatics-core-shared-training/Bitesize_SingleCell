# Introduction to single-cell RNA-seq data analysis - Bitesize
### 7 week course
#### Bioinformatics Core Facility, Cancer Research UK Cambridge Institute

![](Images/CRUK_Cambridge_Institute.png)

## Instructors

* Abbi Edwards - Bioinformatics Core, Cancer Research UK Cambridge Institute
* Ashley Sawle - Bioinformatics Core, Cancer Research UK Cambridge Institute
* Chandra Chilamakuri - Bioinformatics Core, Cancer Research UK Cambridge Institute
* Kamal Kishore - Bioinformatics Core, Cancer Research UK Cambridge Institute
* Katarzyna Kania - Genomics Core, Cancer Research UK Cambridge Institute
* Matthew Eldridge - Bioinformatics Core, Cancer Research UK Cambridge Institute


## Outline

This workshop is aimed at biologists interested in learning how to perform
basic single-cell RNA-seq analyses. 

This will focus on the droplet-based assay by 10X genomics and include running
the accompanying `cellranger` pipeline to align reads to a genome reference and
count the number of read per gene, reading the count data into R, quality control,
normalisation, data set integration, clustering and identification of cluster
marker genes, as well as differential expression and abundance analyses.
You will also learn how to generate common plots for analysis and visualisation
of gene expression data, such as TSNE, UMAP and violin plots.

This is the first time we are running this course in the bitesize format.
Please bear with us if there are any technical hitches; there 
may be some necessity to make adjustments to the course as we go.

(Materials linked to below will be updated closer to the time of delivery)

> ## Prerequisites
>
> __**Some basic experience of using a UNIX/LINUX command line is assumed**__
> 
> __**Some R knowledge is assumed and essential. Without it, you
> will struggle on this course.**__ 
> If you are not familiar with the R statistical programming language we
> strongly encourage you to work through an introductory R course before
> attempting these materials.
> We recommend our [Introduction to R course](https://bioinformatics-core-shared-training.github.io/r-intro/)
> You will also need a CI cluster account and be familiar with its use.

## Data sets

Two data sets:

* '[CaronBourque2020](https://www.nature.com/articles/s41598-020-64929-x)': pediatric leukemia, with four sample types, including:
  * pediatric Bone Marrow Mononuclear Cells (PBMMCs)
  * three tumour types: ETV6-RUNX1, HHD, PRE-T  
* ['HCA': adult BMMCs](https://data.humancellatlas.org/explore/projects/cc95ff89-2e68-4a08-a234-480eca21ce79) (ABMMCs) obtained from the Human Cell Atlas (HCA)
  * (here downsampled from 25000 to 5000 cells per sample)
  
## Course etiquette

As this course will be taught over teams we thought it would be a good idea to have a few simple rules.

Tuesday Session

1. Please mute your microphone

2. If you have questions you can put them in the chat but in the interests of time and covering the material the speaker may answer them at the end. You can also direct them to your designated member of the bioinformatics core. You should have had an email identifying who this but if you are unsure please contact `chandra.chilamakuri@cruk.cam.ac.uk`.

## Schedule

Each week there will be a taught Tuesday session and a Friday clinic. Calendar invites for these meetings (on teams) should have been sent to your CRUK email address. Each session will be recorded and you will be able to access it at anytime.

It is assumed you will try the exercises between the two sessions. At the clinic the speaker will go through the exercises and answer any questions. During the week you can also ask questions at anytime to your designated member of the bioinformatics core. You should have had an email identifying who this but if you are unsure please contact `chandra.chilamakuri@cruk.cam.ac.uk`.

### Week 1

* Introduction to Single Cell Methods - Katarzyna Kania
* Alignment and cell counting with Cellranger - Ashley Sawle

### Week 2

* Quality Control and Filtering - Chandra Chilamakuri
    
### Week 3

* Normalisation - Kamal Kishore

### Week 4

* Feature selection and Dimensionality Reduction - Chandra Chilamakuri

### Week 5 

* Batch Correction and Data Set Integration - Abbi Edwards

### Week 6

* Clustering and Cluster Marker genes - Ashley Sawle

### Week 7

* Differential Expression and Abundance - Abbi Edwards

## Additional Resources

## Acknowledgements

