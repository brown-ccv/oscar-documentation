---
description: >-
  Gaussian is a general purpose computational chemistry package. Oscar uses the
  Gaussian 9 package.
---

# Gaussian

## Setting Up Gaussian

In order to use Gaussian on Oscar, you must be a part of the `ccv-g09` group. To check your groups, run the `groups` command in the terminal.

You must first choose a Gaussian module to load. To see available Gaussian modules, run `module avail gauss`. You can load a Gaussian module using the command `module load <module-name>`.&#x20;

### Available Versions

* Gaussian 9 (g09)
* Gaussian 16 (g16)

NOTE: There are three versions of `g09`, you can load any one of those, but the newer version `g16` is preferred now. If using `g09` just replace `g16` below with `g09`.

## Running Gaussian

Gaussian can be run either interactively or within a batch script using one of two command styles:

* `g16 job-name`
* `g16 <input-file >output-file`

In the first form, the program reads input from `job-name.gjf` and writes its output to `job-name.log`. When no job-name has been specified, the program will read from standard input and write to standard output

Given a valid .gjf file (we'll call it `test-file.gjf`), we can use the following simple batch script to run Gaussian:

#### g16-test.sh

```
#!/bin/sh
# Job name
#SBATCH -J g16-test

# One task/node
#SBATCH -n 1

# Eight CPUs per task
#SBATCH -c 8

# batch partition
#SBATCH -p batch

# Run the command
g16 test-file.gjf
```

Then queue the script using

```
sbatch g16-test.sh
```

Once the job has been completed, you should have a `g16-test.out`, a `g16-test.err`, and a `test-file.out`.
