#!/bin/bash
#$ -S /bin/bash
#$ -pe smp 1
#$ -cwd
#$ -V
#$ -q short.q
#$ -r yes
#$ -l mem_requested=1G
#$ -N TFBS_search
#$ -t 1-5:1

conda activate base_r
Rscript --vanilla TFBS_search.R ${SGE_TASK_ID}
