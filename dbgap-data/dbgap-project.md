---
description: This page describes in detail how to run dbGaP workloads on Oscar.
---

# dbGaP Project

The database of Genotypes and Phenotypes \(dbGaP\) was developed to archive and distribute the data and results from studies that have investigated the interaction of genotype and phenotype in Humans. The PI is responsible for completing the [NIH dbGaP application online](https://dbgap.ncbi.nlm.nih.gov/aa/wga.cgi?page=login).   

#### dbGaP Oscar Implementation

The dbGaP data is classified as controlled-access data. The workflow on Oscar is architected to store data on the Isilon enterprise storage and compute will be performed on nodes in the dbgap slurm partition.

* In terms of compute-resources, the dbGaP partition consists of: 

  * 35 Nodes \* 24 cores = 840 cores. 
  * 125G physical memory per-node
  * Nodes are exclusive access only by default. 

* The network interfaces are explicitly disabled i.e. no internet access is enforced on these nodes. All input/output data must go through the transfer server and access is controlled by secure AD groups. 

  * The current implementation allows access to Matlab and Intel license servers. 
  * Multi-node MPI jobs are supported. 

* PI determines the members of the AD group and is responsible for data security.

