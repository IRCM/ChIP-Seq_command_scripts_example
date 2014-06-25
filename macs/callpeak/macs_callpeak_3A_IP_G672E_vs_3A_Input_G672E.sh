#PBS -l nodes=1:ppn=4
#PBS -l walltime=5:00:00
#PBS -o ${PBS_JOBNAME}_output
#PBS -e ${PBS_JOBNAME}_error
#PBS -V
#PBS -N macs_callpeak_3A_IP_G672E_vs_3A_Input_G672E.sh
#PBS -q sw
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

macs2 callpeak \
--bdg \
--gsize hs \
--keep-dup auto \
--qvalue 0.05 \
--format BAMPE \
--name ../../macs_callpeak/3A_IP_G672E_vs_3A_Input_G672E/3A_IP_G672E_vs_3A_Input_G672E \
--treatment ../../bowtie2/3A_IP_G672E/3A_IP_G672E.bam \
--control ../../bowtie2/3A_Input_G672E/3A_Input_G672E.bam