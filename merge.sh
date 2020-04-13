#!/bin/bash

module load gcc/7.1.0 stringtie

stringtie --merge -G /scratch/wr8yp/Gastroc_sc/Mus_musculus.GRCm38.84.gtf -o ./merged_stringtie.gtf ./mergelist.txt
