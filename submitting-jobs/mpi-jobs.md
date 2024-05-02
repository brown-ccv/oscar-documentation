# MPI Jobs

Resources from the web on getting started with MPI:

* [https://computing.llnl.gov/tutorials/mpi](https://computing.llnl.gov/tutorials/mpi)
* [http://mpitutorial.com](http://mpitutorial.com/)
* [http://www.math-cs.gordon.edu/courses/cps343/presentations/Intro\_to\_MPI.pdf](http://www.math-cs.gordon.edu/courses/cps343/presentations/Intro\_to\_MPI.pdf)

MPI is a standard that dictates the semantics and features of "message passing". There are different implementations of MPI. Those installed on Oscar are

* hpcx-mpi
* OpenMPI

We recommend using hpcx-mpi as it is integrated with the SLURM scheduler and optimized for the Infiniband network.

## MPI modules on Oscar

Oscar uses a Hierarchical module system where users need to load the required MPI module before they can load any other module that depends upon that particular MPI module. You can read more about this module system [here](../rhel9-migration/lmod-new-module-system.md#lmod-hierarchical-module-system).

Currently, the two available mpi implementations on Oscar are `hpcx-mpi` and `openmpi`. You can check the available versions by running these commands

{% code overflow="wrap" %}
```bash
$ module avail hpcx-mpi

------------------------ /oscar/runtime/software/spack/0.20.1/share/spack/lmod/linux-rhel9-x86_64/Core -------------------------
   hpcx-mpi/4.1.5rc2s-yflad4v
   
$ module avail openmpi

------------------------ /oscar/runtime/software/spack/0.20.1/share/spack/lmod/linux-rhel9-x86_64/Core -------------------------
   openmpi/4.1.2-s5wtoqb    openmpi/4.1.5-hkgv3gi    openmpi/4.1.5-kzuexje (D)
             
```
{% endcode %}

`hpcx-mpi/4.1.5rc2s-yflad4v` is the recommend version of MPI on Oscar. It can be loaded by running

```bash
module load hpcx-mpi
```

### `srun` instead of `mpirun`

**Use `srun --mpi=pmix` to run MPI programs.** All MPI implementations are built with SLURM support. Hence, the programs need to be run using SLURM's `srun` command.

The `--mpi=pmix` flag is also required to match the configuration with which MPI is installed on Oscar.

## Running MPI programs - Interactive

To run an MPI program interactively, first create an allocation from the login nodes using the `salloc` command:

```
$ salloc -N <# nodes> -n <# MPI tasks> -p <partition> -t <minutes>
```

For example, to request 4 cores to run 4 tasks (MPI processes):

```
$ salloc -n 4 
```

Once the allocation is fulfilled, you can run MPI programs with the `srun` command:

```
$ srun --mpi=pmix ./my-mpi-program ...
```

When you are finished running MPI commands, you can release the allocation by exiting the shell:

```
$ exit
```

Also, if you only need to run a single MPI program, you can skip the `salloc` command and specify the resources in a single `srun`command:

```
$ srun -N <# nodes> -n <# MPI tasks> -p <partition> -t <minutes> --mpi=pmix ./my-mpi-program
```

This will create the allocation, run the MPI program, and release the allocation.

**Note: It is not possible to run MPI programs on compute nodes by using the `interact` command.**

`salloc` documentation: [https://slurm.schedmd.com/salloc.html](https://slurm.schedmd.com/salloc.html)

`srun` documentation: [https://slurm.schedmd.com/srun.html](https://slurm.schedmd.com/srun.html)

## Running MPI programs - Batch Jobs

Here is a sample batch script to run an MPI program:

```bash
#!/bin/bash

# Request an hour of runtime:
#SBATCH --time=1:00:00

# Use 2 nodes with 8 tasks each, for 16 MPI tasks:
#SBATCH --nodes=2
#SBATCH --tasks-per-node=8

# Specify a job name:
#SBATCH -J MyMPIJob

# Specify an output file
#SBATCH -o MyMPIJob-%j.out
#SBATCH -e MyMPIJob-%j.err

# Load required modules
module load hpcx-mpi/4.1.5rc2s

srun --mpi=pmix MyMPIProgram
```

## Hybrid MPI+OpenMP

If your program has multi-threading capability using OpenMP, you can have several cores attached with a single MPI task using the `--cpus-per-task` or `-c` option with `sbatch` or `salloc`. The environment variable `OMP_NUM_THREADS` governs the number of threads that will be used.

```bash
#!/bin/bash

# Use 2 nodes with 2 tasks each (4 MPI tasks)
# And allocate 4 CPUs to each task for multi-threading
#SBATCH --nodes=2
#SBATCH --tasks-per-node=2
#SBATCH --cpus-per-task=4

# Load required modules
module load hpcx-mpi/4.1.5rc2s

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
srun --mpi=pmix ./MyMPIProgram
```

The above batch script will launch 4 MPI tasks - 2 on each node - and allocate 4 CPUs for each task (total 16 cores for the job). Setting `OMP_NUM_THREADS` governs the number of threads to be used, although this can also be set in the program.

## Performance Scaling

The maximum theoretical speedup that can be achieved by a parallel program is governed by the proportion of sequential part in the program (Amdahl's law). Moreover, as the number of MPI processes increases, the communication overhead increases i.e. the amount of time spent in sending and receiving messages among the processes increases. For more than a certain number of processes, this increase starts dominating over the decrease in computational run time. This results in the overall program slowing down instead of speeding up as number of processes are increased.

**Hence, MPI programs (or any parallel program) do not run faster as the number of processes are increased beyond a certain point.**

If you intend to carry out a lot of runs for a program, the correct approach would be to find out the optimum number of processes which will result in the least run time or a reasonably less run time. Start with a small number of processes like 2 or 4 and first verify the correctness of the results by comparing them with the sequential runs. Then increase the number of processes gradually to find the optimum number beyond which the run time flattens out or starts increasing.

## Maximum Number of Nodes for MPI Programs

An MPI program is allowed to run on at most 32 nodes. When a user requests more than 32 nodes for an MPI program/job, the user will receive the following error:

> Batch job submission failed: Requested node configuration is not available
