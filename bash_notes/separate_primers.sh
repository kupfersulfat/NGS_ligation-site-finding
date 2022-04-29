#shell script to split fasta file into many files with 1 sequence each
awk 'BEGIN {n_seq=0;} /^>/ {if(n_seq%1==0){file=sprintf("separated_primers/primer_%d.fasta",n_seq);} print >> file; n_seq++; next;} { print >> file; }' < primers_all.fasta
