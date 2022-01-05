# System Hardware

## Oscar Specifications

|                        |       |
| ---------------------- | ----- |
| **Compute Nodes**      | 341   |
| **Total CPU Cores**    | 11792 |
| **GPU Nodes**          | 45    |
| **Total GPUs**         | 373   |
| **Large Memory Nodes** | 4     |

## Compute Nodes

Oscar has compute nodes in the partitions listed below.

* **batch** - The batch partition is for programs/jobs which need neither GPUs nor large memory.
* **bigmem** - The bigmem partition is for programs/jobs which require large memory.&#x20;
* **debug** - The debug partition is for users to debug programs/jobs.
* **gpu** - The gpu partition is for programs/jobs which require GPUs.
* **gpu-debug** - The gpu-debug partition is for users to debug gpu programs/jobs.&#x20;
* **gpu-he** -The gpu-he partition is for programs/jobs which need to access high-end GPUs.&#x20;
* **vnc** - The vnc partition is for users to run programs/jobs in an graphical desktop environment.&#x20;

Below are node details including cores and memory for all partitions.&#x20;

| Partition | Total Nodes | Total Cores | Cores Per Node | Total GPUs | Memory Per Node (GB) |
| --------- | ----------- | ----------- | -------------- | ---------- | -------------------- |
| batch     | 262         | 9040        | 24-48          | n/a        | 95-385               |
| bigmem    | 4           | 128         | 32             | n/a        | 772-2146             |
| gpu       | 34          | 1448        | 8-64           | 269        | 95-1030              |
| gpu-he    | 11          | 488         | 24-64          | 76         | 192-1030             |
| debug     | 4           | 96          | 24             | n/a        | 95                   |
| gpu-debug | 3           | 24          | 8              | 12         | 192                  |
| vnc       | 23          | 568         | 24-32          | 16         | 95-773               |

## Hardware details

Hardware details for all partitions. The Features column shows the features available for the --constraint option for slurm. This includes the available CPU types  as well GPUs&#x20;



| Partition | Nodes | CPUS/ Node | Total CPUs | GPUs/ Node | Total GPUs | Memory (GB) | Features                                          |
| --------- | ----- | ---------- | ---------- | ---------- | ---------- | ----------- | ------------------------------------------------- |
| batch     | 38    | 24         | 912        | n/a        | n/a        | 192         | 24core,intel,e5-2670,e5-2600,scalable,skylake,fdr |
| batch     | 100   | 32         | 3200       | n/a        | n/a        | 192         | 32core,intel,scalable,cascade,edr                 |
| batch     | 68    | 48         | 3264       | n/a        | n/a        | 385         | 48core,intel,cascade,edr                          |
| batch     | 12    | 24         | 288        | n/a        | n/a        | 95          | 24core,intel,e5-2670,e5-2600,scalable,skylake,fdr |
| batch     | 4     | 24         | 96         | n/a        | n/a        | 385         | 24core,intel,e5-2670,e5-2600,scalable,skylake,fdr |
| batch     | 40    | 32         | 1280       | n/a        | n/a        | 385         | 32core,intel,scalable,cascade,edr                 |
| bigmem    | 2     | 32         | 64         | n/a        | n/a        | 2146        | 32core,intel,scalable,cascade,edr                 |
| bigmem    | 2     | 32         | 64         | n/a        | n/a        | 772         | 32core,intel,scalable,cascade,edr                 |
| gpu       | 4     | 8          | 32         | 4          | 16         | 95          | intel,gpu,titanv,volta,skylake,5122               |
| gpu       | 2     | 32         | 64         | 5          | 10         | 385         | intel,gpu,titanrtx,turing,skylake,6142            |
| gpu       | 10    | 32         | 320        | 10         | 100        | 385         | intel,gpu,quadrortx,turing,cascade                |
| gpu       | 12    | 64         | 768        | 8          | 96         | 1030        | amd,gpu,geforce3090,ampere                        |
| gpu       | 4     | 48         | 192        | 8          | 32         | 1030        | amd,gpu,geforce3090,ampere                        |
| gpu       | 1     | 24         | 24         | 5          | 5          | 192         | intel,gpu,titanrtx,turing,skylake,6142            |
| gpu       | 1     | 48         | 48         | 10         | 10         | 385         | intel,gpu,quadrortx,turing,cascade                |
| gpu-he    | 3     | 24         | 72         | 4          | 12         | 192         | intel,gpu,4gpu,v100,volta,skylake,6126            |
| gpu-he    | 2     | 40         | 80         | 8          | 16         | 515         | intel,gpu,v100,volta,haswell                      |
| gpu-he    | 3     | 48         | 144        | 8          | 24         | 1030        | amd,gpu,a40,ampere                                |
| gpu-he    | 3     | 64         | 192        | 8          | 24         | 1030        | amd,gpu,a6000,ampere                              |
| debug     | 4     | 24         | 96         | n/a        | n/a        | 95          | 24core,intel,e5-2670,e5-2600,scalable,skylake,fdr |
| gpu-debug | 3     | 8          | 24         | 4          | 12         | 192         | gpu,p100,pascal                                   |
| vnc       | 2     | 32         | 64         | 8          | 16         | 773         | gpu,1080ti,pascal                                 |
| vnc       | 21    | 24         | 504        | n/a        | n/a        | 95          | 24core,intel,e5-2670,e5-2600,scalable,skylake,fdr |

![](.gitbook/assets/features15.png)
