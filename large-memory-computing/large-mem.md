---
description: Memory-Intensive Workloads
---

# Large Memory Nodes on Oscar

Users can check the nodes in a partition using this command `nodes` . As of July 2025 the Oscar cluster currently has following nodes in `bigmem` partition.&#x20;

```
$ nodeinfo|grep bigmem
node1609  32-core  770GB 32core,intel,scalable,cascade,edr         idle~      0     0%    766GB  99.6%   bigmem                       
node1610  32-core  770GB 32core,intel,scalable,cascade,edr           mix     17  53.1%    633GB  82.4%   bigmem                       
node1611  32-core  770GB 32core,intel,scalable,cascade,edr         idle~      0     0%    712GB  92.6%   bigmem                       
node1612  32-core  770GB 32core,intel,scalable,cascade,edr           mix     18  56.2%    577GB  75.1%   bigmem                       
node2412 192-core 1540GB 192core,amd,genoa,edr                       mix    100    52%   1061GB    69%   bigmem                       
node2415 192-core 1540GB 192core,amd,genoa,edr                       mix    153  79.6%   1231GB    80%   bigmem    
```

All Oscar users have access to this partition, and can submit jobs to it. To submit batch jobs to large memory nodes, include the following in your batch script:

```
#SBATCH -p bigmem
```

To run an interactive job on large memory node, launch the `interact` command with the following flag:

```
$ interact -q bigmem
```

{% hint style="info" %}
The current Batch partition has many nodes of 1540GB memory. An HPC Priority account can submit jobs to the batch partition to use up to 1500G memory.
{% endhint %}
