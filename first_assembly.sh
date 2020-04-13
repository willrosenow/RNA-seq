#!/bin/bash

module load gcc/7.1.0 stringtie

i=$SLURM_ARRAY_TASK_ID

short=$(sed -n "${i}{p;}" < /scratch/wr8yp/Gastroc_sc/gastroc_samples.txt)

stringtie -e -G /scratch/wr8yp/Gastroc_sc/Mus_musculus.GRCm38.84.gtf -o ./first_assembly/${short}_stringtie.gtf ${short}_hisat2_sorted.bam
# -A ./first_assembly/${short}_stringtie.abundance
