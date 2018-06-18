# Setting up IsoEM2

## getting some example data

First off, we need some data to test IsoEM2 on. Doing some quick searching, [a reanalysis of some RNAseq done on some human neuronal progenitor cells](https://doi.org/10.12688/F1000RESEARCH.9110.1). 


The data can be downloaded using sra-tools (which can be installed with bioconda: `conda install sra-tools`).

The bash script in `./data` downloads the files from SRP070895

I pulled the accession list and the run info from [this website](https://www.ncbi.nlm.nih.gov/Traces/study/?acc=PRJNA313294) (boy howdy is the SRA hard to navigate).

h/t to the EdwardsLab for [posting some nice documentation](https://edwards.sdsu.edu/research/fastq-dump/) for using `fastq-dump`

## installing IsoEM2


IsoEM2 can be installed from their [GitHub repo](https://github.com/mandricigor/isoem2)

Made a dir `~/tools` to install isoem2 into

cloned repo into `~/tools`

```bash
git clone https://github.com/mandricigor/isoem2.git
```

ran the `install` shell script (make sure that `make` and java are installed):

```
cd isoem2
./install
```

*Note:* For Java, you need both the jre and jdk installed:

```
sudo apt install default-jre default-jdk
```

and running isoem2 generates it's help message

## aligning reads


### kallisto pseudobams

kallisto does pseudoalignments and can provide bam files. I'm curious to see if this is actually usable for downstream analysis that require transcript alignments. 


**install kallisto**

```
conda install kallisto
```

cat'd together the cdna and ncrna and made an index out of them: `Homo_sapiens.GRCh38.allrna.kallisto.idx` 

*Note: there are paired and single end reads from this dataset*

### HISAT2



### BBMap


## DEG analysis

### IsoEM2


