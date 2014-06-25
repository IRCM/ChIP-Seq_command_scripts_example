bowtie2 \
-p 3 \
/stockage/genomes//Homo_sapiens/UCSC/hg19/Sequence/Bowtie2Index/genome \
-1 ../../../FASTQ/untrimmed/HI.1674.007.Index_2.DF_3A-Input_R1.fastq.gz \
-2 ../../../FASTQ/untrimmed/HI.1674.007.Index_2.DF_3A-Input_R2.fastq.gz \
1> ../../bowtie2/3A_Input/3A_Input.sam \
2> bowtie2_3A_Input.sh_error

samtools view -hbS ../../bowtie2/3A_Input/3A_Input.sam \
1> ../../bowtie2/3A_Input/3A_Input.bam \
2>> bowtie2_3A_Input.sh_error

rm ../../bowtie2/3A_Input/3A_Input.sam \
1> bowtie2_3A_Input.sh_output 2>> bowtie2_3A_Input.sh_error