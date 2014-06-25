#PBS -l nodes=1:ppn=3
#PBS -l walltime=6:00:00
#PBS -o ${PBS_JOBNAME}_output
#PBS -e ${PBS_JOBNAME}_error
#PBS -V
#PBS -N annotatePeaks_3A_IP_M852V_vs_3A_Input_M852V.sh
#PBS -q sw
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

annotatePeaks.pl \
../../../macs/callpeak/3A_IP_M852V_vs_3A_Input_M852V/3A_IP_M852V_vs_3A_Input_M852V_peaks.narrowPeak \
hg19 -gsize hg19 -cons -CpG \
-go ../../../homer/annotatePeaks/3A_IP_M852V_vs_3A_Input_M852V/gene_ontology/ \
-genomeOntology ../../../homer/annotatePeaks/3A_IP_M852V_vs_3A_Input_M852V/genome_ontology/ \
1> ../../../homer/annotatePeaks/3A_IP_M852V_vs_3A_Input_M852V/peaks.csv