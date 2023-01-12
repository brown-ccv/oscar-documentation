# MPI Jobs

Resources from the web on getting started with MPI:

* [https://computing.llnl.gov/tutorials/mpi](https://computing.llnl.gov/tutorials/mpi)
* [http://mpitutorial.com](http://mpitutorial.com/)
* [http://www.math-cs.gordon.edu/courses/cps343/presentations/Intro\_to\_MPI.pdf](http://www.math-cs.gordon.edu/courses/cps343/presentations/Intro\_to\_MPI.pdf)

MPI is a standard that dictates the semantics and features of "message passing". There are different implementations of MPI. Those installed on Oscar are

* MVAPICH2
* OpenMPI

We recommend using MVAPICH2 as it is integrated with the SLURM scheduler and optimized for the Infiniband network.

## MPI modules on Oscar

The MPI module is called "mpi". The different implementations (mvapich2, openmpi, different base compilers) are in the form of versions of the module "mpi". This is to make sure that no two implementations can be loaded simultaneously, which is a common source of errors and confusion.

<pre><code><strong>$ module avail mpi/
</strong>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ name: mpi*/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                    
mpi/hpcx_2.7.0_gcc_10.2_slurm22                                     
mpi/mvapich2-2.3.5_gcc_10.2_slurm22                             
mpi/openmpi_4.0.7_gcc_10.2_slurm22                  
mpi/openmpi_4.0.7_intel_2020.2_slurm22                                            
mpi4py/3.1.4_py3.9.0_slurm22                    
</code></pre>

You can just use "`module load mpi`" to load the default version which is `mpi/openmpi_4.0.7_gcc_10.2_slurm20`. This is the recommended version.

The module naming format is

```
mpi/<implementation>-<version>_<base compiler>
```

### `srun` instead of `mpirun`

**Use `srun --mpi=pmix` or `srun --mpi=pmi2` to run MPI programs.** All MPI implementations listed with suffix `_slurm22` are built with SLURM support. Hence, the programs need to be run using SLURM's `srun` command, except if you are using the above mentioned legacy versions.

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
module load mpi

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
module load mpi

export OMP_NUM_THREADS=4
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
