# System Hardware

## Oscar Specifications

| Category | Specifications |
| :--- | :--- |
| Computer Nodes | 341 |
| GPU Nodes | 45 |
| Login Nodes | 2 |
| Large Memory Nodes \(&gt;512GB\) | 4 |
| Total CPU Cores | 11792 |
| Total GPUs | 199 |
| Total Storage \(GPFS Filesystem\) | 3.27PB |
| Operating Systems | RedHat EL 7.3 \(Linux\) |
| Job Scheduler | Slurm Workload Manager |

## Active Nodes per partition

**Partition**

| Partition | Total Nodes | Total CPUS | Cores/Node | Mem/Node \(GB\) |
| :--- | :--- | :--- | :--- | :--- |
| batch | 262 | 9040 | 24-48 | 95-385 |
| gpu | 34 | 1448 | 8-64 | 95-1030 |
| gpu-he | 11 | 488 | 24-64 | 192-1030 |
| bigmem | 4 | 128 | 32 | 772-2146 |
| vnc | 23 | 568 | 24-32 | 95-773 |
| debug | 4 | 96 | 24 | 95 |
| gpu-debug | 3 | 24 | 8 | 192 |

## Compute Nodes

Oscar has  compute nodes in the partitions mentioned below.

{% hint style="info" %}
Nodes could be down for repair. Use the `sinfo` command to check node status on Oscar.
{% endhint %}

### batch

The batch partition is for programs/jobs which need neither GPUs nor large memory.

### bigmem

The bigmem partition is for programs/jobs which require large memory. There are 4 nodes in the bigmem partition.

### debug

The debug partition is for users to debug programs/jobs. There are 7 nodes in the debug partition. 

### gpu

The gpu partition is for programs/jobs which require GPUs. There are 19 nodes \(145 GPUs\) in the gpu partition.

### gpu-debug

The gpu-debug partition is for users to debug gpu programs/jobs. There is 1 node \(4 GPUs\) in the gpu-debug partition.

### gpu-he

The gpu-he partition is for programs/jobs which need to access high-end GPUs. There are 5 nodes \(28 GPUs\) in the gpu-he partition.

### vnc

The vnc partition is for users to run programs/jobs in an graphical desktop environment. There are 27 nodes \(16 GPUs\) in the vnc partition.

