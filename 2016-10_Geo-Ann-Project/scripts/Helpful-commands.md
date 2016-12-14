### Helpful bash commands used in this project
**Note: in Jupyter Notebook all commands (except for directory maneuvers) must begin with `!`**

#### Open BLAST on my computer
protein-protein blast: `/Applications/ncbi-blast-2.5.0+/bin/blastp` 
nucleotide-nucleotide blast: `/Applications/ncbi-blast-2.5.0+/bin/blastn'

#### Download a file from the web
`curl -O [website url]
`-o` (lowercase o) the result will be saved in the filename provided in the command line
`-O` (uppercase O) the filename in the URL will be taken and it will be used as the filename to store the result

#### Create new directory files
    mkdir data/ analyses/ scripts/

#### Search within file for desired sequence (string) and color-code it
    grep -C2 "desiredstring" --color=auto

#### Count number of sequences in a fasta file (assuming each sequence begins with >
    grep -c "^>" datafile.fasta

#### Remove hard line breaks within scaffolds
    awk !/^>/ { printf "%s", $0; n = "\n" } /^>/ { print n $0; n = "" } END { printf "%s", n } \
    datafile.fasta > newdatafile.fasta

#### Build a database (to blast another data file against)
    /Applications/ncbi-blast-2.5.0+/bin/makeblastdb \
    -in genomefile.fasta \
    -dbtype nucl \
    -out genomefiledb_db

#### Blast a fasta file against a database (nucleotide-nucleotide)
    /Applications/ncbi-blast-2.5.0+/bin/blastn \
    -query datafile.fsta \
    -db genomefile_db \
    -outfmt 6  \
    -out blastouputfile.tab

#### Using MD5 to compare file contents
    cd <directory with files in question>
    md5 *.* >> md5.txt