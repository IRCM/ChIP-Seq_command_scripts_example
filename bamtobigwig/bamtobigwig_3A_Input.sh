#PBS -l nodes=1:ppn=1
#PBS -l walltime=6:00:00
#PBS -o ${PBS_JOBNAME}_output
#PBS -e ${PBS_JOBNAME}_error
#PBS -V
#PBS -N_sorted_by_coordinates.bamtobigwig_3A_Input.sh
#PBS -q sw
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

bedtools genomecov \
-bg \
-g /sb/project/afb-431/genomes//Homo_sapiens/UCSC/hg19/Annotation/Genes/ChromInfo.txt \
-ibam ../../bowtie2/3A_Input/3A_Input_sorted_by_coordinates.bam \
1> ../../bedgraph/before_normalisation/3A_Input.bedgraph

bedGraphToBigWig \
../../bedgraph/before_normalisation/3A_Input.bedgraph \
/sb/project/afb-431/genomes//Homo_sapiens/UCSC/hg19/Annotation/Genes/ChromInfo.txt \
../../bigwig/before_normalisation/3A_Input.bw
