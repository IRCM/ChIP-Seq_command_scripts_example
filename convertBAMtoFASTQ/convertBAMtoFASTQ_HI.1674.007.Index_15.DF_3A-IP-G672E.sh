#samtools sort -@ 7 -n ../../../BAM/HI.1674.007.Index_15.DF_3A-IP-G672E.bam \

bedtools bamtofastq -i ../../../BAM/HI.1674.007.Index_15.DF_3A-IP-G672E_sorted.bam \
-fq ../../../FASTQ/untrimmed/HI.1674.007.Index_15.DF_3A-IP-G672E_R1.fastq \
-fq2 ../../../FASTQ/untrimmed/HI.1674.007.Index_15.DF_3A-IP-G672E_R2.fastq \
1>> convertBAMtoFASTQ_HI.1674.007.Index_15.DF_3A-IP-G672E.sh_output \
2>> convertBAMtoFASTQ_HI.1674.007.Index_15.DF_3A-IP-G672E.sh_error

gzip ../../../FASTQ/untrimmed/HI.1674.007.Index_15.DF_3A-IP-G672E_R1.fastq \
1>> convertBAMtoFASTQ_HI.1674.007.Index_15.DF_3A-IP-G672E.sh_output \
2>> convertBAMtoFASTQ_HI.1674.007.Index_15.DF_3A-IP-G672E.sh_error

gzip ../../../FASTQ/untrimmed/HI.1674.007.Index_15.DF_3A-IP-G672E_R2.fastq \
1>> convertBAMtoFASTQ_HI.1674.007.Index_15.DF_3A-IP-G672E.sh_output \
2>> convertBAMtoFASTQ_HI.1674.007.Index_15.DF_3A-IP-G672E.sh_error