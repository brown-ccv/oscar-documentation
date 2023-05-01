# System Hardware

## Oscar Specifications

|                        |       |
| ---------------------- | ----- |
| **Compute Nodes**      | 461   |
| **Total CPU Cores**    | 17424 |
| **GPU Nodes**          | 69    |
| **Total GPUs**         | 474   |
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

Below are node details including cores and memory for all partitions.

| **Partition** | <p><strong>Total</strong><br><strong>Nodes</strong></p> | <p><strong>Total</strong><br><strong>Cores</strong></p> | <p><strong>Cores</strong><br><strong>Per Node</strong></p> | <p><strong>Total</strong><br><strong>GPUs</strong></p> | <p><strong>Memory Per</strong><br><strong>Node (GB)</strong></p> |
| ------------- | ------------------------------------------------------- | ------------------------------------------------------- | ---------------------------------------------------------- | ------------------------------------------------------ | ---------------------------------------------------------------- |
| batch         | 384                                                     | 14272                                                   | 24-48                                                      | n/a                                                    | 95-385                                                           |
| bigmem        | 4                                                       | 128                                                     | 32                                                         | n/a                                                    | 772-2146                                                         |
| gpu           | 46                                                      | 2216                                                    | 8-64                                                       | 358                                                    | 95-1030                                                          |
| gpu-he        | 12                                                      | 552                                                     | 24-64                                                      | 84                                                     | 192-1030                                                         |
| debug         | 4                                                       | 96                                                      | 24                                                         | n/a                                                    | 95                                                               |
| gpu-debug     | 3                                                       | 24                                                      | 8                                                          | 12                                                     | 192                                                              |
| vnc           | 25                                                      | 584                                                     | 8-32                                                       | 22                                                     | 95-773                                                           |
| viz           | 2                                                       | 16                                                      | 8                                                          | 8                                                      | 192                                                              |

## Hardware details

Hardware details for all partitions. The Features column shows the features available for the --constraint option for SLURM. This includes the available CPU types as well GPUs.

| Partition | CPUS/ Node | Nodes | Total CPUs | GPUs/ Node | Total GPUs | Memory (GB) | Features                                                |
| --------- | ---------- | ----- | ---------- | ---------- | ---------- | ----------- | ------------------------------------------------------- |
| batch     | 48         | 164   | 7872       | n/a        | n/a        | 385         | 48core, intel, cascade, edr                             |
| batch     | 32         | 40    | 1280       | n/a        | n/a        | 385         | 32core, intel, scalable, cascade, edr                   |
| batch     | 24         | 34    | 816        | n/a        | n/a        | 192         | 24core, intel, e5-2670, e5-2600, scalable, skylake, fdr |
| batch     | 24         | 42    | 1008       | n/a        | n/a        | 95          | 24core, intel, e5-2670, e5-2600, scalable, skylake, fdr |
| batch     | 24         | 4     | 96         | n/a        | n/a        | 385         | 24core, intel, e5-2670, e5-2600, scalable, skylake, fdr |
| batch     | 32         | 100   | 3200       | n/a        | n/a        | 192         | 32core, intel, scalable, cascade, edr                   |
| bigmem    | 32         | 2     | 64         | n/a        | n/a        | 772         | 32core, intel, scalable, cascade, edr                   |
| bigmem    | 32         | 2     | 64         | n/a        | n/a        | 2146        | 32core, intel, scalable, cascade, edr                   |
| gpu       | 64         | 2     | 128        | 8          | 16         | 1030        | amd, gpu, geforce3090, ampere                           |
| gpu       | 32         | 2     | 64         | 5          | 10         | 385         | intel, gpu, titanrtx, turing, skylake, 6142             |
| gpu       | 24         | 1     | 24         | 5          | 5          | 192         | intel, gpu, titanrtx, turing, skylake, 6142             |
| gpu       | 48         | 1     | 48         | 10         | 10         | 385         | intel, gpu, quadrortx, turing, cascade                  |
| gpu       | 32         | 10    | 320        | 10         | 100        | 385         | intel, gpu, quadrortx, turing, cascade                  |
| gpu       | 64         | 10    | 640        | 8          | 80         | 1030        | amd, gpu, geforce3090, ampere                           |
| gpu       | 64         | 1     | 64         | 7          | 7          | 1030        | amd, gpu, geforce3090, ampere                           |
| gpu       | 48         | 4     | 192        | 8          | 32         | 1030        | amd, gpu, geforce3090, ampere                           |
| gpu       | 64         | 10    | 640        | 8          | 80         | 1030        | amd, gpu, a5000, ampere                                 |
| gpu       | 8          | 4     | 32         | 4          | 16         | 95          | intel, gpu, titanv, volta, skylake, 5122                |
| gpu       | 64         | 1     | 64         | 2          | 2          | 1030        | amd, gpu, a5000, ampere                                 |
| gpu-he    | 48         | 1     | 48         | 8          | 8          | 1030        | amd, gpu, a40, ampere                                   |
| gpu-he    | 48         | 2     | 96         | 8          | 16         | 1030        | amd, gpu, a40, ampere                                   |
| gpu-he    | 24         | 3     | 72         | 4          | 12         | 192         | intel, gpu, 4gpu, v100, volta, skylake, 6126            |
| gpu-he    | 40         | 2     | 80         | 8          | 16         | 515         | intel, gpu, v100, volta, haswell                        |
| gpu-he    | 64         | 4     | 256        | 8          | 32         | 1030        | amd, gpu, a6000, ampere                                 |
| debug     | 24         | 4     | 96         | n/a        | n/a        | 95          | 24core, intel, e5-2670, e5-2600, scalable, skylake, fdr |
| gpu-debug | 8          | 3     | 24         | 4          | 12         | 192         | gpu, p100, pascal                                       |
| vnc       | 32         | 2     | 64         | 7          | 14         | 773         | gpu, 1080ti, pascal                                     |
| vnc       | 8          | 2     | 16         | 4          | 8          | 192         | gpu, p100, pascal                                       |
| vnc       | 24         | 21    | 504        | n/a        | n/a        | 95          | 24core, intel, e5-2670, e5-2600, scalable, skylake, fdr |
| viz       | 8          | 2     | 16         | 4          | 8          | 192         | gpu, p100, pascal                                       |
