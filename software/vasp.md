---
description: >-
  The Vienna Ab initio Simulation Package (VASP) is a package for performing
  advanced mechanical computations. This page will explain how VASP can be
  accessed and used on Oscar.
---

# VASP

## Setting up VASP

In order to use VASP, you must be a part of the `vasp` group on Oscar. To check your groups, run the `groups` command in the terminal.

First, you must choose which VASP module to load. You can see the available modules using `module avail vasp`. You can then load your preferred VASP module using `module load <module-name>`.

## Running VASP

Within a batch job, you should specify the number of MPI tasks as

```text
mpirun -n <number-of-tasks> vasp_std
```

If you would like 40 cores for your calculation, you would include the following in your batch script:

```text
# 2 nodes
#SBATCH -n 2
# 20 CPUs per node/task
#SBATCH -c 20

mpirun -n 2 vasp_std
```

{% hint style="info" %}
If you're not sure how many cores you should include in your calculation, refer to [Selecting the right amount of cores for a VASP calculation](https://www.nsc.liu.se/~pla/blog/2015/01/12/vasp-how-many-cores/)
{% endhint %}

The mpirun command is used to launch an MPI job.



