#!/bin/bash

module load samtools

i=$SLURM_ARRAY_TASK_ID
data=/scratch/wr8yp/Gastroc_sc/trimmed_paired/sam_files
short=$(sed -n "${i}{p;}" < /scratch/wr8yp/Gastroc_sc/gastroc_samples.txt)

samtools view -h ${short}_hisat2.sam -o ${short}_hisat2.bam

samtools sort ${short}_hisat2.bam -o ${short}_hisat2_sorted.bam
