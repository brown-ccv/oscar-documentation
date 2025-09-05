---
title: Matlab Batch
date: '2019-01-31T22:07:36.000Z'
draft: false
project: Oscar
section: MATLAB
weight: 0
---

# Matlab Batch Jobs

Matlab can be used within a batch script. Here is an example batch script for running a serial Matlab program on an Oscar compute node:

```bash
#!/bin/bash

# Request an hour of runtime:
#SBATCH --time=1:00:00

# Default resources are 1 core with 2.8GB of memory.

# Use more memory (4GB):
#SBATCH --mem=4G

# Specify a job name:
#SBATCH -J MyMatlabJob

# Specify an output file
#SBATCH -o MyMatlabJob-%j.out
#SBATCH -e MyMatlabJob-%j.out

# Run a matlab function called 'foo.m' in the same directory as this batch script.
matlab -r "run foo.m; exit"
```

This is also available in your home directory as the file:

```
~/batch_scripts/matlab-serial.sh
```

Note the `exit` command at the end which is very important to include either there or in the Matlab function/script itself. If you don't make Matlab exit the interpreter, it will keep waiting for the next command until SLURM cancels the job after running out of requested walltime. So for example, if you requested 4 hours of walltime and your actual program completes in 1 hour, the SLURM job will not complete until the designated 4 hours which results in idle cores and wastage of resources and also blocks up your other jobs.

If the name of your batch script file is `matlab-serial.sh`, the batch job can be submitted using the following command:

```
sbatch matlab-serial.sh
```
