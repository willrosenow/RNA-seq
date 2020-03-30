#!/bin/bash

i=$SLURM_ARRAY_TASK_ID
module purge
module load trimmomatic

data=/project/farber_lab/DO_gastroc_scRNA
f=$(sed -n "${i}{p;}" < ./gastroc_samples.txt)
java -jar $EBROOTTRIMMOMATIC/trimmomatic-0.39.jar PE ${data}/${f}/${f}_R1.fastq.gz ${data}/${f}/${f}_R2.fastq.gz ./trimmed_paired/${f}_R1_paired.fq.gz ./trimmed_unpaired/${f}_R1_unpaired.fq.gz ./trimmed_paired/${f}_R2_paired.fq.gz ./trimmed_unpaired/${f}_R2_unpaired.fq.gz ILLUMINACLIP:illumina_universal.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36
