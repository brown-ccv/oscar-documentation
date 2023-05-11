---
description: Memory-Intensive Workloads
---

# Large Memory Nodes on Oscar

Users can check the nodes in a partition using this command `nodes` . As of May 2023 the Oscar cluster currently has following nodes in `bigmem` partition.&#x20;

```
    NODES CORES  CPU/NODE  MEM     Features                           PARTITION
    2	  64	 32-cores  2095GB  32core,intel,scalable,cascade,edr  bigmem
    2	  64	 32-cores  753GB   32core,intel,scalable,cascade,edr  bigmem
```

All Oscar users have access to this partition, and can submit jobs to it. To submit batch jobs to large memory nodes, include the following in your batch script:

```
#SBATCH -p bigmem
```

To run an interactive job on large memory node, launch the `interact` command with the following flag:

```
$ interact -q bigmem
```

