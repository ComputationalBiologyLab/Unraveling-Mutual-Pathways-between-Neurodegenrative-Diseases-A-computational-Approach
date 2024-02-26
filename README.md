# Transcriptome-Analysis-for-Three-Neurodegenerative-Diseases-AD-PD-and-HD

This repository is for studying the genetic expression profile of three neurodegenerative diseases: Alzheimer's, Parkinsons's, and Huntington's diseases. The analysis was done for publically available bulk RNA-Seq datasets from GEO data repository. 


# Directories Organization:
1. The differential gene expression analysis for each disease dataset was done separately from other datasets. Each of these is in a separate directory named by the disease abbreviation: AD, PD, and HD. Within each one of these directories, there're 2 main sub-directories: one for the data (raw counts and normalized) and the other one is for the results from the code file (including visualizing plots and all identified Differentially Expressed Genes (DEGs)). The code is written in R, and the RMD file for each dataset is added in its directory. Code instruction and comments have been inside each one. If ther're any comments regarding the code, don't hesitate to contact me!
2. The "Mutual DEGs" directory includes all the analysis done for extracting mutual DEGs between the three diseases. It includes separate csv files for these DEGs raw counts from each disease and the visualizing plots that're added to the manuscript. More information about the different csv files can be found inside the code RMD file. 
3. The "Pathway Enrichment Analysis with RNA-Seq Counts" directory includes results retrieved from Reactome as described in the manuscript.


# Packages installation:
The packages needed for each code RMD files are loaded in first lines. If you don't have any of these packages, you can download them using the command 
```
install.packages("package_name")
```
However, some of these packages could be installed from BiocManager using this command:
```
#make sure to have BiocManager at first. If you already have it, skip the installation line for BiocManager
install.packages("BiocManager") 
BiocManager::install("package_name)
```
