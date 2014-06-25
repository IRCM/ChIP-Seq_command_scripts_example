#PBS -l nodes=1:ppn=1
#PBS -l walltime=6:00:00
#PBS -o ${PBS_JOBNAME}_output
#PBS -e ${PBS_JOBNAME}_error
#PBS -V
#PBS -N 3A_IP_G672E_minus_3A_Input_G672E.sh
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

wigToBigWig \
../../bigwig/subtraction/3A_IP_G672E_minus_3A_Input_G672E.bw \
/sb/project/afb-431/genomes//Homo_sapiens/UCSC/hg19/Annotation/Genes/ChromInfo.txt \
../../bigwig/subtraction/3A_IP_G672E_minus_3A_Input_G672E_converted.bw
