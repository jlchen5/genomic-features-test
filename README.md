# genomic-features-test
This code is to statistically test whether two genomic features are related.

The R-package [regioneR v1.8](https://bioconductor.org/packages/release/bioc/vignettes/regioneR/inst/doc/regioneR.html) (Gel et al., 2016; R Core Team, 2016) was used to test resistance genes and genes exhibiting PAV and transposable elements for association using 500 permutations. 

- For PAV association, the evaluation function numOverlaps was used to check whether the number of gene overlaps is higher than expected. 

- For TE association, the evaluation function meanDistance was used since we do not expect TEs to overlap with RGA candidates due to repeats having been masked during the annotation process

## input data
the `bed` format of promoter

![image](https://github.com/jlchen5/genomic-features-test/assets/61578993/10236736-e48b-497b-a139-532673ac0712)

the `bed` format of chromosome length

![image](https://github.com/jlchen5/genomic-features-test/assets/61578993/b52048ae-7fd5-4a8d-a233-2185e116572f)



## Run code

- run [this code](https://github.com/jlchen5/genomic-features-test/blob/main/r1.R) and u will got the *p* value!


