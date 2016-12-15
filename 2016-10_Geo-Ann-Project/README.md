### Annotating large scaffolds in _Panopea generosa_ genome
##### Project repository for FISH-546-Bioinformatics

#### My class project:
* **End Goal:** To annotate large scaffolds of the _Panopea generosa_ (geoduck) genome.  
* **Background:** Steven & Brent [sampled geoduck in 2015](http://onsnetwork.org/halfshell/2015/08/11/big-day-big-clam/); they sent the samples off to BGI for sequencing, and have since been working on annotating the [gonad transcriptome](http://onsnetwork.org/halfshell/2015/07/09/first-look-at-geoduck-transcriptome/); check out Steven's [blog](http://onsnetwork.org/halfshell/category/panopea-generosa/) for updates.  
* **Process:** I will utilize the aforementioned annotated gonad transcriptome to annotate a portion of the genome, specifically scaffolds >= 70k base pairs. I will thus blast the transcriptome against the genome, hopefully get some matches, and then cross-reference to identify protein-coding genes. I will then use a series of open-source tools to identify candidate miRNA, transposable elements & CpG sites, and align RNASeq read data to the scaffolds & call SNPs. Integrative Genomic Viewer (IGV) will be used to visualize results.

#### Repository Structure:
546-Bioinformatics/2016-10-Geo-Ann-Project/  
  * **IGV_track-files:** Analyses files reformatted specifically for viewing in IGV  
  * **Jupyter-Notebooks**: Notebooks most pertinent to this project are numbered from first (1) to last (9) task performed. The "GeoAnn Playground (0) was my working notebook, and contains intermediate and practice steps.  
  * **analyses**: Results from data manipulation; Visitors to this repo should refer mostly to the [results](x) directory.  
  * **data**: Raw data, data subsets, indexes, and databases.  
  * **images**: All images associated with this project, most used in Jupyter Notebooks.   
  * **results**: The products of this project: data and track files. See the [results README]() file for details.  
  * **scripts** Scripts used in this project; including a helpful reference document  
  
**NOTE**: This project involved a handful of files too large to house in GitHub (see [.gitignore file for this repository](x) for file names/types. 

**Source Data:** I did not prepare any of the libraries or sequence the DNA/RNA used in this project; rather, I worked with existing geoduck data from Steven et al. Source data files are listed below, pulled from the [paper-pano-go](https://github.com/sr320/paper-pano-go) repo, and Owl, the Roberts Lab's file server. 
  * [Geoduck genome data Folder](http://owl.fish.washington.edu/P_generosa_genome_assemblies_BGI/20160512/); Sequence File is [Panopea_generosa.scafSeq](http://owl.fish.washington.edu/P_generosa_genome_assemblies_BGI/20160512/Panopea_generosa.scafSeq)
  * The transcriptome was sequenced from geoduck gonad tissue
    - [Transcriptome fasta file](https://github.com/sr320/paper-pano-go/raw/master/data-results/Geoduck-transcriptome-v3.fa.zip).
    - [Annotated transcriptome file](https://github.com/sr320/paper-pano-go/blob/master/data-results/Geoduck-transcriptome-v3.fa.zip) with Uniprot protein information. 
  * RNASeq fastq files are two paired-end libraries from one female gonad & one male gonad. See [geoduck data repo](https://github.com/sr320/paper-pano-go/wiki/Quality-trim-output#female) & [library preparation methods](https://github.com/sr320/paper-pano-go/blob/master/manuscript/methods/00-rna-seq-libraries.md) for sequencing details. 
    - [Female1](http://owl.fish.washington.edu/halfshell/bu-data-genomic/tentacle/Geoduck_v3/Geo_Pool_F_GGCTAC_L006_R2_001_val_1.fq)
    - [Female2](http://owl.fish.washington.edu/halfshell/bu-data-genomic/tentacle/Geoduck_v3/Geo_Pool_F_GGCTAC_L006_R1_001_val_2.fq)
    - [Male1](http://owl.fish.washington.edu/halfshell/bu-data-genomic/tentacle/Geoduck_v3/Geo_Pool_M_CTTGTA_L006_R2_001_val_1.fq)
    - [Male2](http://owl.fish.washington.edu/halfshell/bu-data-genomic/tentacle/Geoduck_v3/Geo_Pool_M_CTTGTA_L006_R1_001_val_2.fq)
  * 
   
#### Project Timeline, by week #  

1. Learned basics of command-line operation, data mangement & manipulation & project tracking;  
2. Became more comfortable with common bioinformatics tools, such as GitHub & Jupyter Notebook; identify project and obtain data;
3. Begin working with data
  * [Extracted a subset of the genome](https://github.com/laurahspencer/546-Bioinformatics/blob/master/2016-10_Geo-Ann-Project/Jupyter-Notebooks/01%20Extracting%20%3E70k%20Scaffolds.ipynb) with only >70k bp scaffolds 
  * [Blasted](https://github.com/laurahspencer/546-Bioinformatics/blob/master/2016-10_Geo-Ann-Project/Jupyter-Notebooks/02%20Blasting%20Transcriptome%20vs.%20Scaffolds.ipynb): used [NCBI's `blast`](https://blast.ncbi.nlm.nih.gov/Blast.cgi) program to align transcriptome to genome
4. Explored contents of blast output file
  * learned how to cross-walk the annotated transcriptome against the blast output file
5. [Re-blasted](https://github.com/laurahspencer/546-Bioinformatics/blob/master/2016-10_Geo-Ann-Project/Jupyter-Notebooks/02%20Blasting%20Transcriptome%20vs.%20Scaffolds.ipynb) based on feedback; formatted data, combined sequence info with Contig & Scaffold ID's
6. [Merged _annotated_ transcriptome data with my data](https://github.com/laurahspencer/546-Bioinformatics/blob/master/2016-10_Geo-Ann-Project/Jupyter-Notebooks/03%20Merging%20blast%20results%20with%20transcriptome%20GO%20details.ipynb) to connect transcriptome protein/gene ontology data; used via [Galaxy's](https://usegalaxy.org/) (this could easily be done via unix commands, but I wasn't at that point yet)
7. Identified:  
   * [**transposable elements**](https://github.com/laurahspencer/546-Bioinformatics/blob/master/2016-10_Geo-Ann-Project/Jupyter-Notebooks/04%20Finding%20Transposable%20Elements.ipynb) - via [RepeatMasker](https://seanb80.github.io/blog/2016/11/04/Installing-RepeatMasker). "RepeatMasker is a program that screens DNA sequences for interspersed repeats and low complexity DNA sequences. The output of the program is a detailed annotation of the repeats that are present in the query sequence as well as a modified version of the query sequence in which all the annotated repeats have been masked (default: replaced by Ns)." -RepeatMasker website
    * [**Candidate Methylation sites (CpGs)**](https://github.com/laurahspencer/546-Bioinformatics/blob/master/2016-10_Geo-Ann-Project/Jupyter-Notebooks/05%20Finding%20candidate%20methylation%20sites.ipynb) - via [Galaxy's](https://usegalaxy.org/) EMBOSS fuzznuc tool.
8. Identified: 
  * [**miRNA**](https://github.com/laurahspencer/546-Bioinformatics/blob/master/2016-10_Geo-Ann-Project/Jupyter-Notebooks/06%20Finding%20candidate%20miRNA.ipynb) - via [miRBase](http://www.mirbase.org/); I downloaded the [hairpin sequences](http://www.mirbase.org/ftp.shtml): "The miRBase database is a searchable database of published miRNA sequences and annotation. Each entry in the miRBase Sequence database represents a predicted hairpin portion of a miRNA transcript (termed mir in the database), with information on the location and sequence of the mature miRNA sequence (termed miR). Both hairpin and mature sequences are available for searching and browsing, and entries can also be retrieved by name, keyword, references and annotation. All sequence and annotation data are also available for download." - miRBase webiste.
  * Began visualizing data via [Integrative Genomics Viewer](https://software.broadinstitute.org/software/igv/home) (IGV)
9. Incorporated RNASeq data 
  * [**Aligned RNASeq reads (from Steven) to scaffolds**](https://github.com/laurahspencer/546-Bioinformatics/blob/master/2016-10_Geo-Ann-Project/Jupyter-Notebooks/07%20Bowtie2_map_reads.ipynb) - via [`bowtie2`](https://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.2.9/) & [`samtools`](https://sourceforge.net/projects/samtools/files/samtools/1.3.1/)
  * [**Called SNP sites**](https://github.com/laurahspencer/546-Bioinformatics/blob/master/2016-10_Geo-Ann-Project/Jupyter-Notebooks/08%20Calling_SNPS_mpileup.ipynb) - via `samtools` & [`bcftools`](https://samtools.github.io/bcftools/bcftools.html) 
  * Reformatted merged transcriptome/genome file for usability
10. **Finalized:**
  * Cleaned up notebooks
  * Commented out all notebooks 
  * Elaborated in README files
  * Created Results folder with pertinent files, and upload large files to Owl
  * [Prepared finalized IGV session](https://github.com/laurahspencer/546-Bioinformatics/blob/master/2016-10_Geo-Ann-Project/Jupyter-Notebooks/09%20Visualizing%20with%20IGV%20.ipynb) that anyone can open

```diff
+ this will be highlighted in green
- this will be highlighted in red
```
