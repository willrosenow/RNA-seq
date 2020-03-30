#!/bin/bash

module load gcc/7.1.0
module load hisat2

i=$SLURM_ARRAY_TASK_ID
data=/scratch/wr8yp/Gastroc_sc
short=$(sed -n "${i}{p;}" < /scratch/wr8yp/Gastroc_sc/gastroc_samples.txt)

hisat2 2>${data}/trimmed_paired/sam_files/${short}_alignment_summary.txt -x ${data}/grcm38_snp/genome_snp -1 ${short}_R1_paired.fq.gz -2 ${short}_R2_paired.fq.gz --dta -S ${data}/trimmed_paired/sam_files/${short}_hisat2.sam
