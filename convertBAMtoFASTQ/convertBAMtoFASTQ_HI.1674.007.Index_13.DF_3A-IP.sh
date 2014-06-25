samtools sort -@ 7 -n ../../../BAM/HI.1674.007.Index_13.DF_3A-IP.bam \

bedtools bamtofastq -i ../../../BAM/HI.1674.007.Index_13.DF_3A-IP_sorted.bam \
-fq ../../../FASTQ/untrimmed/HI.1674.007.Index_13.DF_3A-IP_R1.fastq \
-fq2 ../../../FASTQ/untrimmed/HI.1674.007.Index_13.DF_3A-IP_R2.fastq \
1>> convertBAMtoFASTQ_HI.1674.007.Index_13.DF_3A-IP.sh_output \
2>> convertBAMtoFASTQ_HI.1674.007.Index_13.DF_3A-IP.sh_error

gzip ../../../FASTQ/untrimmed/HI.1674.007.Index_13.DF_3A-IP_R1.fastq \
1>> convertBAMtoFASTQ_HI.1674.007.Index_13.DF_3A-IP.sh_output \
2>> convertBAMtoFASTQ_HI.1674.007.Index_13.DF_3A-IP.sh_error

gzip ../../../FASTQ/untrimmed/HI.1674.007.Index_13.DF_3A-IP_R2.fastq \
1>> convertBAMtoFASTQ_HI.1674.007.Index_13.DF_3A-IP.sh_output \
2>> convertBAMtoFASTQ_HI.1674.007.Index_13.DF_3A-IP.sh_error
