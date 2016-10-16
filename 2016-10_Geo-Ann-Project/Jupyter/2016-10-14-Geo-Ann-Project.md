
Opening BLAST program


```python
!/Applications/ncbi-blast-2.5.0+/bin/blastp
```

    BLAST query/options error: Either a BLAST database or subject sequence(s) must be specified
    Please refer to the BLAST+ user manual.


Steven & Brent [sampled geoduck in 2015](http://onsnetwork.org/halfshell/2015/08/11/big-day-big-clam/); this is me getting a glimpse of the raw data of said _p. generosa_ genome; BGI did the sequencing, and the files are [here](http://owl.fish.washington.edu/P_generosa_genome_assemblies_BGI/20160512/). 


```python
! curl http://owl.fish.washington.edu/P_generosa_genome_assemblies_BGI/20160512/Panopea_generosa.scafSeq \
| head 
```

      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
      0     0    0     0    0     0      0      0 --:--:--  0:00:02 --:--:--     0>scaffold1 26.6
    ACTAACAGACGATCATTAAATACAGTCATACAGAGCAAATGAATTAAGCAATAACCTTGTCTTTAAAGGCCACTTTTGCTCATTCCCTtgtcttgctgct
    taaaacaagcttgactgtagatgtatccttaaaggctctcacaaagcattataaccgttatatcaattcattctatgatgctttaGCCCTTTACTCCATA
    CATACGTGTTTTCCCGCACCAATCACAGAAtgcctttagaaactgttttccactctgtcagttaatataaacataagttacccaataattcaaaagccat
    ctatattagaggtgtccaaaggcgtctctattaggtgtccaaaggcgtcgatatgaagtaaagggttaaatcaaTTTTTTGTAACCCCATCTGTTAATAT
    ACATATATCTAGCTGATGTAATTTACTATGACCTTAAAATGATTTTCGTAAACTCAGTAAAGCTCATTTTAACAAGTTTGCAAAATATATATTATGCAAG
    GCTGTGTCGGGCATTATATCATTTTTTGCCAATGAGTTGAATAAATTTATCATTGACTTTAAAAAGGTTTCCATCTATCTTAGAAATAGATATGACGGAC
    ACTATGGTTTTACCATGACAAGTCAACaaatcgttatcatgtaccattaaatctgatactatattggttttccaggaaattgttttaattccatggcact
    cgtaaatattCACTTGTTTTCTGATGTAACTTGTTTTTGTTGTTTTTTCAGCCTGAATATAGATAACTATAACNGTTATCATGTACCATTAAATCTGATA
    CTATATTGGTTTTCCAGGAAATTGTTTTAATTCCATGGCACTCGTAAatattcacttgttttctgatgtaacttgtttttgttgttttttcagcctgaat
      0 1276M    0 43899    0     0  18940      0 19:38:15  0:00:02 19:38:13 19020
    curl: (23) Failed writing body (0 != 11584)



```python

```
