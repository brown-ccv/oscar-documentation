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

## Partition Overview

Oscar has the following [slurm](https://slurm.schedmd.com/) partitions. The number and size of jobs allowed on Oscar vary with both partition and type of user account. You can email support@ccv.brown.edu if you need advice on which partitions to use‌.

To list partitions on Oscar available to your account, run the following command:

```
$ sinfo -O "partition"     
```

To view _all_ partitions (including ones you don't have access to), replace the `-O` in the command above with `-aO`.

| Name      | Purpose                                                     |
| --------- | ----------------------------------------------------------- |
| batch     | general purpose computing                                   |
| debug     | short wait time, short run time partition for debugging     |
| vnc       | graphical desktop environment                               |
| gpu       | GPU nodes                                                   |
| gpu-he    | High End GPU nodes                                          |
| gpu-debug | short wait time, short run time partition for gpu debugging |
| bigmem    | large memory nodes                                          |

**batch** is the default partition.

## Partition Details

&#x20;Below are brief summary of partitions.  For the details of nodes in partitions, please see [here](../system-overview.md).

### batch

* General purpose computing
*   Priority is determined by account type (from highest

    to lowest: condo, priority, exploratory)

Condo limits apply to the group (i.e., they reflect the sum of all users on the condo). Condo users can check the limits on their condo with the command `condos`.

{% hint style="warning" %}
There is no limit on the time for condo jobs, but users should be aware that planned maintenance on the machine may occur (one month’s notice is given prior to any planned maintenance).‌
{% endhint %}

### debug

* Short wait time, short run time access for debugging
* All users have the same limits and priority on the debug partition

### vnc

* These nodes are for running VNC sessions/jobs
* Account type may affect Priority

### gpu

* For GPU-based jobs
* GPU Priority users get higher priority and more resources than free users on the GPU partition
* Condo users submit to the gpu partition with normal or priority access (if they have a priority account in addition to their condo)

### gpu-he

* For GPU-based jobs
* Uses Tesla V100 GPUs
* Restricted to High End GPU Priority users

### gpu-debug

* Short wait time, short run time gpu access for debugging
* All users have the same limits and priority on the gpu-debug partition

### bigmem

* For jobs requiring large amounts of memory
* Priority users get higher priority and more resources than free users on the bigmem partition
* Condo users submit to the bigmem partition with normal or priority access (if they have a priority account in addition to their condo)
* Premium users get higher priority and more resources than free users on the SMP partition
* Condo users submit to the SMP partition with normal or priority access (if they have a priority account in addition to their condo)
