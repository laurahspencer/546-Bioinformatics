### Annotating large contigs in _Panopea generosa_ genome
##### Project repository for FISH-546-Bioinformatics
This is the repository housing my files pertinent to the Autumn 2016 FISH 546 course on Bioinformatics, taught by Dr. Steven Roberts.  The course syllabus: 
  "This course will teach core computing skills as well as project specific approaches. Each student will be developing and completing a     research project targeting journal article submission by the end of the Quarter. There will be an emphasis on developing habits that       increase automation which in turn will facilitate reproducibility. The course primary course platform will be GitHub, with each student   creating their own repository."

#### My class project:
* **End Goal:** To annotate a small portion of the _Panopea generosa_ (geoduck) genome.  
* **Background:** Steven & Brent [sampled geoduck in 2015](http://onsnetwork.org/halfshell/2015/08/11/big-day-big-clam/); they sent the samples off to BGI for sequencing, and have since been working on annotating the [gonad transcriptome](http://onsnetwork.org/halfshell/2015/07/09/first-look-at-geoduck-transcriptome/); check out Steven's [blog](http://onsnetwork.org/halfshell/category/panopea-generosa/) for updates.  
* **Process:** I will utilize the aforementioned annotated gonad transcriptome to annotate a portion of the genome, specifically scaffolds >= 70k base pairs. I will thus blast the transcriptome against the genome, hopefully get some matches, and then cross-reference to identify protein-coding genes. 

#### Repository Structure:  
546-Bioinformatics  
* **.gitignore**: files >100MB are listed in this file, and thus not uploaded to the GitHub cloud.
* **2016-10_Geo-Ann-Project**: _Files specific to the geoduck genome annotation project_  
  * **analyses**:  _results from blasting and other data manipulation_
  * **data**: _raw data, and data subsets_
  * **images**: all images associated with this project
  * **Jupyter-Notebooks**: _My primary notebook used for this project is the [Geoduck Annotation Project](https://github.com/laurahspencer/546-Bioinformatics/blob/master/2016-10_Geo-Ann-Project/Jupyter-Notebooks/Geoduck%20Annotation%20Project.ipynb); refer to this for project record and replication steps; folder also includes a "Blasting-101" notebook_
  * **scripts**               ---- _Scripts used in this project; including a helpful reference document_

#### Project Timeline, by week #  
1. Learn basics of command-line operation, data mangement & manipulation & project tracking;  
2. Get comfortable with common bioinformatics tools, such as GitHub & Jupyter Notebook; identify project and obtain data;
3. Begin working with data; use blast to compare transcriptome to genome; end goal -> have a blast output file
4. Understand contents of blast output file; learn how to cross-walk the annotated transcriptome against the blast output file to identify protein-sequencing DNA - aka what program(s) to use? 
5. Annotate! 
6. ...
