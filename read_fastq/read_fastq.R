library("Biostrings")
#library("seqRFLP")
#library("ShortRead")
library("ggplot2")
library("here")

# read-in fastq file
here()
fastq_path <- "read_fastq/test_sequence.fastq"
primer_path <- "primer/orig_primers.fasta"
primer_revcompl_path <- "primer/primers_revcompl.fasta"

fastqFile <- readDNAStringSet(fastq_path, format="fastq")
primer <- readDNAStringSet(primer_path)

# illumina adapter seq
vmatchPattern('CTGTCTCTTATACACATCT', fastqFile)
#keine illumina adapter gefunden!

#memory.size(max=TRUE)
#memory.limit(36000)

#fastqFile <- readFastq(fastq_path, format="fastq", with.qualities = TRUE)
#sequence <- sread(fastqFile)
#qual <- quality(fastqFile)
#name <- id(fastqFile)

# Histogram of sequence lengths
#widths <- as.data.frame(sequence@ranges@width)
#ggplot(widths) +
  #geom_histogram(aes(x=sequence@ranges@width))

# Histogram of quality scores
#numqscores <- as(qual, 'matrix')
#avgscore <- rowMeans(numqscores)
#avgscore <- as.data.frame(avgscore)

#ggplot(avgscore) +
  #geom_histogram(aes(x=avgscore))

# patternmatching (with primers)
