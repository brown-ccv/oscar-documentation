---
title: Submit Gpu
date: '2019-01-31T22:03:37.000Z'
draft: false
project: Oscar
section: GPU Computing
weight: 0
---

# Submitting GPU Jobs

The Oscar GPUs are in a separate partition to the regular compute nodes. The partition is called `gpu`. To see how many jobs are running and pending in the gpu partition, use

```
allq gpu
```

## Interactive use

To start an session on a GPU node, use the `interact` command and specify the `gpu` partition. You also need to specify the requested number of GPUs using the `-g` option:

```
interact -q gpu -g 1
```

## Batch jobs

Here is an example batch script for a cuda job that uses 1 gpu and 1 cpu for 5 minutes

```bash
#!/bin/bash

# Request a GPU partition node and access to 1 GPU
#SBATCH -p gpu --gres=gpu:1

# Request 1 CPU core
#SBATCH -n 1
#SBATCH -t 00:05:00

# Load a CUDA module
module load cuda

# Run program
./my_cuda_program
```

To submit this script:

```
sbatch my_script.sh
```

## DGX GPU Nodes in the GPU-HE Partition

All the nodes in the gpu-he partition have V100 GPUs. However, two of them are DGX nodes (gpu1404/1405) which have 8 GPUs. When a gpu-he job requests for more than 4 GPUs, the job will automatically be allocated to the DGX nodes.&#x20;

The other non-DGX nodes actually have  a better NVLink interconnect topology as all of them have direct links to the other. So the non-DGX nodes are better for a gpu-he job if the job does not require more than 4 GPUs.&#x20;
