# Slurm Migration

## Access the New Slurm Cluster

### 1. Remove Known Host Entry

Please run the following command on your local machine \(Mac/Linux\) to update the known\_hosts file. 

```
ssh-keygen -R "ssh.ccv.brown.edu"
```

### 2. Brown AD Password Only

Users can only log into Oscar using their Brown AD password.  Local Oscar passwords no longer work.

{% hint style="info" %}
You can change your Brown AD password at [https://myaccount.brown.edu](https://myaccount.brown.edu)
{% endhint %}

### 3. Duo and Passwordless SSH

### 4. File Owner and Access Issue

Due to the changes of uid in Oscar, some users may have issues accessing their files and/or directories. Please contact support@ccv.brown.edu if you have issues.

## Submit Jobs with MPI Applications for New Slurm

The new slurm 20.02.6 is built with pmix. So jobs with all MPI applications should be submitted with the following command:

```text
srun --mpi=pmix <mpi_application>
```

## MPI Applications to Migrate

| Software | Current Module Name | New Modue Name |
| :--- | :--- | :--- |
| cesm | 1.2.1 | planned |
| cesm | 1.2.2 | planned |
| cesm | 2.1.1 | planned |
| dedalus | 2.1905 | 2.1905\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |
| fenics | 2018.1.0 | planned |
| global\_arrays | 5.6.1\_openmpi\_2.0.3 | planned |
| gpaw | 1.2.0 | planned |
| gpaw | 1.2.0\_mvapich2-2.3a\_gcc | planned |
| gpaw | 0.10.0 | planned |
| gromacs | 2016.6 | planned |
| gromacs | 2018.2 | gromacs/2018.2\_hpcx\_2.7.0\_gcc\_10.2\_slurm20 |
| gromacs | 2018.2\_gpu | planned |
| gromacs | 2020.1 | gromacs/2020.4\_hpcx\_2.7.0\_gcc\_10.2\_slurm20 |
| hdf5 | 1.10.1\_parallel | 1.10.1\_mvapich2-2.3.5\_gcc\_10.2\_slurm20 |
| hdf5 | 1.10.5\_parallel | 1.10.5\_mvapich2-2.3.5\_intel\_2020.2\_slurm20 |
| hdf5 | 1.10.5\_openmpi\_4.0.0\_gcc | 1.10.5\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |
| hdf5 | 1.10.5\_openmpi\_3.1.3\_gcc | 1.10.5\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |
| hdf5 | 1.10.5\_fortran | 1.10.5\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |
| hdf5 | n/a | 1.10.7\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |
| hdf5 | n/a | 1.10.7\_openmpi\_4.0.5\_intel\_2020.2\_slurm20 |
| hdf5 | n/a | 1.12.0\_openmpi\_4.0.5\_intel\_2020.2\_slurm20 |
| lammps |  | 29Oct20\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |
| meme | 5.0.5 | planned |
| meshlab | 20190129\_qt59 | planned |
| Molpro | 2012.1.15 | planned |
| Molpro | 2015\_gcc | planned |
| Molpro | 2015\_serial | planned |
| Molpro | 2018.2\_ga | planned |
| Molpro | 2018.2\_no\_ga | planned |
| n2p2 | 1.0.0 | planned |
| newchem | 6.8-openmpi | planned |
| openfoam | 4.1 | planned |
| openfoam | 4.1a | planned |
| openfoam | 7 | planned |
| osu-mpi | 5.3.2 | planned |
| osu-mpi | 5.6.2\_mvapich2-2.3a\_gcc | planned |
| paraview | 5.1.0 | planned |
| paraview | 5.1.0\_yurt | planned |
| paraview | 5.4.1 | planned |
| paraview | 5.6.0\_yurt | planned |
| paraview | 5.6.0\_no\_scalable | planned |
| paraview | 5.8.0 | planned |
| paraview | 5.8.0\_mesa | planned |
| petsc | 3.7.5 | planned |
| petsc | 3.7.7 | planned |
| petsc | 3.8.3 | planned |
| polychord | 2 | planned |
| prophet | augustegm\_1.2 | planned |
| qmcpack | 3.7.0 | planned |
| qmcpack | 3.9.1 | planned |
| qmcpack | 3.9.1\_openmpi\_3.1.3\_gcc | planned |
| qmcpack | 3.9.1\_openmpi\_3.1.6 | planned |
| qmcpack | 3.9.1\_openmpi\_3.1.6\_gcc | planned |
| qmcpack | 3.9.2\_openmpi\_4.0.1\_gcc | planned |
| quantumespresso | 6.1 | planned |
| quantumespresso | 6.3 | planned |
| quantumespresso | 6.4 | quantumespresso/6.4\_openmpi\_4.0.5\_intel\_slurm20 |
| quantumespresso | 6.4.1 | planned |
| quantumespresso | 6.5 | quantumespresso/6.5\_openmpi\_4.0.5\_intel\_slurm20 |
| siesta | 3.2 | planned |
| siesta | 4.1 | planned |
| su2 | 7.0.1 | planned |
| su2 | 7.0.2 | planned |
| vasp | 5.4.1 | 5.4.1\_mvapich2-2.3.5\_intel\_2020.2\_slurm20 |
| vasp | 5.4.4 | 5.4.4\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |
| vasp | 5.4.4\_intel | 5.4.4\_mvapich2-2.3.5\_intel\_2020.2\_slurm20 |
| vasp | 6.1.1\_ompi405\_yqi27 | 6.1.1\_openmpi\_4.0.5\_intel\_2020.2\_yqi27\_slurm20 |
| wrf | 3.6.1 | planned |

## Deprecated MPI Applications

* mpi/cave\_mvapich2\_2.3rc2\_gcc
* mpi/cave\_mvapich2\_2.3b\_gcc
* mpi/cave\_mvapich2\_2.3b\_intel
* mpi/mvapich2-2.3a\_pgi
* mpi/mvapich2-2.3a\_gcc
* mpi/mvapich2-2.3a\_intel
* mpi/mvapich2-2.3b\_gcc
* mpi/mvapich2-2.3.1\_gcc
* mpi/openmpi\_2.1.1\_gcc
* mpi/openmpi\_2.0.3\_gcc
* mpi/openmpi\_3.1.3\_gcc
* mpi/openmpi\_4.0.0\_gcc
* mpi/openmpi\_4.0.0\_gcc\_i8
* mpi/openmpi\_4.0.1\_gcc
* mpi/openmpi\_4.0.3\_gcc
* mpi/openmpi\_4.0.4\_gcc
* mpi/5.6.1\_openmpi\_2.0.3
* lammps/11Aug17
* lammps/11Aug17\_serial
* lammps/16Mar18
* lammps/17Nov16
* lammps/22Aug18

  |  |  |
  | :--- | :--- |

