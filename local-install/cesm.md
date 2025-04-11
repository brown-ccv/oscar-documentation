---
hidden: true
---

# Using a CESM module

There are several versions of CESM available as modules&#x20;

`cesm/1.2.1` `cesm/1.2.2` `cesm/2.1.1` &#x20;

[CESM2 ](http://www.cesm.ucar.edu/models/cesm2/)is the current  supported version by NCAR.

To load a particular version:

`module load cesm/2.1.1`

Be sure to load the dependencies - these are printed in the load message for the CESM module.  For example for cesm/2.1.1

module load perl/5.18.2 intel/2020.2 netcdf/4.7.4\_intel\_2020.2\_hdf5\_1.12.0 hdf5/1.12.0\_hpcx\_2.7.0\_intel\_2020.2\_slurm20 mpi/hpcx\_2.7.0\_intel\_2020.2\_slurm20 lapack/3.7.0 blas/3.7.0

The following example shows how to create a new case on Oscar.

```
create_newcase --case /gpfs/scratch/ccvtest/cesm2_C --res T62_g17 --compset C --machine oscar
./case.setup
./case.build 
./xmlchange JOB_WALLCLOCK_TIME=0:20:00 --subgroup case.run
./case.submit
```

line 4. shows how to use xmlchange to change run options.  For a full list of options you can change with xmlchange:

`./xmlquery --listall`

{% hint style="warning" %}
Note for CESM2 you can have a directory \~/.cime with your own cime files.   Be aware of this if you are switching between your own install and the module install.
{% endhint %}
