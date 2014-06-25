#PBS -l nodes=1:ppn=1
#PBS -l walltime=6:00:00
#PBS -o ${PBS_JOBNAME}_output
#PBS -e ${PBS_JOBNAME}_error
#PBS -V
#PBS -N bamtobigwig_3A_Input.sh
#PBS -q sw
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

cp ../../bigwig/before_normalisation/3A_Input.bw ../../bigwig/after_normalisation/3A_Input.bw
