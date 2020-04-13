# RNA-Seq Analysis Scripts

These scripts cover RNA-seq analysis starting with fastq files

# Workflow

1. Run [fastqc.sh](https://github.com/willrosenow/RNA-seq/blob/master/fastqc.sh) to check if adapters are present. Best to run this on only one file as a test.

2. If adapters are present run [trimmomatic.sh](https://github.com/willrosenow/RNA-seq/blob/master/trimmomatic.sh) to trim them using a provided adapter sequence.

3. Run command `multiqc .` in directory with fastqc summaries to produce one overall report to check if adapter trimming worked.

4. Run [hisat2.sh](https://github.com/willrosenow/RNA-seq/blob/master/hisat2.sh) to map sequences reads to known transcriptome and create sam files. 

5. Run [samtools.sh](https://github.com/willrosenow/RNA-seq/blob/master/samtools.sh) to convert sam files to bam files and sort them.

6. Run [first_assembly.sh](https://github.com/willrosenow/RNA-seq/blob/master/first_assembly.sh) to assemble the sequencing reads.

7. Run [merge.sh](https://github.com/willrosenow/RNA-seq/blob/master/merge.sh) to merge all the samples together.

8. Run [second_run](https://github.com/willrosenow/RNA-seq/blob/master/second_run.sh)to correct quantification based on library size.
