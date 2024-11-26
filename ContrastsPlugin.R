###################################################
### code chunk number 1: sva.Rnw:5-6
###################################################
options(width=65)


###################################################
### code chunk number 3: input
###################################################
library(sva)
library(bladderbatch)
#data(bladderdata)
library(pamr)
library(limma)



input <- function(inputfile) {
   fit <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {

###################################################
### code chunk number 13: input
###################################################
contrast.matrix <- cbind("C1"=c(-1,1,0,rep(0,2)),"C2"=c(0,-1,1,rep(0,2)),"C3"=c(-1,0,1,rep(0,2)))
fitContrasts = contrasts.fit(fit,contrast.matrix)
saveRDS(fitContrasts, outputfile)

}
