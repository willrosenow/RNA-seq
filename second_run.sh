#!/bin/bash

module load gcc/7.1.0 stringtie

i=$SLURM_ARRAY_TASK_ID

short=$(sed -n "${i}{p;}" < /scratch/wr8yp/Gastroc_sc/gastroc_samples.txt)

stringtie -eB -G ./merged_stringtie.gtf -o ./final_counts/${short}_st2nd.gtf ../${short}_hisat2_sorted.bam -A ./final_counts/${short}_st2nd.abundance
