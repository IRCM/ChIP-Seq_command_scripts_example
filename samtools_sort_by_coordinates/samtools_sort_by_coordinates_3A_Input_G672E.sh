#PBS -l nodes=1:ppn=1
#PBS -l walltime=5:00:00
#PBS -o ${PBS_JOBNAME}_output
#PBS -e ${PBS_JOBNAME}_error
#PBS -V
#PBS -N samtools_sort_by_coordinates_3A_Input_G672E.sh
#PBS -q sw
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

samtools sort ../../bowtie2/3A_Input_G672E/3A_Input_G672E.bam ../../bowtie2/3A_Input_G672E/3A_Input_G672E_sorted_by_coordinates

samtools index ../../bowtie2/3A_Input_G672E/3A_Input_G672E_sorted_by_coordinates.bam