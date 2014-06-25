bowtie2 \
-p 3 \
/stockage/genomes//Homo_sapiens/UCSC/hg19/Sequence/Bowtie2Index/genome \
-1 ../../../FASTQ/untrimmed/HI.1674.007.Index_16.DF_3A-IP-M852V_R1.fastq.gz \
-2 ../../../FASTQ/untrimmed/HI.1674.007.Index_16.DF_3A-IP-M852V_R2.fastq.gz \
1> ../../bowtie2/3A_IP_M852V/3A_IP_M852V.sam \
2> bowtie2_3A_IP_M852V.sh_error

samtools view -hbS ../../bowtie2/3A_IP_M852V/3A_IP_M852V.sam \
1> ../../bowtie2/3A_IP_M852V/3A_IP_M852V.bam \
2>> bowtie2_3A_IP_M852V.sh_error

rm ../../bowtie2/3A_IP_M852V/3A_IP_M852V.sam \
1> bowtie2_3A_IP_M852V.sh_output 2>> bowtie2_3A_IP_M852V.sh_error