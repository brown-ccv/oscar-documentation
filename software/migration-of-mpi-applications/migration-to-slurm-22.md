# Migration to Slurm 22

In January 2023, Slurm will be migrated to version 22 for newer and faster applications. This may require you to rebuild your MPI applications. To help facilitate this, we are providing access to a test cluster with the new version of Slurm. Please note - some of the older, existing MPI modules will be deprecated and removed from the system in the near future. Please see below for details.

## Instructions for Testing Applications of New Slurm

{% hint style="info" %}
Users need to contact **support@ccv.brown.edu** to request the access to submitting jobs to the new Slurm.&#x20;
{% endhint %}

### SSH

1. `ssh into Oscar`
2. `ssh slurm02` from a terminal
3. `ssh node1947`

{% tabs %}
{% tab title="Interactive job" %}
* `interact -q image-test` for _**cpu-only**_ tests, or&#x20;
* `interact -q a5000-gcondo` for _**gpu**_ test.
{% endtab %}

{% tab title="Batch job" %}
* `#SBATCH -p image-test` for _**cpu-only**_ tests, or&#x20;
* `#SBATCH -p a5000-gcondo` for _**gpu**_ test.
{% endtab %}
{% endtabs %}

### OOD

{% hint style="info" %}
* Only the Advanced Desktop App works.
* The Advanced Desktop App can only submit to the _**gpu**_ partition.&#x20;
{% endhint %}

1. Open a web browser and connect to **`poodcit2.services.brown.edu`**;
2. Login with your Oscar username and password;
3. Start an Advanced Desktop App session;
4. Select the `gpu` partition and click the `launch` button.

## MPI Applications

### &#x20;Migrated or New Modules

{% hint style="info" %}
If the "Current Module Version" for an application is blank, a new version is built for the application.&#x20;
{% endhint %}

