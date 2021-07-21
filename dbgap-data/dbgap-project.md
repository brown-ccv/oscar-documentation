---
description: This page describes the dbGap architecture in Oscar.
---

# dbGaP Architecture

The database of Genotypes and Phenotypes \(dbGaP\) was developed to archive and distribute the data and results from studies that have investigated the interaction of genotype and phenotype in Humans. The PI is responsible for completing the [NIH dbGaP application online](https://dbgap.ncbi.nlm.nih.gov/aa/wga.cgi?page=login).   

## dbGaP Oscar Implementation

* The dbGap data is stored on the Isilon enterprise storage
  * All input/output data must go through the dbGap transfer server
  * Access to the dbGap transfer server and data is controlled by AD groups
  * A PI needs to request an AD group for a dbGap project
* Computing is performed in Oscar
  * DbGap jobs must be submitted to the dbGap partition, whose access is controlled by AD groups
  * A dbGap job runs exclusively on one or more nodes \(serial or MPI jobs\)
  * No internet access on the dbGap nodes when a job is running
  * A dbGap job can only access input and output directories in Isilon 
    * input directory: /dbGaP/data/import/&lt;dbGap\_project&gt;
    * Output directory: /dbGap/results/&lt;dbGap\_project&gt;
  * A dbGap job has access to Matlab and Intel license servers

