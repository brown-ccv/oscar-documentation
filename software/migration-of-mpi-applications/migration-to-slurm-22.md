---
description: ⛔Under Construction
---

# Migration to Slurm 22

In January 2023, Slurm will be migrated to version 22. This may require you to rebuild your MPI applications. To help facilitate this, we are providing access to a test cluster with the new version of Slurm. Please note - some of the older, existing MPI modules will be deprecated and removed from the system in the near future. Please see below for details.

## Instructions for Testing New Slurm

### SSH

1. `ssh into Oscar`
2. `ssh slurm02` from a terminal
3. `ssh node1947`
4. start an interactive job
5. start an interactive job: `interact -q image-test` for cpu-only tests, or `interact -q a5000-gcondo` for gpu test.\


### OOD

## MPI Modules