| Application     | Current Module Version                               | Migrated or New Module Version                              |
| --------------- | ---------------------------------------------------- | ----------------------------------------------------------- |
| abaqus          | 2021.1\_intel17                                      | 2021\_slurm22\_a                                            |
| ambertools      |                                                      | amber22                                                     |
| boost           | 1.69                                                 | 1.69\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                    |
| CharMM          | CharMM/c47b1\_slurm20                                | CharMM/c47b1                                                |
| cp2k            |                                                      | 2022.2 suffix slurm22                                       |
| dedalus         | 2.1905                                               | 2.1905\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                  |
| dedalus         | 2.1905\_openmpi\_4.05\_gcc\_10.2\_slurm20            | 2.1905\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                  |
| esmf            | 8.4.0b12                                             | 8.4.0\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                   |
| fftw            | 3.3.6                                                | 3.3.6\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                   |
| fftw            | 3.3.8                                                | 3.3.10\_slurm22                                             |
| global\_arrays  | 5.8\_openmpi\_4.0.5\_gcc\_10.2\_slurm20              | 5.8\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                     |
| gpaw            | 21.1.0\_hpcx\_2.7.0\_gcc\_10.2\_slurm20              | 21.1.0\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                  |
| gpaw            | 21.1.0\_openmpi\_4.0.5\_gcc\_10.2\_slurm20           | 21.1.0\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                  |
| gpaw            | 21.1.0a\_openmpi\_4.0.5\_gcc\_10.2\_slurm20          | 21.1.0\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                  |
| gromacs         | 2018.2                                               | gromacs/2018.2\_mvapich2-2.3.5\_gcc\_10.2\_slurm22          |
| hdf5            |                                                      | 1.10.8\_mvapich2\_2.3.5\_gcc\_10.2\_slurm22                 |
| hdf5            |                                                      | 1.10.8\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                  |
| hdf5            |                                                      | 1.10.8\_openmpi\_4.0.7\_intel\_2020.2\_slurm22              |
| hdf5            |                                                      | 1.12.2\_openmpi\_4.0.7\_intel\_2020.2\_slurm22              |
| hpcx            | mpi/hpcx\_2.7.0\_gcc\_10.2\_slurm20                  | mpi/hpcx\_2.7.0\_gcc\_10.2\_slurm22                         |
| ior             | 3.3.0                                                | ior/3.3.0                                                   |
| lammps          | 29Sep21\_openmpi\_4.0.5\_gcc\_10.2\_slurm20          | lammps/29Sep21\_openmpi\_4.0.7\_gcc\_10.2\_slurm22          |
| meme            | 5.3.0                                                | 5.3.0\_slurm22                                              |
| Molpro          | 2021.3.1                                             | 2021.3.1\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                |
| mpi             | mvapich2-2.3.5\_gcc\_10.2\_slurm20                   | mvapich2-2.3.5\_gcc\_10.2\_slurm22                          |
| mpi             |                                                      | openmpi\_4.0.7\_gcc\_10.2\_slurm22                          |
| mpi             |                                                      | openmpi\_4.0.7\_intel\_2020.2\_slurm22                      |
| mpi4py          |                                                      | 3.1.4\_py3.9.0\_slurm22                                     |
| netcdf          | 4.7.4\_gcc\_10.2\_hdf5\_1.10.5                       | 4.7.4\_gcc\_10.2\_hdf5\_1.10.8\_slurm22                     |
| netcdf          | 4.7.4\_intel\_2020.2\_hdf5\_1.12.0                   | 4.7.4\_gcc\_10.2\_hdf5\_1.12.2\_slurm22                     |
| netcdf4-python  | 4.1.4.2                                              | 1.6.2                                                       |
| osu-mpi         |                                                      | 5.6.3\_openmpi\_4.0.7\_gcc\_10.2                            |
| petsc           |                                                      | petsc/3.18.2\_openmpi\_4.0.7\_gcc\_10.2\_slurm22            |
| pnetcdf         | 1.12.3                                               | 1.12.3\_slurm22                                             |
| qmcpack         | 3.9.2\_hpcx\_2.7.0\_gcc\_10.2\_slurm20               | qmcpack/3.9.2\_openmpi\_4.0.7\_gcc\_10.2\_slurm22           |
| qmcpack         | 3.9.2\_openmpi\_4.0.0\_gcc\_8.3\_slurm20             | qmcpack/3.9.2\_openmpi\_4.0.7\_gcc\_10.2\_slurm22           |
| qmcpack         | 3.9.2\_openmpi\_4.0.0\_gcc\_8.3\_slurm20\_complex    | qmcpack/3.9.2\_openmpi\_4.0.7\_gcc\_10.2\_slurm22           |
| qmcpack         | 3.9.2\_openmpi\_4.0.1\_gcc                           |                                                             |
| qmcpack         | 3.9.2\_openmpi\_4.0.4\_gcc                           | qmcpack/3.9.2\_openmpi\_4.0.7\_gcc\_10.2\_slurm22           |
| qmcpack         | 3.9.2\_openmpi\_4.0.5\_intel\_2020.2\_slurm20        |                                                             |
| quantumespresso | 6.4\_openmpi\_4.0.0\_gcc\_8.3\_slurm20               | quantumespresso/6.4\_openmpi\_4.0.7\_gcc\_10.2\_slurm22     |
| quantumespresso | 6.4\_openmpi\_4.0.5\_intel\_2020.2\_slurm20          | quantumespresso/6.4\_openmpi\_4.0.7\_intel\_2020.2\_slurm22 |
| quantumespresso | 7.0\_openmpi\_4.0.5\_intel\_2020.2\_slurm20          | quantumespresso/7.0\_openmpi\_4.0.7\_gcc\_10.2\_slurm22     |
| vasp            | 5.4.1                                                | 5.4.1\_slurm22                                              |
| vasp            | 5.4.1\_mvapich2-2.3.5\_intel\_2020.2\_slurm20        | 5.4.1\_slurm22                                              |
| vasp            | 5.4.4                                                | 5.4.4\_slurm22                                              |
| vasp            | 5.4.4\_intel                                         | 5.4.4\_slurm22                                              |
| vasp            | 5.4.4\_mvapich2-2.3.5\_intel\_2020.2\_slurm20        | 5.4.4\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                   |
| vasp            | 5.4.4\_openmpi\_4.0.5\_gcc\_10.2\_slurm20            | 5.4.4\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                   |
| vasp            | 5.4.4a                                               | 5.4.4\_slurm22                                              |
| vasp            | 6.1.1\_ompi405\_yqi27                                | 6.1.1\_ompi407\_yqi27\_slurm22                              |
| vasp            | 6.1.1\_openmpi\_4.0.5\_intel\_2020.2\_yqi27\_slurm20 | 6.1.1\_ompi407\_yqi27\_slurm22                              |
| vasp            | 6.1.1\_yqi27                                         | 6.1.1\_ompi407\_yqi27\_slurm22                              |
| vasp            | 6.3.0\_cfgoldsm                                      | 6.3.0\_cfgoldsm\_slurm22                                    |
| vasp            | 6.3.2\_avandewa                                      | 6.3.2\_avandewa\_slurm22                                    |
| wrf             |                                                      | 4.4.1\_openmpi\_4.0.7\_intel\_2020.2\_slurm22               |

