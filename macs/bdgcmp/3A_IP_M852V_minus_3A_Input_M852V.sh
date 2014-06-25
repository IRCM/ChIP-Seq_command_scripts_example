#PBS -l nodes=1:ppn=2
#PBS -l walltime=5:00:00
#PBS -o ${PBS_JOBNAME}_output
#PBS -e ${PBS_JOBNAME}_error
#PBS -V
#PBS -N 3A_IP_M852V_minus_3A_Input_M852V.sh
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

macs2 bdgcmp \
--tfile ../../macs_callpeak/3A_IP_M852V_vs_3A_Input_M852V/3A_IP_M852V_vs_3A_Input_M852V_treat_pileup.bdg \
--cfile ../../macs_callpeak/3A_IP_M852V_vs_3A_Input_M852V/3A_IP_M852V_vs_3A_Input_M852V_control_lambda.bdg \
--method subtract \
--ofile ../../macs_bdgcmp/3A_IP_M852V_minus_3A_Input_M852V.bdg \
1> 3A_IP_M852V_minus_3A_Input_M852V.sh_output \
2> 3A_IP_M852V_minus_3A_Input_M852V.sh_error
