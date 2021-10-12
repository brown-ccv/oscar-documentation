# System Hardware

## Oscar Specifications

| Category                        | Specifications         |
| ------------------------------- | ---------------------- |
| Computer Nodes                  | 341                    |
| GPU Nodes                       | 45                     |
| Login Nodes                     | 2                      |
| Large Memory Nodes (>512GB)     | 4                      |
| Total CPU Cores                 | 11792                  |
| Total GPUs                      | 199                    |
| Total Storage (GPFS Filesystem) | 3.27PB                 |
| Operating Systems               | RedHat EL 7.3 (Linux)  |
| Job Scheduler                   | Slurm Workload Manager |

## Compute Nodes

Oscar has compute nodes in the partitions listed below.

* **batch **- The batch partition is for programs/jobs which need neither GPUs nor large memory.
* **bigmem **- The bigmem partition is for programs/jobs which require large memory. 
* **debug **- The debug partition is for users to debug programs/jobs.
* **gpu **- The gpu partition is for programs/jobs which require GPUs.
* **gpu-debug** - The gpu-debug partition is for users to debug gpu programs/jobs. 
* **gpu-he** -The gpu-he partition is for programs/jobs which need to access high-end GPUs. 
* **vnc** - The vnc partition is for users to run programs/jobs in an graphical desktop environment. 

Below are node details including cores and memory for all partitions. 

![Compute Nodes  in Partitions](<.gitbook/assets/ccv-doc-partitions (1).png>)

## Hardware details

Hardware details for all partitions. GRES shows the number of GPUs. The AVAIL_FEATURES shows the features available for the --constraint option for slurm. This includes the available CPUS as well GPUs 

![](<.gitbook/assets/Screen Shot 2021-10-12 at 12.03.33 PM.png>)