### Deprecated Modules

{% hint style="info" %}
A new module might be available for a deprecated application module. Please search the table above to check if a new module is available for an application.&#x20;
{% endhint %}

| Application                 | Deprecated Module                              |
| --------------------------- | ---------------------------------------------- |
| abaqus                      | 2017                                           |
| abaqus                      | 2021                                           |
| abaqus                      | 2021.1                                         |
| abaqus                      | 6.12sp2                                        |
| abinit                      | 9.6.2                                          |
| abyss                       | Not found                                      |
| ambertools                  | amber16                                        |
| ambertools                  | amber16-gpu                                    |
| ambertools                  | amber17                                        |
| ambertools                  | amber17\_lic                                   |
| ambertools                  | amber21                                        |
| bagel                       | Not found                                      |
| boost                       | 1.55                                           |
| boost                       | 1.57                                           |
| boost                       | 1.68                                           |
| boost                       | 1.44.0                                         |
| boost                       | 1.62.0-intel                                   |
| boost                       | 1.63.0                                         |
| boost                       | 1.75.0\_openmpi\_4.0.5\_intel\_2020.2\_slurm20 |
| boost                       | 1.76.0\_hpcx\_2.7.0\_gcc\_10.2\_slurm20        |
| boost                       | 1.76.0\_hpcx\_2.7.0\_intel\_2020.2\_slurm20    |
| cabana                      | 1                                              |
| cabana                      | 1.1                                            |
| cabana                      | 1.1\_hpcx\_2.7.0\_gcc\_10.2\_slurm20           |
| campari                     | Not found                                      |
| cesm                        | 1.2.1                                          |
| cesm                        | 1.2.2                                          |
| cesm                        | 2.1.1                                          |
| cp2k                        | 7.1                                            |
| cp2k                        | 7.1\_mpi                                       |
| cp2k                        | 8.1.0                                          |
| cp2k                        | 9.1.0                                          |
| dacapo                      | 2.7.16\_mvapich2\_intel                        |
| dalton                      | 2018                                           |
| dalton                      | 2018.0\_mvapich2-2.3.5\_intel\_2020.2\_slurm20 |
| dice                        | 1                                              |
| esmf                        | 7.1.0r                                         |
| esmf                        | 8.0.0                                          |
| esmf                        | 8.0.0b                                         |
| esmf                        | 8.1.0b11                                       |
| esmf                        | 8.1.9b17                                       |
| esmf                        | 8.3.0                                          |
| esmf                        | 8.3.1b05                                       |
| fenics                      | 2017.1                                         |
| fenics                      | 2018.1.0                                       |
| ffte                        | Not found                                      |
| fftw                        | 2.1.5                                          |
| fftw                        | 2.1.5\_slurm2020                               |
| fftw                        | 2.1.5-double                                   |
| fftw                        | 3.3.8a                                         |
| gerris                      | 1                                              |
| gerris                      | 1                                              |
| global\_arrays              | 5.6.1                                          |
| global\_arrays              | 5.6.1\_i8                                      |
| global\_arrays              | 5.6.1\_openmpi\_2.0.3                          |
| gpaw                        | 1.2.0                                          |
| gpaw                        | 1.2.0\_hpcx\_2.7.0\_gcc                        |
| gpaw                        | 1.2.0\_mvapich2-2.3a\_gcc                      |
| gpaw                        | 20.10\_hpcx\_2.7.0\_intel\_2020.2\_slurm20     |
| gpaw                        | 20.10.0\_hpcx\_2.7.0\_intel\_2020.2\_slurm20   |
| gromacs                     | 2016.6                                         |
| gromacs                     | 2020.1                                         |
| gromacs                     | 2018.2\_gpu                                    |
| gromacs                     | 2018.2\_hpcx\_2.7.0\_gcc\_10.2\_slurm20        |
| gromacs                     | 2020.1\_hpcx\_2.7.0\_gcc\_10.2\_slurm20        |
| gromacs                     | 2020.4\_gpu                                    |
| gromacs                     | 2020.4\_gpu\_hpcx\_2.7.0\_gcc\_10.2\_slurm20   |
| gromacs                     | 2020.4\_hpcx\_2.7.0\_gcc\_10.2\_slurm20        |
| gromacs                     | 2020.6\_plumed                                 |
| gromacs                     | 2021.5\_plumed                                 |
| hande                       | Not found                                      |
| hdf5                        | 1.10.0                                         |
| hdf5                        | 1.10.1\_parallel                               |
| hdf5                        | 1.10.5                                         |
| hdf5                        | 1.10.5\_fortran                                |
| hdf5                        | 1.10.5\_mvapich2-2.3.5\_intel\_2020.2\_slurm20 |
| hdf5                        | 1.10.5\_openmpi\_3.1.3\_gcc                    |
| hdf5                        | 1.10.5\_openmpi\_3.1.6\_gcc                    |
| hdf5                        | 1.10.5\_openmpi\_4.0.0\_gcc                    |
| hdf5                        | 1.10.5\_openmpi\_4.0.5\_gcc\_10.2\_slurm20     |
| hdf5                        | 1.10.5\_parallel                               |
| hdf5                        | 1.10.7\_hpcx\_2.7.0\_intel\_2020.2\_slurm20    |
| hdf5                        | 1.10.7\_openmpi\_4.0.5\_gcc\_10.2\_slurm20     |
| hdf5                        | 1.10.7\_openmpi\_4.0.5\_intel\_2020.2\_slurm20 |
| hdf5                        | 1.12.0\_hpcx\_2.7.0\_intel\_2020.2             |
| hdf5                        | 1.12.0\_hpcx\_2.7.0\_intel\_2020.2\_slurm20    |
| hdf5                        | 1.12.0\_openmpi\_4.0.5\_intel\_2020.2\_slurm20 |
| hnn                         | 1                                              |
| hoomd                       | Not found                                      |
| horovod                     | 0.19.5                                         |
| ior                         | 3.0.1                                          |
| ior                         | ior/3.2.1                                      |
| lammps                      | 17-Nov-16                                      |
| lammps                      | 11-Aug-17                                      |
| lammps                      | 16-Mar-18                                      |
| lammps                      | 22-Aug-18                                      |
| lammps                      | 7-Aug-19                                       |
| lammps                      | 11Aug17\_serial                                |
| lammps                      | 29Oct20\_hpcx\_2.7.0\_intel\_2020.2            |
| lammps                      | 29Oct20\_openmpi\_4.0.5\_gcc\_10.2\_slurm20    |
| medea                       | 3.2.3.0                                        |
| meme                        | 5.0.5                                          |
| meshlab                     | 20190129\_qt59                                 |
| Molpro                      | 2019.2                                         |
| Molpro                      | 2020.1                                         |
| Molpro                      | 2012.1.15                                      |
| Molpro                      | 2015\_gcc                                      |
| Molpro                      | 2015\_serial                                   |
| Molpro                      | 2018.2\_ga                                     |
| Molpro                      | 2019.2\_ga                                     |
| Molpro                      | 2020.1\_ga                                     |
| Molpro                      | 2020.1\_openmpi\_4.0.5\_gcc\_10.2\_slurm20     |
| Molpro                      | 2021.3.1\_openmpi\_4.0.5\_gcc\_10.2\_slurm20   |
| mpi4py                      | 3.0.1\_py3.6.8                                 |
| multinest                   | 3.1                                            |
| n2p2                        | Not found                                      |
| namd                        | 2.11-multicore                                 |
| namd                        | 2.13b1-multicore                               |
| netcdf                      | 3.6.3                                          |
| netcdf                      | 4.4.1.1\_gcc                                   |
| netcdf                      | 4.4.1.1\_intel                                 |
| netcdf                      | 4.7.0\_intel2019.3                             |
| netcdf                      | 4.7.4\_gcc8.3                                  |
| nwchem                      | 7                                              |
| nwchem                      | 6.8-openmpi                                    |
| nwchem                      | 7.0.2\_mvapich2-2.3.5\_intel\_2020.2\_slurm20  |
| nwchem                      | 7.0.2\_openmpi\_4.0.5\_intel\_2020.2\_slurm20  |
| nwchem                      | 7.0.2\_openmpi\_4.1.1\_gcc\_10.2\_slurm20      |
| openfoam                    | 4.1                                            |
| openfoam                    | 7                                              |
| openfoam                    | 4.1-openmpi\_3.1.6\_gcc\_10.2\_slurm20         |
| openfoam                    | 4.1a                                           |
| openfoam                    | 7.0\_hpcx\_2.7.0\_gcc\_10.2\_slurm20           |
| openmpi                     | mpi/openmpi\_4.0.5\_gcc\_10.2\_slurm20         |
| Openmpi wth Intel compilers | openmpi\_4.0.5\_intel\_2020.2\_slurm20         |
| orca                        | 4.0.1.2                                        |
| orca                        | 4.1.1                                          |
| orca                        | 4.2.1                                          |
| orca                        | 5.0.0                                          |
| orca                        | 5.0.1                                          |
| osu-mpi                     | 5.3.2                                          |
| paraview                    | 5.1.0                                          |
| paraview                    | 5.1.0\_yurt                                    |
| paraview                    | 5.4.1                                          |
| paraview                    | 5.6.0\_no\_scalable                            |
| paraview                    | 5.6.0\_yurt                                    |
| paraview                    | 5.8.0                                          |
| paraview                    | 5.8.0\_mesa                                    |
| paraview                    | 5.8.0\_release                                 |
| paraview                    | 5.8.1\_openmpi\_4.0.5\_intel\_2020.2\_slurm20  |
| paraview                    | 5.9.0                                          |
| paraview                    | 5.9.0\_ui                                      |
| paris                       | Not found                                      |
| petsc                       | 3.14.2\_hpcx\_2.7.0\_intel\_2020.2\_slurm20    |
| petsc                       | 3.14.2\_mpich3.3a3\_intel\_2020.2              |
| petsc                       | 3.7.5                                          |
| petsc                       | 3.7.7                                          |
| petsc                       | 3.8.3                                          |
| phyldog                     | Not found                                      |
| plumed                      | 2.7.2                                          |
| plumed                      | 2.7.5                                          |
| pmclib                      | Not found                                      |
| polychord                   | 1                                              |
| polychord                   | 2                                              |
| polyrate                    | Not found                                      |
| potfit                      | 20201014                                       |
| potfit                      | 0.7.1                                          |
| prophet                     | Not found                                      |
| pstokes                     | Not found                                      |
| pymultinest                 | 2.9                                            |
| qchem                       | 5.0.2                                          |
| qchem                       | 5.0.2-openmpi                                  |
| qmcpack                     | 3.10.0\_hpcx\_2.7.0\_intel\_2020.2\_slurm20    |
| qmcpack                     | 3.10.0\_openmpi\_4.0.5\_intel\_2020.2\_slurm20 |
| qmcpack                     | 3.7.0                                          |
| qmcpack                     | 3.9.1                                          |
| qmcpack                     | 3.9.1\_openmpi\_3.1.6                          |
| quantumespresso             | 6.1                                            |
| quantumespresso             | 6.4                                            |
| quantumespresso             | 6.5                                            |
| quantumespresso             | 6.6                                            |
| quantumespresso             | 6.4\_hpcx\_2.7.0\_intel\_2020.02\_slurm20      |
| quantumespresso             | 6.4\_hpcx\_2.7.0\_intel\_2020.2\_slurm20       |
| quantumespresso             | 6.4\_openmpi\_4.0.5\_intel\_slurm20            |
| quantumespresso             | 6.4.1                                          |
| quantumespresso             | 6.5\_openmpi\_4.0.5\_intel\_slurm20            |
| quantumespresso             | 6.6\_openmpi\_4.0.5\_intel\_2020.2\_slurm20    |
| quantumespresso             | 6.7\_openmpi\_4.0.5\_intel\_2020.2\_slurm20    |
| relion                      | 3.1.3                                          |
| rotd                        | 2014-11-15\_mvapich2                           |
| scalasca                    | Not found                                      |
| scorep                      | Not found                                      |
| siesta                      | 3.2                                            |
| siesta                      | 4.1                                            |
| sprng                       | 5                                              |
| su2                         | 7.0.2                                          |
| trilinos                    | Not found                                      |
| vtk                         | 7.1.1                                          |
| vtk                         | 8.1.0                                          |
| wrf                         | 3.6.1                                          |
| wrf                         | 4.2.1\_hpcx\_2.7.0\_intel\_2020.2\_slurm20     |
