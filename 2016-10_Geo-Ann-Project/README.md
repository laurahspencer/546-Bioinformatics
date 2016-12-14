### Annotating large scaffolds in _Panopea generosa_ genome
##### Project repository for FISH-546-Bioinformatics

#### My class project:
* **End Goal:** To annotate a small portion of the _Panopea generosa_ (geoduck) genome.  
* **Background:** Steven & Brent [sampled geoduck in 2015](http://onsnetwork.org/halfshell/2015/08/11/big-day-big-clam/); they sent the samples off to BGI for sequencing, and have since been working on annotating the [gonad transcriptome](http://onsnetwork.org/halfshell/2015/07/09/first-look-at-geoduck-transcriptome/); check out Steven's [blog](http://onsnetwork.org/halfshell/category/panopea-generosa/) for updates.  
* **Process:** I will utilize the aforementioned annotated gonad transcriptome to annotate a portion of the genome, specifically scaffolds >= 70k base pairs. I will thus blast the transcriptome against the genome, hopefully get some matches, and then cross-reference to identify protein-coding genes. I will then use a series of open-source tools & RNASeq read data to identify candidate miRNA, transposable elements, 

#### Repository Structure:  
546-Bioinformatics  
* **.gitignore**: files >100MB are listed in this file, and thus not uploaded to the GitHub cloud.
* **2016-10_Geo-Ann-Project**: _Files specific to the geoduck genome annotation project_  
  * **analyses**:  _results from blasting and other data manipulation_
  * **data**: _raw data, and data subsets_
  * **images**: all images associated with this project
  * **Jupyter-Notebooks**: _My primary notebook used for this project is the [01 Geoduck Annotation Project](https://github.com/laurahspencer/546-Bioinformatics/blob/master/2016-10_Geo-Ann-Project/Jupyter-Notebooks/Geoduck%20Annotation%20Project.ipynb); refer to this for project record and replication steps; folder also includes a "Blasting-101" notebook_
  * **scripts**               ---- _Scripts used in this project; including a helpful reference document_

#### Project Timeline, by week #  

1. Learn basics of command-line operation, data mangement & manipulation & project tracking;  
2. Get comfortable with common bioinformatics tools, such as GitHub & Jupyter Notebook; identify project and obtain data;
3. Begin working with data; use blast to compare transcriptome to genome; end goal -> have a blast output file
4. Understand contents of blast output file; learn how to cross-walk the annotated transcriptome against the blast output file to identify protein-sequencing DNA - aka what program(s) to use? 
5. Re-blast based on feedback; format data, visualize feature track via IGV, combine sequence info with Contig & Scaffold ID's
6. Merge annotated transcriptome data with my data to connect transcriptome protein/gene ontology data 
7. ID:  
  * miRNA
  * transposable elements
8. ID: 
  * Potential Methylation sites via finding CpGs    
  * Begin visualizing data via IGV
9. ID:
  * Align RNASeq reads (from Steven) to scaffolds
  * ID SNP sites from aligned reads 
  * Reformat merged transcriptome/genome file for usability
10. Finalize:
  * Clean up notebooks
  * Comment out all notebooks 
  * 


10. Finishing touches

### Data manipulation workflow

**Pare down genome, identify locations that match transcriptome sequences:**  
--> Subset genome for >70k bp scaffolds  
----> Blast transcriptome against genome scaffolds  
------> **Product: tab file showing where transcriptome sequences match sequences in the >70k scaffolds, denoted by scaffold ID &     contig ID (no bp or protein ID info)**

**Merge all data:**  
--> reformat genome file to tabular  
----> merge genome file with blastn results; only keep rows with common contigs  
------> Connect contig ID's OR bp sequences with known coding proteins identifed in annotated transcriptome   
--------> Blast unknown sequences against UniProt database to try to ID genes not found in the transcriptome  
----------> Identify miRNA sequences  
------------> Identify lncRNA sequences   
--------------> Product Goal: data file containing Scaffold ID +  Contig ID + BP seq + Uniprot ID + Animal Source + Gene Ontology Data
