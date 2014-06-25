#PBS -l nodes=1:ppn=1
#PBS -l walltime=6:00:00
#PBS -o ${PBS_JOBNAME}_output
#PBS -e ${PBS_JOBNAME}_error
#PBS -V
#PBS -N 3A_IP_M852V_minus_3A_Input_M852V.sh
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

overlay_bigwig.py \
--action=Subtract \
--chromSize=/sb/project/afb-431/genomes//Homo_sapiens/UCSC/hg19/Annotation/Genes/ChromInfo.txt \
--min_signal=5 \
--bwfile1=../../bigwig/after_normalisation/3A_IP_M852V.bw \
--bwfile2=../../bigwig/after_normalisation/3A_Input_M852V.bw \
--output=../../bigwig/subtraction/3A_IP_M852V_minus_3A_Input_M852V.bw
