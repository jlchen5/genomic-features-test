![image](https://github.com/jlchen5/genomic-features-test/assets/61578993/10236736-e48b-497b-a139-532673ac0712)# genomic-features-test
This code is to statistically test whether two genomic features are related.

The R-package [regioneR v1.8](https://bioconductor.org/packages/release/bioc/vignettes/regioneR/inst/doc/regioneR.html) (Gel et al., 2016; R Core Team, 2016) was used to test resistance genes and genes exhibiting PAV and transposable elements for association using 500 permutations. 

- For PAV association, the evaluation function numOverlaps was used to check whether the number of gene overlaps is higher than expected. 

- For TE association, the evaluation function meanDistance was used since we do not expect TEs to overlap with RGA candidates due to repeats having been masked during the annotation process

## input data
the `bed` format of promoter and chromosome length

~~~

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


~~~

and u will got the p value!


