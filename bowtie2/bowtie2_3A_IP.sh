bowtie2 \
-p 3 \
/stockage/genomes//Homo_sapiens/UCSC/hg19/Sequence/Bowtie2Index/genome \
-1 ../../../FASTQ/untrimmed/HI.1674.007.Index_13.DF_3A-IP_R1.fastq.gz \
-2 ../../../FASTQ/untrimmed/HI.1674.007.Index_13.DF_3A-IP_R2.fastq.gz \
1> ../../bowtie2/3A_IP/3A_IP.sam \
2> bowtie2_3A_IP.sh_error

samtools view -hbS ../../bowtie2/3A_IP/3A_IP.sam \
1> ../../bowtie2/3A_IP/3A_IP.bam \
2>> bowtie2_3A_IP.sh_error

rm ../../bowtie2/3A_IP/3A_IP.sam \
1> bowtie2_3A_IP.sh_output 2>> bowtie2_3A_IP.sh_error