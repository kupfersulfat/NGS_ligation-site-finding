library("Biostrings")
library("seqRFLP")

#file paths
read_file <- "C://Users/lisa-maria.kuso/Documents/Sequenzierfile/primer/orig_primers.fasta"
write_file <- "C://Users/lisa-maria.kuso/Documents/Sequenzierfile/primer/primers_revcompl_orig.fasta"

#read-in fasta-file with Biostrings Package
fastaFile <- readDNAStringSet(read_file)
seq_name = names(fastaFile)
sequence = paste(fastaFile)
primerlist <- data.frame(seq_name, sequence)
len <- length(seq_name)


#create empty dataframe for the sequences
primer_rev <- data.frame(matrix(ncol = 2, nrow = len))
colnames(primer_rev) <- c('seq_name', 'sequence')

#reverse and complement sequences and save in dataframe
for(primer in 1:len){
  primer_rev[primer,1] <- paste(primerlist[primer,1],"_rev_compl",sep="")
  primer_rev[primer,2] <- reverseComplement(fastaFile[primer])
}

#export as fasta file
dataframe2fas(primer_rev, write_file)