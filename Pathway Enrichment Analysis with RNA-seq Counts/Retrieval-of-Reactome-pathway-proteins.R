##############################################################
#           retrieval of Reactome pathway proteins           #
##############################################################


library(ReactomeContentService4R)

# pathway1 is "TRAF6 mediated NF-kB activation"
# pathway2 is "RUNX3 regulates BCL2L11 (BIM) transcription"
# pathway3 is "TAK1 activates NFkB by phosphorylation and activation of IKKs complex"


pathway1 <- event2Ids("R-HSA-933542")$geneSymbol
pathway2 <- event2Ids("R-HSA-8952158")$geneSymbol
pathway3 <- event2Ids("R-GGA-434001")$geneSymbol

AD.DEGs <- read.csv("ADDEGslfc0.csv", header = T, row.names = 1)
HD.DEGs <- read.csv("HDDEGslfc0_V2.csv", header = T, row.names = 1)
PD.DEGs <- read.csv("PDDEGslfc0_V2.csv", header = T, row.names = 1)

AD.in.p1 <- intersect(rownames(AD.DEGs), pathway1)
AD.in.p2 <- intersect(rownames(AD.DEGs), pathway2)
AD.in.p3 <- intersect(rownames(AD.DEGs), pathway3)

HD.in.p1 <- intersect(rownames(HD.DEGs), pathway1)
HD.in.p2 <- intersect(rownames(HD.DEGs), pathway2)
HD.in.p3 <- intersect(rownames(HD.DEGs), pathway3)

PD.in.p1 <- intersect(rownames(PD.DEGs), pathway1)
PD.in.p2 <- intersect(rownames(PD.DEGs), pathway2)
PD.in.p3 <- intersect(rownames(PD.DEGs), pathway3)

AD.p1.f <- cbind(AD.in.p1, AD.DEGs[AD.in.p1,])
AD.p2.f <- cbind(AD.in.p2, AD.DEGs[AD.in.p2,])
AD.p3.f <- cbind(AD.in.p3, AD.DEGs[AD.in.p3,])


HD.p1.f <- cbind(HD.in.p1, HD.DEGs[HD.in.p1,])
HD.p2.f <- cbind(HD.in.p2, HD.DEGs[HD.in.p2,])
HD.p3.f <- cbind(HD.in.p3, HD.DEGs[HD.in.p3,])


PD.p1.f <- cbind(PD.in.p1, PD.DEGs[PD.in.p1,])
PD.p2.f <- cbind(PD.in.p2, PD.DEGs[PD.in.p2,])
PD.p3.f <- cbind(PD.in.p3, PD.DEGs[PD.in.p3,])

files <- c("AD.p1.f", "AD.p2.f", "AD.p3.f", 
           "HD.p1.f", "HD.p2.f", "HD.p3.f",
           "PD.p1.f", "PD.p2.f", "PD.p3.f")

for (i in 1:length(files)) {
  write.csv(get(files[i]), file = paste0(files[i], ".csv"))
  
}

