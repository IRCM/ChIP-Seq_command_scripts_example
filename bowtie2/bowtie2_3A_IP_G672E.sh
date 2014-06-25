bowtie2 \
-p 3 \
/stockage/genomes//Homo_sapiens/UCSC/hg19/Sequence/Bowtie2Index/genome \
-1 ../../../FASTQ/untrimmed/HI.1674.007.Index_15.DF_3A-IP-G672E_R1.fastq.gz \
-2 ../../../FASTQ/untrimmed/HI.1674.007.Index_15.DF_3A-IP-G672E_R2.fastq.gz \
1> ../../bowtie2/3A_IP_G672E/3A_IP_G672E.sam \
2> bowtie2_3A_IP_G672E.sh_error

samtools view -hbS ../../bowtie2/3A_IP_G672E/3A_IP_G672E.sam \
1> ../../bowtie2/3A_IP_G672E/3A_IP_G672E.bam \
2>> bowtie2_3A_IP_G672E.sh_error

rm ../../bowtie2/3A_IP_G672E/3A_IP_G672E.sam \
1> bowtie2_3A_IP_G672E.sh_output 2>> bowtie2_3A_IP_G672E.sh_error