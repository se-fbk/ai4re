#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)
if (length(args)==0) {
  stop("Provide the csv file containing the data to plot", call.=FALSE)
} else if (length(args)==1) {
}

read.csv(args[1],sep=",") -> d
pdf("pareto.pdf")
with(d, {
  plot(c1,c2,cex.main=1,cex.lab=1,cex.axis=1,xlab="C1 (Development Effort)", ylab="C2 (User Impact)", main="Optimal Prioritizations",col="red", pch=3)
})
dev.off()