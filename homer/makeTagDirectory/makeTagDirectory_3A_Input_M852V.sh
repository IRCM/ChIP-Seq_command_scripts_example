#PBS -l nodes=1:ppn=1
#PBS -l walltime=2:00:00
#PBS -o ${PBS_JOBNAME}_output
#PBS -e ${PBS_JOBNAME}_error
#PBS -V
#PBS -N makeTagDirectory_3A_Input_M852V.sh
#PBS -q sw
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

makeTagDirectory \
../../../homer/makeTagDirectory/3A_Input_M852V/ \
../../../bowtie2/3A_Input_M852V/3A_Input_M852V.bam \
-illuminaPE -checkGC -genome hg19 
