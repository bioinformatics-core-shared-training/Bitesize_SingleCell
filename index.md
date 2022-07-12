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
may be some necessity to make adjustments to the course as we go but we will try our best to keep to time.

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
  
## How will it work?

Each week there will be a taught Tuesday session (11.30am-1pm) and a Friday clinic (2-3pm). Calendar invites for these meetings (on teams) should have been sent to your CRUK email address. Each session will be recorded and you will be able to access it at anytime.

It is assumed you will try the exercises between the two sessions. At the clinic the speaker will go through the exercises and answer any questions. During the week you can also ask questions at anytime to your designated member of the bioinformatics core. You should have had an email identifying who this but if you are unsure please contact `analysisteam-bioinformatics@cruk.cam.ac.uk`.
  
## Course etiquette

As this course will be taught over teams we thought it would be a good idea to have a few simple rules.

Tuesday Session

1. Please mute your microphone, you do not need your camera on but it is your choice.

2. If you have questions you can put them in the chat but in the interests of time and covering the material the speaker may choose to answer them at the end. You can also direct them to your designated member of the bioinformatics core. 

3. The session will be recorded for you so there is no need to try to do this yourself.

## Schedule

### Week 1

* Introduction to Single Cell Methods - Katarzyna Kania
  + [Slides](Slides/01_Introduction.pdf)
  
* Alignment and cell counting with Cellranger - Ashley Sawle
  + [Slides](Slides/03_CellRangerSlides.html) \([pdf](Slides/03_CellRangerSlides.pdf)\)
  + [Practical](Markdowns/03_CellRanger.html)
  + [Recording](https://crukci-my.sharepoint.com/:v:/g/personal/ashley_sawle_cruk_cam_ac_uk/EeLnF5YIBbBMkOR4zvjGJ7oBmoFt5X-R7FcXrHtqwzIviQ?e=ur8IxS)


### Week 2 

* Quality Control and Filtering - Chandra Chilamakuri 

  + [Practical](Markdowns/04_Preprocessing_And_QC.html)
  + [Practical Recording](https://crukci-my.sharepoint.com/:v:/g/personal/ashley_sawle_cruk_cam_ac_uk/EVxnj7mEuWdInh-lb874kIIBPEklxCFzy2EYbj85T80vOQ?e=cX19e1)
  + [Exercise](Markdowns/04_Preprocessing_And_QC.Exercise.html) 
  + [Exercise Recording](https://crukci-my.sharepoint.com/:v:/g/personal/ashley_sawle_cruk_cam_ac_uk/EZ40xT4OQ6VIiAiGv9DVyPcBnOFdMLyAyLFQxcoStvzHCg?e=FSZmSg)

### Week 3 

* Normalisation - Kamal Kishore

  + [Slides](Slides/Normalization.pdf)
  + [Practical](Markdowns/05_Normalisation.html)
  + [Practical Recording](https://crukci-my.sharepoint.com/:v:/g/personal/ashley_sawle_cruk_cam_ac_uk/ERz62g1cBdFCkXf_y9YufzEBH6zN-j3QkTrjsV8UFf4WSw?e=zPSnlq)
  + [Exercises](Markdowns/05_Normalisation_exercises.html)


### Week 4

* Feature selection and Dimensionality Reduction - Chandra Chilamakuri
  + [Slides](Slides/06_FeatureSelectionAndDimensionalityReduction_slides.html)
  + [Practical/Exercises](Markdowns/06_FeatureSelectionAndDimensionalityReduction.html)
  + [Recording](https://crukci-my.sharepoint.com/:v:/g/personal/ashley_sawle_cruk_cam_ac_uk/ERRZyduqdKhFj3IERlyxdUsBB8luGfe6KYk7cnTG0LP0mw?e=N09oEN)



### Week 5

* Batch Correction and Data Set Integration - Abbi Edwards
  + [Slides](Slides/07_DataIntegrationAndBatchCorrectionSlides.html)
  + [Demo/Exercise](Markdowns/07_DatasetIntegration.html)
  + [Recording of taught session](https://crukci-my.sharepoint.com/:v:/g/personal/ashley_sawle_cruk_cam_ac_uk/Eb_qESD1qsBBlWkppbiMkvoB5LriLWM5Sf1cfCjPr_amuQ?e=PNCiis) 
  + [Recording of Clinic](https://crukci-my.sharepoint.com/:v:/g/personal/ashley_sawle_cruk_cam_ac_uk/Ed4aZNTOUolElV5ZVWYLNdgBGeO-lhnttX7zl3DZdyglIw?e=nehZkw)
  + [Suggested Solution](Markdowns/07_DatasetIntegration_clinic.html)

### Week 6

* Clustering and Cluster Marker genes - Ashley Sawle  
  + [Slides](Slides/08_09_Clustering_and_Marker_Genes.html)  
  + [Clustering Materials](Markdowns/08_Clustering_Materials.nb.html)  
  + [Cluster Marker Gene Selection Materials](Markdowns/09_ClusterMarkerGenes.nb.html)  
  + [Recording](https://crukci-my.sharepoint.com/:v:/g/personal/ashley_sawle_cruk_cam_ac_uk/EbOuS-MxoEFHp7-0bZoulgEBfsFT9kJDzVKx4Etnotrwxw?e=MnvBp9)

  + [Clustering and Marker Gene Selection Exercise](Markdowns/08_09_Clustering_and_Marker_Genes_Exercise.html)  
  + [ClusterSweep batch script solution](scripts/ClusterSweep.Solution.R)  
  + [Clustering and Marker Gene Selection possible solution](Markdowns/08_Clustering_Exercise.Solutions.html)  
  + [Recording](https://crukci-my.sharepoint.com/:v:/g/personal/ashley_sawle_cruk_cam_ac_uk/EWqzcQR9fydCtuqOdhrfFjQBiBk6-7Dm5XT6XpNLmFRrPA?e=oUkwca)

### Week 7

* Differential Expression and Abundance - Abbi Edwards
  + [Slides](Slides/10_MultiSplCompSlides.html)
  + [Demo](Markdowns/10_MultiSplComp.html)
  + [Recording](https://crukci-my.sharepoint.com/:v:/g/personal/ashley_sawle_cruk_cam_ac_uk/EZqnSAU9l-pLuJREdqAVGFcBirwfR2rvTcauB4VrbNMpOg?e=dNlOCK)
  + [Bulk RNASeq Analysis Course materials](https://bioinformatics-core-shared-training.github.io/Bulk_RNAseq_Course_Apr22/)
  + [Recording of clinic](https://crukci-my.sharepoint.com/:v:/g/personal/ashley_sawle_cruk_cam_ac_uk/EbQNBtxgUP9AvBAGUC8WSrQBB67vNcuxJtTyAt9sGoPfWA?e=65hLg4)

## Additional Resources

* [Bioconductor for relevant R packages](https://bioconductor.org/)
* [RStudio CheatSheets](https://rstudio.com/resources/cheatsheets/)

## Acknowledgements

This course was initialy based on the [OSCA](https://bioconductor.org/books/release/OSCA/) (Orchestrating Single-Cell Analysis) book with subsequent modifications by

Abigail Edwards

Ashley Sawle

Chandra Chilamakuri

Kamal Kishore

Stephane Ballereau

Hugo Tavares

Katarzyna Kania

  - The original paper is here: https://dx.doi.org/10.1038/s41592-019-0654-x

