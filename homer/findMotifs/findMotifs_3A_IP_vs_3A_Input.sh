#PBS -l nodes=1:ppn=3
#PBS -l walltime=6:00:00
#PBS -o ${PBS_JOBNAME}_output
#PBS -e ${PBS_JOBNAME}_error
#PBS -V
#PBS -N findMotifs_3A_IP_vs_3A_Input.sh
#PBS -q sw
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

findMotifs.pl \
../../../macs/callpeak/3A_IP_vs_3A_Input/3A_IP_vs_3A_Input_peaks.narrowPeak \
hg19 \
../../../homer/findMotifs/3A_IP_vs_3A_Input/