# RNA-Seq Analysis Scripts

These scripts cover RNA-seq analysis starting with fastq files

Software required:
  *fastqc*,
  *multiqc*,
  *trimmomatic*,
  *hisat2*,
  *samtools*,
  *stringtie*,
  *python2*
  

# Workflow

1. Run [fastqc.sh](https://github.com/willrosenow/RNA-seq/blob/master/fastqc.sh) to check if adapters are present. Best to run this on only one file as a test.

2. If adapters are present run [trimmomatic.sh](https://github.com/willrosenow/RNA-seq/blob/master/trimmomatic.sh) to trim them using a provided adapter sequence. This script and most following it require a samples.txt file containing sample names. Similar to the list below:
```
GASTROC_DO_004
GASTROC_DO_005
GASTROC_DO_006
GASTROC_DO_009
GASTROC_DO_10
```
3. Run command `multiqc .` in directory with fastqc summaries to produce one overall report to check if adapter trimming worked.

4. Run [hisat2.sh](https://github.com/willrosenow/RNA-seq/blob/master/hisat2.sh) to map sequence reads to known transcriptome and create sam files. 

5. Run [samtools.sh](https://github.com/willrosenow/RNA-seq/blob/master/samtools.sh) to convert sam files to bam files and sort them.

6. Run [first_assembly.sh](https://github.com/willrosenow/RNA-seq/blob/master/first_assembly.sh) to assemble the sequencing reads.

7. Run [merge.sh](https://github.com/willrosenow/RNA-seq/blob/master/merge.sh) to merge all the samples together. This requires a mergelist.txt file that lists all gtf files to be merged. Similar to the list below:
```
BM-PP1-1_stringtie.gtf
BM-PP1-2_stringtie.gtf
BM-PP1-3_stringtie.gtf
```

8. Run [second_run.sh](https://github.com/willrosenow/RNA-seq/blob/master/second_run.sh) to correct quantification based on library size.

9. Run [prepDE.sh](https://github.com/willrosenow/RNA-seq/blob/master/prepDE.sh) to create gene count and trascript count matricies that can then be used for downstream analyses (i.e. differential expression, PCA, hierarchical clustering). Note this script uses python 2.
