#BiocManager::install("regioneR")
library(regioneR)

cpgHMM <- toGRanges("hg19.cpg01.bed")
cpgHMM
promoters <- toGRanges("hg19_promoters.bed")
promoters
cpgHMM <- filterChromosomes(cpgHMM, organism="hg", chr.type="canonical")
promoters <- filterChromosomes(promoters, organism="hg", chr.type="canonical")

hg19<-toGRanges("hg19.tsv")

cpgHMM_2K <- sample(cpgHMM, 2000)

pt <- overlapPermTest(cpgHMM_2K, promoters, 
                      ntimes=1000, 
                      genome=hg19, 
                      count.once=TRUE)
pt


plot(pt)
