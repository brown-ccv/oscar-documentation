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

## GPU-HE Partition: MIG-ed and un-MIG-ed GPUs

The GPU-HE partition has a mix of B200 DGX nodes as well as RTX Pro 6000 Max-Q nodes. These GPUs have the ability to be sub-divided into virtualized "slices" of GPUs. This is a feature referred to as Multi-Instance GPU (MIG). For example, a B200 with 180 GB of VRAM can be virtualized into two MIG instances each having 90 GB of VRAM. For now, we have "MIG-ed" all of the Max-Q GPUs into two 48 GB slices, and we have MIG-ed two of the B200 nodes' GPUs into 90 GB slices. A MIG-ed GPU is allocated first by default.&#x20;

To request a un-MIG-ed GPU explicitly, users need to specify the feature of nomig

```
#SBATCH --constraint=nomig
```

To request a MIG-ed GPU explicitly, users need to specify the feature of nomig

```
#SBATCH --constraint=mig
```

## DGX GPU Nodes in the GPU-HE Partition

All the nodes in the gpu-he partition have V100 GPUs. However, two of them are DGX nodes (gpu1404/1405) which have 8 GPUs. When a gpu-he job requests for more than 4 GPUs, the job will automatically be allocated to the DGX nodes.&#x20;

The other non-DGX nodes actually have  a better NVLink interconnect topology as all of them have direct links to the other. So the non-DGX nodes are better for a gpu-he job if the job does not require more than 4 GPUs.&#x20;
