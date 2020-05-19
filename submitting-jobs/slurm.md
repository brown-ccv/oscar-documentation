---
title: Slurm
date: '2019-01-31T22:04:48.000Z'
draft: false
project: Oscar
section: Submitting jobs
weight: 0
icon: check
---

# Slurm Partitions

Oscar has the following slurm partitions

| Name | Purpose |
| :--- | :--- |
| batch | general purpose computing |
| debug | short wait time, short run time partition for debugging |
| gpu | GPU nodes |
| gpu-debug | short wait time, short run time partition for gpu debugging |
| bigmem | large memory nodes |
| vnc | graphical desktop environment |

**batch** is the default partition.

To list current partitions on Oscar, run the following commands:

```text
$ sinfo -O "partition"
PARTITION           
batch*              
debug               
test                
vnc                 
bigmem              
gpu                 
gpu-he              
gpu-debug        
```

