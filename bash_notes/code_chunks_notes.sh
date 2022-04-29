#search for primer sequence in loops (each primer in own loop)
#replace primer sequence with *primer sequence* to mark the primer site with stars
#primer is 2 fasta files, sequence file is fastq file, we want in both the 2nd line
#fasta starting with > and fastq starting with @
#fasta having 2 lines, fastq having 4 lines

#readarray -t fastqfile < sequence_stars.fastq
#readarray -t primerfile < primers_all.fasta
#for ((m=0; m<21775; m++));do if (( $m % 2 != 0 )); then sed -i 's/'"${primerfile[m]}"'/primer/g' NG5514_seq.fastq; fi; done

#readarray -t primer_fw < primer_fw_cleaned.fasta
#for((m=0;m<116;m++))
#do
#	sed -i 's/'"${primer_fw[m]}"'/primer_fw/g' short_seq.fastq
#done



 




#primer zählen
#grep -c primer NG5514_seq.fastq

#hat funktioniert
#for ((m=0; m<21775; m++));do if (( $m % 2 != 0 )); then sed -i 's/'"${primerfile[m]}"'/primer/g' NG5514_seq.fastq; fi; done
#for ((m=0; m<${#primerfile[@]}; m++));do if (( $m % 2 != 0 )); then sed -i 's/'"${primerfile[m]}"'/primer/g' NG5514_seq.fastq; fi; done


#sed -i 's/'"${primerfile[1]}"'/primer/g' NG5514_seq.fastq    #aber nur bei einzelnen, ned in der Schleife
#cat NG-5514_pcr_R1.fastq | sed "s/CGGGTTCGATTCCCGCTACC/primer/g" > test

#printf "%s\n" "${fastqfile[@]}" > sequence_stars.fastq
 
#alternative (schnellere?) methode (funktioniert glaub ich noch nicht optimal)
#while IFS= read -r line; do
	#if((/^>/ != $line)); then
    		#sed -i "s/$line/primer/g" sequence_backup.fastq
	#fi
#done < primers_all.fasta