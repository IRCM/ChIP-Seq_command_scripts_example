#samtools sort -@ 7 -n ../../../BAM/HI.1674.007.Index_2.DF_3A-Input.bam \

bedtools bamtofastq -i ../../../BAM/HI.1674.007.Index_2.DF_3A-Input_sorted.bam \
-fq ../../../FASTQ/untrimmed/HI.1674.007.Index_2.DF_3A-Input_R1.fastq \
-fq2 ../../../FASTQ/untrimmed/HI.1674.007.Index_2.DF_3A-Input_R2.fastq \
1>> convertBAMtoFASTQ_HI.1674.007.Index_2.DF_3A-Input.sh_output \
2>> convertBAMtoFASTQ_HI.1674.007.Index_2.DF_3A-Input.sh_error

gzip ../../../FASTQ/untrimmed/HI.1674.007.Index_2.DF_3A-Input_R1.fastq \
1>> convertBAMtoFASTQ_HI.1674.007.Index_2.DF_3A-Input.sh_output \
2>> convertBAMtoFASTQ_HI.1674.007.Index_2.DF_3A-Input.sh_error

gzip ../../../FASTQ/untrimmed/HI.1674.007.Index_2.DF_3A-Input_R2.fastq \
1>> convertBAMtoFASTQ_HI.1674.007.Index_2.DF_3A-Input.sh_output \
2>> convertBAMtoFASTQ_HI.1674.007.Index_2.DF_3A-Input.sh_error