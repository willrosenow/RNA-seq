#!/bin/bash

i=$SLURM_ARRAY_TASK_ID
module load fastqc

DATA=/scratch/wr8yp/Gastroc_sc/trimmed_paired
OUTPUT=/scratch/wr8yp/Gastroc_sc/qc
f=$(sed -n "${i}{p;}" < ./gastroc_samples.txt)

fastqc ${DATA}/${f}_R1_paired.fq.gz -o ${OUTPUT}

fastqc ${DATA}/${f}_R2_paired.fq.gz -o ${OUTPUT}
