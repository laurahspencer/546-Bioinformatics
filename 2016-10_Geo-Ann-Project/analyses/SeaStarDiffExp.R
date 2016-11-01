#=== Bioinformatics Quiz===
#=== Using DESeq2 to analyze the differential expression in Pycnopodia helianthoides, sea star with to wasting disease

# downloading & installing DESeq2 package for R
source("https://bioconductor.org/biocLite.R")
biocLite("DESeq2")
library(DESeq2)

# importing sea star transcriptome count data
data <- read.table("Phel_countdata.txt", header=T, sep = "\t") 
rownames(data) <- data$Feature
data <- data[,-1]
head(data)

# building objects 
deseq2.colData <- data.frame(condition=factor(c(rep("Treated", 3), rep("Control", 3))), 
                             type=factor(rep("single-read", 6)))
rownames(deseq2.colData) <- colnames(data)
deseq2.dds <- DESeqDataSetFromMatrix(countData = data,
                                     colData = deseq2.colData, 
                                     design = ~ condition)
# Run Analysis
deseq2.dds <- DESeq(deseq2.dds)
deseq2.res <- results(deseq2.dds)
deseq2.res <- deseq2.res[order(rownames(deseq2.res)), ]

# finding out what happened!
head(deseq2.res)

# Count number of hits with adjusted p-value less then 0.05
dim(deseq2.res[!is.na(deseq2.res$padj) & deseq2.res$padj <= 0.05, ])

tmp <- deseq2.res
# The main plot
plot(tmp$baseMean, tmp$log2FoldChange, pch=20, cex=0.45, ylim=c(-3, 3), log="x", col="lightblue",
     main="DEG Virus Exposure  (pval <= 0.05)",
     xlab="mean of normalized counts",
     ylab="Log2 Fold Change")
# Getting the significant points and plotting them again so they're a different color
tmp.sig <- deseq2.res[!is.na(deseq2.res$padj) & deseq2.res$padj <= 0.05, ]
points(tmp.sig$baseMean, tmp.sig$log2FoldChange, pch=20, cex=0.45, col="gold1")
# 2 FC lines
abline(h=c(-1,1), col="lightsalmon")

write.table(tmp.sig, "../analyses/Phel_DEGlist.tab", row.names= T)
?merge
