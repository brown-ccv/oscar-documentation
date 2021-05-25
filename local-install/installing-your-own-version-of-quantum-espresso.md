# Installing your own version of Quantum Espresso

These instructions are for users who need to install their own version of Quantum Espresso. 

{% hint style="warning" %}
Do not load the 'quantumespresso' module.  If you have a 'quantumespresso' module loaded, unload it:

`module unload`quantumespresso
{% endhint %}

Step 1: Create a new directory where you want to install Quantum Espresso:

```text
mkdir -p quantum-espresso/src
cd quantum-espresso/src/
```

Step 2: Download the version of Quantum Espresso you want from the GitHub repo:

```text
https://github.com/QEF/q-e/releases
wget https://github.com/QEF/q-e/archive/refs/tags/qe-6.4.tar.gz
tar xvf qe-6.4.tar.gz
cd q-e-qe-6.4/
```

Step 3: Load the newer compiler module and configure it with custom flags.

```text
module load intel/2020.2
CC=icc CXX=icpc F77=ifort FC=ifort ./configure --prefix=/users/<username>/data/quantum-espresso/
```

* Configuration options

  * Compiling with MPI

  ```text
  module load mpi/<version>
  # load the mpi module dependencies
  CC=icc CXX=icpc F77=ifort FC=ifort ./configure --prefix=/users/<username>/data/quantum-espresso/
  ```

  * Compiling with optimized libraries \(boost & hdf5\)

  ```text
  module load mpi/<version>
  module load hdf5/1.10.5_fortran fftw/3.3.6
  # load the mpi module dependencies
  CC=icc CXX=icpc F77=ifort FC=ifort ./configure --prefix=/users/<username>/data/quantum-espresso/ --with-hdf5=/gpfs/runtime/opt/hdf5/1.10.5_fortran LIBDIRS=/gpfs/runtime/opt/fftw/3.3.6/lib
  ```

More configuration options can be found [here](http://www.quantum-espresso.org/Doc/user_guide/node7.html).

{% hint style="warning" %}
The --prefix PATH will be replaced by your custom install location
{% endhint %}

Step 4: If you are happy with the configure flags then install them by:

```text
make
make install 
```

Step 5 \(Optional\): Adding QuantumEspresso to your path

Add the following lines to your ~/.bashrc

```text
export PATH=/users/<username>/data/quantum-espresso/bin:$PATH
export BIN_DIR=/users/<username>/data/quantum-espresso/bin
```

Restart the Oscar session or `source .bashrc` 

## Installing custom Addon patches for Quantum Espresso 

There are various addons available for Quantum Espresso, in this tutorial, we will install [Environ](https://environ.readthedocs.io/en/latest/) - a computational library aimed at introducing environment effects to atomistic first-principles simulations.

The source code can be obtained from [this github repo](https://github.com/brown-ccv/CIME_Oscar). The easiest way to incorporate these files into your build is to place them in the root directory of Quantum Espresso \(~/data/quantum-espresso/src/q-e-qe-6.4\). For example:

```text
git clone https://gitlab.com/olivieroandreussi/Environ.git
```

1. run the QE script addonpatch.sh with the -patch option:

   ```text
   ./install/addsonpatch.sh Environ Environ/src Modules -patch
   ```

2. run the Environ installation script with the -patch option:

   ```text
   ./Environ/patches/environpatch.sh -patch
   ```

3. run the QE script to regenerate modules’ dependencies:

   ```text
   ./install/makedeps.sh
   ```

4. re-compile, e.g.:

   ```text
   make pw
   ```

## Installing with QMCpack

1. Download qmcpack

   ```text
   git clone https://github.com/QMCPACK/qmcpack.git
   ```

2. Copy \*.diff and \*.sh files from qmcpack to QE/src folder
3. Patch QuantumEspresso 

   ```text
   ./download_and_patch_qe6.4.sh
   ```

4. Follow the steps above for Installing Quantum Espresso

