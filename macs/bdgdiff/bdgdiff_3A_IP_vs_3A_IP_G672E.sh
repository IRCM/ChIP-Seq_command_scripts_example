#PBS -l nodes=1:ppn=5
#PBS -l walltime=5:00:00
#PBS -o ${PBS_JOBNAME}_output
#PBS -e ${PBS_JOBNAME}_error
#PBS -V
#PBS -N bdgdiff_3A_IP_vs_3A_IP_G672E.sh
#PBS -A afb-431-ac

cd $PBS_O_WORKDIR

macs2 bdgdiff \
--t1 ../../macs_callpeak/3A_IP_vs_3A_Input/3A_IP_vs_3A_Input_treat_pileup.bdg \
--c1 ../../macs_callpeak/3A_IP_vs_3A_Input/3A_IP_vs_3A_Input_control_lambda.bdg \
--t2 ../../macs_callpeak/3A_IP_G672E_vs_3A_Input_G672E/3A_IP_G672E_vs_3A_Input_G672E_treat_pileup.bdg \
--c2 ../../macs_callpeak/3A_IP_G672E_vs_3A_Input_G672E/3A_IP_G672E_vs_3A_Input_G672E_control_lambda.bdg \
--depth1 34200188 --depth2 41704257 \
--o-prefix ../../macs_bdgdiff/3A_IP_vs_3A_IP_G672E/3A_IP_vs_3A_IP_G672E \
1> bdgdiff_3A_IP_vs_3A_IP_G672E.sh_output \
2> bdgdiff_3A_IP_vs_3A_IP_G672E.sh_error
