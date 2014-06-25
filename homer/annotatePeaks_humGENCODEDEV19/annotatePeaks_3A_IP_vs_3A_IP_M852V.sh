#PBS -l nodes=1:ppn=3
#PBS -l walltime=6:00:00
#PBS -o ${PBS_JOBNAME}_output
#PBS -e ${PBS_JOBNAME}_error
#PBS -V
#PBS -N annotatePeaks_3A_IP_vs_3A_IP_M852V.sh
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

annotatePeaks.pl \
../../../macs/bdgdiff/3A_IP_vs_3A_IP_M852V/3A_IP_vs_3A_IP_M852V_c3.0_cond1.bed \
hg19 -gsize hg19 -cons -CpG \
-gtf /sb/project/afb-431/genomes/Homo_sapiens/UCSC/hg19/Annotation/Genes/humGENCODEV19.gtf \
1> ../../../homer_humGENCODEDEV19/annotatePeaks/3A_IP_vs_3A_IP_M852V/peaks.csv