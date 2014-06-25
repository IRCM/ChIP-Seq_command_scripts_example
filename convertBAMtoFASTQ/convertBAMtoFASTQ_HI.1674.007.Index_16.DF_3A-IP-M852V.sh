#samtools sort -@ 7 -n ../../../BAM/HI.1674.007.Index_16.DF_3A-IP-M852V.bam \

bedtools bamtofastq -i ../../../BAM/HI.1674.007.Index_16.DF_3A-IP-M852V_sorted.bam \
-fq ../../../FASTQ/untrimmed/HI.1674.007.Index_16.DF_3A-IP-M852V_R1.fastq \
-fq2 ../../../FASTQ/untrimmed/HI.1674.007.Index_16.DF_3A-IP-M852V_R2.fastq \
1>> convertBAMtoFASTQ_HI.1674.007.Index_16.DF_3A-IP-M852V.sh_output \
2>> convertBAMtoFASTQ_HI.1674.007.Index_16.DF_3A-IP-M852V.sh_error

gzip ../../../FASTQ/untrimmed/HI.1674.007.Index_16.DF_3A-IP-M852V_R1.fastq \
1>> convertBAMtoFASTQ_HI.1674.007.Index_16.DF_3A-IP-M852V.sh_output \
2>> convertBAMtoFASTQ_HI.1674.007.Index_16.DF_3A-IP-M852V.sh_error

gzip ../../../FASTQ/untrimmed/HI.1674.007.Index_16.DF_3A-IP-M852V_R2.fastq \
1>> convertBAMtoFASTQ_HI.1674.007.Index_16.DF_3A-IP-M852V.sh_output \
2>> convertBAMtoFASTQ_HI.1674.007.Index_16.DF_3A-IP-M852V.sh_error