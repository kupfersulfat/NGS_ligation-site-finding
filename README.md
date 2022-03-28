# NGS_ligation-site-finding
Provided is a fastq file from 2011 containing Illumina DNA sequencing data of different plant species.

The samples of the different species were first sequenced on their own with corresponding primers and then pooled together. As the sequencing methods in 2011 required a specific base length range, the DNA fragments were concatemerised with a DNA ligase and then cut, in order to obtain as much reading data as possible. After cutting the fragments into smaller fragments of 200-600 bp length via shearing, the ends were repaired using Klenow DNA polymerase and T4. During the end repair, a single adenine base was added to the 3' end of the blunted DNA. After A-tailing, the Illumina sequence adapters were ligated to the ends of the DNA fragments. Then, the DNA fragments were separated by length via gelelectrophoresis and only those with 300-350 bp length were cut out. The DNA was then sequenced with Illumina. 

Steps to process the sequencing data:

1) Trimming, Separating the DNA sequences at the ligation binding site

The sequences in the fastq file were probably already trimmed to get rid of the Illumina library adapters, but this was not documented. This must be checked! The adapter sequence can be found under following link:
https://support-docs.illumina.com/SHARE/AdapterSeq/Content/SHARE/AdapterSeq/Nextera/SequencesNXTILMPrepAndPCR.htm

It is not known whether bases were inserted during ligation and which bases this were. The aim is to find the ligation sites which correspond with the sites where a primer and the reverse complement of another primer meet. The potential inserted bases would lie in between these two primer sequences and must be removed. The sequences then need to be separated at this primer meeting sites to obtain the sequences of the DNA fragments before ligation. 

After the successfull separation of the DNA sequencing fragments, the next steps would be:

2) Mapping to the reference genomes of the corresponding plant species to group the DNA sequences by species

3) Alignment of the sequencing fragments to reconstruct the original whole genome DNA sequence

4) Analyse the sequences (e.g. search for SNPs)

