#library("Biostrings")
#library("seqRFLP")
library("ShortRead")
library("ggplot2")

#fastq file einlesen
#filepath <- "C://Users/lisa-maria.kuso/Documents/Sequenzierfile/NGS_head.fastq"
filepath <- "C://Users/lisa-maria.kuso/Documents/Sequenzierfile/Rohdaten_Metainfo/NG-5514_pcr_R1.fastq"

#memory.size(max=TRUE)
memory.limit(36000)

fastqFile <- readFastq(filepath, format="fastq", with.qualities = TRUE)
sequence <- sread(fastqFile)
qual <- quality(fastqFile)
name <- id(fastqFile)

#Zeichnen der Sequenzlängen
widths <- as.data.frame(sequence@ranges@width)
ggplot(widths) +
  geom_histogram(aes(x=sequence@ranges@width))

#Zeichnen der Qualities
numqscores <- as(qual, 'matrix')
avgscore <- rowMeans(numqscores)
avgscore <- as.data.frame(avgscore)

ggplot(avgscore) +
  geom_histogram(aes(x=avgscore))

#dataframe machen
#df <- as.data.frame(cbind(sequence, qual, name))