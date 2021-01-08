# Slurm Migration

## Access the New Slurm Cluster

### 1. Remove Known Host Entry

* for Mac/Linux, run the following command

```
ssh-keygen -R "ssh.ccv.brown.edu"
```

* For Windows
  * PuTTY: when PuTTY displays the warning message, click '**Yes**' to update PuTTY's cache with the new RSA key
  * Windows Terminal :  enter '**yes'** when you are asked "Are you sure you want to continue connecting \(yes/no\)".

### 2. Brown AD Password for Login

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

| Software | Current Module Name | New Modue Name |  |
| :--- | :--- | :--- | :--- |
| cesm | 1.2.1 | planned |  |
| cesm | 1.2.2 | planned |  |
| cesm | 2.1.1 | planned |  |
| dedalus | 2.1905 | 2.1905\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |  |
| fenics | 2018.1.0 | planned |  |
| global\_arrays |  | 5.8\_openmpi\_4.0.5\_gcc\_10.2\_slurm20gpawgpaw |  |
| gpaw |  | 20.10.0\_hpcx\_2.7.0\_intel\_2020.2\_slurm20 |  |
| gpaw |  | 20.10\_hpcx\_2.7.0\_intel\_2020.2\_slurm20 |  |
| gromacs |  | gromacs/2020.4\_gpu\_hpcx\_2.7.0\_gcc\_10.2\_slurm20 |  |
| gromacs |  | gromacs/2020.4\_hpcx\_2.7.0\_gcc\_10.2\_slurm20 |  |
| gromacs | 2020.1 | gromacs/2020.4\_hpcx\_2.7.0\_gcc\_10.2\_slurm20 |  |
| gromacs | 2018.2 | gromacs/2018.2\_hpcx\_2.7.0\_gcc\_10.2\_slurm20 |  |
| hdf5 | 1.10.1\_parallel | 1.10.1\_mvapich2-2.3.5\_gcc\_10.2\_slurm20 |  |
| hdf5 | 1.10.5\_parallel | 1.10.5\_mvapich2-2.3.5\_intel\_2020.2\_slurm20 |  |
| hdf5 | 1.10.5\_openmpi\_4.0.0\_gcc | 1.10.5\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |  |
| hdf5 | 1.10.5\_openmpi\_3.1.3\_gcc | 1.10.5\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |  |
| hdf5 | 1.10.5\_fortran | 1.10.5\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |  |
| hdf5 | n/a | 1.10.7\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |  |
| hdf5 | n/a | 1.10.7\_openmpi\_4.0.5\_intel\_2020.2\_slurm20 |  |
| hdf5 | n/a | 1.12.0\_openmpi\_4.0.5\_intel\_2020.2\_slurm20 |  |
| lammps |  | 29Oct20\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |  |
| meme | 5.0.5 | planned |  |
| meshlab | 20190129\_qt59 | planned |  |
| Molpro |  | 2020.1\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |  |
| n2p2 | 1.0.0 | planned |  |
| nwchem | 7.0 | 7.0.2\_openmpi\_4.0.5\_intel\_2020.2\_slurm20 |  |
| openfoam | 4.1 | 4.1-openmpi\_3.1.6\_gcc\_10.2\_slurm20 |  |
| openfoam | 4.1a |  |  |
| openfoam | 7 |  |  |
| osu-mpi | 5.3.2 | planned |  |
| osu-mpi | 5.6.2\_mvapich2-2.3a\_gcc | planned |  |
| paraview | 5.1.0 | planned |  |
| paraview | 5.1.0\_yurt | planned |  |
| paraview | 5.4.1 | planned |  |
| paraview | 5.6.0\_yurt | planned |  |
| paraview | 5.6.0\_no\_scalable | planned |  |
| paraview | 5.8.0 | planned |  |
| paraview | 5.8.0\_mesa | planned |  |
| petsc | 3.7.5 | planned |  |
| petsc | 3.7.7 | planned |  |
| petsc | 3.8.3 | planned |  |
| polychord | 2 | planned |  |
| prophet | augustegm\_1.2 | planned |  |
| qmcpack | 3.7.0 | planned |  |
| qmcpack | 3.9.1 | planned |  |
| qmcpack | 3.9.1\_openmpi\_3.1.3\_gcc | planned |  |
| qmcpack | 3.9.1\_openmpi\_3.1.6 | planned |  |
| qmcpack | 3.9.1\_openmpi\_3.1.6\_gcc | planned |  |
| qmcpack | 3.9.2\_openmpi\_4.0.1\_gcc | planned |  |
| quantumespresso | 6.1 | planned |  |
| quantumespresso | 6.3 | planned |  |
| quantumespresso | 6.4 | quantumespresso/6.4\_openmpi\_4.0.5\_intel\_slurm20 |  |
| quantumespresso | 6.4.1 | planned |  |
| quantumespresso | 6.5 | quantumespresso/6.5\_openmpi\_4.0.5\_intel\_slurm20 |  |
| siesta | 3.2 | planned |  |
| siesta | 4.1 | planned |  |
| su2 | 7.0.1 | planned |  |
| su2 | 7.0.2 | planned |  |
| vasp | 5.4.1 | 5.4.1\_mvapich2-2.3.5\_intel\_2020.2\_slurm20 |  |
| vasp | 5.4.4 | 5.4.4\_openmpi\_4.0.5\_gcc\_10.2\_slurm20 |  |
| vasp | 5.4.4\_intel | 5.4.4\_mvapich2-2.3.5\_intel\_2020.2\_slurm20 |  |
| vasp | 6.1.1\_ompi405\_yqi27 | 6.1.1\_openmpi\_4.0.5\_intel\_2020.2\_yqi27\_slurm20 |  |
| wrf | 3.6.1 | planned |  |

## Deprecated MPI Applications

* * global\_arrays/5.6.1\_openmpi\_2.0.3
* gpaw/1.2.0\_hpcx\_2.7.0\_gcc
* gpaw/1.2.0\_mvapich2-2.3a\_gcc
* gromacs/2016.6
* gromacs/2018.2
* gromacs/2018.2\_gpu
* lammps/11Aug17
* lammps/11Aug17\_serial
* lammps/16Mar18
* lammps/17Nov16
* lammps/22Aug18
* Molpro/2012.1.15
* Molpro/2015\_gcc
* Molpro/2015\_serial
* Molpro/2018.2\_ga
* Molpro/2019.2
* Molpro/2019.2\_ga
* Molpro/2020.1
* Molpro/2020.1\_ga
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
* nwchem/6.8-openmpi

|  |  |
| :--- | :--- |


