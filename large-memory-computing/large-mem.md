---
description: Memory Intensive Workloads
---

# Large Memory Nodes on Oscar

Users can check the nodes in a partition using this command `nodes | grep bigmem` . As of March 2020 the Oscar cluster currently has following nodes in bigmem partition. 

```text
    NODES CORES  CPU/NODE    MEM     Features                  PARTITION
    2     64     2-cores     2096GB  32core,intel,cascade,edr  bigmem
    8     256    32-cores    376GB   32core,intel,cascade,edr  bigmem
    2     64     32-cores    754GB   32core,intel,cascade,edr  bigmem 
```

To Submit Batch Jobs to large memory nodes:

```text
#SBATCH -p bigmem
```

To Run an interactve job on large memory node:

```text
$ interact -a bigmem
```



