# RNA-Seq Analysis Scripts

These scripts cover RNA-seq analysis starting with fastq files

# Workflow

1. Run *fastqc.sh* to check if adapters are present

2. If adapters are present run *trimmomatic.sh* to trim them

3. Run command *multiqc .* in directory with fastqc summaries to produce one overall report

4. Run *hisat2.sh* to align sequences and create sam files

5. Run *samtools.sh* to convert sam to bam and sort

6. Run (https://github.com/willrosenow/RNA-seq/blob/master/first_assembly.sh) first_assembly.sh for first assembly
