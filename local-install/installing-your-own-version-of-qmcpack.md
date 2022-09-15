# Installing your own version of Qmcpack



These instructions are for users who need to install their own version of Qmcpack.&#x20;

{% hint style="warning" %}
Do not load the 'qmcpack' module.  If you have a 'qmcpack' module loaded, unload it:

`module unload`qmcpack
{% endhint %}

Step 1: Create a new directory where you want to install Qmcpack:

```
mkdir -p qmcpack/src
cd qmcpack/src/
```

Step 2: Download the version of Qmcpack you want from the GitHub repo:

```
https://github.com/QEF/q-e/releases
wget https://github.com/QMCPACK/qmcpack/archive/v3.10.0.tar.gz
tar xvf v3.10.0.tar.gz
cd qmcpack-3.10.0/
```

Step 3: Load the newer compiler module and configure it with custom flags.

```
module load mpi/openmpi_4.0.5_intel_2020.2_slurm20
module load intel/2020.2 cuda/11.1.1
module load hdf5/1.12.0_openmpi_4.0.5_intel_2020.2_slurm20
module load python/3.6.6
module load boost/1.68
module load cmake/3.15.4

cd build

cmake -DCMAKE_INSTALL_PREFIX=/users/<username>/qmcpack/ -DCMAKE_C_COMPILER=mpicc -DCMAKE_CXX_COMPILER=mpicxx \
-DQE_BIN=/gpfs/runtime/opt/quantumespresso/6.4_openmpi_4.0.5_intel_2020.2_slurm20/bin/ \
-DBUILD_PPCONVERT=1 -DBUILD_AFQMC=0 -DENABLE_MKL=1 \
-DQMC_VERBOSE_CONFIGURATION=1 QMC_COMPLEX=1 ..
```

More configuration options can be found [here](https://qmcpack.readthedocs.io/en/develop/installation.html#installation-steps).

{% hint style="warning" %}
The --prefix PATH will be replaced by your custom install location
{% endhint %}

Step 4: If you are happy with the configure flags then install them by:

```
make -j 8
make install 
```

Step 5 (Optional): Adding Qmcpack to your path

Add the following lines to your \~/.bashrc

```
export PATH=/users/<username>/qmcpack/bin:$PATH
export PYTHONPATH=/users/<username>/qmcpack/qmcpack-3.10.0/nexus/lib:$PYTHONPATH
```

Restart the Oscar session or `source .bashrc`&#x20;
