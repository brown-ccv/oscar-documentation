# Migration of MPI Apps to Slurm 22

In January 2023, Oscar will be migrating to use Slurm version 22. In addition to improvements to security and speed, this new version of Slurm will support both PMI and PMIX, provide REST APIs, and allow users to control job priority via `scontrol top <JobID>`. While most applications will be unaffected by these changes, applications built to make use of MPI may need to be rebuilt to work properly. To help facilitate this, we are providing users who use MPI-based applications (either through Oscar's module system or built by the user) with advanced access to a test cluster with the new version of Slurm for testing purposes. Instructions for gaining access to the test cluster, building MPI-based applications, and submitting MPI jobs using the new Slurm, are provided below.

Please note - some existing modules of MPI-based applications will be deprecated and removed from the system as part of this upgrade. A list of modules that will no longer be available to users following the upgrade is given at the bottom of the page.

## Instructions for Testing Applications with Slurm 22

1. Request access to the Slurm 22 test cluster (email **support@ccv.brown.edu**).
2. Connect to Oscar via either **SSH** or **OOD** (instructions below)
3. Build your application (if necessary, see instructions below)
4. Submit your job

{% hint style="danger" %}
Users must contact **support@ccv.brown.edu** to obtain access to the  test partition in order to submit jobs using Slurm 22.&#x20;
{% endhint %}

### Connecting via SSH

1. Connect to Oscar using the `ssh` command in a terminal window
2. From Oscar's command line, connect to the test cluster using the command `ssh node1947`
3. From the node1947 command line, submit your jobs (either interactive or batch) as follows:

{% tabs %}
{% tab title="Interactive job" %}
* For CPU-only jobs: `interact -q image-test`
* For GPU jobs: `interact -q a5000-gcondo`
{% endtab %}

{% tab title="Batch job" %}
Include the following line within your batch script and then submit using the `sbatch` command, as usual

* For CPU-only jobs: `#SBATCH -p image-test`
* For GPU jobs: `#SBATCH -p a5000-gcondo`
{% endtab %}
{% endtabs %}

### Connecting via OOD

1. Open a web browser and connect to **poodcit2.services.brown.edu**
2. Login with your Oscar username and password
3. Start a session using the Advanced Desktop App
4. Select the **gpu** partition and click the **launch** button.

{% hint style="info" %}
* Only the Advanced Desktop App will connect to the test cluster
* The Advanced Desktop App must connect to the _**gpu**_ partition&#x20;
{% endhint %}

## MPI Applications

### &#x20;Migrated or New Modules

{% hint style="info" %}
If the "Current Module Version" for an application is blank, a new version is built for the application.&#x20;
{% endhint %}

| Application     | Current Module Version                                                                                                                           | Migrated or New Module Version                                                                                                                                                   |
| --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| abaqus          | 2021.1\_intel17                                                                                                                                  | 2021\_slurm22\_a                                                                                                                                                                 |
| ambertools      |                                                                                                                                                  | amber22                                                                                                                                                                          |
| boost           | 1.69                                                                                                                                             | 1.69\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                         |
| CharMM          | CharMM/c47b1\_slurm20                                                                                                                            | CharMM/c47b1                                                                                                                                                                     |
| cp2k            |                                                                                                                                                  | 2022.2 suffix slurm22                                                                                                                                                            |
| **dedalus**     | <p>2.1905<br>2.1905_openmpi_4.05_gcc_10.2_slurm20</p>                                                                                            | 2.1905\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                       |
| **esmf**        | 8.4.0b12                                                                                                                                         | 8.4.0\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                        |
| fftw            | 3.3.6                                                                                                                                            | 3.3.6\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                        |
| fftw            | 3.3.8                                                                                                                                            | 3.3.10\_slurm22                                                                                                                                                                  |
| global\_arrays  | 5.8\_openmpi\_4.0.5\_gcc\_10.2\_slurm20                                                                                                          | 5.8\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                          |
| **gpaw**        | <p>21.1.0_hpcx_2.7.0_gcc_10.2_slurm20<br>21.1.0_openmpi_4.0.5_gcc_10.2_slurm20<br>21.1.0a_openmpi_4.0.5_gcc_10.2_slurm20</p>                     | <p>21.1.0_openmpi_4.0.7_gcc_10.2_slurm22<br>21.1.0_openmpi_4.0.7_gcc_10.2_slurm22<br>21.1.0_openmpi_4.0.7_gcc_10.2_slurm22</p>                                                   |
| gromacs         | 2018.2                                                                                                                                           | gromacs/2018.2\_mvapich2-2.3.5\_gcc\_10.2\_slurm22                                                                                                                               |
| **hdf5**        |                                                                                                                                                  | <p>1.10.8_mvapich2_2.3.5_gcc_10.2_slurm22<br>1.10.8_openmpi_4.0.7_gcc_10.2_slurm22<br>1.10.8_openmpi_4.0.7_intel_2020.2_slurm22<br>1.12.2_openmpi_4.0.7_intel_2020.2_slurm22</p> |
| ior             | 3.3.0                                                                                                                                            | 3.3.0                                                                                                                                                                            |
| lammps          | 29Sep21\_openmpi\_4.0.5\_gcc\_10.2\_slurm20                                                                                                      | 29Sep21\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                      |
| meme            | 5.3.0                                                                                                                                            | 5.3.0\_slurm22                                                                                                                                                                   |
| Molpro          | 2021.3.1                                                                                                                                         | 2021.3.1\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                     |
| **mpi**         | <p>hpcx_2.7.0_gcc_10.2_slurm20</p><p>mvapich2-2.3.5_gcc_10.2_slurm20<br>openmpi_4.0.5_gcc_10.2_slurm20<br>openmpi_4.0.5_intel_2020.2_slurm20</p> | <p>hpcx_2.7.0_gcc_10.2_slurm22</p><p>mvapich2-2.3.5_gcc_10.2_slurm22<br>openmpi_4.0.7_gcc_10.2_slurm22<br>openmpi_4.0.7_intel_2020.2_slurm22</p>                                 |
| mpi4py          |                                                                                                                                                  | 3.1.4\_py3.9.0\_slurm22                                                                                                                                                          |
| **netcdf**      | <p>4.7.4_gcc_10.2_hdf5_1.10.5<br>4.7.4_intel_2020.2_hdf5_1.12.0</p>                                                                              | <p>4.7.4_gcc_10.2_hdf5_1.10.8_slurm22<br>4.7.4_gcc_10.2_hdf5_1.12.2_slurm22</p>                                                                                                  |
| netcdf4-python  | 4.1.4.2                                                                                                                                          | 1.6.2                                                                                                                                                                            |
| osu-mpi         |                                                                                                                                                  | 5.6.3\_openmpi\_4.0.7\_gcc\_10.2                                                                                                                                                 |
| petsc           |                                                                                                                                                  | petsc/3.18.2\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                 |
| **pnetcdf**     | 1.12.3                                                                                                                                           | 1.12.3\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                       |
| qmcpack         | 3.9.2\_hpcx\_2.7.0\_gcc\_10.2\_slurm20                                                                                                           | qmcpack/3.9.2\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                |
| qmcpack         | 3.9.2\_openmpi\_4.0.0\_gcc\_8.3\_slurm20                                                                                                         | qmcpack/3.9.2\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                |
| qmcpack         | 3.9.2\_openmpi\_4.0.0\_gcc\_8.3\_slurm20\_complex                                                                                                | qmcpack/3.9.2\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                |
| qmcpack         | 3.9.2\_openmpi\_4.0.1\_gcc                                                                                                                       |                                                                                                                                                                                  |
| qmcpack         | 3.9.2\_openmpi\_4.0.4\_gcc                                                                                                                       | qmcpack/3.9.2\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                |
| qmcpack         | 3.9.2\_openmpi\_4.0.5\_intel\_2020.2\_slurm20                                                                                                    |                                                                                                                                                                                  |
| quantumespresso | 6.4\_openmpi\_4.0.0\_gcc\_8.3\_slurm20                                                                                                           | quantumespresso/6.4\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                          |
| quantumespresso | 6.4\_openmpi\_4.0.5\_intel\_2020.2\_slurm20                                                                                                      | quantumespresso/6.4\_openmpi\_4.0.7\_intel\_2020.2\_slurm22                                                                                                                      |
| quantumespresso | 7.0\_openmpi\_4.0.5\_intel\_2020.2\_slurm20                                                                                                      | quantumespresso/7.0\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                          |
| vasp            | 5.4.1                                                                                                                                            | 5.4.1\_slurm22                                                                                                                                                                   |
| vasp            | 5.4.1\_mvapich2-2.3.5\_intel\_2020.2\_slurm20                                                                                                    | 5.4.1\_slurm22                                                                                                                                                                   |
| vasp            | 5.4.4                                                                                                                                            | 5.4.4\_slurm22                                                                                                                                                                   |
| vasp            | 5.4.4\_intel                                                                                                                                     | 5.4.4\_slurm22                                                                                                                                                                   |
| vasp            | 5.4.4\_mvapich2-2.3.5\_intel\_2020.2\_slurm20                                                                                                    | 5.4.4\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                        |
| vasp            | 5.4.4\_openmpi\_4.0.5\_gcc\_10.2\_slurm20                                                                                                        | 5.4.4\_openmpi\_4.0.7\_gcc\_10.2\_slurm22                                                                                                                                        |
| vasp            | 5.4.4a                                                                                                                                           | 5.4.4\_slurm22                                                                                                                                                                   |
| vasp            | 6.1.1\_ompi405\_yqi27                                                                                                                            | 6.1.1\_ompi407\_yqi27\_slurm22                                                                                                                                                   |
| vasp            | 6.1.1\_openmpi\_4.0.5\_intel\_2020.2\_yqi27\_slurm20                                                                                             | 6.1.1\_ompi407\_yqi27\_slurm22                                                                                                                                                   |
| vasp            | 6.1.1\_yqi27                                                                                                                                     | 6.1.1\_ompi407\_yqi27\_slurm22                                                                                                                                                   |
| vasp            | 6.3.0\_cfgoldsm                                                                                                                                  | 6.3.0\_cfgoldsm\_slurm22                                                                                                                                                         |
| vasp            | 6.3.2\_avandewa                                                                                                                                  | 6.3.2\_avandewa\_slurm22                                                                                                                                                         |
| wrf             | 4.2.1\_hpcx\_2.7.0\_intel\_2020.2\_slurm20                                                                                                       |                                                                                                                                                                                  |

### To build custom applications:

We recommend using following MPI modules to build your custom applications:

|                     |                                            |
| ------------------- | ------------------------------------------ |
| GCC based OpenMPI   | mpi/openmpi\_4.0.7\_gcc\_10.2\_slurm22     |
| Intel based OpenMPI | mpi/openmpi\_4.0.7\_intel\_2020.2\_slurm22 |
| MVAPICH             | mpi/mvapich2-2.3.5\_gcc\_10.2\_slurm22     |
| Mellanox HPC-X      | mpi/hpcx\_2.7.0\_gcc\_10.2\_slurm22        |

{% tabs %}
{% tab title="GNU Configure Example" %}
`module load mpi/openmpi_4.0.7_gcc_10.2_slurm22`

`module load gcc/10.2 cuda/11.7.1`

`CC=mpicc CXX=mpicxx ./configure --prefix=/path/to/install/dir`
{% endtab %}

{% tab title="CMAKE Configure Example" %}
`module load mpi/openmpi_4.0.7_gcc_10.2_slurm22`

`module load gcc/10.2 cuda/11.7.1`

`cmake -DCMAKE_C_COMPILER=mpicc DCMAKE_CXX_COMPILER=mpicxx ..`
{% endtab %}
{% endtabs %}

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
