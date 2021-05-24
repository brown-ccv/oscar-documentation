# Installing your own version of CESM

These instructions are for users who need to download their own version of CESM2.

{% hint style="warning" %}
Do not load the CESM module.  If you have a cesm module loaded, unload it:

`module unload cesm`
{% endhint %}

Clone the version of CESM you want from the github repo:

```text
git clone -b release-cesm2.2.0 https://github.com/ESCOMP/CESM.git my_cesm_sandbox
cd my_cesm_sandbox
./manage_externals/checkout_externals
```

The various Oscar-specific XML files needed to run CESM, including

* config\_batch.xml
* config\_compilers.xml
* config\_machines.xml

can be obtained from [this github repo](https://github.com/brown-ccv/CIME_Oscar). The easiest way to incorporate these files into your build is to place them in a directory named .cime within your home directory \(i.e., ~/.cime\). For example:

```text
git clone https://github.com/brown-ccv/CIME_Oscar ~/.cime
```

To setup, build, and run a case on Oscar:

1. Load the necessary modules \(line 1-7 below\)
2. Move to the cime\_scripts directory \(line 8\)
3. Create a new case, selecting your desired &lt;CASENAME&gt;, &lt;COMPSET&gt;, and &lt;GRID &gt; \(line 9\)
4. Move to your CASEROOT directory \(line 10\)
5. Setup the case \(line 11\)
6. Build the case \(line 12\)
7. Submit the case \(line 13\)

```text
module load netcdf/4.7.4_intel_2020.2_hdf5_1.12.0 \
            hdf5/1.12.0_hpcx_2.7.0_intel_2020.2_slurm20 \
            mpi/hpcx_2.7.0_intel_2020.2_slurm20 \
            perl/5.18.2 \
            intel/2020.2 \
            blas/3.7.0 \
            lapack/3.7.0
cd my_cesm_sandbox/cime/scripts
./create_newcase --mach oscar --case <CASENAME> --compset <COMPSET> --res <GRID>
cd <CASENAME>
./case.setup
./case.build
./case.submit
```

By default, component log files, history files, and restart files for your case will be placed in /gpfs/home/&lt;username&gt;/data/&lt;username&gt;/archive/&lt;CASENAME&gt;.

